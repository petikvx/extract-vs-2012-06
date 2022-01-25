VERSION 5.00
Begin VB.Form Copy 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "The explorer"
   ClientHeight    =   7230
   ClientLeft      =   1695
   ClientTop       =   1515
   ClientWidth     =   7080
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   7230
   ScaleWidth      =   7080
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   255
      Left            =   4200
      TabIndex        =   8
      Top             =   3360
      Width           =   1215
   End
   Begin VB.FileListBox File2 
      Height          =   2820
      Left            =   3840
      TabIndex        =   7
      Top             =   3840
      Width           =   2415
   End
   Begin VB.FileListBox File1 
      Height          =   2820
      Left            =   3840
      TabIndex        =   6
      Top             =   240
      Width           =   2415
   End
   Begin VB.DriveListBox Drive2 
      Height          =   315
      Left            =   1080
      TabIndex        =   3
      Top             =   6720
      Width           =   2295
   End
   Begin VB.DirListBox Dir2 
      Height          =   2730
      Left            =   960
      TabIndex        =   2
      Top             =   3840
      Width           =   2655
   End
   Begin VB.DriveListBox Drive1 
      Height          =   315
      Left            =   1080
      TabIndex        =   1
      Top             =   3360
      Width           =   2295
   End
   Begin VB.DirListBox Dir1 
      Height          =   2955
      Left            =   960
      TabIndex        =   0
      Top             =   240
      Width           =   2655
   End
   Begin VB.Label Label2 
      Caption         =   "File to start with the program:"
      Height          =   615
      Left            =   120
      TabIndex        =   5
      Top             =   3840
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Program to start with:"
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   360
      Width           =   975
   End
End
Attribute VB_Name = "Copy"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub About_Click()
Msg = "Feel free to copy this program and change it!   ThE cRoW"   ' Define message.
Style = vbOKOnly + vbInformation    ' Define buttons.
Title = "About"  ' Define title.
Ctxt = 1000 ' Define topic
        ' context.
        ' Display message.
Response = MsgBox(Msg, Style, Title, Help, Ctxt)
If Response = vbYes Then    ' User chose Yes.
    MyString = "Yes"    ' Perform some action.
Else    ' User chose No.
    MyString = "No" ' Perform some action.
End If
End Sub


Private Sub cmdCopy_Click()
On Error Resume Next
Message = "Source file:"   ' Set prompt.
Title = "Choose the source file!" ' Set title.
' Display message, title, and default value.
MyValue1 = InputBox(Message, Title)
Message = "Destination file:"   ' Set prompt.
Title = "Choose the destination file!" ' Set title.
' Display message, title, and default value.
MyValue2 = InputBox(Message, Title)
SourceFile = MyValue1  ' Define source filename.
DestinationFile = MyValue2    ' Define target filename.
FileCopy SourceFile, DestinationFile    ' Copy source to target.
End Sub


Private Sub Command1_Click()
On Error Resume Next
File1.Selected (Index), True = X
File2.Selected (Index), True = Y
Shell (X + Y)
End Sub



Private Sub Command2_Click()
    On Error Resume Next
    ' Get the last three letters of the dragged filename.
    temp = Right$(File1.filename, 3)
    ' If dragged file is in the root, append filename.
    If Mid(File1.Path, Len(File1.Path)) = "\" Then
      dropfile = File1.Path & File1.filename
    ' If dragged file is not in root, append "\" and filename.
    Else
      dropfile = File1.Path & "\" & File1.filename
    End If
      
    Select Case temp
    Case "txt"
        X = Shell("Notepad " + dropfile, 1)
    Case "bmp"
        X = Shell("mspaint " + dropfile, 1)
    Case "exe"
        X = Shell(dropfile, 1)
    Case "hlp"
        X = Shell("WinHelp " + dropfile, 1)
    Case "bat"
        X = Shell(dropfile, 1)
    Case "log"
        X = Shell("Notepad " + dropfile, 1)
    Case "com"
        X = Shell(dropfile, 1)
    Case "ini"
        X = Shell("Notepad " + dropfile, 1)
    Case "htm"
        X = Shell("explorer " + dropfile, 1)
    Case "jpg"
        X = Shell("explorer " + dropfile, 1)
    Case "gif"
        X = Shell("explorer " + dropfile, 1)
    Case "fon"
        X = Shell("fontview " + dropfile, 1)
    Case "reg"
        X = Shell("regedit " + dropfile, 1)
    Case "inf"
        X = Shell("notepad " + dropfile, 1)
    Case "ttf"
        X = Shell("fontview " + dropfile, 1)
    Case "wri"
        X = Shell("notepad " + dropfile, 1)
    Case "bas"
        X = Shell("qbasic " + dropfile, 1)
    Case Else
Msg = "The next version contains more filetypes!"
Style = vbOKOnly ' Define buttons.
Title = "Unknown Filetype!"  ' Define title.
Ctxt = 1000 ' Define topic
        ' context.
        ' Display message.
Response = MsgBox(Msg, Style, Title, Help, Ctxt)
If Response = vbYes Then    ' User chose Yes.
    MyString = "Yes"    ' Perform some action.
Else    ' User chose No.
    MyString = "No" ' Perform some action.
End If
    End Select
End Sub

Private Sub Command3_Click()
 On Error Resume Next
    ' Get the last three letters of the dragged filename.
    temp = Right$(File1.filename, 3)
    ' If dragged file is in the root, append filename.
    If Mid(File1.Path, Len(File1.Path)) = "\" Then
      dropfile = File1.Path & File1.filename
    ' If dragged file is not in root, append "\" and filename.
    Else
      dropfile = File1.Path & "\" & File1.filename
    End If
      
    Select Case temp
    Case Is = X = Shell("Notepad " + dropfile, 1)
 End Select
End Sub

Private Sub Command4_Click()
  Unload Me
  End
End Sub

Private Sub Command5_Click()
 Shell ("C:\WINDOWS\RUNDLL32.EXE USER,EXITWINDOWS")
End Sub

Private Sub Command7_Click()
Unload Me
About.Show
End Sub

Private Sub Dir1_Change()
File1.Path = Dir1.Path  ' When directory changes, set file path.
End Sub

Private Sub Dir2_Change()
File2.Path = Dir2.Path  ' When directory changes, set file path.
End Sub

Private Sub Drive1_Change()
   On Error GoTo DriveHandler
    Dir1.Path = Drive1.Drive
    Exit Sub

DriveHandler:
    Drive1.Drive = Dir1.Path
    Exit Sub
End Sub


Private Sub Drive2_Change()
   On Error GoTo DriveHandler
    Dir2.Path = Drive2.Drive
    Exit Sub

DriveHandler:
    Drive2.Drive = Dir2.Path
    Exit Sub
End Sub

