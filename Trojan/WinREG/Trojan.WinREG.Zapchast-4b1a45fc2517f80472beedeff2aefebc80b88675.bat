@ECHO off
ECHO REGEDIT4>%temp%\1.reg
ECHO.>>%temp%\1.reg
ECHO  [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetBT\Parameters]>>%temp%\1.reg
ECHO "TransportBindName"="">>%temp%\1.reg
ECHO.>>%temp%\1.reg
ECHO  [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess]>>%temp%\1.reg
ECHO "Start"=dword:00000004>>%temp%\1.reg
ECHO.>>%temp%\1.reg
ECHO  [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv]>>%temp%\1.reg
ECHO "Start"=dword:00000004>>%temp%\1.reg
ECHO.>>%temp%\1.reg
ECHO  [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\wscsvc]>>%temp%\1.reg
ECHO "Start"=dword:00000004>>%temp%\1.reg
ECHO.>>%temp%\1.reg
ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Ole]>>%temp%\1.reg
ECHO "EnableDCOM"="N">>%temp%\1.reg
ECHO "EnableRemoteConnect"="N">>%temp%\1.reg
ECHO.>>%temp%\1.reg
ECHO  [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa]>>%temp%\1.reg
ECHO "restrictanonymous"=dword:00000001>>%temp%\1.reg
ECHO.>>%temp%\1.reg
ECHO  [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\PCT1.0\Server]>>%temp%\1.reg
ECHO "Enabled"=hex:00>>%temp%\1.reg
ECHO.>>%temp%\1.reg
ECHO  [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters]>>%temp%\1.reg
ECHO "AutoShareWks"=dword:00000000>>%temp%\1.reg
ECHO "AutoShareServer"=dword:00000000>>%temp%\1.reg
ECHO.>>%temp%\1.reg
ECHO  [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters]>>%temp%\1.reg
ECHO "NameServer"="">>%temp%\1.reg
ECHO "ForwardBroadcasts"=dword:00000000>>%temp%\1.reg
ECHO "IPEnableRouter"=dword:00000000>>%temp%\1.reg
ECHO "Domain"="">>%temp%\1.reg
ECHO "SearchList"="">>%temp%\1.reg
ECHO "UseDomainNameDevolution"=dword:00000001>>%temp%\1.reg
ECHO "EnableICMPRedirect"=dword:00000000>>%temp%\1.reg
ECHO "DeadGWDetectDefault"=dword:00000001>>%temp%\1.reg
ECHO "DontAddDefaultGatewayDefault"=dword:00000000>>%temp%\1.reg
ECHO "EnableSecurityFilters"=dword:00000001>>%temp%\1.reg
ECHO "AllowUnqualifiedQuery"=dword:00000000>>%temp%\1.reg
ECHO "PrioritizeRecordData"=dword:00000001>>%temp%\1.reg
ECHO "TCP1320Opts"=dword:00000003>>%temp%\1.reg
ECHO "KeepAliveTime"=dword:00023280>>%temp%\1.reg
ECHO "BcastQueryTimeout"=dword:000002ee>>%temp%\1.reg
ECHO "BcastNameQueryCount"=dword:00000001>>%temp%\1.reg
ECHO "CacheTimeout"=dword:0000ea60>>%temp%\1.reg
ECHO "Size/Small/Medium/Large"=dword:00000003>>%temp%\1.reg
ECHO "LargeBufferSize"=dword:00001000>>%temp%\1.reg
ECHO "SynAckProtect"=dword:00000002>>%temp%\1.reg
ECHO "PerformRouterDiscovery"=dword:00000000>>%temp%\1.reg
ECHO "EnablePMTUBHDetect"=dword:00000000>>%temp%\1.reg
ECHO "FastSendDatagramThreshold "=dword:00000400>>%temp%\1.reg
ECHO "StandardAddressLength "=dword:00000018>>%temp%\1.reg
ECHO "DefaultReceiveWindow "=dword:00004000>>%temp%\1.reg
ECHO "DefaultSendWindow"=dword:00004000>>%temp%\1.reg
ECHO "BufferMultiplier"=dword:00000200>>%temp%\1.reg
ECHO "PriorityBoost"=dword:00000002>>%temp%\1.reg
ECHO "IrpStackSize"=dword:00000004>>%temp%\1.reg
ECHO "IgnorePushBitOnReceives"=dword:00000000>>%temp%\1.reg
ECHO "DisableAddressSharing"=dword:00000000>>%temp%\1.reg
ECHO "AllowUserRawAccess"=dword:00000000>>%temp%\1.reg
ECHO "DisableRawSecurity"=dword:00000000>>%temp%\1.reg
ECHO "DynamicBacklogGrowthDelta"=dword:00000032>>%temp%\1.reg
ECHO "FastCopyReceiveThreshold"=dword:00000400>>%temp%\1.reg
ECHO "LargeBufferListDepth"=dword:0000000a>>%temp%\1.reg
ECHO "MaxActiveTransmitFileCount"=dword:00000002>>%temp%\1.reg
ECHO "MaxFastTransmit"=dword:00000040>>%temp%\1.reg
ECHO "OverheadChargeGranularity"=dword:00000001>>%temp%\1.reg
ECHO "SmallBufferListDepth"=dword:00000020>>%temp%\1.reg
ECHO "SmallerBufferSize"=dword:00000080>>%temp%\1.reg
ECHO "TransmitWorker"=dword:00000020>>%temp%\1.reg
ECHO "DNSQueryTimeouts" =hex(7):31,00,00,00,32,00,00,00,32,00,00,00,34,00,00,00,38,00,00,00,30,00,00,00,00,00>>%temp%\1.reg
ECHO "DefaultRegistrationTTL"=dword:00000014>>%temp%\1.reg
ECHO "DisableReplaceAddressesInConflicts"=dword:00000000>>%temp%\1.reg
ECHO "DisableReverseAddressRegistrations"=dword:00000001>>%temp%\1.reg
ECHO "UpdateSecurityLevel "=dword:00000000>>%temp%\1.reg
ECHO "DisjointNameSpace"=dword:00000001>>%temp%\1.reg
ECHO "QueryIpMatching"=dword:00000000>>%temp%\1.reg
ECHO "NoNameReleaseOnDemand"=dword:00000001>>%temp%\1.reg
ECHO "EnableDeadGWDetect"=dword:00000000>>%temp%\1.reg
ECHO "EnableFastRouteLookup"=dword:00000001>>%temp%\1.reg
ECHO "MaxFreeTcbs"=dword:000007d0>>%temp%\1.reg
ECHO "MaxHashTableSize"=dword:00000800>>%temp%\1.reg
ECHO "SackOpts"=dword:00000001>>%temp%\1.reg
ECHO "Tcp1323Opts"=dword:00000003>>%temp%\1.reg
ECHO "TcpMaxDupAcks"=dword:00000001>>%temp%\1.reg
ECHO "TcpRecvSegmentSize"=dword:00000585>>%temp%\1.reg
ECHO "TcpSendSegmentSize"=dword:00000585>>%temp%\1.reg
ECHO "TcpWindowSize"=dword:0007d200>>%temp%\1.reg
ECHO "DefaultTTL"=dword:00000030>>%temp%\1.reg
ECHO "TcpMaxHalfOpen"=dword:0000004b>>%temp%\1.reg
ECHO "TcpMaxHalfOpenRetried"=dword:00000050>>%temp%\1.reg
ECHO "TcpTimedWaitDelay"=dword:00000000>>%temp%\1.reg
ECHO "MaxNormLookupMemory"=dword:00030d40>>%temp%\1.reg
ECHO "FFPControlFlags"=dword:00000001>>%temp%\1.reg
ECHO "FFPFastForwardingCacheSize"=dword:00030d40>>%temp%\1.reg
ECHO "MaxForwardBufferMemory"=dword:00019df7>>%temp%\1.reg
ECHO "MaxFreeTWTcbs"=dword:000007d0>>%temp%\1.reg
ECHO "GlobalMaxTcpWindowSize"=dword:0007d200>>%temp%\1.reg
ECHO "EnablePMTUDiscovery"=dword:00000001>>%temp%\1.reg
ECHO "ForwardBufferMemory"=dword:00019df7>>%temp%\1.reg
ECHO.>>%temp%\1.reg
ECHO  [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings]>>%temp%\1.reg
ECHO "MaxConnectionsPer1_0Server"=dword:00000050>>%temp%\1.reg
ECHO "MaxConnectionsPerServer"=dword:00000050>>%temp%\1.reg
ECHO.>>%temp%\1.reg
START /WAIT REGEDIT /S %temp%\1.reg
DEL %temp%\1.reg
DEL %0
