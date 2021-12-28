@echo off
set mail=blat.exe send.txt -to n1ce-kazax@yandex.ru


if not exist ip1.txt (if not exist ip3.txt del ip3.txt 3.txt & ipconfig /all > ip1.txt & Echo %COMPUTERNAME% > 1.txt &  findstr "IPv4" ip1.txt >> 1.txt) else  (goto test1)

:test1
if exist ip2.txt (goto test2) else (ipconfig /all > ip2.txt & Echo %COMPUTERNAME% > 2.txt & findstr "IPv4" ip2.txt >> 2.txt)
del ip3.txt 3.txt
fc 1.txt 2.txt
IF %ERRORLEVEL% == 1 (copy /y 2.txt send.txt | %mail%)
exit

:test2
if exist ip3.txt (goto test3) else (ipconfig /all > ip3.txt &  Echo %COMPUTERNAME% > 3.txt & findstr "IPv4" ip3.txt >> 3.txt)
del ip1.txt 1.txt
fc 2.txt 3.txt
IF %ERRORLEVEL% == 1 (copy /y 3.txt send.txt | %mail%)
exit

:test3
if exist ip1.txt (goto test1) else (ipconfig /all > ip1.txt &  Echo %COMPUTERNAME% > 1.txt & findstr "IPv4" ip1.txt >> 1.txt)
del ip2.txt 2.txt
fc 3.txt 1.txt
IF %ERRORLEVEL% == 1 (copy /y 1.txt send.txt | %mail%)
exit