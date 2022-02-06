#!/usr/bin/perl
#文件名字
$filename="wu.log";
#输出文件名字
$filename1="wu26.log";
#过滤串
$filterchar="wu-2.6.0";
#读内容
open(READTXTFILE,"$filename");
@readtxtfile=<READTXTFILE>;
close(READTXTFILE);
$count=0;
#覆盖方式开
open(AAAA,">$filename1");
foreach(@readtxtfile)
{
    if($count==0)
    {
        $temp=$_;
        $count=1000;
    }
    else
    {
        if($_=~/$filterchar/i)
        {
            print  AAAA $temp;
        }
        $temp=$_;
    }
}
close AAAA;
system "cat wu26.log|tr -d w >wuhack.log";
system "./wuftpd26scan >>/dev/null";
exit 0;
 
