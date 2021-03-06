using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using CSCore;
using CSCore.Utils;
using CSBusiness.Preference;
using CSBusiness;
using System.Web;
using CSBusiness.Web;
using CSWebBase;

namespace CSWeb.Root.Store
{
    public partial class index : SiteBasePage
    {
        protected override bool IsLandingPage
        {
            get
            {
                return true;
            }
        }

        
        protected override void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);

            
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