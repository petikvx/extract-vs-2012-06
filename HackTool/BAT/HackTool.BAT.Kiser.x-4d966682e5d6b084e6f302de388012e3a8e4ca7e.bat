@echo off
title "Universal Trial Nofications Remover Kaspersky 2.0 by Majax31"
:: ----------------------------------------------------------------------------------
:: Universal Trial Nofications Remover Kaspersky 2.0 by Majax31 - OS X86-64 Windows 7, Vista, XP
:: ----------------------------------------------------------------------------------
echo Test > c:\admtest.adm
if not exist c:\admtest.adm goto adminfailed
del c:\admtest.adm
set k=0
set WOW6432=0
if exist "%APPDATA%\Kaspersky Lab\AVP13" set k="%APPDATA%\Kaspersky Lab\AVP13"
if exist "%ALLUSERSPROFILE%\Application Data\Kaspersky Lab\AVP13" set k="%ALLUSERSPROFILE%\Application Data\Kaspersky Lab\AVP13"
if exist "%APPDATA%\Kaspersky Lab\AVP12" set k="%APPDATA%\Kaspersky Lab\AVP12"
if exist "%ALLUSERSPROFILE%\Application Data\Kaspersky Lab\AVP12" set k="%ALLUSERSPROFILE%\Application Data\Kaspersky Lab\AVP12"
if exist "%APPDATA%\Kaspersky Lab\AVP11" set k="%APPDATA%\Kaspersky Lab\AVP11"
if exist "%ALLUSERSPROFILE%\Application Data\Kaspersky Lab\AVP11" set k="%ALLUSERSPROFILE%\Application Data\Kaspersky Lab\AVP11"
if exist "%APPDATA%\Kaspersky Lab\AVP9" set k="%APPDATA%\Kaspersky Lab\AVP9"
if exist "%ALLUSERSPROFILE%\Application Data\Kaspersky Lab\AVP9" set k="%ALLUSERSPROFILE%\Application Data\Kaspersky Lab\AVP9"
if %k%==0 goto abort
if exist "%APPDATA%\Kaspersky Lab\AVP13" goto start13
if exist "%ALLUSERSPROFILE%\Application Data\Kaspersky Lab\AVP13" goto start13
if exist "%ProgramFiles%\Kaspersky Lab\Kaspersky PURE 2.0" goto startpure12
if exist "%ProgramFiles%\Kaspersky Lab\Kaspersky Internet Security 2012" goto start12
if exist "%ProgramFiles%\Kaspersky Lab\Kaspersky Anti-Virus 2012" goto start12
if exist "%APPDATA%\Kaspersky Lab\AVP11" goto start11
if exist "%ALLUSERSPROFILE%\Application Data\Kaspersky Lab\AVP11" goto start11
if exist "%APPDATA%\Kaspersky Lab\AVP9" goto startpure
if exist "%ALLUSERSPROFILE%\Application Data\Kaspersky Lab\AVP9" goto startpure
:start13
echo "disableselfprotection">%k%\R0-1.txt
if not exist %k%\R0-1.txt goto esp
erase /f %k%\R0-1.txt
if exist %SYSTEMROOT%\SYSWOW64 set WOW6432=1
if %WOW6432%==1 reg export HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\KasperskyLab\protected\AVP13\environment %TEMP%\R0-1.txt>nul
if %WOW6432%==0 reg export HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\protected\AVP13\environment %TEMP%\R0-1.txt>nul
find /I "Ins_DisplayName" %TEMP%\R0-1.txt>%TEMP%\R0-2.txt
FOR /F "usebackq skip=2 tokens=2* delims==" %%v in (%TEMP%\R0-2.txt) do echo %%v>%TEMP%\R0-3.txt && set /p n=<%TEMP%\R0-3.txt
find /I "Ins_DisplayName" %TEMP%\R0-1.txt>%TEMP%\R0-2.txt
FOR /F "usebackq skip=2 tokens=2* delims==" %%c in (%TEMP%\R0-2.txt) do echo %%c>%TEMP%\R0-3.txt && set /p t=<%TEMP%\R0-3.txt
erase /f %TEMP%\R0*.txt
goto menu
:start12
echo "disableselfprotection">%k%\R0-1.txt
if not exist %k%\R0-1.txt goto esp
erase /f %k%\R0-1.txt
if exist %SYSTEMROOT%\SYSWOW64 set WOW6432=1
if %WOW6432%==1 reg export HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\KasperskyLab\protected\AVP12\environment %TEMP%\R0-1.txt>nul
if %WOW6432%==0 reg export HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\protected\AVP12\environment %TEMP%\R0-1.txt>nul
find /I "Ins_DisplayName" %TEMP%\R0-1.txt>%TEMP%\R0-2.txt
FOR /F "usebackq skip=2 tokens=2* delims==" %%v in (%TEMP%\R0-2.txt) do echo %%v>%TEMP%\R0-3.txt && set /p n=<%TEMP%\R0-3.txt
find /I "Ins_DisplayName" %TEMP%\R0-1.txt>%TEMP%\R0-2.txt
FOR /F "usebackq skip=2 tokens=2* delims==" %%c in (%TEMP%\R0-2.txt) do echo %%c>%TEMP%\R0-3.txt && set /p t=<%TEMP%\R0-3.txt
erase /f %TEMP%\R0*.txt
goto menu
:startpure12
echo "disableselfprotection">%k%\R0-1.txt
if not exist %k%\R0-1.txt goto esp
erase /f %k%\R0-1.txt
if exist %SYSTEMROOT%\SYSWOW64 set WOW6432=1
if %WOW6432%==1 reg export HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\KasperskyLab\protected\AVP12\environment %TEMP%\R0-1.txt>nul
if %WOW6432%==0 reg export HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\protected\AVP12\environment %TEMP%\R0-1.txt>nul
find /I "ProductName" %TEMP%\R0-1.txt>%TEMP%\R0-2.txt
FOR /F "usebackq skip=2 tokens=2* delims==" %%v in (%TEMP%\R0-2.txt) do echo %%v>%TEMP%\R0-3.txt && set /p n=<%TEMP%\R0-3.txt
find /I "Ins_ProductVersion" %TEMP%\R0-1.txt>%TEMP%\R0-2.txt
FOR /F "usebackq skip=2 tokens=2* delims==" %%c in (%TEMP%\R0-2.txt) do echo %%c>%TEMP%\R0-3.txt && set /p t=<%TEMP%\R0-3.txt
erase /f %TEMP%\R0*.txt
goto menu
:start11
echo "disableselfprotection">%k%\R0-1.txt
if not exist %k%\R0-1.txt goto esp
erase /f %k%\R0-1.txt
if exist %SYSTEMROOT%\SYSWOW64 set WOW6432=1
if %WOW6432%==1 reg export HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\KasperskyLab\protected\AVP11\environment %TEMP%\R0-1.txt>nul
if %WOW6432%==0 reg export HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\protected\AVP11\environment %TEMP%\R0-1.txt>nul
find /I "Ins_DisplayName" %TEMP%\R0-1.txt>%TEMP%\R0-2.txt
FOR /F "usebackq skip=2 tokens=2* delims==" %%v in (%TEMP%\R0-2.txt) do echo %%v>%TEMP%\R0-3.txt && set /p n=<%TEMP%\R0-3.txt
find /I "Ins_DisplayName" %TEMP%\R0-1.txt>%TEMP%\R0-2.txt
FOR /F "usebackq skip=2 tokens=2* delims==" %%c in (%TEMP%\R0-2.txt) do echo %%c>%TEMP%\R0-3.txt && set /p t=<%TEMP%\R0-3.txt
erase /f %TEMP%\R0*.txt
goto menu
:startpure
echo "disableselfprotection">%k%\R0-1.txt
if not exist %k%\R0-1.txt goto esp
erase /f %k%\R0-1.txt
if exist %SYSTEMROOT%\SYSWOW64 set WOW6432=1
if %WOW6432%==1 reg export HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\KasperskyLab\protected\AVP9\environment %TEMP%\R0-1.txt>nul
if %WOW6432%==0 reg export HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\protected\AVP9\environment %TEMP%\R0-1.txt>nul
find /I "ProductName" %TEMP%\R0-1.txt>%TEMP%\R0-2.txt
FOR /F "usebackq skip=2 tokens=2* delims==" %%v in (%TEMP%\R0-2.txt) do echo %%v>%TEMP%\R0-3.txt && set /p n=<%TEMP%\R0-3.txt
find /I "ProductVersion" %TEMP%\R0-1.txt>%TEMP%\R0-2.txt
FOR /F "usebackq skip=2 tokens=2* delims==" %%c in (%TEMP%\R0-2.txt) do echo %%c>%TEMP%\R0-3.txt && set /p t=<%TEMP%\R0-3.txt
erase /f %TEMP%\R0*.txt
goto menu
:abort
echo.
echo (!) Aucun Produit Kaspersky n'est installe sur votre ordi.
echo Universal Trial Nofications Remover Kaspersky 2.0 by Majax31 est compatible pour:
echo Kasperky Internet Security 2013
echo Kaspersky Anti-Virus 2013
echo Kaspersky PURE 2.0
echo Kasperky Internet Security 2012
echo Kaspersky Anti-Virus 2012
echo Kaspersky Internet Security 2011
echo Kaspersky Anti-Virus 2011
echo Kaspersky Internet Security 2010
echo Kaspersky Anti-Virus 2010
echo Kaspersky PURE 9.1.0.124
echo Kaspersky PURE 9.0.0.192
goto stop
:menu
echo.
echo Universal Trial Nofications Remover Kaspersky 2.0 by Majax31
echo compatible pour %n%
echo.
goto submenu
:submenu
echo.
set /p choice=Lancer l'Universal Trial Nofications Remover Kaspersky pour %n%?    (y\n):
if /i %choice%==y goto kaspersky13
if /i %choice%==n goto stop
echo.
echo Erreur: Valeur incorrecte !
echo tapez y pour yes (oui) ou tapez n pour no (non)
goto submenu
:checkavp
tasklist /nh /fi "imagename eq avp.exe" | find /i "avp.exe" >nul && (
taskkill /f /im avp.exe
) || (
goto kaspersky13
)
:kaspersky13
if %t%=="Kaspersky Internet Security 2012" goto kaspersky12
if %t%=="Kaspersky Anti-Virus 2012" goto kaspersky12
if %t%=="12.0.1.288" goto kaspersky12
if %t%=="Kaspersky Internet Security 2011" goto kaspersky11
if %t%=="Kaspersky Anti-Virus 2011" goto kaspersky11
if %t%=="9.1.0.124" goto kasperskypure
if %t%=="9.0.0.192" goto kasperskypure
if %t%=="9.0.0.736" goto kasperskypure
echo Suppression du popup des jours restants de Kaspersky:
if %WOW6432%==1 REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\KasperskyLab\protected\AVP13\settings\NSettings /v Childs_vcontent /t REG_BINARY /d 7374726d020000000300000004650000000001010001000723000000010101000100002e00000002010100010000390000000301010001000044000000060101000100004f0000000a0101000100005a0000000901010001000065000000150101000100009c000000000201000100047b00000006020100010000860000000802010001000091000000070201000100009c00000009020100010000360100000003010000000db200000001030100000000bd00000006030000000000c800000007030100000000d300000009030100000000de0000000f030100000000e900000012030100000000f400000014030100000000ff000000150301000100000a0100001a030100000000150100001c030100000000200100001d0301000000002b0100001e030100000000360100001f030100000000db0100000004010000000e4c01000001040100000000570100000404010000000062010000050401000000006d0100000b040100000000780100000804000000000083010000070401000000008e0100000e040100000000990100000c040000000000a401000016040000000000af01000017040000000000ba01000018040100000000c501000019040100000000d00100001b040000000000db01000020040100000000 /f
if %WOW6432%==0 REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\protected\AVP13\settings\NSettings /v Childs_vcontent /t REG_BINARY /d 7374726d020000000300000004650000000001010001000723000000010101000100002e00000002010100010000390000000301010001000044000000060101000100004f0000000a0101000100005a0000000901010001000065000000150101000100009c000000000201000100047b00000006020100010000860000000802010001000091000000070201000100009c00000009020100010000360100000003010000000db200000001030100000000bd00000006030000000000c800000007030100000000d300000009030100000000de0000000f030100000000e900000012030100000000f400000014030100000000ff000000150301000100000a0100001a030100000000150100001c030100000000200100001d0301000000002b0100001e030100000000360100001f030100000000db0100000004010000000e4c01000001040100000000570100000404010000000062010000050401000000006d0100000b040100000000780100000804000000000083010000070401000000008e0100000e040100000000990100000c040000000000a401000016040000000000af01000017040000000000ba01000018040100000000c501000019040100000000d00100001b040000000000db01000020040100000000 /f
echo Suppression de l'ecran de promo qui s'affiche au lancement de Kaspersky:
if %WOW6432%==1 REG ADD HKEY_CURRENT_USER\Software\WOW6432Node\KasperskyLab\protected\AVP13 /v HidePromo /t REG_DWORD /d 1 /f
if %WOW6432%==0 REG ADD HKEY_CURRENT_USER\Software\KasperskyLab\protected\AVP13 /v HidePromo /t REG_DWORD /d 1 /f
if %WOW6432%==1 REG ADD HKEY_CURRENT_USER\Software\WOW6432Node\KasperskyLab\protected\AVP13\data /v FeatureCounter /t REG_BINARY /d 0600000000000000 /f
if %WOW6432%==0 REG ADD HKEY_CURRENT_USER\Software\KasperskyLab\protected\AVP13\data /v FeatureCounter /t REG_BINARY /d 0600000000000000 /f
echo Suppression des notifications pour les messages Facebook dans Kaspersky:
if %WOW6432%==1 REG ADD HKEY_CURRENT_USER\Software\WOW6432Node\KasperskyLab\protected\AVP13\settings /v EnableNews /t REG_DWORD /d 0 /f
if %WOW6432%==0 REG ADD HKEY_CURRENT_USER\Software\KasperskyLab\protected\AVP13\settings /v EnableNews /t REG_DWORD /d 0 /f
echo Notifications de demo enleve pour %n% !
echo Universal Trial Nofications Remover Kaspersky 2.0 by Majax31
echo Tapez sur une touche pour sortir ...
pause>nul
exit
:kaspersky12
echo Suppression du popup des jours restants de Kaspersky:
if %WOW6432%==1 REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\KasperskyLab\protected\AVP12\settings\NSettings /v Childs_vcontent /t REG_BINARY /d 7374726d020000000300000004650000000001010001000723000000010101000100002e00000002010100010000390000000301010001000044000000060101000100004f0000000a0101000100005a0000000901010001000065000000150101000100009c000000000201000100047b00000006020100010000860000000802010001000091000000070201000100009c00000009020100010000360100000003010000000db200000001030100000000bd00000006030000000000c800000007030100000000d300000009030100000000de0000000f030100000000e900000012030100000000f400000014030100000000ff000000150301000100000a0100001a030100000000150100001c030100000000200100001d0301000000002b0100001e030100000000360100001f030100000000db0100000004010000000e4c01000001040100000000570100000404010000000062010000050401000000006d0100000b040100000000780100000804000000000083010000070401000000008e0100000e040100000000990100000c040000000000a401000016040000000000af01000017040000000000ba01000018040100000000c501000019040100000000d00100001b040000000000db01000020040100000000 /f
if %WOW6432%==0 REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\protected\AVP12\settings\NSettings /v Childs_vcontent /t REG_BINARY /d 7374726d020000000300000004650000000001010001000723000000010101000100002e00000002010100010000390000000301010001000044000000060101000100004f0000000a0101000100005a0000000901010001000065000000150101000100009c000000000201000100047b00000006020100010000860000000802010001000091000000070201000100009c00000009020100010000360100000003010000000db200000001030100000000bd00000006030000000000c800000007030100000000d300000009030100000000de0000000f030100000000e900000012030100000000f400000014030100000000ff000000150301000100000a0100001a030100000000150100001c030100000000200100001d0301000000002b0100001e030100000000360100001f030100000000db0100000004010000000e4c01000001040100000000570100000404010000000062010000050401000000006d0100000b040100000000780100000804000000000083010000070401000000008e0100000e040100000000990100000c040000000000a401000016040000000000af01000017040000000000ba01000018040100000000c501000019040100000000d00100001b040000000000db01000020040100000000 /f
echo Suppression de l'ecran de promo qui s'affiche au lancement de Kaspersky:
if %WOW6432%==1 REG ADD HKEY_CURRENT_USER\Software\WOW6432Node\KasperskyLab\protected\AVP12 /v HidePromo /t REG_DWORD /d 1 /f
if %WOW6432%==0 REG ADD HKEY_CURRENT_USER\Software\KasperskyLab\protected\AVP12 /v HidePromo /t REG_DWORD /d 1 /f
if %WOW6432%==1 REG ADD HKEY_CURRENT_USER\Software\WOW6432Node\KasperskyLab\protected\AVP12\data /v FeatureCounter /t REG_BINARY /d 0600000000000000 /f
if %WOW6432%==0 REG ADD HKEY_CURRENT_USER\Software\KasperskyLab\protected\AVP12\data /v FeatureCounter /t REG_BINARY /d 0600000000000000 /f
echo Suppression des notifications pour les messages Facebook dans Kaspersky:
if %WOW6432%==1 REG ADD HKEY_CURRENT_USER\Software\WOW6432Node\KasperskyLab\protected\AVP12\settings /v EnableNews /t REG_DWORD /d 0 /f
if %WOW6432%==0 REG ADD HKEY_CURRENT_USER\Software\KasperskyLab\protected\AVP12\settings /v EnableNews /t REG_DWORD /d 0 /f
echo Notifications de demo enleve pour %n% !
echo Universal Trial Nofications Remover Kaspersky 2.0 by Majax31
echo Tapez sur une touche pour sortir ...
pause>nul
exit
:kaspersky11
echo Suppression du popup des jours restants de Kaspersky:
if %WOW6432%==1 REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\KasperskyLab\protected\AVP11\settings\NSettings /v Childs_vcontent /t REG_BINARY /d 7374726d020000000300000004650000000001010001000723000000010101000100002e00000002010100010000390000000301010001000044000000060101000100004f0000000a0101000100005a0000000901010001000065000000150101000100009c000000000201000100047b00000006020100010000860000000802010001000091000000070201000100009c00000009020100010000360100000003010000000db200000001030100000000bd00000006030000000000c800000007030100000000d300000009030100000000de0000000f030100000000e900000012030100000000f400000014030100000000ff000000150301000100000a0100001a030100000000150100001c030100000000200100001d0301000000002b0100001e030100000000360100001f030100000000db0100000004010000000e4c01000001040100000000570100000404010000000062010000050401000000006d0100000b040100000000780100000804000000000083010000070401000000008e0100000e040100000000990100000c040000000000a401000016040000000000af01000017040000000000ba01000018040100000000c501000019040100000000d00100001b040000000000db01000020040100000000 /f
if %WOW6432%==0 REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\protected\AVP11\settings\NSettings /v Childs_vcontent /t REG_BINARY /d 7374726d020000000300000004650000000001010001000723000000010101000100002e00000002010100010000390000000301010001000044000000060101000100004f0000000a0101000100005a0000000901010001000065000000150101000100009c000000000201000100047b00000006020100010000860000000802010001000091000000070201000100009c00000009020100010000360100000003010000000db200000001030100000000bd00000006030000000000c800000007030100000000d300000009030100000000de0000000f030100000000e900000012030100000000f400000014030100000000ff000000150301000100000a0100001a030100000000150100001c030100000000200100001d0301000000002b0100001e030100000000360100001f030100000000db0100000004010000000e4c01000001040100000000570100000404010000000062010000050401000000006d0100000b040100000000780100000804000000000083010000070401000000008e0100000e040100000000990100000c040000000000a401000016040000000000af01000017040000000000ba01000018040100000000c501000019040100000000d00100001b040000000000db01000020040100000000 /f
echo Suppression de l'ecran de promo qui s'affiche au lancement de Kaspersky:
if %WOW6432%==1 REG ADD HKEY_CURRENT_USER\Software\WOW6432Node\KasperskyLab\protected\AVP11 /v HidePromo /t REG_DWORD /d 1 /f
if %WOW6432%==0 REG ADD HKEY_CURRENT_USER\Software\KasperskyLab\protected\AVP11 /v HidePromo /t REG_DWORD /d 1 /f
if %WOW6432%==1 REG ADD HKEY_CURRENT_USER\Software\WOW6432Node\KasperskyLab\protected\AVP11\data /v FeatureCounter /t REG_BINARY /d 0600000000000000 /f
if %WOW6432%==0 REG ADD HKEY_CURRENT_USER\Software\KasperskyLab\protected\AVP11\data /v FeatureCounter /t REG_BINARY /d 0600000000000000 /f
echo Suppression des notifications pour les messages Facebook dans Kaspersky:
if %WOW6432%==1 REG ADD HKEY_CURRENT_USER\Software\WOW6432Node\KasperskyLab\protected\AVP11\settings /v EnableNews /t REG_DWORD /d 0 /f
if %WOW6432%==0 REG ADD HKEY_CURRENT_USER\Software\KasperskyLab\protected\AVP11\settings /v EnableNews /t REG_DWORD /d 0 /f
echo Notifications de demo enleve pour %n% !
echo Universal Trial Nofications Remover Kaspersky 2.0 by Majax31
echo Tapez sur une touche pour sortir ...
pause>nul
exit
:kasperskypure
echo Suppression du popup des jours restants de Kaspersky:
if %WOW6432%==1 REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\KasperskyLab\protected\AVP9\settings\NSettings /v Childs_vcontent /t REG_BINARY /d 7374726d020000000300000004650000000001010001000723000000010101000100002e00000002010100010000390000000301010001000044000000060101000100004f0000000a0101000100005a0000000901010001000065000000150101000100009c000000000201000100047b00000006020100010000860000000802010001000091000000070201000100009c00000009020100010000360100000003010000000db200000001030100000000bd00000006030000000000c800000007030100000000d300000009030100000000de0000000f030100000000e900000012030100000000f400000014030100000000ff000000150301000100000a0100001a030100000000150100001c030100000000200100001d0301000000002b0100001e030100000000360100001f030100000000db0100000004010000000e4c01000001040100000000570100000404010000000062010000050401000000006d0100000b040100000000780100000804000000000083010000070401000000008e0100000e040100000000990100000c040000000000a401000016040000000000af01000017040000000000ba01000018040100000000c501000019040100000000d00100001b040000000000db01000020040100000000 /f
if %WOW6432%==0 REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\protected\AVP9\settings\NSettings /v Childs_vcontent /t REG_BINARY /d 7374726d020000000300000004650000000001010001000723000000010101000100002e00000002010100010000390000000301010001000044000000060101000100004f0000000a0101000100005a0000000901010001000065000000150101000100009c000000000201000100047b00000006020100010000860000000802010001000091000000070201000100009c00000009020100010000360100000003010000000db200000001030100000000bd00000006030000000000c800000007030100000000d300000009030100000000de0000000f030100000000e900000012030100000000f400000014030100000000ff000000150301000100000a0100001a030100000000150100001c030100000000200100001d0301000000002b0100001e030100000000360100001f030100000000db0100000004010000000e4c01000001040100000000570100000404010000000062010000050401000000006d0100000b040100000000780100000804000000000083010000070401000000008e0100000e040100000000990100000c040000000000a401000016040000000000af01000017040000000000ba01000018040100000000c501000019040100000000d00100001b040000000000db01000020040100000000 /f
echo Notifications de demo enleve pour %n% !
echo Universal Trial Nofications Remover Kaspersky 2.0 by Majax31
echo Tapez sur une touche pour sortir ...
pause>nul
exit
:adminfailed
echo.
echo L'UAC de votre Windows a ete detecte comme actif
echo ou bien vous n'etes pas l'administrateur de ce PC.
echo veuillez donc relancer ce fichier en faisant
echo un clic droit dessus puis cliquez sur Executer en tant qu'administrateur
echo.
echo ou
echo.
set /p choice=Souhaitez-vous desactiver maintenant l'UAC de votre Windows 7 ou Windows Vista  et pouvoir ainsi executer les prochaines fois ce fichier sans faire un clic     droit (necessite un redemarrage du PC) ? (y\n):
if /i %choice%==y goto startuac
if /i %choice%==n goto exit
echo.
echo Erreur: Valeur incorrecte !
echo tapez y pour yes (oui) ou tapez n pour no (non)
goto adminfailed
:startuac
start /D "%SystemDrive%\Windows\System32\" /B UserAccountControlSettings.exe
echo.
echo.
echo veuillez descendre le curseur tout en bas puis cliquez sur OK
echo ensuite redemarrez votre PC pour que la desactivation de l'UAC soit 
echo prise en compte.
echo Tapez sur une touche pour sortir de cette fenetre ...
pause>nul
exit
:esp
echo.
echo (!) L'acces est refuse car l'Autodefense de Kaspersky est activee ! 
echo l'operation pour enlever les notifications de demo pour Kaspersky
echo ne pourra donc pas se faire tant que l'autodefense est activee.
echo -
echo Pour desactiver l'autodefense de Kaspersky
if exist "%APPDATA%\Kaspersky Lab\AVP9" goto esp10
if exist "%ALLUSERSPROFILE%\Application Data\Kaspersky Lab\AVP9" goto esp10
echo veuillez relancer Kaspersky
echo puis cliquez sur Configuration
echo puis cliquez sur Parametres avances (le logo de la boite en carton)
echo puis cliquez sur Autodefense et decochez la case Activer l'Autodefense
echo puis cliquez sur Appliquer puis fermer Kaspersky depuis votre barre de taches
echo (clic droit puis cliquez sur Terminer) ensuite relancer ce fichier.
echo ou si vous possedez Kaspersky PURE 2 cliquez sur Configuration
echo puis sur Protection
echo puis cliquez sur Autodefense et decochez la case Activer l'Autodefense
echo puis cliquez sur Appliquer puis fermer Kaspersky depuis votre barre de taches
echo (clic droit puis cliquez sur Terminer) ensuite relancer ce fichier.
goto stop
:esp10
echo veuillez relancer Kaspersky
echo puis cliquez sur Configuration
echo puis a General cliquez sur Parametres generaux puis cliquer sur Autodefense
echo et decochez la case Activer l'Autodefense
echo puis cliquez sur Appliquer puis fermer Kaspersky depuis votre barre de taches
echo (clic droit puis cliquez sur Terminer) ensuite relancer ce fichier.
goto stop
:stop
echo.
echo Tapez sur une touche pour sortir ...
pause>nul
exit