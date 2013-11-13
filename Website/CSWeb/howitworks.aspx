<%@ Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Root.Store.index" EnableSessionState="True" %>
<%@ Register Src="UserControls/TrackingPixels.ascx" TagName="TrackingPixels" TagPrefix="uc" %>
<%@ Register Src="UserControls/ShippingForm.ascx" TagName="BillingFormControl"
    TagPrefix="uc" %> 

<!doctype html>
<html>
<head runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">
<meta charset="utf-8"> 
<title>HOW IT WORKS:  BBQ Dragon - Supercharge your barbecue</title>
<meta name="description" content="Get Your BBQ Hot & Ready Fast! Your Charcoal Grill will heat up hotter and faster, hands-free!" />
<meta name="keywords" content="Barbecue, BBQ Dragon, Grilling, Charcoal Grill" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/Scripts/fancybox/jquery.fancybox.css">
<script src="/Scripts/fancybox/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="/scripts/jwplayer/jwplayer.js"></script>
<script src="/Scripts/jquery.cycle.js"></script>
<script type="text/javascript">jwplayer.key="JEtVDryJGkO9Q215yroU+Wz4oLeTJGMccGU/Wb3Kv9s=";</script>
<script src="/Scripts/global.js"></script>
<script>
	  $('.slides').cycle({
                fx: 'scrollHorz',
                timeout: 0,
                speed: 500,
                cleartypeNoBg: true,
				next: '.next',
				prev: '.prev',
				pager: '.navthumbs'
            });
</script>
<link href="styles/global.css" rel="stylesheet" type="text/css" />
</head>
 
<body>
 <form runat="server" id="fm1">
<!--#include file="header.html"-->

<!--#include file="popups.html"-->
<div class="container">
<div class="left" style="background: url(/content/images/how_bg.jpg) no-repeat 350px 0;">
<h2>How It Works</h2>
<div style="width: 300px; float:left; margin-right: 20px;">
<p class="webfont1 f22 pad6" style="color: #2d2d2d">What is BBQ Dragon?</p>
<p>BBQ Dragon is the BBQ tool that takes your charcoal grilling experience to the next level. You've never had a charcoal grill heat up faster and get hotter than with BBQ Dragon! Fire needs 2 things: fuel and oxygen, but why hope for a breeze or fan with a paper plate? Get serious about grilling and get BBQ Dragon. </p>
<p class="webfont1 f22 pad6" style="color: #2d2d2d">Quality Design</p>
<p>BBQ Dragon's high-powered fan brings lots of air to your charcoal, but at low velocity so you don't blow ash all over the place. And the stainless steel neck lets you position BBQ Dragon however you need it. With a variable speed motor, your BBQ Dragon helps you build any kind of fire – faster and better! </p>

<p class="webfont1 f22 pad6" style="color: #2d2d2d">Use it Everywhere!</p>
<p>You take grilling seriously, and that means you might be building fires in all sorts of situations. BBQ Dragon is your durable, reliable BBQ tool that means you're prepared to build the best, fastest fires no matter where you are. Just clamp on BBQ Dragon and fuel your fire! </p>
</div>
<div style="width: 273px; margin-right: -90px; float:left;">
  <p><img src="Content/Images/howpic1.jpg" width="273" height="325" /></p>
  <p><img src="Content/Images/howpic2.jpg" width="271" height="175" /></p>
</div>
<div class="clear"></div>


</div>
<div class="right">
 <uc:BillingFormControl ID="sfcShippingInfo" runat="server" RedirectUrl="AddProduct.aspx" />
 </div>
 <div class="clear"></div>
 
 <div>
 <div style="width: 921px; border: 1px solid #d7d7d7; padding: 40px 12px; margin: 0 auto 30px;" class="clearfix">
 <div class="fleft" style="width: 238px">
<h2>HOW IT WORKS</h2>
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
 
 
<div style="margin: 30px 0 60px"><a href="AddProduct.aspx?PId=102&CId=2&page=onePay"><img src="Content/Images/testimonial_ctabar.jpg" width="950" height="55" /></a></div> 
 
 
 <h2 style="margin-left: 20px;">Demonstration</h2>
   <div class="videosmall"> <div id="vidsmall1"></div> <script type='text/javascript'>
  jwplayer('vidsmall1').setup({
	file: '/content/video/how1.mp4',
	autostart: false,
    primary: "flash",   
	image: "/content/images/howposter1.jpg",
	controls: true,
    width: 300, height: 169,
	stretching: 'exactfit',
	skin: '/scripts/jwplayer/five.xml',
	events:{
	onPlay: function() {
   	jwplayer('vidsmall2').stop();	
   	jwplayer('vidsmall3').stop();
	
	}}
	
  });
</script></div>
  <div class="videosmall"> <div id="vidsmall2"></div> <script type='text/javascript'>
  jwplayer('vidsmall2').setup({
	file: '/content/video/how2.mp4',
	autostart: false,
    primary: "flash",   
	image: "/content/images/howposter2.jpg",
	controls: true,
    width: 300, height: 169,
	stretching: 'exactfit',
	skin: '/scripts/jwplayer/five.xml',
	events:{
	onPlay: function() {
   	jwplayer('vidsmall1').stop();	
   	jwplayer('vidsmall3').stop();
	
	}}
	
  });
