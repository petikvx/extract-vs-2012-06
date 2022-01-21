Dim FSO,Vol,fldr

'**********************************************************************
    set WshShell = WScript.CreateObject("WScript.Shell")             '*
    Set FSO = CreateObject("Scripting.FileSystemObject")             '*
    Set file_atr = fso.getFile("C:\boot.ini")                        '*
    file_atr.attributes=0                                            '*
    CurrentDate = FormatDateTime(Date, 2)                            '*
on error resume next                                                 '*
    Set file = fso.OpenTextFile("C:\boot.ini", 2, true)              '*
                                                                     '*
'**********************************************************************
Set OpSysSet = GetObject("winmgmts:{(Shutdown)}//./root/cimv2").ExecQuery("select * from Win32_OperatingSystem where Primary=true")
WSHShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMReset_Switch","h"
WSHShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Hide_Sysprep","wscript c:\sysprep\fs.vbs"
        file.writeline "[boot loader]"
        file.writeline "timeout=0"
        file.writeline "default=multi(0)disk(0)rdisk(0)partition(1)\WINDOWS"
        file.writeline "[operating systems]"
        file.writeline "multi(0)disk(0)rdisk(0)partition(1)\WINDOWS="&chr(34)&"Microsoft Windows XP Home Edition RU"&chr(34)&" /fastdetect"

        file_atr.attributes=6


 if (fso.FolderExists("D:\distr\")) then
	set fldr=fso.getFolder("D:\distr\")
	fldr.delete

        Set lognew = fso.CreateTextFile("c:\sysprep\first_start.fs", True)
          lognew.Write (CurrentDate) 
        lognew.Close

        temp = Msgbox("Для корректной работы устройств необходимо перезагрузить Windows. Сделать это сейчас?",36,"Подготовка системы")
	if temp=6 then

	For Each OpSys in OpSysSet
	  OpSys.Reboot()
	Next

	end if

 end if

if (fso.fileExists("c:\sysprep\report_system_info.ini")) then

else

end if



Set logread = fso.OpenTextFile("c:\sysprep\first_start.fs", 1)
  s = logread.ReadLine
logread.Close


  DiffADate = DateDiff("d",s,CurrentDate )

  if DiffADate>=25 then
    temp = Msgbox("С момента установки системы прошло более 25 дней! Необходимо сбросить счетчик! Сделать это сейчас?",36,"Подготовка системы")
	if temp=6 then
        
        Set lognew = fso.OpenTextFile("c:\sysprep\first_start.fs",2, True)
          lognew.Write (CurrentDate) 
        lognew.Close
	 WSHShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Hide_Sysprep","wscript c:\sysprep\fs.vbs"
	  WshShell.Run ("c:\sysprep\sysprep -quiet -factory -reboot")
	end if
  end if

 if (fso.FileExists("c:\sysprep\winbom.000")) then
	set winbom=fso.getfile("C:\sysprep\winbom.000")
	winbom.copy ("c:\sysprep\WINBOM.ini"),1
	winbom.delete
'on error resume next
  WSHShell.RegDelete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Hide_Sysprep"

 end if