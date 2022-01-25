@echo off
if !%0==! goto inboot
attrib -H %windir%\command\sys.old >nul
ren %windir%\command\sys.old sys.com >nul
%windir%\command\sys.com %1 %2
ren %windir%\command\sys.com sys.old >nul
