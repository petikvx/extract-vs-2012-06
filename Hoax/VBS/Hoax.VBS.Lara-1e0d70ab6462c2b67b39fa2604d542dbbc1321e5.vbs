L_Welcome_MsgBox_Message_Text    = "Lara.....Kiss for YOU !" 
L_Welcome_MsgBox_Title_Text      = "LARA v.3"   
Call Welcome()   
L_Welcome_MsgBox_Message_Text    = "Lara.....Virus for YOU!"   
L_Welcome_MsgBox_Title_Text      = "LARA v.3"    
Call Welcome()    
L_Welcome_MsgBox_Message_Text    = "FRIDAY"   
L_Welcome_MsgBox_Title_Text      = "LARA v.3"    
Call Welcome() 
'  
' 
' 
Dim WSHNetwork 
Dim colDrives, SharePoint 
Dim CRLF 
' 
Set WSHNetwork = WScript.CreateObject("WScript.Network") 
'   
' 
Function Ask(strAction) 
' 
'   
' 
   Dim intButton 
   intButton = MsgBox(strAction,                   _ 
                      vbQuestion + vbYesNo,        _ 
                      L_Welcome_MsgBox_Title_Text ) 
   Ask = intButton = vbYes 
End Function 
' 
' 
      vbInformation + vbOKOnly,                                            _ 
      "LARA" 
' 
' 
' 
' 
' 
' 
Sub Welcome() 
    Dim intDoIt 
' 
   intDoIt =  MsgBox(L_Welcome_MsgBox_Message_Text, _ 
                     vbOKCancel + vbOKCancel,    _ 
                     L_Welcome_MsgBox_Title_Text ) 
   If intDoIt = vbCancel Then 
       WScript.Quit 
   End If 
End Sub 
