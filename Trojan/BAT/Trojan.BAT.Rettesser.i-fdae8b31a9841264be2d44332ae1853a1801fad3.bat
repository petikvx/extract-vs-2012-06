@echo off
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\SPC /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\LicStorage /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\KasperskyLab\LicStorage /f
@echo data > "%SystemDrive%\Documents and Settings\All Users\Application Data\Kaspersky Lab\AVP9\Data:extended"
@echo data > "%SystemDrive%\ProgramData\Kaspersky Lab\AVP9\Data:extended"
cls
@echo Trial Reset for KIS/KAV 2010 (x86/x64)
@echo **************************************
@echo *             Good luck!             *
@echo **************************************
@echo off
pause
exit