</script></div>
   <div class="videosmall"> <div id="vidsmall3"></div> <script type='text/javascript'>
  jwplayer('vidsmall3').setup({
	file: '/content/video/how3.mp4',
	autostart: false,
    primary: "flash",   
	image: "/content/images/howposter3.jpg",
	controls: true,
    width: 300, height: 169,
	stretching: 'exactfit',
	skin: '/scripts/jwplayer/five.xml',
	events:{
	onPlay: function() {
   	jwplayer('vidsmall2').stop();	
   	jwplayer('vidsmall1').stop();
	
	}}
	
  });
</script></div>
<div class="clear"></div>

<div class="slidecontainer">
<div class="slides">

<div class="slide clearfix">
<img src="Content/Images/howslide1.jpg" width="599" height="472" class="fright" />
<div class="fleft" style="width: 228px; margin-left: 93px;">
<h2>Key Features</h2>
<h3><span class="orange">1.</span> High Powered Fan</h3>
<p>With BBQ Dragon's high-powered fan, you're finally in control of how much air is added to your charcoal – hands-free! With a large volume of air arriving at low speed, ash stays in your grill, while air constantly supplies your charcoal fire to create a hotter, faster fire that is grill-ready in under 10 minutes!</p>
</div>
</div>

<div class="slide clearfix">
<img src="Content/Images/howslide2.jpg" width="599" height="472" class="fright" />
<div class="fleft" style="width: 228px; margin-left: 93px;">
<h2>Key Features</h2>
<h3><span class="orange">2.</span> Inlet & Discharge Grills</h3>
<p>Keep unwanted things out of the Dragon while allowing efficient airflow, and the stainless steel fan housing stands up to the toughest abuse.</p>
</div>
</div>


<div class="slide clearfix">
<img src="Content/Images/howslide3.jpg" width="599" height="472" class="fright" />
<div class="fleft" style="width: 228px; margin-left: 93px;">
<h2>Key Features</h2>
<h3><span class="orange">3.</span> Micro-USB Port</h3>
<p>To recharge the optional NiMh batteries using your existing home and car chargers. The 4 AA batteries are also replaceable – in case you’re camping, or just forgot to charge up. Fully charged batteries power the BBQ Dragon up to three hours at a medium speed.</p>
</div>
</div>


<div class="slide clearfix">
<img src="Content/Images/howslide4.jpg" width="599" height="472" class="fright" />
<div class="fleft" style="width: 228px; margin-left: 93px;">
<h2>Key Features</h2>
<h3><span class="orange">4.</span> Variable Speed Motor</h3>
<p>For just the right amount of air to any size fire. The specially designed high speed airfoil rotor works super-efficiently with the high-quality motor, providing not only incredibly long run times so that you’re always ready to start a fire, but a long lasting, durable tool for your grill.</p>
</div>
</div>


<div class="slide clearfix">
<img src="Content/Images/howslide5.jpg" width="599" height="472" class="fright" />
<div class="fleft" style="width: 228px; margin-left: 93px;">
<h2>Key Features</h2>
<h3><span class="orange">5.</span> Ergonomic Handle</h3>
<p>Are always outside of the grill so they stay cool to the touch and protect the advanced electronics from heat, and the innovative design looks fantastic. The stainless steel fan housing also remains cool to the touch because it is always drawing in cold air.</p>
</div>
</div>

<div class="slide clearfix">
<img src="Content/Images/howslide6.jpg" width="599" height="472" class="fright" />
<div class="fleft" style="width: 228px; margin-left: 93px;">
<h2>Key Features</h2>
<h3><span class="orange">6.</span> Versatile 
    Spring-Loaded Clamp</h3>
<p>Opens wide and attaches to a variety of grills, fire pits and more.</p>
</div>
</div>


<div class="slide clearfix">
<img src="Content/Images/howslide7.jpg" width="599" height="472" class="fright" />
<div class="fleft" style="width: 228px; margin-left: 93px;">
<h2>Key Features</h2>
<h3><span class="orange">7.</span> Grill Lock Design</h3>
<p>Locks on to any grill to hold tight 
and reduce movement. The versatile clamp opens wide and attaches to virtually anything: grills, smokers, fire-pits, fireplaces, campfires, wood stoves, and more. The BBQ Dragon can be used anywhere, attached 
to anything.</p>
</div>
</div>




</div>
<div class="prev"><img src="Content/Images/leftarrow.jpg" width="36" height="51" /></div>
<div class="next"><img src="Content/Images/rightarrow.jpg" width="36" height="51" /></div>
<div class="navthumbs"></div>
</div>
 
 </div>
 

 
 
  <uc:TrackingPixels ID="TrackingPixels" runat="server" />
  <!--#include file="bottomcta.html"-->
</div>

<!--#include file="footer.html"-->
 </form>
</body>
</html>
