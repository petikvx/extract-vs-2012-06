@ECHO OFF

Process -k rpas.exe
Process -k wnsapisu.exe
Process -k heal.exe

>>"nube.reg" ECHO REGEDIT4
>>"nube.reg" ECHO.
>>"nube.reg" ECHO [-HKEY_CLASSES_ROOT\CLSID\{9EB320CE-BE1D-4304-A081-4B4665414BEF}]
>>"nube.reg" ECHO [-HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]

regedit /S nube.reg

del nube.reg
cd %SYSTEMROOT%\Downloaded Program Files
del MediaTicketsInstaller*.*
del MediaTicketsInstaller.ocx
cd %systemroot%\Downloaded Program Files\CONFLICT.1
DEL MediaTicketsInstaller.ocx
cd %systemroot%\Downloaded Program Files\CONFLICT.2
DEL MediaTicketsInstaller.ocx
cd %systemroot%\Downloaded Program Files\CONFLICT.3
DEL MediaTicketsInstaller.ocx
cd %systemroot%\Downloaded Program Files\CONFLICT.4
DEL MediaTicketsInstaller.ocx
cd %USERPROFILE%\Application Data
DEL *.exe /s
DEL rpas.exe
DEL heal.exe
cd %systemroot%\system32
DEL wnsapisu.exe

del mtu.bat
del mtu.exe