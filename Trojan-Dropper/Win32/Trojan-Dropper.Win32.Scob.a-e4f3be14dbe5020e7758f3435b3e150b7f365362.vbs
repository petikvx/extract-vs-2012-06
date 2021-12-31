Option Explicit
On Error Resume Next
Dim ArgObj ' Object which contains the command line argument
Dim Result ' Result of the command function call
Dim Args(10) ' Array that contains all of the non-global arguments
Dim ArgCount ' Tracks the size of the Args array
Dim Spacer
Dim SpacerSize
Const IIS_DATA_NO_INHERIT=0
Const IIS_DATA_INHERIT=1
Const GENERAL_FAILURE=2
Const GENERAL_WARNING=1
Const AppCreate_InProc=0
Const AppCreate_OutOfProc=1
Const AppCreate_PooledOutOfProc=2
Const APPSTATUS_NOTDEFINED=2
Const APPSTATUS_RUNNING=1
Const APPSTATUS_STOPPED=0
Spacer="                                " ' Used to format the strings
SpacerSize=Len(Spacer)
DetectExeType
Set ArgObj=WScript.Arguments
If ArgObj.Count < 1 Then
DisplayHelpMessage
WScript.Quit(GENERAL_FAILURE)
End If
Dim TargetServer 'The server to be examined/modified
Dim I
For I=0 To ArgObj.Count-1
If LCase(Left(ArgObj.Item(I), 3))="-s:" Then
TargetServer=Right(ArgObj.Item(I), Len(ArgObj.Item(I))-3)
Else
Args(ArgCount)=ArgObj.Item(I)
ArgCount=ArgCount+1
End If
Next
If Len(TargetServer)=0 Then
TargetServer="localhost"
End If
Select Case UCase(Args(0))
Case "SET"
Result=SetCommand()
Case "CREATE"
Result=CreateCommand("")
Case "DELETE"
Result=DeleteCommand()
Case "GET"
Result=GetCommand()
Case "ENUM"
Result=EnumCommand(False, "")
Case "ENUM_ALL"
Result=EnumCommand(True, "")
Case "ENUMALL"
Result=EnumCommand(True, "")
Case Else
WScript.Echo "Command not recognized: " & Args(0)
Result=GENERAL_FAILURE
End Select
WScript.Quit(Result)
Sub DisplayHelpMessage()
End Sub
Sub DisplayHelpMessageEx()
End Sub
Sub DetectExeType()
Dim ScriptHost
Dim ShellObject
Dim CurrentPathExt
Dim EnvObject
Dim RegCScript
Dim RegPopupType ' This is used to set the pop-up box flags.
RegPopupType=32+4
On Error Resume Next
ScriptHost=WScript.FullName
ScriptHost=Right(ScriptHost, Len(ScriptHost)-InStrRev(ScriptHost, "\"))
If(UCase(ScriptHost)="WSCRIPT.EXE") Then
WScript.Echo("This script does not work with WScript.")
Set Sho=WScript.CreateObject("WScript.Shell")
RegCScript=ShellObject.PopUp("Would you like to register CScript as your default host for VBscript?", 0, "Register CScript", RegPopupType)
If(Err.Number<>0) Then
ReportError()
WScript.Echo "To run this script using CScript, type: ""CScript.exe " & WScript.ScriptName & """"
WScript.Quit(GENERAL_FAILURE)
WScript.Quit(Err.Number)
End If
If(RegCScript=6) Then
ShellObject.RegWrite "HKEY_CLASSES_ROOT\VBSFile\Shell\Open\Command\", "%WINDIR%\System32\CScript.exe //nologo ""%1"" %*", "REG_EXPAND_SZ"
ShellObject.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\VBSFile\Shell\Open\Command\", "%WINDIR%\System32\CScript.exe //nologo ""%1"" %*", "REG_EXPAND_SZ"
CurrentPathExt=ShellObject.RegRead("HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment\PATHEXT")
If Err.Number=&H80070002 Then
Err.Clear
Set EnvObject=ShellObject.Environment("PROCESS")
CurrentPathExt=EnvObject.Item("PATHEXT")
End If
ShellObject.RegWrite "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment\PATHEXT", CurrentPathExt & ";.VBS", "REG_SZ"
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying to write the registry settings!"
WScript.Quit(Err.Number)
Else
WScript.Echo "Successfully registered CScript"
End If
Else
WScript.Echo "To run this script type: ""CScript.Exe adsutil.vbs <cmd> <params>"""
End If
Dim ProcString
Dim ArgIndex
Dim ArgObj
Dim Result
ProcString="Cscript //nologo " & WScript.ScriptFullName
Set ArgObj=WScript.Arguments
For ArgIndex=0 To ArgCount-1
ProcString=ProcString & " " & Args(ArgIndex)
Next
Result=ShellObject.Run(ProcString, 0, True)
WScript.Quit(Result)
End If
End Sub
Function SetCommand()
Dim IIsObject
Dim IIsObjectPath
Dim IIsSchemaObject
Dim IIsSchemaPath
Dim ObjectPath
Dim ObjectParameter
Dim MachineName
Dim ValueIndex
Dim ValueList
Dim ValueDisplay
Dim ValueDisplayLen
Dim ValueDataType
Dim ValueData
Dim ObjectDataType
On Error Resume Next
SetCommand=0 ' Assume Success
If ArgCount < 3 Then
WScript.Echo "Error: Wrong number of Args for the SET command"
WScript.Quit(GENERAL_FAILURE)
End If
ObjectPath=Args(1)
SanitizePath ObjectPath
MachineName=SeparateMachineName(ObjectPath)
ObjectParameter=SplitParam(ObjectPath)
If(IsSpecialSetProperty(ObjectParameter)) Then
SetCommand=DoSpecialSetProp(ObjectPath, ObjectParameter, MachineName)
Exit Function
End If
If ObjectPath="" Then
IIsObjectPath="IIS://" & MachineName
Else
IIsObjectPath="IIS://" & MachineName & "/" & ObjectPath
End If
Set IIsObject=GetObject(IIsObjectPath)
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To Get the Object: " & ObjectPath
WScript.Quit(Err.Number)
End If
IIsSchemaPath="IIS://" & MachineName & "/Schema/" & ObjectParameter
Set IIsSchemaObject=GetObject(IIsSchemaPath)
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To GET the Schema of the property: " & IIsSchemaPath
WScript.Quit(Err.Number)
End If
ObjectDataType=UCase(IIsSchemaObject.Syntax)
SanitizePath ObjectDataType
Select Case(ObjectDataType)
Case "STRING"
ValueList=Args(2)
IIsObject.Put ObjectParameter,(ValueList)
Case "EXPANDSZ"
ValueList=Args(2)
IIsObject.Put ObjectParameter,(ValueList)
Case "INTEGER"
ValueData=Args(2)
If(UCase(Left(ValueData, 2)))="0X" Then
ValueData="&h" & Right(ValueData, Len(ValueData)-2)
End If
ValueList=CLng(ValueData)
IIsObject.Put ObjectParameter,(ValueList)
Case "BOOLEAN"
ValueList=CBool(Args(2))
IIsObject.Put ObjectParameter,(ValueList)
Case "LIST"
ReDim ValueList(ArgCount-3)
For ValueIndex=2 To ArgCount-1
ValueList(ValueIndex-2)=Args(ValueIndex)
Next
IIsObject.Put ObjectParameter,(ValueList)
Case Else
WScript.Echo "Error: Unknown data type in schema: " & IIsSchemaObject.Syntax
End Select
IIsObject.Setinfo
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To SET the Property: " & ObjectParameter
WScript.Quit(Err.Number)
End If
ValueDisplay=ObjectParameter
ValueDisplayLen=Len(ValueDisplay)
If(ValueDisplayLen < SpacerSize) Then
ValueDisplay=ValueDisplay &(Right(Spacer, SpacerSize-ValueDisplayLen)) & ": " & "(" & ObjectDataType & ") "
Else
ValueDisplay=ValueDisplay & ": " & "(" & TypeName(ValueList) & ") "
End If
If(IIsSchemaObject.MultiValued) Then
For ValueIndex=0 To UBound(ValueList)
ValueDisplay=ValueDisplay & """" & ValueList(ValueIndex) & """ "
Next
Else
If(UCase(IIsSchemaObject.Syntax)="STRING") Then
If(IsSecureProperty(ObjectParameter,MachineName)=True) Then
ValueDisplay=ValueDisplay & """" & "**********" & """"
Else
ValueDisplay=ValueDisplay & """" & ValueList & """"
End If
Else
ValueDisplay=ValueDisplay & ValueList
End If
End If
WScript.Echo ValueDisplay
SetCommand=0 ' Success
End Function
Function GetCommand()
Dim IIsObject
Dim IIsObjectPath
Dim IIsSchemaObject
Dim IIsSchemaPath
Dim ObjectPath
Dim ObjectParameter
Dim MachineName
Dim ValueIndex
Dim ValueList
Dim ValueDisplay
Dim ValueDisplayLen
Dim NewObjectparameter
Dim DataPathList
Dim DataPath
On Error Resume Next
GetCommand=0 ' Assume Success
If ArgCount<>2 Then
WScript.Echo "Error: Wrong number of Args for the GET command"
WScript.Quit(GENERAL_FAILURE)
End If
ObjectPath=Args(1)
SanitizePath ObjectPath
MachineName=SeparateMachineName(ObjectPath)
ObjectParameter=SplitParam(ObjectPath)
NewObjectparameter=MapSpecGetParamName(ObjectParameter)
ObjectParameter=NewObjectparameter
If(IsSpecialGetProperty(ObjectParameter)) Then
GetCommand=DoSpecialGetProp(ObjectPath, ObjectParameter, MachineName)
Exit Function
End If
If ObjectPath="" Then
IIsObjectPath="IIS://" & MachineName
Else
IIsObjectPath="IIS://" & MachineName & "/" & ObjectPath
End If
Set IIsObject=GetObject(IIsObjectPath)
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To GET the Object(GetObject Failed): " & ObjectPath
WScript.Quit(Err.Number)
End If
IIsSchemaPath="IIS://" & MachineName & "/Schema/" & ObjectParameter
Set IIsSchemaObject=GetObject(IIsSchemaPath)
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To GET the Schema of the property: " & IIsSchemaPath
WScript.Quit(Err.Number)
End If
ValueList=IIsObject.Get(ObjectParameter)
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To GET the property:(Get Method Failed) " & ObjectParameter
WScript.Echo " (This property is probably not allowed at this node)"
WScript.Quit(Err.Number)
End If
DataPathList=IIsObject.GetDataPaths(ObjectParameter, IIS_DATA_INHERIT)
If Err.Number<>0 Then DataPathList=IIsObject.GetDataPaths(ObjectParameter, IIS_DATA_NO_INHERIT)
Err.Clear
If(UBound(DataPathList) < 0) Then
WScript.Echo "The parameter """ & ObjectParameter & """ is not set at this node."
WScript.Quit(&H80005006) ' end with property not set error
End If
DataPath=DataPathList(0)
SanitizePath DataPath
If UCase(DataPath)<>UCase(IIsObjectPath) Then
WScript.Echo "The parameter """ & ObjectParameter & """ is not set at this node."
WScript.Quit(&H80005006) ' end with property not set error
End If
ValueDisplay=ObjectParameter
ValueDisplayLen=Len(ValueDisplay)
If(ValueDisplayLen < SpacerSize) Then
ValueDisplay=ValueDisplay &(Right(Spacer, SpacerSize-ValueDisplayLen)) & ": " & "(" & UCase(IIsSchemaObject.Syntax) & ") "
Else
ValueDisplay=ValueDisplay & ": " & "(" & TypeName(ValueList) & ") "
End If
If(IIsSchemaObject.MultiValued) Then
WScript.Echo ValueDisplay & "(" & UBound(ValueList)+1 & " Items)"
For ValueIndex=0 To UBound(ValueList)
WScript.Echo "  """ & ValueList(ValueIndex) & """"
Next
Else
If(UCase(IIsSchemaObject.Syntax)="STRING") Then
If(IsSecureProperty(ObjectParameter,MachineName)=True) Then
ValueDisplay=ValueDisplay & """" & "**********" & """"
Else
ValueDisplay=ValueDisplay & """" & ValueList & """"
End If
Else
ValueDisplay=ValueDisplay & ValueList
End If
WScript.Echo ValueDisplay
End If
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To GET the Property: " & ObjectParameter
WScript.Quit(Err.Number)
End If
GetCommand=0 ' Success
End Function
Function EnumCommand(Recurse, StartPath)
On Error Resume Next
Dim IIsObject
Dim IIsObjectPath
Dim IIsSchemaObject
Dim IIsSchemaPath
Dim ObjectPath
Dim MachineName
Dim ValueIndex
Dim ValueList
Dim ValueString
Dim PropertyName
Dim PropertyListSet
Dim PropertyList
Dim PropertyObjPath
Dim PropertyObject
Dim ChildObject
Dim ChildObjectName
Dim EnumPathsOnly
Dim EnumAllData
Dim ErrMask
Dim PropertyDataType
Dim DataPathList
Dim DataPath
Dim SpecialResult
Dim PathOnlyOption
PathOnlyOption="/P"
EnumCommand=0 ' Assume Success
EnumPathsOnly=False ' Assume that the user wants all of the data items
EnumAllData=False ' Assume that the user wants only the actual data items
If(ArgCount=1) Then
ObjectPath=""
EnumPathsOnly=False
ArgCount=2
ElseIf(ArgCount=2) Then
If UCase(Args(1))=PathOnlyOption Then
ObjectPath=""
EnumPathsOnly=True
Else
ObjectPath=Args(1)
EnumPathsOnly=False
End If
ElseIf(ArgCount=3) Then
If UCase(Args(1))=PathOnlyOption Then
ObjectPath=Args(2)
EnumPathsOnly=True
ElseIf UCase(Args(2))=PathOnlyOption Then
ObjectPath=Args(1)
EnumPathsOnly=True
Else
WScript.Echo "Error: Invalid arguments for the ENUM command"
WScript.Quit(GENERAL_FAILURE)
End If
Else
WScript.Echo "Error: Wrong number of Args for the ENUM command"
WScript.Quit(GENERAL_FAILURE)
End If
If StartPath<>"" Then ObjectPath=StartPath
SanitizePath ObjectPath
MachineName=SeparateMachineName(ObjectPath)
IIsObjectPath="IIS://" & MachineName
If(ObjectPath<>"") Then
IIsObjectPath=IIsObjectPath & "/" & ObjectPath
End If
Set IIsObject=GetObject(IIsObjectPath)
If(Err.Number<>0) Then
WScript.Echo
ReportError()
WScript.Echo "Error Trying To ENUM the Object(GetObject Failed): " & ObjectPath
WScript.Quit(Err.Number)
End If
IIsSchemaPath=IIsObject.Schema
Set IIsSchemaObject=GetObject(IIsSchemaPath)
If(Err.Number<>0) Then
WScript.Echo
ReportError()
WScript.Echo "Error Trying To GET the Schema of the class: " & IIsSchemaPath
WScript.Quit(Err.Number)
End If
ReDim PropertyListSet(1)
PropertyListSet(0)=IIsSchemaObject.MandatoryProperties
PropertyListSet(1)=IIsSchemaObject.OptionalProperties
If(Err.Number<>0) Then
WScript.Echo
ReportError()
WScript.Echo "Error trying to get the list of properties: " & IIsSchemaPath
WScript.Quit(Err.Number)
End If
If TypeName(PropertyListSet(1))<>"Variant()" Then
WScript.Echo
WScript.Echo "Warning: The optionalproperties list is of an invalid type"
WScript.Echo
ElseIf(UBound(PropertyListSet(1))=-1) Then
WScript.Echo
WScript.Echo "Warning: The OptionalProperties list for this node is empty."
WScript.Echo
End If
If(Not EnumPathsOnly) Then
For Each PropertyList In PropertyListSet
For Each PropertyName In PropertyList
If Err<>0 Then
Exit For
End If
DataPathList=IIsObject.GetDataPaths(PropertyName, IIS_DATA_INHERIT)
If Err.Number<>0 Then DataPathList=IIsObject.GetDataPaths(PropertyName, IIS_DATA_NO_INHERIT)
Err.Clear
If(UBound(DataPathList) >= 0) Or(EnumAllData) Then
DataPath=DataPathList(0)
SanitizePath DataPath
If(UCase(DataPath)=UCase(IIsObjectPath)) Or(EnumAllData) Then
PropertyObjPath="IIS://" & MachineName & "/Schema/" & PropertyName
Set PropertyObject=GetObject(PropertyObjPath)
If(Err.Number<>0) Then
WScript.Echo
ReportError()
WScript.Echo "Error trying to enumerate the Optional properties(Couldn't Get Property Information): " & PropertyObjPath
WScript.Echo "Last Property Name: " & PropertyName
WScript.Echo "PropertyObjPath: " & PropertyObjPath
WScript.Echo
EnumCommand=Err.Number
Err.Clear
End If
ValueList=""
PropertyDataType=UCase(PropertyObject.Syntax)
Select Case PropertyDataType
Case "STRING"
ValueList=IIsObject.Get(PropertyName)
If(IsSecureProperty(PropertyName,MachineName)=True) Then
WScript.Echo PropertyName & Left(Spacer, Len(Spacer)-Len(PropertyName)) & " : " & "(" & PropertyDataType & ")" & """" & "**********" & """"
Else
If(Len(PropertyName) < SpacerSize) Then
WScript.Echo PropertyName & Left(Spacer, Len(Spacer)-Len(PropertyName)) & ": " & "(" & PropertyDataType & ") """ & ValueList & """"
Else
WScript.Echo PropertyName & " : " & "(" & PropertyDataType & ")" & """" & ValueList & """"
End If
End If
Case "EXPANDSZ"
ValueList=IIsObject.Get(PropertyName)
If(Len(PropertyName) < SpacerSize) Then
WScript.Echo PropertyName & Left(Spacer, Len(Spacer)-Len(PropertyName)) & ": " & "(" & PropertyDataType & ") """ & ValueList & """"
Else
WScript.Echo PropertyName & " : " & "(" & PropertyDataType & ") """ & ValueList & """"
End If
Case "INTEGER"
ValueList=IIsObject.Get(PropertyName)
If(Len(PropertyName) < SpacerSize) Then
WScript.Echo PropertyName & Left(Spacer, Len(Spacer)-Len(PropertyName)) & ": " & "(" & PropertyDataType & ") " & ValueList
Else
WScript.Echo PropertyName & " : " & "(" & PropertyDataType & ") " & ValueList
End If
Case "BOOLEAN"
ValueList=IIsObject.Get(PropertyName)
If(Len(PropertyName) < SpacerSize) Then
WScript.Echo PropertyName & Left(Spacer, Len(Spacer)-Len(PropertyName)) & ": " & "(" & PropertyDataType & ") " & ValueList
Else
WScript.Echo PropertyName & " : " & "(" & PropertyDataType & ") " & ValueList
End If
Case "LIST"
ValueList=IIsObject.Get(PropertyName)
If(Len(PropertyName) < SpacerSize) Then
WScript.Echo PropertyName & _
Left(Spacer, Len(Spacer)-Len(PropertyName)) & _
": " & "(" & PropertyDataType & ")(" & _
(UBound(ValueList)+1) & " Items)"
Else
WScript.Echo PropertyName & " : " & "(" & PropertyDataType & ")(" &(UBound(ValueList)+1) & " Items)"
End If
ValueString=""
For ValueIndex=0 To UBound(ValueList)
WScript.Echo "  """ & ValueList(ValueIndex) & """"
Next
WScript.Echo
Case Else
If(IsSpecialGetProperty(PropertyName)) Then
SpecialResult=DoSpecialGetProp(ObjectPath, PropertyName, MachineName)
Err.Clear
Else
WScript.Echo
WScript.Echo "DataType: " & """" & PropertyObject.Syntax & """" & " Not Yet Supported on property: " & PropertyName
ReportError
WScript.Echo
End If
End Select
End If ' End if data exists at the current node
End If ' End If data list > 0
If(Err.Number<>0) Then
WScript.Echo
ReportError()
WScript.Echo "Error trying to enumerate the Optional properties(Error trying to get property value): " & PropertyObjPath
WScript.Echo "Last Property Name: " & PropertyName
WScript.Echo "PropertyObjPath: " & PropertyObjPath
If((Err.Number) >= &H80005000) And((Err.Number) < &H80006000) Then
Err.Clear
WScript.Echo "Continuing..."
Else
WScript.Quit(Err.Number)
End If
WScript.Echo
End If
Next
Next
If(Err.Number<>0) Then
WScript.Echo "Error trying to enumerate the properties lists:"
ReportError()
WScript.Echo
EnumCommand=Err.Number
Err.Clear
End If
End If ' End if(Not EnumPathsOnly)
For Each ChildObject In IIsObject
If(Err.Number<>0) Then Exit For
ChildObjectName=Right(ChildObject.AdsPath, Len(ChildObject.AdsPath)-6)
ChildObjectName=Right(ChildObjectName, Len(ChildObjectName)-InStr(ChildObjectName, "/")+1)
WScript.Echo ChildObjectName
If(Recurse=True) And(ChildObjectName<>Args(1)) Then
EnumCommand=EnumCommand(True, ChildObjectName)
End If
Next
If(Err.Number<>0) Then
WScript.Echo "Error trying to enumerate the child nodes"
ReportError()
WScript.Echo
EnumCommand=Err.Number
Err.Clear
End If
WScript.Echo ""
End Function
Function EnumAllCommand()
On Error Resume Next
WScript.Echo "ENUM_ALL Command not yet supported"
End Function
Function FindData()
On Error Resume Next
Dim ObjectPath
Dim ObjectParameter
Dim NewObjectparameter
Dim MachineName
Dim IIsObjectPath
Dim IIsObject
Dim Path
Dim PathList
Dim I
FindData=0 ' Assume Success
If ArgCount<>2 Then
WScript.Echo "Error: Wrong number of Args for the FIND_DATA command"
WScript.Quit(GENERAL_FAILURE)
End If
ObjectPath=Args(1)
SanitizePath ObjectPath
MachineName=SeparateMachineName(ObjectPath)
ObjectParameter=SplitParam(ObjectPath)
NewObjectparameter=MapSpecGetParamName(ObjectParameter)
ObjectParameter=NewObjectparameter
If ObjectPath="" Then
IIsObjectPath="IIS://" & MachineName
Else
IIsObjectPath="IIS://" & MachineName & "/" & ObjectPath
End If
Set IIsObject=GetObject(IIsObjectPath)
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error trying to find data paths for the Object(GetObject Failed): " & ObjectPath
WScript.Quit(Err.Number)
End If
PathList=IIsObject.GetDataPaths(ObjectParameter, IIS_DATA_INHERIT)
If Err.Number<>0 Then PathList=IIsObject.GetDataPaths(ObjectParameter, IIS_DATA_NO_INHERIT)
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error trying to get a path list(GetDataPaths Failed): " & ObjectPath
WScript.Quit(Err.Number)
End If
If UBound(PathList) < 0 Then
WScript.Echo "Property " & ObjectParameter & " was not found at any node beneath " & ObjectPath
Else
WScript.Echo "Property " & ObjectParameter & " found at:"
For Each Path In PathList
Path=Right(Path, Len(Path)-6)
Path=Right(Path, Len(Path)-InStr(Path, "/"))
WScript.Echo "  " & Path
Next
End If
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error listing the data paths(_newEnum Failed): " & ObjectPath
WScript.Quit(Err.Number)
End If
End Function
Function MimeMapGet(ObjectPath, MachineName)
On Error Resume Next
Dim MimePath
Dim MimeMapList
Dim MimeMapObject
Dim MimeEntry
Dim MimeEntryIndex
Dim MimeStr
Dim MimeOutPutStr
Dim DataPathList
Dim DataPath
MimeMapGet=0 ' Assume Success
MimePath="IIS://" & MachineName
If ObjectPath<>"" Then MimePath=MimePath & "/" & ObjectPath
Set MimeMapObject=GetObject(MimePath)
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error trying to get the Object: " & ObjectPath
WScript.Quit(Err.Number)
End If
DataPathList=MimeMapObject.GetDataPaths("MimeMap", IIS_DATA_INHERIT)
If Err.Number<>0 Then DataPathList=IIsObject.GetDataPaths(MimeMap, IIS_DATA_NO_INHERIT)
Err.Clear
If(UBound(DataPathList) < 0) Then
MimeMapGet=&H80005006  ' end with property not set error
Exit Function
End If
DataPath=DataPathList(0)
SanitizePath DataPath
If UCase(DataPath)<>UCase(MimePath) Then
MimeMapGet=&H80005006  ' end with property not set error
Exit Function
End If
MimeMapList=MimeMapObject.Get("MimeMap")
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error trying to get the Object: " & ObjectPath
WScript.Quit(Err.Number)
End If
MimeOutPutStr="MimeMap                         :(MimeMapList) "
For MimeEntryIndex=0 To UBound(MimeMapList)
Set MimeEntry=MimeMapList(MimeEntryIndex)
MimeOutPutStr=MimeOutPutStr & """" & MimeEntry.Extension & "," & MimeEntry.MimeType & """ "
Next
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error trying to Create the Mime Map List."
WScript.Quit(Err.Number)
End If
WScript.Echo MimeOutPutStr
End Function
Function MimeMapSet(ObjectPath, ObjectParameter, MachineName)
On Error Resume Next
Dim MimePath
Dim MimeEntryIndex
Dim MimeMapList()
Dim MimeMapObject
Dim MimeEntry
Dim MimeStr
Dim MimeOutPutStr
MimeMapSet=0 ' Assume Success
If ArgCount < 3 Then
WScript.Echo "Error: Wrong number of Args for the Set MIMEMAP command"
WScript.Quit(GENERAL_FAILURE)
End If
MimePath="IIS://" & MachineName
If ObjectPath<>"" Then MimePath=MimePath & "/" & ObjectPath
Set MimeMapObject=GetObject(MimePath)
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error trying to get the Object: " & ObjectPath
WScript.Quit(Err.Number)
End If
ReDim MimeMapList(ArgCount-3)
MimeOutPutStr="MimeMap                         :(MimeMapList) "
For MimeEntryIndex=0 To UBound(MimeMapList)
MimeStr=Args(2+MimeEntryIndex)
MimeOutPutStr=MimeOutPutStr & """" & MimeStr & """ "
Set MimeEntry=CreateObject("MimeMap")
MimeEntry.MimeType=Right(MimeStr, InStr(MimeStr, ",")-1)
MimeEntry.Extension=Left(MimeStr, InStr(MimeStr, ",")-1)
Set MimeMapList(MimeEntryIndex)=MimeEntry
Next
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error trying to Create the Mime Map List."
WScript.Quit(Err.Number)
End If
MimeMapObject.MimeMap=MimeMapList
MimeMapObject.Setinfo
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying to set the Object's ""MimeMap"" property to the new mimemap list."
WScript.Quit(Err.Number)
End If
WScript.Echo MimeOutPutStr
End Function
Function IsSpecialGetProperty(ObjectParameter)
On Error Resume Next
Select Case UCase(ObjectParameter)
Case "MIMEMAP"
IsSpecialGetProperty=True
Case Else
IsSpecialGetProperty=False
End Select
End Function
Function DoSpecialGetProp(ObjectPath, ObjectParameter, MachineName)
On Error Resume Next
Select Case UCase(ObjectParameter)
Case "MIMEMAP"
DoSpecialGetProp=MimeMapGet(ObjectPath, MachineName)
Case Else
DoSpecialGetProp=False
End Select
End Function
Function IsSpecialSetProperty(ObjectParameter)
On Error Resume Next
Select Case UCase(ObjectParameter)
Case "SERVERCOMMAND"
IsSpecialSetProperty=True
Case "ACCESSPERM"
IsSpecialSetProperty=True
Case "VRPATH"
IsSpecialSetProperty=True
Case "AUTHORIZATION"
IsSpecialSetProperty=True
Case "MIMEMAP"
IsSpecialSetProperty=True
Case Else
IsSpecialSetProperty=False
End Select
End Function
Function DoSpecialSetProp(ObjectPath, ObjectParameter, MachineName)
Dim IIsObjectPath
Dim IIsObject
Dim ValueList
Dim ValueDisplay
Dim PermIndex
On Error Resume Next
DoSpecialSetProp=0 ' Assume Success
Select Case UCase(ObjectParameter)
Case "SERVERCOMMAND"
IIsObjectPath="IIS://" & MachineName & "/" & ObjectPath
Set IIsObject=GetObject(IIsObjectPath)
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To Get the Object: " & ObjectPath
WScript.Quit(Err.Number)
End If
ValueList=CLng(Args(2))
Select Case ValueList
Case 1
IIsObject.Start
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To Start the server: " & ObjectPath
WScript.Quit(Err.Number)
End If
WScript.Echo "Server " & ObjectPath & " Successfully STARTED"
Case 2
IIsObject.Stop
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To Stop the server: " & ObjectPath
WScript.Quit(Err.Number)
End If
WScript.Echo "Server " & ObjectPath & " Successfully STOPPED"
Case 3
IIsObject.Pause
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To Pause the server: " & ObjectPath
WScript.Quit(Err.Number)
End If
WScript.Echo "Server " & ObjectPath & " Successfully PAUSED"
Case 4
IIsObject.Continue
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To Continue the server: " & ObjectPath
WScript.Quit(Err.Number)
End If
WScript.Echo "Server " & ObjectPath & " Successfully Continued"
Case Else
WScript.Echo "Invalid ServerCommand: " & ValueList
DoSpecialSetProp=GENERAL_FAILURE
End Select
Exit Function
Case "ACCESSPERM"
IIsObjectPath="IIS://" & MachineName & "/" & ObjectPath
Set IIsObject=GetObject(IIsObjectPath)
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To Get the Object: " & ObjectPath
WScript.Quit(Err.Number)
End If
IIsObject.AccessFlags=0
ValueDisplay="AccessFlags(AccessPerm)" &(Right(Spacer, SpacerSize-Len("AccessFlags(AccessPerm)")) & ": " & "(" & TypeName(IIsObject.AccessFlags) & ") ")
Dim APValue
Dim TempValStr
TempValStr=Args(2)
If(UCase(Left(Args(2), 2))="0X") Then
TempValStr="&H" & Right(TempValStr, Len(TempValStr)-2)
End If
APValue=CLng(TempValStr)
If(Err.Number=0) Then
IIsObject.AccessFlags=APValue
ValueDisplay=ValueDisplay & " " & APValue & "(0x" & Hex(APValue) & ")"
Else
Err.Clear
For PermIndex=2 To ArgCount-1
Select Case UCase(Args(PermIndex))
Case "READ"
IIsObject.AccessRead=True
ValueDisplay=ValueDisplay & " Read"
Case "WRITE"
IIsObject.AccessWrite=True
ValueDisplay=ValueDisplay & " Write"
Case "EXECUTE"
IIsObject.AccessExecute=True
ValueDisplay=ValueDisplay & " Execute"
Case "SCRIPT"
IIsObject.AccessScript=True
ValueDisplay=ValueDisplay & " Script"
Case Else
WScript.Echo "Error: Setting not supported: " & Args(PermIndex)
WScript.Quit(GENERAL_FAILURE)
End Select
Next
End If
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To Set data on the Object: " & ObjectPath
WScript.Quit(Err.Number)
End If
IIsObject.Setinfo
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To Set data on the Object: " & ObjectPath
WScript.Quit(Err.Number)
End If
WScript.Echo ValueDisplay
Case "VRPATH"
IIsObjectPath="IIS://" & MachineName & "/" & ObjectPath
Set IIsObject=GetObject(IIsObjectPath)
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To Get the Object: " & ObjectPath
WScript.Quit(Err.Number)
End If
IIsObject.Path=Args(2)
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To Set data on the Object: " & ObjectPath
WScript.Quit(Err.Number)
End If
ValueDisplay="Path(VRPath)" &(Right(Spacer, SpacerSize-Len("Path(VRPath)")) & ": " & "(" & TypeName(IIsObject.Path) & ") " & IIsObject.Path)
IIsObject.Setinfo
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To Set data on the Object: " & ObjectPath
WScript.Quit(Err.Number)
End If
WScript.Echo ValueDisplay
Case "AUTHORIZATION"
IIsObjectPath="IIS://" & MachineName & "/" & ObjectPath
Set IIsObject=GetObject(IIsObjectPath)
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To Get the Object: " & ObjectPath
WScript.Quit(Err.Number)
End If
IIsObject.AuthFlags=0
ValueDisplay="Authorization" &(Right(Spacer, SpacerSize-Len("Authorization")) & ": " & "(" & TypeName(IIsObject.AuthFlags) & ") ")
For PermIndex=2 To ArgCount-1
Select Case UCase(Args(PermIndex))
Case "NT"
IIsObject.AuthNTLM=True
ValueDisplay=ValueDisplay & " NT"
Case "ANONYMOUS"
IIsObject.AuthAnonymous=True
ValueDisplay=ValueDisplay & " Anonymous"
Case "BASIC"
IIsObject.AuthBasic=True
ValueDisplay=ValueDisplay & " Basic"
Case Else
WScript.Echo "Error: Setting not supported: " & Args(PermIndex)
WScript.Quit(GENERAL_FAILURE)
End Select
Next
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To Set data on the Object: " & ObjectPath
WScript.Quit(Err.Number)
End If
IIsObject.Setinfo
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To Set data on the Object: " & ObjectPath
WScript.Quit(Err.Number)
End If
WScript.Echo ValueDisplay
Case "MIMEMAP"
DoSpecialSetProp=MimeMapSet(ObjectPath, ObjectParameter, MachineName)
Case Else
DoSpecialSetProp=GENERAL_FAILURE
End Select
End Function
Function SeparateMachineName(Path)
On Error Resume Next
SeparateMachineName=TargetServer
Exit Function
End Function
Function MapSpecGetParamName(ObjectParameter)
On Error Resume Next
Select Case UCase(ObjectParameter)
Case "ACCESSPERM"
WScript.Echo "Note: Your parameter """ & ObjectParameter & """ is being mapped to AccessFlags"
WScript.Echo "      Check individual perms using ""GET AccessRead"", ""GET AccessWrite"", etc."
MapSpecGetParamName="AccessFlags"
Case "VRPATH"
MapSpecGetParamName="Path"
Case "AUTHORIZATION"
WScript.Echo "Note: Your parameter """ & ObjectParameter & """ is being mapped to AuthFlags"
WScript.Echo "      Check individual auths using ""GET AuthNTLM"", ""GET AuthBasic"", etc."
MapSpecGetParamName="AuthFlags"
Case Else
MapSpecGetParamName=ObjectParameter
End Select
End Function
Sub ReportError()
Dim ErrorDescription
Select Case(Err.Number)
Case &H80070003
ErrorDescription="The path requested could not be found."
Case &H80070005
ErrorDescription="Access is denied for the requested path or property."
Case &H80070094
ErrorDescription="The requested path is being used by another application."
Case Else
ErrorDescription=Err.Description
End Select
WScript.Echo ErrorDescription
WScript.Echo "ErrNumber: " & Err.Number & "(0x" & Hex(Err.Number) & ")"
End Sub
Function SplitParam(ObjectPath)
On Error Resume Next
Dim SlashIndex
Dim TempParam
Dim ObjectPathLen
SplitParam=""  ' Assume no parameter
ObjectPathLen=Len(ObjectPath)
SlashIndex=InStrRev(ObjectPath, "/")
If(SlashIndex=0) Or(SlashIndex=ObjectPathLen) Then
TempParam=ObjectPath
ObjectPath="" ' ObjectParameter is more important
Else
TempParam=ObjectPath
ObjectPath=Left(ObjectPath, SlashIndex-1)
TempParam=Right(TempParam, Len(TempParam)-SlashIndex)
End If
SplitParam=TempParam
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error trying to Split the parameter from the object: " & ObjectPath
WScript.Quit(Err.Number)
End If
End Function
Function SplitLeftPath(ObjectPath)
On Error Resume Next
Dim SlashIndex
Dim TmpLeftPath
Dim ObjectPathLen
SplitLeftPath=""  ' Assume no LeftPath
ObjectPathLen=Len(ObjectPath)
SlashIndex=InStr(ObjectPath, "/")
If(SlashIndex=0) Or(SlashIndex=ObjectPathLen) Then
TmpLeftPath=ObjectPath
ObjectPath=""
Else
TmpLeftPath=Left(ObjectPath, SlashIndex-1)
ObjectPath=Right(ObjectPath, Len(ObjectPath)-SlashIndex)
End If
SplitLeftPath=TmpLeftPath
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error trying to split the left part of the path: " & ObjectPath
WScript.Quit(Err.Number)
End If
End Function
Sub SanitizePath(ObjectPath)
On Error Resume Next
Do While(Left(ObjectPath, 1)=" ")
ObjectPath=Right(ObjectPath, Len(ObjectPath)-1)
Loop
Do While(Right(ObjectPath, 1)=" ")
ObjectPath=Left(ObjectPath, Len(ObjectPath)-1)
Loop
ObjectPath=Replace(ObjectPath, "\", "/")
If Left(ObjectPath, 1)="/" Then
ObjectPath=Right(ObjectPath, Len(ObjectPath)-1)
End If
If Right(ObjectPath, 1)="/" Then
ObjectPath=Left(ObjectPath, Len(ObjectPath)-1)
End If
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error Trying To Sanitize the path: " & ObjectPath
WScript.Quit(Err.Number)
End If
End Sub
Function IsSecureProperty(ObjectParameter,MachineName)
On Error Resume Next
Dim PropObj,Attribute
Set PropObj=GetObject("IIS://" & MachineName & "/schema/" & ObjectParameter)
If(Err.Number<>0) Then
ReportError()
WScript.Echo "Error trying to get the property: " & err.number
WScript.Quit(Err.Number)
End If
Attribute=PropObj.Secure
If(Attribute=True) Then
IsSecureProperty=True
Else
IsSecureProperty=False
End If
End Function
