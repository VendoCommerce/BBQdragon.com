<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TrackingPixels.ascx.cs" Inherits="CSWeb.Cart_A.UserControls.TrackingPixels" %>
<!-- All Pixels Here -->
<asp:Panel ID="pnlHomePage" runat="server" Visible="false">
    
    
</asp:Panel>

<asp:Panel ID="pnlAllPages" runat="server" Visible="false">
    <!-- Sample to get the version name -->
    <script type="text/javascript">
    alert(<%=versionNameClientFunction %>);
    </script>
</asp:Panel>
<asp:Panel ID="pnlHomeAndSubPages" runat="server" Visible="false">

</asp:Panel>
<asp:Panel ID="pnlCartPages" runat="server" Visible="false">
    
  
</asp:Panel>

<asp:Panel ID="pnlReceiptPage" runat="server" Visible="false">
    

    
    
      
                  <asp:Literal ID="litMdgConfirm" runat="server" />

    <asp:Literal ID="litGAReceiptPixel2" runat="server" />


    <asp:Literal ID="litGAReceiptPixel" runat="server" />

  
 
</asp:Panel>

