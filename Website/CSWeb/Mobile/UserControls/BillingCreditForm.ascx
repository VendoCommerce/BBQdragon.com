<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BillingCreditForm.ascx.cs"
    Inherits="CSWeb.Mobile.UserControls.BillingCreditForm" %>
    <script type="text/javascript" src="/Scripts/autoTab.js"></script>
<script type="text/javascript">

    var pointerToMicrosoftValidator = ValidatorUpdateIsValid;
    ValidatorUpdateIsValid = function () {
        pointerToMicrosoftValidator();
        if (Page_IsValid) {

        } else {
            MM_showHideLayers('mask', '', 'hide');
        }
        // do something after Microsoft finishes 
    }
</script>
    <%@ Register Src="ShoppingCartControl.ascx" TagName="ShoppingCartControl"
    TagPrefix="uc" %>
<asp:ScriptManager runat="server" ID="smss1">
</asp:ScriptManager>
<asp:UpdatePanel ID="upBillingForm" runat="server">
    <ContentTemplate>
<img src="/Content/Images/mobile/cart2_top.jpg" style="margin-bottom: 20px" />
        <uc:ShoppingCartControl ID="ShoppingCartControl1" runat="server" OnUpdateShipping="Shipping_OnUpdateShipping"></uc:ShoppingCartControl>     


