<%@Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Mobile.Store.index" EnableViewState="true" EnableSessionState="True" %>
<%@ Register Src="UserControls/TrackingPixels.ascx" TagName="TrackingPixels" TagPrefix="uc" %>

<!doctype html>
<html>
<head runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">
<meta charset="utf-8"> 
<meta name="viewport" content="width=640px, initial-scale=.5, maximum-scale=.5" />
<title>SPECIAL OFFER:  BBQ Dragon - Supercharge your barbecue</title>
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
<div class="container">
<!--#include file="popups.html"-->
<!--#include file="header_upsell.html"-->

<div class="content">

<div class="page_upsell">
<h2>Stay Charged with our Rechargeable Batteries and AC wall charger</h2>

<p><img src="../Content/Images/mobile/upsell_batteries.jpg" width="261" height="294" class="fright" />This is a must-have BBQ Dragon companion product. The BBQ Dragon was designed to be chargeable and super-convenient. Get the official BBQ Dragon charger and battery kit.</p>
<p>4 x Super High-quality BBQ Dragon NiMh (nickel metal hydride) AA batteries, 2500mAh of charge capacity. These top of the line rechargeables are manufactured to our standards, especially for BBQ Dragon, and you can't purchase better batteries. A full charge on these bad boys will run your BBQ Dragon for more than two hours at a medium speed, and start dozens of fires. That's a lot of seared steak, my friend.<br>
</p>

<span class="ask">Would you like to take advantage of this special offer?
<span class="btns"><a href="javascript:void(0)" bind="no"><img src="../Content/images/mobile/nothanks_btn.jpg" /></a><a href="javascript:void(0)" bind="yes"><img src="../Content/images/mobile/yes_btn.jpg" /></a><div class="ask_arrow"></div></span>
</span>


</div>





<div class="page_upsell">
<h2>Priority Processing Makes you a Priority Customer! </h2>

<p><img src="../Content/Images/mobile/upsell_pp.jpg" width="374" height="475" class="fright" style="margin-right: -24px" />With Priority Processing for only $7<span class="sub1">.95</span>, we'll place your order into our special service team for immediate packaging, review and customer service. We look forward to serving you!<br>
</p>


<span class="ask">Would you like to add Priority Processing? 
<span class="btns"><a href="javascript:void(0)" bind="no"><img src="../Content/images/mobile/nothanks_btn.jpg" /></a><a href="javascript:void(0)" bind="yes"><img src="../Content/images/mobile/yes_btn.jpg" /></a><div class="ask_arrow"></div></span>
</span>


</div>











<div class="page_upsell">
<h2>Order RUSH SHIPPING for Your BBQ Dragon Today! </h2>

<div>
<p><img src="../Content/Images/mobile/upsell_rush.jpg" width="300" height="301" class="fright" style="margin-right: -24px" />We know you're excited about seeing BBQ Dragon in action right away. For only $9<span class="sub1">.99</span> you can order our special RUSH SHIPPING and get your order within 3-5 days!<br>
</p>
</div>

<span class="ask">Would you like to add RUSH SHIPPING?
<span class="btns"><a href="javascript:void(0)" bind="no"><img src="../Content/images/mobile/nothanks_btn.jpg" /></a><a href="javascript:void(0)" bind="yes"><img src="../Content/images/mobile/yes_btn.jpg" /></a><div class="ask_arrow"></div></span>
</span>


</div>





</div>
<!--#include file="footer_upsell.html"-->
</div>

<uc:TrackingPixels ID="TrackingPixels" runat="server" />
</form>
</body>
</html>

