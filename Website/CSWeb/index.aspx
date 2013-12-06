<%@ Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Root.Store.index" EnableSessionState="True" %>
<%@ Register Src="UserControls/TrackingPixels.ascx" TagName="TrackingPixels" TagPrefix="uc" %>
<%@ Register Src="UserControls/ShippingForm.ascx" TagName="BillingFormControl"
    TagPrefix="uc" %> 

<!doctype html>
<html>
<head runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">
<meta charset="utf-8"> 
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
<link href="styles/global.css" rel="stylesheet" type="text/css" />
</head>
 
<body>
 <form runat="server" id="fm1">
<!--#include file="header.html"-->
<!--#include file="popups.html"-->
<div class="container">
<div class="left" style="padding: 0">
<img src="Content/Images/bbqdragon_home_leftside.png" width="666" height="1031" usemap="#Maphomeleft" style="margin-left: -22px" />
<map name="Maphomeleft">
  <area shape="rect" coords="31,932,603,990" href="AddProduct.aspx?PId=102&CId=2&page=onePay">
</map>

<div class="home1">
      <div class="video_list">
                  <ul id="thumb_list" class="thumb_list">
                    <li><a href="javascript:void(0);" class="hometest2"><img src="Content/Images/thumbcta.png" /></a></li>
                     <li><a href="javascript:void(0);" class="hometest3"><img src="Content/Images/thumb2.png" /></a></li>
                    <li><a href="javascript:void(0);" class="hometest4"><img src="Content/Images/thumb3.png" /></a></li>
          </ul>
              </div>
              <div class="video_right">
          <div class="videocontainer">
  <div id="homet1">
  <div id="ctavideo"></div>
    <script type='text/javascript'>
  jwplayer('ctavideo').setup({
	file: '/content/video/ctavideo.mp4',
	autostart: true,
    primary: "flash",   
	image: "/content/images/ctaposter.jpg",
	controls: true,
    width: 424, height: 239,
	stretching: 'exactfit',
	skin: '/scripts/jwplayer/five.xml',
	events: {
		onComplete: function() { 
			$('.hometest2').trigger('click');
		},
		
	onPlay: function() {
   	jwplayer('hometest4').stop();	
   	jwplayer('hometest2').stop();
   	jwplayer('hometest3').stop();
   	jwplayer('vidsmall1').stop();
   	jwplayer('vidsmall2').stop();
   	jwplayer('vidsmall3').stop();
   	jwplayer('vidsmall4').stop();
   	jwplayer('vidsmall5').stop();
   	jwplayer('vidsmall6').stop();
	}
	}
	
  });
</script>
  </div>

  
  <div id="homet2" style="display:none">
  <div id="hometest2"></div>
  <p class="text-center f13"><a href="javascript:void(0);" class="scored hometest1">Back to Commercial</a></p>
  </div>
  
  <div id="homet3" style="display:none">
  <div id="hometest3"></div>
  <p class="text-center f13"><a href="javascript:void(0);" class="scored hometest1">Back to Commercial</a></p>
  </div>

  <div id="homet4" style="display:none">
  <div id="hometest4"></div>
  <p class="text-center f13"><a href="javascript:void(0);" class="scored hometest1">Back to Commercial</a></p>
  </div>
</div><div class="clear"></div>


</div>
</div>


<div class="home2">
<ul>
<li><span>Get delicious charcoal flavor, 
   but without the untasty waiting!</span></li>

<li><span>BBQ Dragon is perfect for any 
   fire – <strong>the beach, smoker, or 
   fireplace</strong></span></li>

<li><span>Increase your fire's oxygen 
   supply to make it work for you!</span></li>

<li><span>Makes starting charcoal easier 
   and faster than any other method</span></li>

<li><span>Allows perfect control of smokers 
  and gets dying coals hot again!</span></li>
  </ul>
</div>


