@echo off

echo data > "%AllUsersProfile%\Application Data\Kaspersky Lab\AVP12\Report:kisextended
echo data > "%SystemDrive%\ProgramData\Kaspersky Lab\AVP12\Report:kisextended
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\SPC /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\protected\LicStorage /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\KasperskyLab\protected\LicStorage /f

IF EXIST %SYSTEMROOT%\SYSWOW64 SET WOW6432=Wow6432Node\

REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\%WOW6432%KasperskyLab\protected\LicStorage /v kis /t REG_BINARY /d 4b4c737700004b4c7377040000007377ef6acc0e6783b343d9215814d00c76a4561e7dde86d4434a2135909ab7acef6a2164a98979696b99354d8a1e4e1025011bfa7ae2dcb76156b1aed13d1febd4ce106d78ba86eab8395268d5cd410ae71a6879b5cf431ecccac65bcbbc1a

REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\%WOW6432%KasperskyLab\protected\AVP12\settings /v Ins_InitMode /t REG_DWORD /d 33 /f

REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\%WOW6432%KasperskyLab\protected\AVP12\settings /v EnableSelfProtection /t REG_BINARY /d 00000001 /f

shutdown -r -f -t 04
exit