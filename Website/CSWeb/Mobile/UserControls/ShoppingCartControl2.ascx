<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCartControl2.ascx.cs"
    Inherits="CSWeb.Mobile.UserControls.ShoppingCartControl2" %>
<asp:LinkButton ID="refresh" runat="server" CausesValidation="false"></asp:LinkButton>
<asp:Repeater runat="server" ID="rptShoppingCart" OnItemDataBound="rptShoppingCart_OnItemDataBound"
    OnItemCommand="rptShoppingCart_OnItemCommand">
    <HeaderTemplate>
    	<div class="cart_table clearfix" style="margin-top: 20px">
        	<div class="cart_image" style="width: 260px;">Item</div>
            <div class="cart_remove">Remove</div>
            <div class="cart_select2">Qty</div>
            <div class="product_price">Price</div>
        </div>   
        <div class="horizontal_dots"></div>
    </HeaderTemplate>
    <ItemTemplate>
        <div class="cart_table clearfix">
			<div class="cart_image" style="width: 260px;">
              <asp:Image runat="server" ID="imgProduct" />
            </div>
     
            <div class="cart_remove">  <td runat="server" id='holderRemove'>
             <p><asp:ImageButton ID="btnRemoveItem" runat="server" CommandName="delete" CausesValidation="false" Visible="" CssClass="ucRemoveButtonOverlay" ImageUrl="/content/images/btn_remove.png" style="padding: 10px;" /></p>
                </td>
                     </div>
            <div class="cart_select2">

                <asp:TextBox runat="server" ID="txtQuantity" Text='1' Enabled="false" MaxLength="3" Columns="2" OnTextChanged="OnTextChanged_Changed"></asp:TextBox>
                <asp:Label runat="server" ID="lblQuantity" Visible="false">
                </asp:Label>
              </div>
            <div class="product_price">
                <asp:Label runat="server" ID="lblSkuInitialPrice"></asp:Label>
            </div>
            
            <div class="clear"></div>
            
            <div class="cart_text2">
           
                    <asp:Label runat="server" ID="lblSkuCode"></asp:Label>
                <div class="basket_description">
                    <asp:Label runat="server" ID='lblSkuDescription'></asp:Label></div>
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
                Subtotal:<br />
                S&amp;H:<br />
                Tax:
                <br />
                Total:</div>
            <div class="cart_totals_right">
                <asp:Literal runat="server" ID='lblSubtotal'></asp:Literal><br />
                <asp:Literal runat="server" ID="lblShipping"></asp:Literal><br />
                <asp:Literal runat="server" ID="lblTax"></asp:Literal>
                <br />
                <asp:Literal runat="server" ID="lblOrderTotal"></asp:Literal>
                <asp:Literal runat="server" ID="lblRushShipping" Visible="false"></asp:Literal>
            </div>
        </div>
        
        <p><a href="products.aspx" class="orange" style="text-decoration: none;">&lt; Continue Shopping</a></p>

    </asp:PlaceHolder>
</asp:Panel>
 