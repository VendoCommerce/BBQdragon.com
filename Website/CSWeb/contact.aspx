<%@ Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Root.contact" EnableSessionState="True" %>
<%@ Register Src="UserControls/TrackingPixels.ascx" TagName="TrackingPixels" TagPrefix="uc" %>
<%@ Register Src="UserControls/ShippingForm.ascx" TagName="BillingFormControl"
    TagPrefix="uc" %> 
<%@ Register Src="UserControls/ContactUs.ascx" TagName="ContactUs" TagPrefix="uc" %>
<!doctype html>
<html>
<head runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">
<meta charset="utf-8"> 
<title>CONTACT US:  BBQ Dragon - Supercharge your barbecue</title>
<meta name="description" content="Get Your BBQ Hot & Ready Fast! Your Charcoal Grill will heat up hotter and faster, hands-free!" />
<meta name="keywords" content="Barbecue, BBQ Dragon, Grilling, Charcoal Grill" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/Scripts/fancybox/jquery.fancybox.css">
<script src="/Scripts/fancybox/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="/scripts/jwplayer/jwplayer.js"></script>
<script src="/Scripts/jquery.cycle.js"></script>
<script type="text/javascript">jwplayer.key="JEtVDryJGkO9Q215yroU+Wz4oLeTJGMccGU/Wb3Kv9s=";</script>
<script src="/Scripts/global.js"></script>
<link href="styles/global.css" rel="stylesheet" type="text/css" />
</head>
<body>    <form runat="server" id="billing1">
<!--#include file="header.html"-->

<!--#include file="popups.html"-->
<div class="container">
<div class="left">
<h2>Contact Us</h2>
<p>You'd like to get in touch with us? Well, we'd like to get in touch with you. Drop us your info below and tell us what you think of BBQ Dragon, or tell us about your BBQ Dragon experience. We'll also send you special offers you can't get anywhere else. </p>
<p class="pad6">Customer Support Hours of Operation are Mon-Fri 5am to 5pm (PST). </p>
<p class="pad6"> Phone: (877) 372-7612 </p>
<p>Email: <a href="mailto:bbqdragon@webcsr.info">bbqdragon@webcsr.info </a></p>

     <div id="contact_form" runat="server">
       
       <asp:Panel ID="Panel_Contactus" runat="server" > 
        <uc:ContactUs ID="ucContactUs" runat="server" />
     </asp:Panel>
</div>
   </div>
<div class="right">
 <uc:BillingFormControl ID="sfcShippingInfo" runat="server" RedirectUrl="AddProduct.aspx" />
 </div>
 <div class="clear"></div>
 
 
 
 
 
  <uc:TrackingPixels ID="TrackingPixels" runat="server" />
  <!--#include file="bottomcta.html"-->
</div>

<!--#include file="footer.html"-->
 </form>
</body>
</html>
