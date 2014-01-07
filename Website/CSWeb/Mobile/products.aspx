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
</head>
 
 
    <body>
        <form runat="server" id="fm1">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
  
<div class="container">
<!--#include file="popups.html"-->
<!--#include file="header_cart.html"-->

<div class="content">
                       <h2>Rechargable Batteries and AC Wall Charger</h2>
                            <p style="width: 567px"></p>
                            <div class="product_box">
                                <div class="product_title"></div>
                                <div class="product_image"><img src="/content/Images/test.jpg" width="216" height="228" /></div>
                                <div class="product_info">
                                    <p>
                                               Price: $29.99 + $7.99 S&H</p>
                                    <div class="info_left"><label>Qty.</label>   <asp:DropDownList ID="ddlBattery" runat="server" AutoPostBack="True">
                                                                                     <asp:ListItem Text="1" Value="1" Selected="True"></asp:ListItem>
                                                                                     <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                                                                     <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                                                                 </asp:DropDownList>
                                    </div>
                                    <div class="info_right"><a href="AddProduct.aspx?Pid=107&Cid=2&page=lacart&Qid=<%=ddlBattery.SelectedValue%>"><img src="/Content/Images/addtocart_btn.png" width="145" height="35" /></a></div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                           
                            

      <div class="clear"></div>

                        </div>
       <!--#include file="footer.html"-->
                    </div>
             

                    <uc:TrackingPixels ID="TrackingPixels" runat="server" />

                </ContentTemplate>
            </asp:UpdatePanel>
        </form>
        
        

    </body>
</html>
