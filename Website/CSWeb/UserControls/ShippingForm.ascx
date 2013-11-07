<%@ Control Language="C#" AutoEventWireup="true" Inherits="CSWeb.Root.UserControls.ShippingForm" CodeBehind="ShippingForm.ascx.cs" %>
<asp:ScriptManager runat="server" ID="sm1">
</asp:ScriptManager>
<asp:UpdatePanel ID="upBillingForm" runat="server">
    <ContentTemplate>
        <div class="cartB">
        	<div><img src="../Content/Images/form_top.png" width="115" height="38" style="position: relative; left: 198px;" /></div>
          <div class="form_line clearfix" style="padding-left: 15px;" runat="server" visible="false">
          <div class="error-1">
              <asp:Label ID="lblShippingCountryError" runat="server" Visible="false"></asp:Label></div>
         
              <asp:RadioButtonList ID="ddlShippingCountry" runat="server" DataTextField="NAME" RepeatLayout="Table" RepeatDirection="Horizontal" DataValueField="COUNTRYID"
                  AutoPostBack="true" OnSelectedIndexChanged="ShippingCountry_SelectedIndexChanged" CssClass="countryselect">
              </asp:RadioButtonList>
              
              <div class="canada_shipping">*$20 S&H FEE APPLIES</div>
          </div>
          <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvShippingFirstName" runat="server" Display="Dynamic"
                                                ControlToValidate="txtShippingFirstName"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblShippingFirstNameError" runat="server" Visible="false">
                    </asp:Label>
                </div>
                <asp:TextBox ID="txtShippingFirstName" runat="server" MaxLength="14" CssClass="text-1" placeholder="First Name*"></asp:TextBox>
            </div>
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvShippingLastName" runat="server" Display="Dynamic"
                                                ControlToValidate="txtShippingLastName"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblShippingLastNameError" runat="server" Visible="false"></asp:Label>
                </div>
                <asp:TextBox ID="txtShippingLastName" runat="server" MaxLength="14" CssClass="text-1" placeholder="Last Name*"></asp:TextBox>
            </div>
            <%--<div class="form_line clearfix" runat="server" Visible="False">
                <div class="error-1">
                    <asp:Label ID="lblShippingCountryError" runat="server" Visible="false"></asp:Label></div>
                <label class="label-1">
                    Country*</label>
                <asp:DropDownList ID="ddlShippingCountry" runat="server" DataTextField="NAME" DataValueField="COUNTRYID"
                                  AutoPostBack="true" OnSelectedIndexChanged="ShippingCountry_SelectedIndexChanged"
                                  CssClass="text-1" placeholder="">
                </asp:DropDownList>
            </div>--%>
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvShippingAddress1" runat="server" Display="Dynamic"
                                                ControlToValidate="txtShippingAddress1"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblShippingAddress1Error" runat="server" Visible="false"></asp:Label></div>
                
                <asp:TextBox ID="txtShippingAddress1" runat="server" MaxLength="30" CssClass="text-1" placeholder="Shipping Address*"></asp:TextBox>
            </div>
            <div class="form_line clearfix">
                <div class="error-1">
                </div>
                <asp:TextBox ID="txtShippingAddress2" runat="server" MaxLength="30" CssClass="text-1" placeholder="Shipping Address 2"></asp:TextBox>
            </div>
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvShippingCity" runat="server" Display="Dynamic"
                                                ControlToValidate="txtShippingCity"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblShippingCityError" runat="server" Visible="false"></asp:Label></div>
                
                <asp:TextBox ID="txtShippingCity" runat="server" MaxLength="30" CssClass="text-1" placeholder="City*"></asp:TextBox>
            </div>
            <div class="form_line clearfix">
                <div class="error-1">
                     <asp:RequiredFieldValidator ID="rfvShippingState" runat="server" Display="Dynamic"
                                                    ControlToValidate="ddlShippingState"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblShippingStateError" runat="server" Visible="false"></asp:Label>
                </div>
               
                <asp:DropDownList ID="ddlShippingState" runat="server" DataTextField="NAME" CssClass="text-1"
                                  size="1">
                </asp:DropDownList>
            </div>
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvShippingZipCode" runat="server" Display="Dynamic"
                                                ControlToValidate="txtShippingZipCode"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblShippingZiPError" runat="server" Visible="false"></asp:Label></div>

                <asp:TextBox ID="txtShippingZipCode" runat="server" MaxLength="7" CssClass="text-1" placeholder="Zip Code*"></asp:TextBox>
            </div>
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" Display="Dynamic"
                                                ControlToValidate="txtPhoneNumber"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblShippingPhoneNumberError" runat="server" Visible="false"></asp:Label></div>
                
                <asp:TextBox ID="txtPhoneNumber" runat="server" MaxLength="14" CssClass="text-1" placeholder="Phone*"></asp:TextBox>
            </div>
            <div class="form_line clearfix">
                <div class="error-1">
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" Display="Dynamic" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                                                    Display="Dynamic" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" />
                    <asp:Label ID="lblEmailError" runat="server" Visible="false"></asp:Label></div>

                <asp:TextBox ID="txtEmail" runat="server" MaxLength="100" CssClass="text-1" placeholder="Email Address*"></asp:TextBox>
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
                <asp:ImageButton ID="imgBtn" runat="server" ImageUrl="/content/images/yes_btn.png" OnClick="imgBtn_OnClick" />
               
            </div>
            <div class="form_line_guarantee">
                <a href="#guarantee" class="guarantee">90-Day Money-Back Guarantee</a></div>
            <p style="text-align: center;"><img src="/Content/Images/norton.jpg" alt="Norton Secured powered by VeriSign" /></p>

        </div>
        
        
</ContentTemplate>
</asp:UpdatePanel>