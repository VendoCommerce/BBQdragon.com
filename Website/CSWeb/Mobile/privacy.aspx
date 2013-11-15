<%@ Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Mobile.Store.index" EnableSessionState="True" %>
<%@ Register Src="UserControls/TrackingPixels.ascx" TagName="TrackingPixels" TagPrefix="uc" %>

<!doctype html>
<html>
<head runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">
<meta charset="utf-8"> 
<meta name="viewport" content="width=640px, initial-scale=.5, maximum-scale=.5" />
<title>PRIVACY POLICY:  BBQ Dragon - Supercharge your barbecue</title>
<meta name="description" content="Get Your BBQ Hot & Ready Fast! Your Charcoal Grill will heat up hotter and faster, hands-free!" />
<meta name="keywords" content="Barbecue, BBQ Dragon, Grilling, Charcoal Grill" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/Scripts/fancybox/jquery.fancybox.css">
<script src="/Scripts/fancybox/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="/scripts/jwplayer/jwplayer.js"></script>
<script src="/Scripts/jquery.cycle.js"></script>
<script type="text/javascript">jwplayer.key="JEtVDryJGkO9Q215yroU+Wz4oLeTJGMccGU/Wb3Kv9s=";</script>
<script src="/Scripts/global.js"></script>
<link href="../styles/global_mobile.css" rel="stylesheet" type="text/css" />
</head>
 
<body>
 <form runat="server" id="fm1">
<div class="container">
<!--#include file="popups.html"-->
<!--#include file="header.html"-->

<div class="content">
  <h2>Privacy Policy</h2>
<p class="webfont1 f32 caps pad6" style="color: #2d2d2d">WE WILL NEVER SELL OR GIVE AWAY YOUR INFORMATION!</p>
<p>Your privacy is very important to us. Accordingly, we have developed this Policy in order for you to understand how we collect, use, communicate and disclose and make use of personal information. The following outlines our privacy policy.</p>
<p>Before or at the time of collecting personal information, we will identify the purposes for which information is being collected.</p>
<p>We will collect and use of personal information solely with the objective of fulfilling those purposes specified by us and for other compatible purposes, unless we obtain the consent of the individual concerned or as required by law.</p>
<p>We will only retain personal information as long as necessary for the fulfillment <br>
  of those purposes.</p>
<p>We will collect personal information by lawful and fair means and, where appropriate, with the knowledge or consent of the individual concerned.</p>
<p>Personal data should be relevant to the purposes for which it is to be used, and, to the extent necessary for those purposes, should be accurate, complete, and up-to-date.</p>
<p>We will protect personal information by reasonable security safeguards against loss or theft, as well as unauthorized access, disclosure, copying, use or modification.</p>
<p>We will make readily available to customers information about our policies and practices relating to the management of personal information.</p>
<p>We are committed to conducting our business in accordance with these principles <br>
  in order to ensure that the confidentiality of personal information is protected<br>
  and maintained.</p>

<img src="../Content/Images/mobile/cta.jpg" alt="imageName" class="block" usemap="#Mapcta" />
  <map name="Mapcta">
    
    <area shape="circle" coords="104,318,101" href="#guarantee" class="guarantee">
    <area shape="rect" coords="7,691,630,978" href="cart.aspx">
  </map>
  </h2>
</div>
<!--#include file="footer.html"-->
</div>

<uc:TrackingPixels ID="TrackingPixels" runat="server" />
</form>
</body>
</html>
