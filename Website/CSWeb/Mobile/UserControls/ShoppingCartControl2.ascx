﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCartControl2.ascx.cs"
    Inherits="CSWeb.Mobile.UserControls.ShoppingCartControl2" %>
<asp:LinkButton ID="refresh" runat="server" CausesValidation="false"></asp:LinkButton>
<asp:Repeater runat="server" ID="rptShoppingCart" OnItemDataBound="rptShoppingCart_OnItemDataBound"
    OnItemCommand="rptShoppingCart_OnItemCommand">
    <HeaderTemplate><div class="cart_table clearfix graybg" style="margin-top: 20px">
                 <div class="cart_image">Item
                 </div>
                  <div class="cart_text2">&nbsp;
                  </div>
                    <div class="cart_remove">Remove
                     </div>
                     <div class="cart_select">Qty
                     </div>
                        <div class="product_price">Price
                        </div>
                        </div>   
                        <div class="horizontal_dots">
        </div>
    </HeaderTemplate>
    <ItemTemplate>
        <div class="cart_table clearfix">
<div class="cart_image"> <asp:Image runat="server" ID="imgProduct" /></div>
     
            <div class="cart_text2">
           
                    <asp:Label runat="server" ID="lblSkuCode"></asp:Label>
                <p class="basket_description">
                    <asp:Label runat="server" ID='lblSkuDescription'></asp:Label></p>
            </div>
            <div class="cart_remove">  <td runat="server" id='holderRemove'>
             <p><asp:ImageButton ID="btnRemoveItem" runat="server" CommandName="delete" CausesValidation="false" Visible="" CssClass="ucRemoveButtonOverlay" ImageUrl="/content/images/mobile/remove_btn.jpg" /></p>
                </td>
                     </div>
            <div class="cart_select">

                <asp:TextBox runat="server" ID="txtQuantity" Text='1' MaxLength="3" Columns="2" OnTextChanged="OnTextChanged_Changed"></asp:TextBox>
                <asp:Label runat="server" ID="lblQuantity" Visible="false">
                </asp:Label>
              </div>
            <div class="product_price"><p>
                <asp:Label runat="server" ID="lblSkuInitialPrice"></asp:Label></p>
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>
<asp:Panel ID="pnlTotal" runat="server">
    <asp:PlaceHolder runat="server" ID="holderTaxAndShipping">
        <div class="horizontal_dots">
        </div>
        <div class="cart_totals clearfix">
            <div class="cart_totals_left">
                SUBTOTAL<br />
                PROCESS & HANDLING<br />
                ESTIMATED TAX
                <br />
               <strong>TOTAL</strong><br>
<br>
</div>
            <div class="cart_totals_right">
                <asp:Literal runat="server" ID='lblSubtotal'></asp:Literal><br />
                <asp:Literal runat="server" ID="lblShipping"></asp:Literal><br />
                <asp:Literal runat="server" ID="lblTax"></asp:Literal>
                <br />
               <strong> <asp:Literal runat="server" ID="lblOrderTotal"></asp:Literal></strong><br>
            </div>
        </div>
        
        <p><a href="products.aspx"><img src="/Content/Images/Mobile/continue_shopping_btn.jpg" width="601" height="140" /></a></p>

    </asp:PlaceHolder>
</asp:Panel>
 