<div class="cart_mobile">
        
    <div><img src="/Content/Images/paymentinfo.jpg" class="block" style="margin-bottom: 20px"/></div>
      
                
                <img src="/Content/Images/mobile/paymentinfo.jpg" width="640" height="135" style="margin-left: -23px" />
                
                  <div class="form_line clearfix" runat="server" visible="false">
                    <div class="error-1">                                                 
                    </div>
                    <label class="label-1" style="width: 70px; font-size: 30px; padding-top: 32px;">
                        Qty*</label>
                    <asp:DropDownList ID="ddlQty" runat="server" CssClass="text-4" AutoPostBack="true"
                        >
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>                    
                    </asp:DropDownList>
                 <div class="freeshipcall"><img src="/Content/Images/mobile/freeshipcall2.jpg"" /></div>
                </div>

            <div class="form_line clearfix">
                <div class="error-2">
                    </div>
                <asp:CheckBox ID="cbBillingDifferent" runat="server" CssClass="checkbox-left" OnCheckedChanged="cbBillingDifferent_CheckedChanged"
                    AutoPostBack="true" Checked="true" />
                <label class="label-2" for="scf_cbBillingDifferent">
                    My billing address is the same as shipping</label>
                
            </div>
            <asp:Panel ID="pnlBillingAddress" runat="server" Visible="false">
                
                
                <div class="form_line clearfix" runat="server" Visible="false">
                    <div class="error-1">
                        <asp:Label ID="lblCountryError" runat="server" Visible="false"></asp:Label></div>
                    <label class="label-1">
                        Country*</label>
                    <asp:DropDownList ID="ddlCountry" runat="server" DataTextField="NAME" DataValueField="COUNTRYID"
                        AutoPostBack="true" OnSelectedIndexChanged="Country_SelectedIndexChanged"
                        CssClass="text-1">
                    </asp:DropDownList>
                </div>
                <div class="form_line clearfix">
                    <div class="error-1">
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" Display="Dynamic"
                            ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblFirstNameError" runat="server" Visible="false">
                        </asp:Label>
                    </div>        <asp:TextBox ID="txtFirstName" runat="server" MaxLength="14" CssClass="text-1" placeholder="First Name"></asp:TextBox>
                </div>
              <div class="form_line clearfix">
                    <div class="error-1">
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" Display="Dynamic" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblLastNameError" runat="server" Visible="false"></asp:Label>
                    </div>
                 
                  <asp:TextBox ID="txtLastName" runat="server" MaxLength="14" CssClass="text-1" placeholder="Last Name"></asp:TextBox>
                </div>
                 <div class="form_line clearfix">
                    <div class="error-1">
                      <asp:RequiredFieldValidator ID="rfvAddress1" runat="server" Display="Dynamic" ControlToValidate="txtAddress1"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblAddress1Error" runat="server" Visible="false"></asp:Label></div>
                  
                  <asp:TextBox ID="txtAddress1" runat="server" MaxLength="30" CssClass="text-1" placeholder="Billing Address"></asp:TextBox>
                </div>
                <div class="form_line clearfix">
                    
                  <asp:TextBox ID="txtAddress2" runat="server" MaxLength="30" CssClass="text-1" placeholder="Billing Address 2"></asp:TextBox>
                </div>
                <div class="form_line clearfix">
                    <div class="error-1">
                        <asp:RequiredFieldValidator ID="rfvCity" runat="server" Display="Dynamic"
                            ControlToValidate="txtCity"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblCityError" runat="server" Visible="false"></asp:Label></div>
                  <asp:TextBox ID="txtCity" runat="server" MaxLength="30" CssClass="text-1" placeholder="City"></asp:TextBox>
                </div>
                 <div class="form_line clearfix">
                    <div class="error-1">
                        <asp:RequiredFieldValidator ID="rfvState" runat="server" Display="Dynamic"
                        ControlToValidate="ddlState"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblStateError" runat="server" Visible="false"></asp:Label>
                    </div>
                     <asp:DropDownList ID="ddlState" runat="server" DataTextField="NAME" CssClass="text-1">
                    </asp:DropDownList>
                </div>
                <div class="form_line clearfix">
                    <div class="error-1">
                      <asp:RequiredFieldValidator ID="rfvZipCode" runat="server" Display="Dynamic" ControlToValidate="txtZipCode"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblZiPError" runat="server" Visible="false"></asp:Label></div>     
                  <asp:TextBox ID="txtZipCode" runat="server" MaxLength="7" CssClass="text-1" placeholder="ZIP Code"></asp:TextBox>
                </div>
            </asp:Panel>
              <div class="form_line">
            <img src="/Content/Images/mobile/cards.jpg" />
            </div>
             <div class="form_line clearfix" runat="server" Visible="False" >
                <div class="error-2">
                    <asp:RequiredFieldValidator ID="rfvCCType" runat="server" Display="Dynamic"
                            ControlToValidate="ddlCCType"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblCCType" runat="server" Visible="false"></asp:Label></div>
           
                <asp:DropDownList ID="ddlCCType" runat="server" CssClass="text-1">
                </asp:DropDownList>
            </div>
       <div class="form_line clearfix">
                <div class="error-2">
                    <asp:RequiredFieldValidator ID="RfvCCNumberError" ControlToValidate="txtCCNumber1" runat="server" Display="Dynamic" />
                    <asp:Label ID="lblCCNumberError" runat="server" Visible="false"></asp:Label>
                </div>
                 <asp:TextBox ID="txtCCNumber1" runat="server" CssClass="text-1" MaxLength="16" placeholder="Credit Card Number"></asp:TextBox>
                        
            </div>
             <div class="form_line clearfix">
              <div class="error-2">
                <asp:RequiredFieldValidator ID="rfvExpMonth" runat="server" Display="Dynamic"
                            ControlToValidate="ddlExpMonth"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="rfvExpYear" runat="server" Display="Dynamic"
                    ControlToValidate="ddlExpYear"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblExpDate" runat="server" Visible="false"></asp:Label></div>
           
                <asp:DropDownList ID="ddlExpMonth" runat="server" CssClass="text-3">
                    
                </asp:DropDownList>
                <asp:DropDownList ID="ddlExpYear" runat="server" CssClass="text-3">
                    
                </asp:DropDownList>
            </div>
            <div class="form_line clearfix">
             <div class="error-2">
                    <asp:RequiredFieldValidator ID="rfvCVV" ControlToValidate="txtCvv" runat="server" Display="Dynamic" />
                    <asp:Label ID="lblEmailError" runat="server" Visible="false"></asp:Label>
                    <asp:Label ID="lblCvvError" runat="server" Visible="false"></asp:Label></div>
            
                <asp:TextBox ID="txtCvv" runat="server" CssClass="text-4" MaxLength="4" placeholder="CVV"></asp:TextBox>    <a class="cvv" href="/content/images/mobile/cvv.png">What is this?</a>
            </div>
           
            <div class="form_line clearfix" style="padding-top: 5px;">
                <input type="checkbox" checked="checked" class="checkbox-left" id="specialoffers" />
                
                   <label class="label-2" for="specialoffers">
                    I would like to get product updates and <br />
                    special offers.</label>
                
            </div>
            <div class="form_line_btn">
                <asp:ImageButton ID="imgBtn" runat="server" ImageUrl="/content/images/mobile/completeorder_btn.jpg" OnClick="imgBtn_OnClick" />
            </div>
          
      </div>
  


</ContentTemplate>
</asp:UpdatePanel>
    
 