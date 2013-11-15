using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using CSBusiness.Web;
using CSBusiness;
using CSBusiness.Resolver;
using System.Configuration;
using CSData;
using System.Data.SqlClient;
using CSCore.DataHelper;
using CSBusiness.Preference;
using CSBusiness.Attributes;
using System.Xml.Linq;
using System.IO;
using System.Web.UI.WebControls;

namespace CSWebBase
{
    public class SiteBasePage : CSBasePage
    {
        public ClientCartContext CartContext
        {
            get
            {
                return HttpContext.Current.Session["ClientOrderData"] != null ? Session["ClientOrderData"] as ClientCartContext : null;
            }
            set { HttpContext.Current.Session["ClientOrderData"] = value; }
        }
        public static string AdminEmail
        {
            get
            {
                return ConfigurationManager.AppSettings["AdminEmail"];
            }
        }
        protected override void Page_Load(object sender, EventArgs e)
        {
            base.Page_Load(sender, e);
            AbTestingVersionUpdate updateVersionInfo = new AbTestingVersionUpdate();
            updateVersionInfo.LoadScripts(Page);
            updateVersionInfo.UpdateVersionNameWhileAbTesting();            
            if (!Page.IsPostBack)
                DoDeviceRedirect(ClientOrderData.VersionId);
        }

        public static void SendErrorEmail(string message)
        {
            CSCore.EmailHelper.SendEmail("info@conversionsystems.com", AdminEmail, "[SiteName.Com Error]", message, false);
        }
        private void DoDeviceRedirect(int currentVersionId)
        {
            if (!Page.IsPostBack)
            {
                if (ClientDeviceType == CSBusiness.Enum.DeviceType.Mobile)
                {
                    CSBusiness.Version currentVersion = (CSFactory.GetCacheSitePref()).VersionItems.FirstOrDefault(x => { return x.VersionId == currentVersionId; });

                    if (currentVersion != null && !currentVersion.Title.ToUpper().Contains("MOBILE")) // mobile device not viewing the mobile version
                    {
                        if (Request.QueryString.Count > 0)
                            Response.Redirect("/MOBILE" + Request.QueryString, true);
                        else
                            Response.Redirect("/MOBILE", true);
                    }
                    else if (currentVersion == null)
                    {
                        CSCore.CSLogger.Instance.LogException("No version found given current version Id. DoDeviceRedirect of sitebasepage.", new Exception("Currentversion null"));
                    }
                }
            }
        }
    }

}