</div>
<div class="right">
 <uc:BillingFormControl ID="sfcShippingInfo" runat="server" RedirectUrl="AddProduct.aspx" />
 
 <div class="text-center">
 <img src="Content/Images/certs.jpg" width="257" height="364" usemap="#Mapcerts" />
 <map name="Mapcerts">
   <area shape="circle" coords="128,83,76" href="#guarantee" class="guarantee">
   <area shape="rect" coords="12,173,252,356" href="#warranty" class="warranty">
 </map>
 </div>
 
 </div>
 <div class="clear"></div>
 
 <div style="min-height: 1860px">
 
 <img src="Content/Images/home_bottom.jpg" width="950" height="1260" usemap="#Maphomebottom" />
 <map name="Maphomebottom">
   <area shape="rect" coords="6,498,946,553" href="AddProduct.aspx?PId=102&CId=2&page=onePay">
 </map>
 
 <div class="home3">
  <div class="videosmall">  <div id="vidsmall1"></div> <script type='text/javascript'>
  jwplayer('vidsmall1').setup({
	file: '/content/video/test1.mp4',
	autostart: false,
    primary: "flash",   
	image: "/content/images/home_test1.jpg",
	controls: true,
    width: 300, height: 169,
	stretching: 'exactfit',
	skin: '/scripts/jwplayer/five.xml',
	events:{
	onPlay: function() {
   	jwplayer('hometest4').stop();	
   	jwplayer('hometest2').stop();
   	jwplayer('hometest3').stop();
   	jwplayer('ctavideo').stop();
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
	file: '/content/video/test2.mp4',
	autostart: false,
    primary: "flash",   
	image: "/content/images/home_test2.jpg",
	controls: true,
    width: 300, height: 169,
	stretching: 'exactfit',
	skin: '/scripts/jwplayer/five.xml',
	events:{
	onPlay: function() {
   	jwplayer('hometest4').stop();	
   	jwplayer('hometest2').stop();
   	jwplayer('hometest3').stop();
   	jwplayer('vidsmall1').stop();
   	jwplayer('ctavideo').stop();
   	jwplayer('vidsmall3').stop();
   	jwplayer('vidsmall4').stop();
   	jwplayer('vidsmall5').stop();
   	jwplayer('vidsmall6').stop();
	
	}}
	
  });
</script></div>
   <div class="videosmall"> <div id="vidsmall3"></div> <script type='text/javascript'>
  jwplayer('vidsmall3').setup({
	file: '/content/video/test3.mp4',
	autostart: false,
    primary: "flash",   
	image: "/content/images/home_test3.jpg",
	controls: true,
    width: 300, height: 169,
	stretching: 'exactfit',
	skin: '/scripts/jwplayer/five.xml',
	events:{
	onPlay: function() {
   	jwplayer('hometest4').stop();	
   	jwplayer('hometest2').stop();
   	jwplayer('hometest3').stop();
   	jwplayer('vidsmall1').stop();
   	jwplayer('vidsmall2').stop();
   	jwplayer('ctavideo').stop();
   	jwplayer('vidsmall4').stop();
   	jwplayer('vidsmall5').stop();
   	jwplayer('vidsmall6').stop();
	
	}}
	
  });
</script></div>
   <div class="clear"></div>
    <div class="videosmall"> <div id="vidsmall4"></div> <script type='text/javascript'>
  jwplayer('vidsmall4').setup({
	file: '/content/video/test4.mp4',
	autostart: false,
    primary: "flash",   
	image: "/content/images/home_test4.jpg",
	controls: true,
    width: 300, height: 169,
	stretching: 'exactfit',
	skin: '/scripts/jwplayer/five.xml',
	events:{
	onPlay: function() {
   	jwplayer('hometest4').stop();	
   	jwplayer('hometest2').stop();
   	jwplayer('hometest3').stop();
   	jwplayer('vidsmall1').stop();
   	jwplayer('vidsmall2').stop();
   	jwplayer('vidsmall3').stop();
   	jwplayer('ctavideo').stop();
   	jwplayer('vidsmall5').stop();
   	jwplayer('vidsmall6').stop();
	
	}}
	
  });
</script></div>
  <div class="videosmall"> <div id="vidsmall5"></div> <script type='text/javascript'>
  jwplayer('vidsmall5').setup({
	file: '/content/video/test5.mp4',
	autostart: false,
    primary: "flash",   
	image: "/content/images/home_test5.jpg",
	controls: true,
    width: 300, height: 169,
	stretching: 'exactfit',
	skin: '/scripts/jwplayer/five.xml',
	events:{
	onPlay: function() {
   	jwplayer('hometest4').stop();	
   	jwplayer('hometest2').stop();
   	jwplayer('hometest3').stop();
   	jwplayer('vidsmall1').stop();
   	jwplayer('vidsmall2').stop();
   	jwplayer('vidsmall3').stop();
   	jwplayer('vidsmall4').stop();
   	jwplayer('ctavideo').stop();
   	jwplayer('vidsmall6').stop();
	
	}}
	
  });
</script></div>
   <div class="videosmall"> <div id="vidsmall6"></div> <script type='text/javascript'>
  jwplayer('vidsmall6').setup({
	file: '/content/video/test6.mp4',
	autostart: false,
    primary: "flash",   
	image: "/content/images/home_test6.jpg",
	controls: true,
    width: 300, height: 169,
	stretching: 'exactfit',
	skin: '/scripts/jwplayer/five.xml',
	events:{
	onPlay: function() {
   	jwplayer('hometest4').stop();	
   	jwplayer('hometest2').stop();
   	jwplayer('hometest3').stop();
   	jwplayer('vidsmall1').stop();
   	jwplayer('vidsmall2').stop();
   	jwplayer('vidsmall3').stop();
   	jwplayer('vidsmall4').stop();
   	jwplayer('vidsmall5').stop();
   	jwplayer('ctavideo').stop();
	
	}}
	
  });
</script></div>
<div class="clear"></div>
 </div>
  <div class="home4">
  <div style="width: 921px;" class="clearfix">
 <div class="fleft" style="width: 238px; padding-top: 110px; padding-left: 23px;">

<p class="pad20" style="line-height: 21px">BBQ Dragon takes a simple concept – adding oxygen to fire - and puts some power behind it! Why sit and blow on your charcoal, or wave dishware at it to create a breeze to supply more air?</p>
<p class="pad20" style="line-height: 21px">BBQ Dragon points a steady stream of fire-fueling oxygen directly onto your charcoal, so it's grill-ready in under 10 minutes – hotter and faster than ever! Don't leave your grilling to chance – mechanize your charcoal's oxygen supply with BBQ Dragon!</p>
 </div>
 <div class="fright" style="width: 654px;">
 <img src="Content/Images/diagram_off.jpg" width="654" height="525" usemap="#Mapdiagram" id="diagram" />
 <map name="Mapdiagram">
   <area shape="rect" coords="31,131,166,218" href="javascript:void(0);" class="show1">
   <area shape="rect" coords="198,41,334,123" href="javascript:void(0);" class="show2">
   <area shape="rect" coords="497,45,634,129" href="javascript:void(0);" class="show3">
 </map>
 <img src="Content/Images/diagram_1.jpg" width="654" height="525" style="display: none" usemap="#Mapdiagram1" id="diagram1" />
 <map name="Mapdiagram1">
   <area shape="rect" coords="31,131,166,218" href="javascript:void(0);">
   <area shape="rect" coords="198,41,334,123" href="javascript:void(0);" class="show2">
   <area shape="rect" coords="497,45,634,129" href="javascript:void(0);" class="show3">
 </map>
 <img src="Content/Images/diagram_2.jpg" width="654" height="525" style="display: none" usemap="#Mapdiagram2" id="diagram2" />
 <map name="Mapdiagram2">
   <area shape="rect" coords="31,131,166,218" href="javascript:void(0);" class="show1">
   <area shape="rect" coords="198,41,334,123" href="javascript:void(0);">
   <area shape="rect" coords="497,45,634,129" href="javascript:void(0);" class="show3">
 </map>
 <img src="Content/Images/diagram_3.jpg" width="654" height="525" style="display: none" usemap="#Mapdiagram3" id="diagram3" />
 <map name="Mapdiagram3">
   <area shape="rect" coords="31,131,166,218" href="javascript:void(0);" class="show1">
   <area shape="rect" coords="198,41,334,123" href="javascript:void(0);" class="show2">
   <area shape="rect" coords="497,45,634,129" href="javascript:void(0);">
 </map>
 </div>
 </div>
  </div>
   <div class="home5">
    
 <div class="testblock graybg" style="margin-left: 26px"><p>"Much faster and less cumbersome than those coal chimneys, and better looking too. ”</p><div class="blockauthor">- The Awesomer</div></div>  
 <div class="testblock graybg"><p>"The BBQ Dragon is a grill accessory…that lets you easily start a fire whether you want to turn on the grill or simply start a fire on the beach.”</p><div class="blockauthor">- The CrowdFund Mafia</div></div> 
 <div class="testblock graybg"><p>"The most annoying part of a charcoal grill is waiting for the coals to heat up. With the BBQ Dragon, your wait time is reduced to a mere ten minutes.”</p><div class="blockauthor">- The Gadgeteer</div></div> 
 <div class="clear"></div>
 <div class="testblock graybg" style="margin-left: 26px"><p>"Say hello to the BBQ Dragon, a portable grill-starting device that turns a smoldering pile of charcoal into a hellfire of meat-searing glory in under 10 minutes, available for preorder now.”</p><div class="blockauthor">- Urban Daddy</div></div> 
 <div class="testblock graybg"><p>"Start it up and watch as your pile of normally slow-to-be-ready charcoal gets to optimal temperature in as little as 10 minutes.”</p><div class="blockauthor">- Oh Gizmo</div></div>
 <div class="testblock orangebg" style="cursor: pointer" onclick="location.href='AddProduct.aspx?PId=102&CId=2&page=onePay'"><p>BBQ Dragon
The Fire Supercharger<br>
<span class="webfont1">Never before has there been a product that substantially improves America’s most popular past time: barbecue.<br>
<br>
<span class="white webfont1 scored">Try it Now!</span></span></div>
   <div class="clear"></div> 
   
   </div>
 </div>
 
 
 
  <uc:TrackingPixels ID="TrackingPixels" runat="server" />
  <!--#include file="bottomcta.html"-->
</div>

<!--#include file="footer.html"-->
 </form>
</body>
</html>
