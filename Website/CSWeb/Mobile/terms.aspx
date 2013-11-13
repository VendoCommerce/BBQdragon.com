<%@ Page Language="C#" AutoEventWireup="true" Inherits="CSWeb.Mobile.Store.index" EnableSessionState="True" %>
<%@ Register Src="UserControls/TrackingPixels.ascx" TagName="TrackingPixels" TagPrefix="uc" %>
<%@ Register Src="UserControls/ShippingForm.ascx" TagName="BillingFormControl"
    TagPrefix="uc" %> 
<!doctype html>
<html>
<head runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">
<meta charset="utf-8"> 
<title>TERMS OF SERVICE:  BBQ Dragon - Supercharge your barbecue</title>
<meta name="description" content="Get Your BBQ Hot & Ready Fast! Your Charcoal Grill will heat up hotter and faster, hands-free!" />
<meta name="keywords" content="Barbecue, BBQ Dragon, Grilling, Charcoal Grill" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/Scripts/fancybox/jquery.fancybox.css">
<script src="/Scripts/fancybox/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="/scripts/jwplayer/jwplayer.js"></script>
<script src="/Scripts/jquery.cycle.js"></script>
<script type="text/javascript">jwplayer.key="JEtVDryJGkO9Q215yroU+Wz4oLeTJGMccGU/Wb3Kv9s=";</script>
<script src="/Scripts/global.js"></script>
<link href="/styles/global.css" rel="stylesheet" type="text/css" />
</head>
 
<body>
 <form runat="server" id="fm1">
<!--#include file="header.html"-->

<!--#include file="popups.html"-->
<div class="container">
<div class="left">
<h2>terms of service</h2>
<p><strong>1. Terms</strong></p>
<p>By accessing this web site, you are agreeing to be bound by these web site Terms and Conditions of Use, all applicable laws and regulations, and agree that you are responsible for compliance with any applicable local laws. If you do not agree with any of these terms, you are prohibited from using or accessing this site. The materials contained in this web site are protected by applicable copyright and trade mark law.</p>
<p><strong>2. Use License</strong></p>
<p>Permission is granted to temporarily download one copy of the materials (information or software) on BBQ Dragon’s web site for personal, non-commercial transitory viewing only. This is the grant of a license, not a transfer of title, and under this license you may not:</p>
<div style="margin-left: 10px;">
  <p class="pad0 hangingindent">- modify or copy the materials;</p>
  <p class="pad0 hangingindent"> - use the materials for any commercial purpose, or for any public display 
    (commercial or non-commercial);</p>
  <p class="pad0 hangingindent">- attempt to decompile or reverse engineer any software contained on BBQ
    Dragon’s web site;</p>
  <p class="pad0 hangingindent">- remove any copyright or other proprietary notations from the materials; or</p>
  <p class="hangingindent">- transfer the materials to another person or “mirror” the materials on any other server.</p>
  </div>
<p>This license shall automatically terminate if you violate any of these restrictions and may be terminated by BBQ Dragon at any time. Upon terminating your viewing of these materials or upon the termination of this license, you must destroy any downloaded materials in your possession whether in electronic or printed format.</p>
<p><strong>3. Disclaimer</strong></p>
<p>The materials on BBQ Dragon’s web site are provided “as is”. BBQ Dragon makes no warranties, expressed or implied, and hereby disclaims and negates all other warranties, including without limitation, implied warranties or conditions of merchantability, fitness for a particular purpose, or non-infringement of intellectual property or other violation of rights. Further, BBQ Dragon does not warrant or make any representations concerning the accuracy, likely results, or reliability of the use of the materials on its Internet web site or otherwise relating to such materials or on any sites linked to this site.</p>
<p><strong>4. Limitations</strong></p>
<p>In no event shall BBQ Dragon or its suppliers be liable for any damages (including, without limitation, damages for loss of data or profit, or due to business interruption,) arising out of the use or inability to use the materials on BBQ Dragon’s Internet site, even if BBQ Dragon or a BBQ Dragon authorized representative has been notified orally or in writing of the possibility of such damage. Because some jurisdictions do not allow limitations on implied warranties, or limitations of liability for consequential or incidental damages, these limitations may not apply to you.</p>
<p><strong>5. Revisions and Errata</strong></p>
<p>The materials appearing on BBQ Dragon’s web site could include technical, typographical, or photographic errors. BBQ Dragon does not warrant that any of the materials on its web site are accurate, complete, or current. BBQ Dragon may make changes to the materials contained on its web site at any time without notice. BBQ Dragon does not, however, make any commitment to update the materials.</p>
<p><strong>6. Links</strong></p>
<p>BBQ Dragon has not reviewed all of the sites linked to its Internet web site and is not responsible for the contents of any such linked site. The inclusion of any link does not imply endorsement by BBQ Dragon of the site. Use of any such linked web site is at the user’s own risk.</p>
<p><strong>7. Site Terms of Use Modifications</strong></p>
<p>BBQ Dragon may revise these terms of use for its web site at any time without notice. By using this web site you are agreeing to be bound by the then current version of these Terms and Conditions of Use.</p>
<p><strong>8. Governing Law</strong></p>
<p>Any claim relating to BBQ Dragon’s web site shall be governed by the laws of the State of Colorado without regard to its conflict of law provisions.</p>
<p>General Terms and Conditions applicable to Use of a Web Site.</p>

</div>
<div class="right">
 <uc:BillingFormControl ID="sfcShippingInfo" runat="server" RedirectUrl="AddProduct.aspx" />
 </div>
 <div class="clear"></div>
 
 
 
 
 
  <uc:TrackingPixels ID="TrackingPixels" runat="server" />
  <!--#include file="bottomcta.html"-->
</div>

<!--#include file="footer.html"-->
 </form>
</body>
</html>
