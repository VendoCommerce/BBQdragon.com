<%@ Control Language="C#" AutoEventWireup="true" Inherits="CSWeb.Cart_A.UserControls.ReviewOrder" CodeBehind="ReviewOrder.ascx.cs" %>
    <div id="receipt_content" style="width: 801px; margin: 0 auto; padding: 30px 0">        
        <asp:DataList runat="server" ID="dlShoppingCart" OnItemDataBound="dlShoppingCart_OnItemDataBound"
            DataKeyField="SkuId" OnItemCommand="dlShoppingCart_OnItemCommand">
            <HeaderTemplate>
                <table border="0" cellpadding="2" cellspacing="1" style='width: 100%;' class="cart_table">
            </HeaderTemplate>
            <ItemTemplate>
                <tr align="left">
                    <td>
                        <asp:Label runat="server" ID='lblSkuDescription' CssClass="basket_description"></asp:Label>
                        <asp:Label runat="server" ID='lblSkuCode'></asp:Label>
                    </td>
                    <td align="center">
                        <asp:TextBox runat="server" ID="txtQuantity" Font-Size="8pt" MaxLength="3" Columns="2"></asp:TextBox>
                    </td>
                    <td align="center">
                        <asp:Label runat="server" ID='lblSkuInitialPrice' CssClass="product_price"></asp:Label>
                    </td>
                    <td runat="server" width="1%" id='holderRemove'>
                        <asp:ImageButton ID="btnRemoveItem" runat="server" CommandName="delete" CausesValidation="false"
                            CssClass="ucRemoveButtonOverlay" ImageUrl="../Content/images/delete.gif" />
                    </td>
                </tr>
            </ItemTemplate>
           
        </asp:DataList>
        <tr>
            <td colspan="4" align="right">
                     <asp:Button ID="btnUpdate" runat="server" OnCommand="btnUpdate_OnCommand" Text="Update"
                    CausesValidation="true" />
            </td>
        </tr>
        <asp:Panel ID="pnlTotal" runat="server">
            <tr>
                <td colspan="4" class="horizontal_dots">
                </td>
            </tr>
            <tr>
                <td class='cartSubtotalTitle' align="right" colspan="3">
                    Subtotal:
                </td>
                <td class='cartSubtotalValue' align="center">
                    <asp:Literal runat="server" ID='lblSubtotal'></asp:Literal>
                </td>
            </tr>
            <tr>
                <td class='cartSubtotalTitle' align="right" colspan="3">
                    Tax:
                </td>
                <td class='cartSubtotalValue' align="center">
                    <asp:Literal runat="server" ID="lblTax"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td class='cartSubtotalTitle' align="right" colspan="3">
                    Shipping:
                </td>
                <td class='cartSubtotalValue' align="center">
                    <asp:Literal runat="server" ID="lblShipping"></asp:Literal>
                </td>
            </tr>
            <tr id='holderRushShippingTotal' runat="server">
                <td class='cartSubtotalTitle' align="right" colspan="3">
                    Rush Shipping:
                </td>
                <td class='cartSubtotalValue' align="center">
                    <asp:Literal runat="server" ID="lblRushShipping"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td class='cartSubtotalTitle' align="right" colspan="3">
                    Order Total:
                </td>
                <td class='cartSubtotalValue' align="center">
                    <asp:Literal runat="server" ID="lblOrderTotal"></asp:Literal>
                </td>
            </tr>     </table>
        </asp:Panel>
   

<div class="form_line_btn">
    <asp:ImageButton ID="ImageButton1" TabIndex="129" OnClick="btnTry_OnClick" runat="server" ImageUrl="../Content/images/try_it_now_btn.png" />
</div>

</div>
