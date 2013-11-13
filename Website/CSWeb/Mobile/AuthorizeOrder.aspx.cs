﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using CSBusiness.Attributes;
using CSBusiness.PostSale;
using CSBusiness;
using System.Text.RegularExpressions;
using CSCore.Utils;
using CSBusiness.OrderManagement;
using CSBusiness.Resolver;
using CSBusiness.ShoppingManagement;

namespace CSWeb.Mobile.Store
{
    public partial class AuthorizeOrder : ShoppingCartBasePage
    {

        int orderId = 0;
        private ClientCartContext CartContext
        {
            get
            {
                return Session["ClientOrderData"] as ClientCartContext;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] parts = Request.Url.AbsolutePath.Split(new char[] { '/' }, StringSplitOptions.RemoveEmptyEntries);
            if (Request["oid"] != null)
            {
                orderId = Convert.ToInt32(Request["oid"].ToString());
            }
            else
            {
                orderId = CartContext.OrderId;
            }
            Order orderData = CSResolve.Resolve<IOrderService>().GetOrderDetails(orderId, true);


            if (orderData.OrderStatusId == 2)
            {
                // this means that  customer clicked back, so should be directed to receipt page.
                Response.Redirect("receipt.aspx");
            }

            if (OrderHelper.IsCustomerOrderFlowCompleted(CartContext.OrderId))
            {
                Response.Redirect("receipt.aspx");
            }

            if (!IsPostBack)
            {
                string[] testCreditCards;

                testCreditCards = ResourceHelper.GetResoureValue("TestCreditCard").Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries); ;

                foreach (string word in testCreditCards)
                {
                    if (orderData.CreditInfo.CreditCardNumber.Equals(word))
                    {
                        CSResolve.Resolve<IOrderService>().UpdateOrderStatus(orderData.OrderId, 7);
                        // This will avoid order from getting posted to OMX for test orders
                        Response.Redirect("receipt.aspx");
                    }
                }
                bool authSuccess = false;

                // Check if payment gateway service is enabled or not.
                if (CSFactory.GetCacheSitePref().PaymentGatewayService)
                {
                    try
                    {
                        authSuccess = orderData.OrderStatusId == 4
                            || orderData.OrderStatusId == 5 // fulfillment failure (fulfillment was attempted after payment success), so don't charge again.
                            || OrderHelper.AuthorizeOrder(orderId);
                    }
                    catch (Exception ex)
                    {
                        CSCore.CSLogger.Instance.LogException("AuthorizeOrder - auth error - orderid: " + Convert.ToString(orderId), ex);

                        throw;
                    }
                }
                else
                {
                    authSuccess = true;
                }

                if (authSuccess)
                {
                    // Check if fulfillment gateway service is enabled or not.
                    if (CSFactory.GetCacheSitePref().FulfillmentHouseService)
                    {
                        try
                        {
                            if (new CSWeb.FulfillmentHouse.Moulton().PostOrder(orderId))
                            {
                                if (Request.QueryString != null)
                                {
                                    Response.Redirect("receipt.aspx?" + Request.QueryString);
                                }
                                else
                                {
                                    Response.Redirect("receipt.aspx");
                                }
                            }
                            else
                            {
                                OrderHelper.SendOrderFailedEmail(orderId);
                                if (Request.QueryString != null)
                                {
                                    Response.Redirect("receipt.aspx?" + Request.QueryString);
                                }
                                else
                                {
                                    Response.Redirect("receipt.aspx");
                                }
                            }
                        }
                        catch (Exception ex)
                        {
                            CSCore.CSLogger.Instance.LogException("AuthorizeOrder - fulfillment post error - orderid: " + Convert.ToString(orderId), ex);

                            throw;
                        }

                        if (Request.QueryString != null)
                        {
                            Response.Redirect("receipt.aspx?" + Request.QueryString);
                        }
                        else
                        {
                            Response.Redirect("receipt.aspx");
                        }
                    }
                }
                else
                {
                    Response.Redirect(string.Format("carddecline.aspx?returnUrl={0}", string.Concat("/", string.Join("/", parts, 0, parts.Length - 1), "/receipt.aspx")), true);
                }
            }
            Response.Redirect("receipt.aspx");

        }
    }
}