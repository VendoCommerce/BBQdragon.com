<%@ Control Language="C#" AutoEventWireup="true" Inherits="CSWeb.Mobile.UserControls.ShippingForm" CodeBehind="ShippingForm.ascx.cs" %>
 <%@ Register Src="ShoppingCartControl.ascx" TagName="ShoppingCartControl"
              TagPrefix="uc" %>
                 <%@ Register Src="ShoppingCartControl2.ascx" TagName="ShoppingCartControl2"
    TagPrefix="uc" %>
<asp:ScriptManager runat="server" ID="sm1">
</asp:ScriptManager>
<asp:UpdatePanel ID="upBillingForm" runat="server">
    <ContentTemplate>
        <%--<img src="/content/images/mobile/cart_top.jpg" />--%>
         <asp:Panel runat="server" ID="pnlRegularCart">
      <uc:ShoppingCartControl ID="ShoppingCartControl1" runat="server" OnUpdateShipping="Shipping_OnUpdateShipping"></uc:ShoppingCartControl>   
      </asp:Panel>
        
        <asp:Panel runat="server" ID="pnlAlaCart" Visible="False">
        <uc:ShoppingCartControl2 ID="ShoppingCartControl13" runat="server" OnUpdateShipping="Shipping_OnUpdateShipping"></uc:ShoppingCartControl2>   
        </asp:Panel>   
        <div class="cart_mobile">
        
        
          <div class="form_line clearfix" style="padding-left: 15px;" runat="server" visible="false">
          <div class="error-1">
              <asp:Label ID="lblShippingCountryError" runat="server" Visible="false"></asp:Label></div><asp:RadioButtonList ID="ddlShippingCountry" runat="server" DataTextField="NAME" RepeatLayout="Table" RepeatDirection="Horizontal" DataValueField="COUNTRYID"
                  AutoPostBack="true" OnSelectedIndexChanged="ShippingCountry_SelectedIndexChanged" CssClass="countryselect">
              </asp:RadioButtonList>
          </div>
          
      <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvShippingFirstName" runat="server" Display="Dynamic" ControlToValidate="txtShippingFirstName"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblShippingFirstNameError" runat="server" Visible="false">
                    </asp:Label>
                </div>
                <asp:TextBox ID="txtShippingFirstName" runat="server" MaxLength="14" CssClass="text-1" placeholder="First Name"></asp:TextBox>
            </div>
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvShippingLastName" runat="server" Display="Dynamic"  ControlToValidate="txtShippingLastName"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblShippingLastNameError" runat="server" Visible="false"></asp:Label>
                </div>
                <asp:TextBox ID="txtShippingLastName" runat="server" MaxLength="14" CssClass="text-1" placeholder="Last Name"></asp:TextBox>
            </div>
             <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" Display="Dynamic" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                                                    Display="Dynamic" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" />
                    <asp:Label ID="lblEmailError" runat="server" Visible="false"></asp:Label></div>

                <asp:TextBox ID="txtEmail" runat="server" MaxLength="100" CssClass="text-1" placeholder="Email Address"></asp:TextBox>
            </div>
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvShippingAddress1" runat="server" Display="Dynamic"
                                                ControlToValidate="txtShippingAddress1"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblShippingAddress1Error" runat="server" Visible="false"></asp:Label></div>
                
                <asp:TextBox ID="txtShippingAddress1" runat="server" MaxLength="30" CssClass="text-1" placeholder="Shipping Address"></asp:TextBox>
                
                <asp:TextBox ID="txtShippingAddress2" runat="server" MaxLength="30" CssClass="text-1" placeholder="Shipping Address 2" Visible="false"></asp:TextBox>
    
            </div>
     
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvShippingCity" runat="server" Display="Dynamic"
                                                ControlToValidate="txtShippingCity"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblShippingCityError" runat="server" Visible="false"></asp:Label></div>
                
                <asp:TextBox ID="txtShippingCity" runat="server" MaxLength="30" CssClass="text-1" placeholder="City"></asp:TextBox>
            </div>
            <div class="form_line clearfix">
                <div class="error-1">
                     <asp:RequiredFieldValidator ID="rfvShippingState" runat="server" Display="Dynamic"
                                                    ControlToValidate="ddlShippingState"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblShippingStateError" runat="server" Visible="false"></asp:Label>
                </div>
               
                <asp:DropDownList ID="ddlShippingState" runat="server" DataTextField="NAME" CssClass="text-1" >
                </asp:DropDownList>
            </div>
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvShippingZipCode" runat="server" Display="Dynamic"
                                                ControlToValidate="txtShippingZipCode"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblShippingZiPError" runat="server" Visible="false"></asp:Label></div>

                <asp:TextBox ID="txtShippingZipCode" runat="server" MaxLength="7" CssClass="text-1" placeholder="ZIP Code"></asp:TextBox>
            </div>
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" Display="Dynamic"
                                                ControlToValidate="txtPhoneNumber"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblShippingPhoneNumberError" runat="server" Visible="false"></asp:Label></div>
                
                <asp:TextBox ID="txtPhoneNumber" runat="server" MaxLength="14" CssClass="text-1" placeholder="Phone Number"></asp:TextBox>
            </div>
          
            <asp:Panel ID="pnlQuantity" runat="server" Visible="false">
                <div class="form_line clearfix">
                    <div class="error-1">
                        <asp:Label ID="lblQuantityList" runat="server" Visible="false"></asp:Label></div>
                    <label class="label-1">
                        Quantity*</label>
                    <asp:DropDownList ID="ddlQuantityList" runat="server" CssClass="text-1" placeholder="">
                        <asp:ListItem Value="select" Text="Select"></asp:ListItem>
                        <asp:ListItem Value="1" Text="1"></asp:ListItem>
                        <asp:ListItem Value="2" Text="2"></asp:ListItem>
                        <asp:ListItem Value="3" Text="3"></asp:ListItem>
                        <asp:ListItem Value="4" Text="4"></asp:ListItem>
                        <asp:ListItem Value="5" Text="5"></asp:ListItem>
                        <asp:ListItem Value="6" Text="6"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </asp:Panel>
      
            <div class="form_line_btn">
                 <asp:Label ID="lblShoppingCart" runat="server" Visible="false"></asp:Label>
                <asp:ImageButton ID="imgBtn" runat="server" ImageUrl="/content/images/mobile/continue_btn.jpg" OnClick="imgBtn_OnClick" />
               
            </div>
 

        </div>
        
</ContentTemplate>
</asp:UpdatePanel>