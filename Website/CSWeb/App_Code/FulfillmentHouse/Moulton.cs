using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Xml;
using CSBusiness.OrderManagement;
using System.Collections;
using CSBusiness;
using CSCore.Utils;
using CSCore.DataHelper;
using CSBusiness.Resolver;
using CSBusiness.FulfillmentHouse;
using System.Xml.Linq;
using CSBusiness.Attributes;

namespace CSWeb.FulfillmentHouse
{
    public class Moulton
    {
        XmlNode config = null;
        public Moulton()
        {
            config = GetConfig();            
        }
        public string GetRequest(Order orderItem)
        {
            String strXml = String.Empty;
            string lineItems = String.Empty;
            orderItem.LoadAttributeValues();
            using (StringWriter str = new StringWriter())
            {

                using (XmlTextWriter xml = new XmlTextWriter(str))
                {
                    //root node

                    //int i = 0;
                    //foreach (Sku s in orderItem.SkuItems)
                    //{
                    //    i++;
                    //    lineItems += s.SkuCode + "," + s.FullPrice + "," + s.Quantity + "," + "0";
                    //    if (i != orderItem.SkuItems.Count)
                    //    {
                    //        lineItems += "|";
                    //    }
                    //}

                    List<StateProvince> states = StateManager.GetAllStates(0);
                    xml.WriteStartElement("Order");
                    xml.WriteAttributeString("version", "2.1");
                    xml.WriteStartElement("OrderHeader");
                    xml.WriteElementString("GROUP_CODE", config.Attributes["GroupCode"].Value);
                    xml.WriteElementString("DATE_ORD", orderItem.CreatedDate.ToString("yyyyMMdd"));
                    xml.WriteElementString("CL_NO", config.Attributes["CL_NO"].Value);
                    xml.WriteElementString("CSOURCE", config.Attributes["CSOURCE"].Value);
                    string cmedia = "WEB";

                    if (config.SelectSingleNode("@CMEDIA_" + orderItem.VersionName.ToUpper()) != null)
                        cmedia = config.Attributes["CMEDIA_" + orderItem.VersionName.ToUpper()].Value;

                    xml.WriteElementString("CMEDIA", cmedia);


                    xml.WriteElementString("CREDCD", orderItem.CreditInfo.CreditCardNumber);
                    xml.WriteElementString("EXPDT", orderItem.CreditInfo.CreditCardExpired.ToString("MMyy"));

                    string project = config.Attributes["Project"].Value;

                    if (config.SelectSingleNode("@PROJECT_" + orderItem.VersionName.ToUpper()) != null)
                        project = config.Attributes["PROJECT_" + orderItem.VersionName.ToUpper()].Value;

                    xml.WriteElementString("PROJECT", project);

                    //xml.WriteElementString("PROJECT", config.Attributes["Project"].Value);
                    xml.WriteElementString("PAY_TYPE", config.Attributes["PayType"].Value);
                    string noOfPay = "1";
                    foreach (Sku st in orderItem.SkuItems)
                    {
                        st.LoadAttributeValues();
                        if (st.AttributeValues.ContainsKey("noofpayment") && (st.AttributeValues["noofpayment"].Value != null && !st.AttributeValues["noofpayment"].Value.ToString().Equals("") && !st.AttributeValues["noofpayment"].Value.ToString().Equals("0")))
                        {
                            noOfPay = st.AttributeValues["noofpayment"].Value;
                        }
                    }

                    //if(orderItem.AttributeValues["Onepay"].Value)
                    xml.WriteElementString("NUM_PYMNTS", noOfPay);
                    xml.WriteElementString("EMAIL", orderItem.Email);
                    xml.WriteElementString("COMPANY", "");
                    xml.WriteElementString("F_NAME", orderItem.CustomerInfo.ShippingAddress.FirstName);
                    xml.WriteElementString("L_NAME", orderItem.CustomerInfo.ShippingAddress.LastName);
                    xml.WriteElementString("ADDR_1", orderItem.CustomerInfo.ShippingAddress.Address1);
                    xml.WriteElementString("ADDR_2", orderItem.CustomerInfo.ShippingAddress.Address2);
                    xml.WriteElementString("CITY", orderItem.CustomerInfo.ShippingAddress.City);
                    StateProvince itemStateProvince = states.FirstOrDefault(x => x.StateProvinceId == Convert.ToInt32(orderItem.CustomerInfo.ShippingAddress.StateProvinceId));
                    if (itemStateProvince != null)
                    {
                        xml.WriteElementString("ST", itemStateProvince.Abbreviation);
                    }
                    xml.WriteElementString("ZIP", orderItem.CustomerInfo.ShippingAddress.ZipPostalCode);
                    xml.WriteElementString("PHONE", orderItem.CustomerInfo.ShippingAddress.PhoneNumber);
                    xml.WriteElementString("COUNTRY_CODE", orderItem.CustomerInfo.ShippingAddress.CountryCode.Trim());
                    xml.WriteElementString("SRC_CD", config.Attributes["SRC_CD"].Value);
                    xml.WriteElementString("CVV2", orderItem.CreditInfo.CreditCardCSC);
                    xml.WriteElementString("BILL_TO_COMPANY", "");
                    xml.WriteElementString("BILL_TO_L_NAME", orderItem.CustomerInfo.BillingAddress.LastName);
                    xml.WriteElementString("BILL_TO_F_NAME", orderItem.CustomerInfo.BillingAddress.FirstName);
                    xml.WriteElementString("BILL_TO_ADDR_1", orderItem.CustomerInfo.BillingAddress.Address1);
                    xml.WriteElementString("BILL_TO_ADDR_2", orderItem.CustomerInfo.BillingAddress.Address2);
                    xml.WriteElementString("BILL_TO_CITY", orderItem.CustomerInfo.BillingAddress.City);
                    StateProvince itemStateProvince1 = states.FirstOrDefault(x => x.StateProvinceId == Convert.ToInt32(orderItem.CustomerInfo.BillingAddress.StateProvinceId));
                    if (itemStateProvince1 != null)
                    {
                        xml.WriteElementString("BILL_TO_ST", itemStateProvince1.Abbreviation);
                    }
                    xml.WriteElementString("BILL_TO_ZIP", orderItem.CustomerInfo.BillingAddress.ZipPostalCode);
                    xml.WriteElementString("BILL_TO_COUNTRY_CODE", orderItem.CustomerInfo.BillingAddress.CountryCode.Trim());
                    xml.WriteElementString("UNIQUE-ID", orderItem.OrderId.ToString());
                    xml.WriteElementString("HAS_FINANCIAL", config.Attributes["HAS_FINANCIAL"].Value);
                    xml.WriteElementString("HAS_GIFT_REC", config.Attributes["HAS_GIFT_REC"].Value);
                    xml.WriteElementString("HAS_CALLCENTER_REC", config.Attributes["HAS_CALLCENTER_REC"].Value);
                    xml.WriteEndElement();

                    xml.WriteStartElement("OrderDetail");
                    int i = 0;
                    foreach (Sku s in orderItem.SkuItems)
                    {
                        i++;
                        xml.WriteStartElement("LineItem");
                        xml.WriteElementString("QUANTITY_ORDERED", s.Quantity.ToString());
                        xml.WriteElementString("OFFER_CODE", s.SkuCode);
                        xml.WriteElementString("OFFER_DESCRIPTION", s.SkuCode);
                        xml.WriteElementString("TAXABLE_FLAG", config.Attributes["TAXABLE_FLAG"].Value);
                        xml.WriteElementString("CONTINUITY_FLAG", config.Attributes["CONTINUITY_FLAG"].Value);
                        xml.WriteEndElement();

                    }                    
                    xml.WriteEndElement();
                    xml.WriteStartElement("Financial");
                    xml.WriteElementString("CVV2_ID", orderItem.CreditInfo.CreditCardCSC);
                    if (orderItem.CreditInfo.CreditCardNumber.Equals("4111111111111111"))
                    {
                        xml.WriteElementString("TRANSACTION_ID", "Test");
                    }
                    else
                    {
                        xml.WriteElementString("TRANSACTION_ID", orderItem.CreditInfo.TransactionCode);
                    }
                    xml.WriteEndElement();
                    xml.WriteEndElement();

                    ////flush results to string object
                    strXml = str.ToString();
                }
            }
            return strXml;
        }
        public bool PostOrder(int orderId)
        {
            bool result = false;
            Order orderItem = new OrderManager().GetBatchProcessOrders(orderId);

            if (orderItem.CreditInfo.CreditCardNumber.Equals("4444333322221111"))
            {
                Dictionary<string, AttributeValue> orderAttributes1 = new Dictionary<string, AttributeValue>();
                CSResolve.Resolve<IOrderService>().UpdateOrderAttributes(orderId, orderAttributes1, 8);
                return true;
            }
            string req = new Moulton().GetRequest(orderItem);
            string res = CommonHelper.HttpPost(config.Attributes["transactionUrl"].Value, "UserName=" + config.Attributes["login"].Value + "&Password=" + config.Attributes["password"].Value + "&GroupCode=" + config.Attributes["GroupCode"].Value + "&UniqueId=" + orderItem.OrderId.ToString() + "&ClNo=" + config.Attributes["CL_NO"].Value + "&Project=" + config.Attributes["Project"].Value + "&XMLFormatCode=" + config.Attributes["XMLFormatCode"].Value + "&OrdXML=" + req);


            Dictionary<string, AttributeValue> orderAttributes = new Dictionary<string, AttributeValue>();
            orderAttributes.Add("Request", new CSBusiness.Attributes.AttributeValue(req));
            orderAttributes.Add("Response", new CSBusiness.Attributes.AttributeValue(res));

            string s = getfromto(res, "<Status>", "</Status>");

            if (s.ToLower().Equals("true"))
            {
                CSResolve.Resolve<IOrderService>().SaveOrderInfo(orderId, 2, req.ToLower().Replace("utf-8", "utf-16"), res.ToLower().Replace("utf-8", "utf-16"));
                CSResolve.Resolve<IOrderService>().UpdateOrderAttributes(orderId, orderAttributes, 2);
                result = true;
            }
            else if (orderItem.CreditInfo.CreditCardNumber.Equals("4111111111111111"))
            {
                CSResolve.Resolve<IOrderService>().SaveOrderInfo(orderId, 8, req.ToLower().Replace("utf-8", "utf-16"), res.ToLower().Replace("utf-8", "utf-16"));
                CSResolve.Resolve<IOrderService>().UpdateOrderAttributes(orderId, orderAttributes, 8);
                result = true;
            }
            else if (orderItem.CreditInfo.CreditCardNumber.Equals("4444333322221111"))
            {
                CSResolve.Resolve<IOrderService>().SaveOrderInfo(orderId, 5, req.ToLower().Replace("utf-8", "utf-16"), res.ToLower().Replace("utf-8", "utf-16"));
                CSResolve.Resolve<IOrderService>().UpdateOrderAttributes(orderId, orderAttributes, 5);
                result = true;
            }
            else
            {
                CSResolve.Resolve<IOrderService>().SaveOrderInfo(orderId, 5, req.ToLower().Replace("utf-8", "utf-16"), res.ToLower().Replace("utf-8", "utf-16"));
                CSResolve.Resolve<IOrderService>().UpdateOrderAttributes(orderId, orderAttributes, 5);
                result = false;
            }


            return result;
        }
        public string getfromto(string s22, string sa22, string sb22)
        {
            string s;
            string sa;
            string sb;

            s = s22.ToLower();
            sa = sa22.ToLower();
            sb = sb22.ToLower();


            string s1 = s;
            s1 = s1.Replace(sa, ((char)(200)).ToString());
            s1 = s1.Replace(sb, ((char)(201)).ToString());

            bool b = false;
            bool c = false;
            string s2 = "";
            for (int i = 0; i < s1.Length; i++)
            {
                if (c == false)
                {
                    if (s1[i].ToString() == ((char)(200)).ToString()) { b = true; c = true; }
                }
                if (s1[i].ToString() == ((char)(201)).ToString()) { b = false; }

                if (b == true)
                {
                    if ((s1[i].ToString() != ((char)(200)).ToString()) && (s1[i].ToString() != ((char)(201)).ToString()))
                    {
                        s2 += s1[i];
                    }
                }
            }
            return s2;

        }
        public void GetPrepiadResponse(int orderId, string cardNumber)
        {
            String strXml = String.Empty;           
            using (StringWriter str = new StringWriter())
            {
                using (XmlTextWriter xml = new XmlTextWriter(str))
                {
                    xml.WriteStartElement("isPrepaidCard");
                        xml.WriteElementString("key",config.Attributes["prepaidCheckKey"].Value);
                        xml.WriteElementString("binCode",cardNumber);                    
                    xml.WriteEndElement();// isPrepaidCard ends                    
                    ////flush results to string object
                    strXml = str.ToString();
                }
            }
            string PrePaidRes = CommonHelper.SoapRequest(String.Format(CommonHelper.GetSoapEnvelope(), strXml), config.Attributes["prepaidCheckUrl"].Value, Convert.ToInt32(config.Attributes["timeOut"].Value));

            Dictionary<string, AttributeValue> orderAttributes = new Dictionary<string, AttributeValue>();
            orderAttributes.Add("PrepaidRequest", new CSBusiness.Attributes.AttributeValue(String.Format(CommonHelper.GetSoapEnvelope(), strXml)));
            orderAttributes.Add("PrepaidResponse", new CSBusiness.Attributes.AttributeValue(PrePaidRes));
            if (PrePaidRes.ToLower().Contains("b:0"))
            {
                orderAttributes.Add("IsPrepaid", new CSBusiness.Attributes.AttributeValue("false"));
            }
            else
            {
                orderAttributes.Add("IsPrepaid", new CSBusiness.Attributes.AttributeValue("true"));
            }
            CSResolve.Resolve<IOrderService>().UpdateOrderAttributes(orderId, orderAttributes, null);
            
        }
        private XmlNode GetConfig()
        {
            return OrderHelper.GetDefaultFulFillmentHouseConfig();
        }
    }
}