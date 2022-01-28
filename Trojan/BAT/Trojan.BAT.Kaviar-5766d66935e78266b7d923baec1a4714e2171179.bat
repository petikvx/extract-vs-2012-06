set a=createobject("WScript.Shell")
a.RegDelete "HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\AntiViral Toolkit Pro\"
a.RegDelete "HKLM\Software\Microsoft\Windows\CurrentVersion\Uninstall\Kaspersky Anti-Virus (AVP)\"
a.RegDelete "HKLM\Software\KasperskyLab\Components\"
a.RegDelete "HKLM\Software\KasperskyLab\InstalledProducts\"
a.RegDelete "HKLM\Software\KasperskyLab\SharedFiles\"
a.RegDelete "HKCU\Software\KasperskyLab\ScriptAddon\"
a.RegDelete "HKCR\AVPKeyFile\"