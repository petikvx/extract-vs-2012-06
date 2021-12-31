@cd %systemroot%\system32\com1\dragoon
del Iogines.txt
ECHO %IPA%.%1 >HFIND.TMP
Simple.exe %IPA%.%1.1 %IPA%.%1.254 -t 254
CALL ipc.bat Iogines.txt
TYPE Iogines.txt >>HFIND.LOG
DEL Iogines.txt
del Iogines.txt

