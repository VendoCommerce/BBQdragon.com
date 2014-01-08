<%@ Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Mobile.Store.index" EnableSessionState="True" %>
<%@ Register Src="UserControls/TrackingPixels.ascx" TagName="TrackingPixels" TagPrefix="uc" %>


<!doctype html>
<html>
<head runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">
<meta charset="utf-8"> 
<meta name="viewport" content="width=640px, initial-scale=.5, maximum-scale=.5" />
<title>HOME:  BBQ Dragon - Supercharge your barbecue</title>
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
<!--#include file="header_home.html"-->

<div class="content">

<div class="hometop"><img src="../Content/Images/mobile/home_bg.jpg" width="640" height="1315" usemap="#Maphome" class="block" />
  <map name="Maphome">
  
    <area shape="rect" coords="341,135,622,315" href="/content/video/ctavideo.mp4">
    <area shape="rect" coords="5,600,632,685" href="tel:18555477227">
    <area shape="rect" coords="246,494,621,573" href="cart.aspx">
    <area shape="rect" coords="5,691,635,775" href="howitworks.aspx">
    <area shape="rect" coords="8,779,633,861" href="testimonials.aspx">
    <area shape="rect" coords="4,868,633,953" href="faq.aspx">
    <area shape="rect" coords="5,959,636,1043" href="products.aspx">
    
    <area shape="rect" coords="3,1047,631,1136" href="privacy.aspx">
    
    <area shape="rect" coords="6,1141,630,1220" href="terms.aspx">
    <area shape="rect" coords="6,1227,630,1310" href="mailto:[enter your email address]?subject=Email Reminder from BBQ Dragon&body=Just sending a reminder to order from BBQ Dragon! Simply visit http://www.bbqdragon.com to start grilling like a pro.">
    <area shape="circle" coords="105,259,90" href="#guarantee" class="guarantee">
  </map>
</div>
</div>
<!--#include file="footer.html"-->
</div>

<uc:TrackingPixels ID="TrackingPixels" runat="server" />
 </form>
</body>
</html>
