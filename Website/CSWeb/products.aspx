<%@ Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Root.Store.index" EnableSessionState="True" %>
<%@ Register Src="UserControls/TrackingPixels.ascx" TagName="TrackingPixels" TagPrefix="uc" %>

<!doctype html>
<html>
    <head id="Head1" runat="server">
        <meta charset="utf-8">    
        <title>Products | BBQ Dragon - Supercharge your barbecue</title>
        <meta name="description" content="Get Your BBQ Hot & Ready Fast! Your Charcoal Grill will heat up hotter and faster, hands-free!" />
<meta name="keywords" content="Barbecue, BBQ Dragon, Grilling, Charcoal Grill" />
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="/Scripts/fancybox/jquery.fancybox.css">
        <script src="/Scripts/fancybox/jquery.fancybox.pack.js"></script>
        <script type="text/javascript" src="/scripts/jwplayer/jwplayer.js"></script>
        <script src="/Scripts/jquery.cycle.js"></script>
        <script type="text/javascript">            jwplayer.key = "JEtVDryJGkO9Q215yroU+Wz4oLeTJGMccGU/Wb3Kv9s=";</script>
        <script src="/Scripts/global.js"></script>
        <link href="/styles/global.css" rel="stylesheet" type="text/css" />
    </head>
 
    <body>
        <form runat="server" id="fm1">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <!--#include file="popups.html"-->
                    <!--#include file="header.html"-->
                    <div class="container">
                        <div class="page" style="padding: 36px 25px 250px 25px;">
                            
                            

                            <h2>Accessories</h2>
                            <div class="product_box">
                                <div class="product_title"></div>
                                <div class="product_image">
                                	<a href="#battery_kit" class="battery_kit"><img src="/content/Images/prod_battery_kit.jpg" width="196" height="196" alt="Rechargeable Battery Kit" /></a>
                                	<p><a href="#battery_kit" class="battery_kit">View Larger Image</a></p>
                                </div>
                                <div class="product_info">
                                	
                                    <h3>Rechargeable Batteries and AC Wall Charger</h3>
                                    <p>This is a must-have BBQ Dragon companion product. The BBQ Dragon was designed to be chargeable and super-convenient. Get the official BBQ Dragon charger and battery kit.</p>
                                    <p>4 x Super High-quality BBQ Dragon NiMh (nickel metal hydride) AA batteries, 2500mAh of charge capacity. These top of the line rechargeables are manufactured to our standards, especially for BBQ Dragon, and you can't purchase better batteries. A full charge on these bad boys will run your BBQ Dragon for more than two hours at a medium speed, and start dozens of fires. That's a lot of seared steak, my friend.</p>
                                    
                                    <p class="webfont1 f14" style="color: #565656;">
                                    	<span class="webfont2 f16">Price: $29.99</span> + $7.99 S&amp;H
                                    </p>
                                    <div class="fleft" style="width: 90px; padding-top: 6px;">
                                    	<label>Qty.</label>
                                        <asp:DropDownList ID="ddlBattery" runat="server" AutoPostBack="True">
                                            <asp:ListItem Text="1" Value="1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="fleft" style="width: 200px;"><a href="AddProduct.aspx?Pid=107&Cid=2&page=lacart&Qid=<%=ddlBattery.SelectedValue%>"><img src="/Content/Images/btn_addtocart.png" width="146" height="30" alt="Add to Cart" /></a></div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                           
                            <div class="clear"></div>
                           
                        </div>
                        
					<!--#include file="bottomcta.html"-->
                    </div>
                    <!--#include file="footer.html"-->

                    <uc:TrackingPixels ID="TrackingPixels" runat="server" />

                </ContentTemplate>
            </asp:UpdatePanel>
        </form>
        
        

    </body>
</html>
