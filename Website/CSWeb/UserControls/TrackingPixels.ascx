﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TrackingPixels.ascx.cs"
    Inherits="CSWeb.Root.UserControls.TrackingPixels" %>
<!-- All Pixels Here -->
<asp:Panel ID="pnlHomePage" runat="server" Visible="false">
</asp:Panel>
<asp:Panel ID="pnlAllPages" runat="server" Visible="false">
    <!--  google GA pixel All  Pages -->
    <script type="text/javascript">
        var newPageName = '/' +
    <%=versionNameClientFunction %> + window.location.pathname +
    window.location.search;
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-40260485-1']);
  _gaq.push(['_set', 'page', newPageName]);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

    </script>
    <!-- HitsLink.com tracking script All pages -->
    <script type="text/javascript" id="wa_u" defer></script>
    <script type="text/javascript" async>//<![CDATA[
var wa_pageName=location.pathname;    // customize the page name here;
wa_account="9D9D8E9B8D9E989091"; wa_location=102;
wa_MultivariateKey = <%=versionNameClientFunction %>;    //  Set this variable to perform multivariate testing
var wa_c=new RegExp('__wa_v=([^;]+)').exec(document.cookie),wa_tz=new Date(),
wa_rf=document.referrer,wa_sr=location.search,wa_hp='http'+(location.protocol=='https:'?'s':'');
if(top!==self){wa_rf=top.document.referrer;wa_sr=top.location.search}
if(wa_c!=null){wa_c=wa_c[1]}else{wa_c=wa_tz.getTime();
document.cookie='__wa_v='+wa_c+';path=/;expires=1/1/'+(wa_tz.getUTCFullYear()+2);}wa_img=new Image();
wa_img.src=wa_hp+'://counter.hitslink.com/statistics.asp?v=1&s=102&eacct='+wa_account+'&an='+
escape(navigator.appName)+'&sr='+escape(wa_sr)+'&rf='+escape(wa_rf)+'&mvk='+escape(wa_MultivariateKey)+
'&sl='+escape(navigator.systemLanguage)+'&l='+escape(navigator.language)+
'&pf='+escape(navigator.platform)+'&pg='+escape(wa_pageName)+'&cd='+screen.colorDepth+'&rs='+escape(screen.width+
' x '+screen.height)+'&je='+navigator.javaEnabled()+'&c='+wa_c+'&tks='+wa_tz.getTime()
;document.getElementById('wa_u').src=wa_hp+'://counter.hitslink.com/track.js';//]]>
    </script>
    <!-- Garo:  12/18/2013  : AdRoll Pixel  -->
    <script type="text/javascript">
        adroll_adv_id = "3WOKZNNX2JGDZOJJROEULP";
        adroll_pix_id = "AGPFCBEVCJFBDJWUZ2QFGL";
        (function () {
            var oldonload = window.onload;
            window.onload = function () {
                __adroll_loaded = true;
                var scr = document.createElement("script");
                var host = (("https:" == document.location.protocol) ? "https://s.adroll.com" : "http://a.adroll.com");
                scr.setAttribute('async', 'true');
                scr.type = "text/javascript";
                scr.src = host + "/j/roundtrip.js";
                ((document.getElementsByTagName('head') || [null])[0] ||
    document.getElementsByTagName('script')[0].parentNode).appendChild(scr);
                if (oldonload) { oldonload() }
            };
        } ());
    </script>
</asp:Panel>
<asp:Panel ID="pnlHomeAndSubPages" runat="server" Visible="false">
</asp:Panel>
<asp:Panel ID="pnlCartPages" runat="server" Visible="false">
    <!-- Garo:  12/18/2013  : AdRoll Pixel  -->
    <script type="text/javascript">
        adroll_adv_id = "3WOKZNNX2JGDZOJJROEULP";
        adroll_pix_id = "AGPFCBEVCJFBDJWUZ2QFGL";
        (function () {
            var oldonload = window.onload;
            window.onload = function () {
                __adroll_loaded = true;
                var scr = document.createElement("script");
                var host = (("https:" == document.location.protocol) ? "https://s.adroll.com" : "http://a.adroll.com");
                scr.setAttribute('async', 'true');
                scr.type = "text/javascript";
                scr.src = host + "/j/roundtrip.js";
                ((document.getElementsByTagName('head') || [null])[0] ||
    document.getElementsByTagName('script')[0].parentNode).appendChild(scr);
                if (oldonload) { oldonload() }
            };
        } ());
    </script>
</asp:Panel>
<asp:Panel ID="pnlReceiptPage" runat="server" Visible="false">
    <!-- Garo:  12/18/2013  : AdRoll Pixel  -->
    <script type="text/javascript">
        adroll_adv_id = "3WOKZNNX2JGDZOJJROEULP";
        adroll_pix_id = "AGPFCBEVCJFBDJWUZ2QFGL";
        (function () {
            var oldonload = window.onload;
            window.onload = function () {
                __adroll_loaded = true;
                var scr = document.createElement("script");
                var host = (("https:" == document.location.protocol) ? "https://s.adroll.com" : "http://a.adroll.com");
                scr.setAttribute('async', 'true');
                scr.type = "text/javascript";
                scr.src = host + "/j/roundtrip.js";
                ((document.getElementsByTagName('head') || [null])[0] ||
    document.getElementsByTagName('script')[0].parentNode).appendChild(scr);
                if (oldonload) { oldonload() }
            };
        } ());
    </script>

    <!-- Google Analytics Ecommerce Pixel updated 18/12/2013 GA -->
    <script type="text/javascript">
        
       var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
var hndl = window.setTimeout('StartTracking()', 100);
function StartTracking(){
if (typeof(_gat) == 'object')
{
window.clearTimeout(hndl);         
var pageTracker =_gat._getTracker('UA-40260485-1');
pageTracker._initData();
pageTracker._trackPageview();
    <asp:Literal ID="litGAReceiptPixel" runat="server" />

        pageTracker._trackTrans();
} else {
hndl = window.setTimeout('StartTracking()', 1000);
}
}       
    </script>
    <asp:Literal ID="litMdgConfirm" runat="server" />
</asp:Panel>
