<%@Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Mobile.Store.index" EnableSessionState="True" MaintainScrollPositionOnPostback="true" %>
<%@ Register Src="UserControls/TrackingPixels.ascx" TagName="TrackingPixels" TagPrefix="uc" %>
<%@ Register Src="UserControls/ShippingForm.ascx" TagName="BillingFormControl" TagPrefix="uc" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=640px, initial-scale=.5, maximum-scale=.5" /> 
<title>Shopping Cart |  BBQ Dragon - Supercharge your barbecue</title>
<meta name="description" content="Get Your BBQ Hot & Ready Fast! Your Charcoal Grill will heat up hotter and faster, hands-free!" />
<meta name="keywords" content="Barbecue, BBQ Dragon, Grilling, Charcoal Grill" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
<script type="text/javascript" src="/Scripts/fancybox/jquery.fancybox.pack.js"></script>
<link href="/Scripts/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="/Scripts/jwplayer/jwplayer.js"></script>
<script type="text/javascript" src="/Scripts/global.js"></script>
<link href="/styles/global_mobile.css" rel="stylesheet" type="text/css" />
</head>
 
<body>
 <form runat="server" id="fm1">
  
<div class="container">
<!--#include file="popups.html"-->
<!--#include file="header.html"-->

<div class="content">

 <uc:BillingFormControl ID="sfcShippingInfo" runat="server" RedirectUrl="AddProduct.aspx" />
 </div>
 <!--#include file="footer.html"-->
</div>

<uc:TrackingPixels ID="TrackingPixels" runat="server" />
</form>
</body>
</html>
