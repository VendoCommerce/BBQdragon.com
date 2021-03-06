﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCartControl2.ascx.cs"
    Inherits="CSWeb.Root.UserControls.ShoppingCartControl2" %>
<asp:LinkButton ID="refresh" runat="server" CausesValidation="false"></asp:LinkButton>
<asp:Repeater runat="server" ID="rptShoppingCart" OnItemDataBound="rptShoppingCart_OnItemDataBound"
    OnItemCommand="rptShoppingCart_OnItemCommand">
    <HeaderTemplate><div class="cart_table clearfix">
                 <div class="cart_image">Item
                 </div>
                  <div class="cart_text2">&nbsp;
                  </div>
                    <div class="cart_remove">Remove
                     </div>
                     <div class="cart_select2">Quantity
                     </div>
                        <div class="product_price text-center">Payment
                        </div>
                        </div>   <div class="horizontal_dots">
        </div>
    </HeaderTemplate>
    <ItemTemplate>
        <div class="cart_table clearfix">
            <div class="cart_image">
                <asp:Image runat="server" ID="imgProduct" />
            </div>
            <div class="cart_text2">
                <p class="basket_title">
                    <asp:Label runat="server" ID="lblSkuCode"></asp:Label></p>
                <p class="basket_description">
                    <asp:Label runat="server" ID='lblSkuDescription'></asp:Label></p>
            </div>
               <div class="cart_remove">
                <div runat="server" width="1%" id='holderRemove'>
                    <asp:ImageButton ID="btnRemoveItem" runat="server" CommandName="delete" CausesValidation="false" Visible="" CssClass="ucRemoveButtonOverlay" ImageUrl="/Content/images/btn_remove.png" />
                </div>
               </div>
            <div class="cart_select2">
           
                <asp:TextBox runat="server" ID="txtQuantity" Text='1' Enabled="False" MaxLength="3" Columns="2" OnTextChanged="OnTextChanged_Changed"></asp:TextBox>
                <asp:Label runat="server" ID="lblQuantity">
                </asp:Label>
              </div>
            <div class="product_price">
                <asp:Label runat="server" ID="lblSkuInitialPrice"></asp:Label>
               
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>
<asp:Panel ID="pnlTotal" runat="server">
    <asp:PlaceHolder runat="server" ID="holderTaxAndShipping">
        <div class="horizontal_dots">
        </div>
        <div class="cart_totals clearfix">
        <a href="products.aspx" class="fleft">&lt; Continue Shopping</a>
            <div class="cart_totals_left">
                Subtotal<br />
                S&amp;H<br />
                Tax <br />
                Total<br>

</div>
            <div class="cart_totals_right">
                <asp:Literal runat="server" ID='lblSubtotal'></asp:Literal><br />
                <asp:Literal runat="server" ID="lblShipping"></asp:Literal><br />
                <asp:Literal runat="server" ID="lblTax"></asp:Literal><br />
                <asp:Literal runat="server" ID="lblOrderTotal"></asp:Literal><br>
          <table>
                    <tr id='holderRushShippingTotal' runat="server" Visible="False">
                        <td class='cartSubtotalTitle' align="right" colspan="3">
                            Rush Shipping:
                        </td>
                        <td class='cartSubtotalValue' align="center">
                        </td>
                    </tr>
                    <tr id='holderRushShipping' runat="server">
                        <td colspan="4" class="rushShipping">
                            
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </asp:PlaceHolder>
</asp:Panel>
