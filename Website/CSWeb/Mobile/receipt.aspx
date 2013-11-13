﻿<%@Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Mobile.Store.receipt" EnableViewState="true" EnableSessionState="True" %>
<%@ Register Src="UserControls/CheckoutThankYouModule.ascx" TagName="Form"
    TagPrefix="uc1" %>
<%@ Register Src="UserControls/TrackingPixels.ascx" TagName="TrackingPixels" TagPrefix="uc" %>
 
<!doctype html>
<html>
<head runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">
<meta charset="utf-8"> 
<title>ORDER CONFIRMATION:  BBQ Dragon - Supercharge your barbecue</title>
<meta name="description" content="Get Your BBQ Hot & Ready Fast! Your Charcoal Grill will heat up hotter and faster, hands-free!" />
<meta name="keywords" content="Barbecue, BBQ Dragon, Grilling, Charcoal Grill" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/Scripts/fancybox/jquery.fancybox.css">
<script src="/Scripts/fancybox/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="/scripts/jwplayer/jwplayer.js"></script>
<script src="/Scripts/jquery.cycle.js"></script>
<script type="text/javascript">jwplayer.key="JEtVDryJGkO9Q215yroU+Wz4oLeTJGMccGU/Wb3Kv9s=";</script>
<script src="/Scripts/global.js"></script>
<link rel="stylesheet" type="text/css" href="/styles/fontawesome/css/font-awesome.min.css">
<link href="/styles/global.css" rel="stylesheet" type="text/css" />
</head>
    <body>
     <!--#include file="header_cart.html"-->

<div class="container">
     <uc1:Form ID="Form1" runat="server" />
     
      <uc:TrackingPixels ID="TrackingPixels" runat="server" />
       </div>

<!--#include file="footer_cart.html"-->
    </body>
</html>
  

