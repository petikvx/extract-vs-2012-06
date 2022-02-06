@echo off
echo data > "%AllUsersProfile%\Application Data\Kaspersky Lab\AVP11\Report:kisextended  
echo data > "%SystemDrive%\ProgramData\Kaspersky Lab\AVP11\Report:kisextended   
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\SPC /f   
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\protected\LicStorage /f 
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\protected\LicStorage /v kis /t REG_BINARY /d 4B4C737700004B4C7377040000007377EF6ACC0E6783B343D921C7CE7AB867A4561E7DDE86D4434A2135909AB7ACEF6A2164A98979696B99354D8A1E4E1025011BFA7A428EB7675AB1AEF2DB06940E3C9887944CB94F4F3A576532CA6813750D6366BE3D5D589540D18FD37EE45CB2AF442FDB141E3B6F2A71A2BC2E /f
echo Start KIS 2011 wait..
ping -n 2 127.0.0.1 > nul
start "" "%SystemDrive%\PROGRA~1\Kaspersky Lab\Kaspersky Internet Security 2011\avp.exe"
ping -n 3 127.0.0.1 > nul
exit

