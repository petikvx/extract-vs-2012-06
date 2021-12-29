@echo off
REGEDIT.EXE /S undoalltoolbars.reg
REGEDIT.EXE /S fullyopen.reg
explorer.exe main.htm
echo Go Ahead an Close Windows
exit