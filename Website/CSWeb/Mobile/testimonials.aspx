<%@ Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Mobile.Store.index" EnableSessionState="True" %>
<%@ Register Src="UserControls/TrackingPixels.ascx" TagName="TrackingPixels" TagPrefix="uc" %>

<!doctype html>
<html>
<head runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">
<meta charset="utf-8"> 
<meta name="viewport" content="width=640px, initial-scale=.5, maximum-scale=.5" />
<title>TESTIMONIALS:  BBQ Dragon - Supercharge your barbecue</title>
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
<h2>Testimonials</h2>


<div class="quote1"><p class="webfont1 caps f32 pad6 black">WHEN YOU SHOW UP TO A BBQ...
</p>
<p>you got the Dragon doing all the leg work for you while you're flipping burgers like a boss!</p>
</div>

<div class="quote1"><p class="webfont1 caps f32 pad6 black">IT'S SELF SUFFICIENT,
</p>
<p>so it allows me to leave to prep my food. It's going to every tailgate with me for the rest 
of the century!</p>
</div>

 <div class="videosmall">  <div id="vidsmall1"></div> <script type='text/javascript'>
  jwplayer('vidsmall1').setup({
	file: '/Content/video/test1.mp4',
	autostart: false,
    primary: "flash",   
	image: "/Content/images/home_test1.jpg",
	controls: true,
    width: 600, height: 338,
	stretching: 'exactfit',
	skin: '/scripts/jwplayer/five.xml',
	events:{
	onPlay: function() {
   	jwplayer('videotest1').stop();	
   	jwplayer('videotest2').stop();
   	jwplayer('videotest3').stop();
   	jwplayer('vidsmall2').stop();	
   	jwplayer('vidsmall3').stop();
   	jwplayer('vidsmall4').stop();	
   	jwplayer('vidsmall5').stop();
   	jwplayer('vidsmall6').stop();
	
	}}
	
  });
</script></div>
  <div class="videosmall"> <div id="vidsmall2"></div> <script type='text/javascript'>
  jwplayer('vidsmall2').setup({
	file: '/Content/video/test2.mp4',
	autostart: false,
    primary: "flash",   
	image: "/Content/images/home_test2.jpg",
	controls: true,
    width: 600, height: 338,
	stretching: 'exactfit',
	skin: '/scripts/jwplayer/five.xml',
	events:{
	onPlay: function() {
   	jwplayer('videotest1').stop();	
   	jwplayer('videotest2').stop();
   	jwplayer('videotest3').stop();
   	jwplayer('vidsmall1').stop();	
   	jwplayer('vidsmall3').stop();
   	jwplayer('vidsmall4').stop();	
   	jwplayer('vidsmall5').stop();
   	jwplayer('vidsmall6').stop();
	
	}}
	
  });
</script></div>
   <div class="videosmall"> <div id="vidsmall3"></div> <script type='text/javascript'>
  jwplayer('vidsmall3').setup({
	file: '/Content/video/test3.mp4',
	autostart: false,
    primary: "flash",   
	image: "/Content/images/home_test3.jpg",
	controls: true,
    width: 600, height: 338,
	stretching: 'exactfit',
	skin: '/scripts/jwplayer/five.xml',
	events:{
	onPlay: function() {
   	jwplayer('videotest1').stop();	
   	jwplayer('videotest2').stop();
   	jwplayer('videotest3').stop();
   	jwplayer('vidsmall2').stop();	
   	jwplayer('vidsmall1').stop();
   	jwplayer('vidsmall4').stop();	
   	jwplayer('vidsmall5').stop();
   	jwplayer('vidsmall6').stop();
	
	}}
	
  });
</script></div>

   
  <div class="quote2"><p class="pad12 webfont1 f32 black">The flame was out...</p>
  <p>and it instantly lit back up again! You can stick it on anything, recharge it – it's a pretty cool device!
<span class="block text-right">- Dave</span></p>
  </div> 
  
  <div class="quote2"><p class="pad12 webfont1 f32 black">This is an amazing product at a great price...</p>
  <p>

