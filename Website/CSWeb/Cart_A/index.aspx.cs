using System;
using System.Text;
using CSCore;
using CSCore.Utils;
using CSBusiness.Preference;
using CSBusiness;
using System.Web;
using System.Web.UI;
using CSData;
using CSBusiness.CustomerManagement;
using CSWeb.Cart_A.UserControls;
using CSBusiness.ShoppingManagement;
using CSCore.DataHelper;
using CSBusiness.Resolver;
using CSBusiness.OrderManagement;
using CSBusiness.Web;
using CSBusiness.Attributes;
using CSWebBase;

namespace CSWeb.Cart_A
{
    public partial class index : SiteBasePage
    {
        //private int skuId = 30; // TODO: update for client
        
        //private int qId = 1;

        protected override bool IsLandingPage
        {
            get
            {
                return true;
            }
        }

        protected override bool DisableBrowserCache
        {
            get
            {
                return true;
            }
        }

        protected override void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);
            //PageView.InsertPageEntry(HttpContext.Current);
            if (!Page.IsPostBack)
            {
                

                if (Request.Headers["X-HTTPS"] != null)
                {
                    if (Request.Headers["X-HTTPS"].ToLower().Equals("no"))
                    {
                        if (Request.Url.ToString().Contains("www"))
                        {
                            Response.Redirect((Request.Url.ToString().Replace("http:/", "https:/").Replace("index.aspx", "")));
                        }
                        else
                        {
                            Response.Redirect((Request.Url.ToString().Replace("http:/", "https:/").Replace("https://", "https://www.").Replace("index.aspx", "")));
                        }
                    }
                }
            }

        }
           
    }
}