@echo off
cls
cd %windir%\tasks\install\other\
copy choice.com %windir%
echo *************************************************
echo You will be asked to enter the install-drive
echo For a good selection please take a look @ DNTU
echo only type the Drives letter, followed by *enter*
echo.
echo eg. Drive with most space: c           
echo *************************************************
CHOICE /C:ABCDEFGHIJKLMNOPQRSTUVWXYZ Drive with most space: %1
IF ERRORLEVEL ==26 GOTO ZZZ
IF ERRORLEVEL ==25 GOTO YYY
IF ERRORLEVEL ==24 GOTO XXX
IF ERRORLEVEL ==23 GOTO WWW
IF ERRORLEVEL ==22 GOTO VVV
IF ERRORLEVEL ==21 GOTO UUU
IF ERRORLEVEL ==20 GOTO TTT
IF ERRORLEVEL ==19 GOTO SSS
IF ERRORLEVEL ==18 GOTO RRR
IF ERRORLEVEL ==17 GOTO QQQ
IF ERRORLEVEL ==16 GOTO PPP
IF ERRORLEVEL ==15 GOTO OOO
IF ERRORLEVEL ==14 GOTO NNN
IF ERRORLEVEL ==13 GOTO MMM
IF ERRORLEVEL ==12 GOTO LLL
IF ERRORLEVEL ==11 GOTO KKK
IF ERRORLEVEL ==10 GOTO JJJ
IF ERRORLEVEL ==9 GOTO III
IF ERRORLEVEL ==8 GOTO HHH
IF ERRORLEVEL ==7 GOTO GGG
IF ERRORLEVEL ==6 GOTO FFF
IF ERRORLEVEL ==5 GOTO EEE
IF ERRORLEVEL ==4 GOTO DDD
IF ERRORLEVEL ==3 GOTO CCC
IF ERRORLEVEL ==2 GOTO error
IF ERRORLEVEL ==1 GOTO error
GOTO END

:ZZZ
ECHO You chose the Z-Drive for installing... 
pause
call doit.bat Z:
GOTO END

:YYY
ECHO You chose the Y-Drive for installing... 
call doit.bat Y:
GOTO END

:XXX
ECHO You chose the X-Drive for installing... 
call doit.bat X:
GOTO END

:WWW
ECHO You chose the W-Drive for installing... 
call doit.bat W:
GOTO END

:VVV
ECHO You chose the V-Drive for installing... 
call doit.bat V:
GOTO END

:UUU
ECHO You chose the U-Drive for installing... 
call doit.bat U:
GOTO END

:TTT
ECHO You chose the T-Drive for installing... 
call doit.bat T:
GOTO END

:SSS
ECHO You chose the S-Drive for installing... 
call doit.bat S:
GOTO END

:RRR
ECHO You chose the R-Drive for installing... 
call doit.bat R:
GOTO END

:QQQ
ECHO You chose the Q-Drive for installing... 
call doit.bat Q:
GOTO END

:PPP
ECHO You chose the P-Drive for installing... 
call doit.bat P:
GOTO END

:OOO
ECHO You chose the O-Drive for installing... 
call doit.bat O:
GOTO END

:NNN
ECHO You chose the N-Drive for installing... 
call doit.bat N:
GOTO END

:MMM
ECHO You chose the M-Drive for installing... 
call doit.bat M:
GOTO END

:LLL
ECHO You chose the L-Drive for installing... 
call doit.bat H:
GOTO END

:KKK
ECHO You chose the K-Drive for installing... 
call doit.bat G:
GOTO END

:JJJ
ECHO You chose the J-Drive for installing... 
call doit.bat J:
GOTO END

:III
ECHO You chose the I-Drive for installing... 
call doit.bat I:
GOTO END

:HHH
ECHO You chose the H-Drive for installing... 
call doit.bat H:
GOTO END

:GGG
ECHO You chose the G-Drive for installing... 
call doit.bat G:
GOTO END

:FFF
ECHO You chose the F-Drive for installing... 
call doit.bat F:
GOTO END

:EEE
ECHO You chose the E-Drive for installing... 
call doit.bat E:
GOTO END

:DDD
ECHO You chose the D-Drive for installing... 
call doit.bat D:
GOTO END

:CCC
ECHO You chose the C-Drive for installing... 
call doit.bat C:
GOTO END

:error
ECHO You can't install on floppy-drives... !
GOTO END

:END