It's phenomenal. You can add this thing to anything – not just your grill but your fireplace! Get the fire started and you got to have the Dragon baby, everyone needs one, go get one! This thing is awesome! 

 
<span class="block text-right">– Jim</span></p>
  </div> 

  <div class="videosmall"> <div id="vidsmall4"></div> <script type='text/javascript'>
  jwplayer('vidsmall4').setup({
	file: '/Content/video/test4.mp4',
	autostart: false,
    primary: "flash",   
	image: "/Content/images/home_test4.jpg",
	controls: true,
    width: 600, height: 338,
	stretching: 'exactfit',
	skin: '/scripts/jwplayer/five.xml',
	events:{
	onPlay: function() {
   	jwplayer('videotest1').stop();	
   	jwplayer('videotest2').stop();
   	jwplayer('videotest3').stop();
   	jwplayer('vidsmall2').stop();	
   	jwplayer('vidsmall3').stop();
   	jwplayer('vidsmall1').stop();	
   	jwplayer('vidsmall5').stop();
   	jwplayer('vidsmall6').stop();
	
	}}
	
  });
</script></div>
  <div class="videosmall"> <div id="vidsmall5"></div> <script type='text/javascript'>
  jwplayer('vidsmall5').setup({
	file: '/Content/video/test5.mp4',
	autostart: false,
    primary: "flash",   
	image: "/Content/images/home_test5.jpg",
	controls: true,
    width: 600, height: 338,
	stretching: 'exactfit',
	skin: '/scripts/jwplayer/five.xml',
	events:{
	onPlay: function() {
   	jwplayer('videotest1').stop();	
   	jwplayer('videotest2').stop();
   	jwplayer('videotest3').stop();
   	jwplayer('vidsmall2').stop();	
   	jwplayer('vidsmall3').stop();
   	jwplayer('vidsmall4').stop();	
   	jwplayer('vidsmall1').stop();
   	jwplayer('vidsmall6').stop();
	
	}}
	
  });
</script></div>
   <div class="videosmall"> <div id="vidsmall6"></div> <script type='text/javascript'>
  jwplayer('vidsmall6').setup({
	file: '/Content/video/test6.mp4',
	autostart: false,
    primary: "flash",   
	image: "/Content/images/home_test6.jpg",
	controls: true,
    width: 600, height: 338,
	stretching: 'exactfit',
	skin: '/scripts/jwplayer/five.xml',
	events:{
	onPlay: function() {
   	jwplayer('videotest1').stop();	
   	jwplayer('videotest2').stop();
   	jwplayer('videotest3').stop();
   	jwplayer('vidsmall2').stop();	
   	jwplayer('vidsmall3').stop();
   	jwplayer('vidsmall4').stop();	
   	jwplayer('vidsmall5').stop();
   	jwplayer('vidsmall1').stop();
	
	}}
	
  });
</script></div>
   
   <p>Charcoal grilling has never been so fast and easy than with BBQ Dragon –  <a href="cart.aspx" class="scored orange">get your BBQ Dragon now!</a></p>  
   
   <div class="graybar"></div>

 
 <h2 class="gray">In the Media</h2>
   
 <div class="testblock graybg"><p>"Much faster and less cumbersome than those coal chimneys, and better looking too.”</p><div class="blockauthor">- The Awesomer</div></div>  
 <div class="testblock graybg"><p>"The BBQ Dragon is a grill accessory…that lets you easily start a fire whether you want to turn on the grill or simply start a fire on the beach.”</p><div class="blockauthor">- The CrowdFund Mafia</div></div> 
  <div class="clear"></div>
 <div class="testblock graybg"><p>"The most annoying part of a charcoal grill is waiting for the coals to heat up. With the BBQ Dragon, your wait time is reduced to a mere ten minutes.”</p><div class="blockauthor">- The Gadgeteer</div></div> 

 <div class="testblock graybg"><p>"Say hello to the BBQ Dragon, a portable grill-starting device that turns a smoldering pile of charcoal into a hellfire of meat-searing glory in under 10 minutes, available for preorder now.”</p><div class="blockauthor">- Urban Daddy</div></div> 
  <div class="clear"></div>
 <div class="testblock graybg"><p>"Start it up and watch as your pile of normally slow-to-be-ready charcoal gets to optimal temperature in as little as 10 minutes.”</p><div class="blockauthor">- Oh Gizmo</div></div>
 <div class="testblock orangebg" style="cursor: pointer" onclick="location.href='cart.aspx'"><p>BBQ Dragon
The Fire Supercharger<br><span class="webfont1">
Never before has there been a product that substantially improves America’s most popular past time: barbecue.<br>
<br>
<span class="white scored">Try it Now!</span></span></div>
   <div class="clear"></div> 

 
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
