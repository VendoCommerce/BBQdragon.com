<%@ Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Cart_A.index" EnableSessionState="True" %>

<%@ Register Src="UserControls/TrackingPixels.ascx" TagName="TrackingPixels" TagPrefix="uc" %>
<%@ Register Src="UserControls/BillingShippingCreditForm.ascx" TagName="BillingShippingFormControl" TagPrefix="uc" %>
     
<!doctype html>
<html>
<head runat="server">
<meta charset="utf-8">    
<title></title>
<meta name="description" content=""/>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/Scripts/fancybox/jquery.fancybox.css">
<script src="/Scripts/fancybox/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="/scripts/jwplayer/jwplayer.js"></script>
<script src="/Scripts/jquery.cycle.js"></script>
<script type="text/javascript">jwplayer.key="JEtVDryJGkO9Q215yroU+Wz4oLeTJGMccGU/Wb3Kv9s=";</script>
<script src="/Scripts/global.js"></script>
<link href="../styles/global.css" rel="stylesheet" type="text/css" />
<script src="//cdn.optimizely.com/js/77045885.js"></script> 

    </head>
<body>

    <form runat="server" id="fm1">
 <uc:BillingShippingFormControl ID="bfcBillingInfo1" runat="server" RedirectUrl="Store/AddProduct.aspx" />
    
 <uc:TrackingPixels ID="TrackingPixels" runat="server" />
    </form>

</body>
</html>
