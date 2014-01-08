<%@ Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Mobile.Store.index" EnableSessionState="True" %>
<%@ Register Src="UserControls/TrackingPixels.ascx" TagName="TrackingPixels" TagPrefix="uc" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=640px, initial-scale=.5, maximum-scale=.5" /> 
<title>Products | BBQ Dragon - Supercharge your barbecue</title>
        <meta name="description" content="Get Your BBQ Hot & Ready Fast! Your Charcoal Grill will heat up hotter and faster, hands-free!" />
<meta name="keywords" content="Barbecue, BBQ Dragon, Grilling, Charcoal Grill" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
<script type="text/javascript" src="/Scripts/fancybox/jquery.fancybox.pack.js"></script>
<link href="/Scripts/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="/Scripts/jwplayer/jwplayer.js"></script>
<script type="text/javascript" src="/Scripts/global.js"></script>
<link href="/styles/global_mobile.css" rel="stylesheet" type="text/css" />

<script>
$(document).ready(function () {
  $("#more_1").click(function() {
    $("#more_1_wrap").slideUp(500);
	$("#more_1_text").slideDown(500);
  });
});
</script>

</head>
<body>
        <form runat="server" id="fm1">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
  
<div class="container">
<!--#include file="popups.html"-->
<!--#include file="header_products.html"-->

<div class="content">
                       <h2>Accessories</h2>
                            
                            <div class="product_box">
                                <div class="product_title">
                                	<h3>Rechargeable Batteries and AC Wall Charger</h3>
                                </div>
                                <div class="product_image">
                                	<p><img src="/content/Images/mobile/prod_battery_kit.jpg" width="312" height="274" alt="Rechargeable Battery Kit" /></p>
                                </div>
                                <div class="product_info">
                                    <p>This is a must-have BBQ Dragon companion product. The BBQ Dragon was designed to be chargeable and super-convenient. Get the official BBQ Dragon charger and battery kit.
                                    </p>
                                    
                                    <p id="more_1_wrap"><a href="javascript:void(0)" id="more_1"><strong>Read More...</strong></a></p>
                                    
                                    <div id="more_1_text" style="display: none;">
                                      <p>4 x Super High-quality BBQ Dragon NiMh (nickel metal hydride) AA batteries, 2500mAh of charge capacity. These top of the line rechargeables are manufactured to our standards, especially for BBQ Dragon, and you can't purchase better batteries. A full charge on these bad boys will run your BBQ Dragon for more than two hours at a medium speed, and start dozens of fires. That's a lot of seared steak, my friend.</p>
                                    </div>
                                    
                                    <div class="product_bottom">
                                      <div class="info_left fright webfont2 f30" style="padding-right: 24px;">
                                          <label style="color: #fff;">Qty.</label>
                                          <asp:DropDownList ID="ddlBattery" runat="server" AutoPostBack="True" CssClass="text-4">
                                              <asp:ListItem Text="1" Value="1" Selected="True"></asp:ListItem>
                                              <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                              <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                          </asp:DropDownList>
                                      </div>
                                      
                                      <p class="webfont2 f24" style="padding-top: 10px;">
                                          <span class="f34">Price: $29.99 </span> + $7.99 S&amp;H
                                      </p>
                                      
                                      <div class="info_right" style="padding-top: 10px;">
                                          <p class="pad0"><a href="AddProduct.aspx?Pid=107&Cid=2&page=lacart&Qid=<%=ddlBattery.SelectedValue%>"><img src="/Content/Images/mobile/btn_addtocart.png" width="567" height="116" /></a></p>
                                      </div>
                                    </div>
                                    
                                    <div class="clear"></div>
                                </div>
                            </div>
                           
                            

      <div class="clear" style="height: 300px;"></div>
							
                            
                            <img src="../Content/Images/mobile/cta.jpg" alt="imageName" class="block" usemap="#Mapcta" />
  <map name="Mapcta">
    
    <area shape="circle" coords="104,318,101" href="#guarantee" class="guarantee">
    <area shape="rect" coords="7,691,630,978" href="cart.aspx">
  </map>
                            
                        </div>
       <!--#include file="footer.html"-->
                    </div>
             

                    <uc:TrackingPixels ID="TrackingPixels" runat="server" />

                </ContentTemplate>
            </asp:UpdatePanel>
        </form>
        
        

    </body>
</html>
