<?php

require_once 'configs/smarty_settings.php';

$message="";
$smarty->assign("title", "Login");
$smarty->assign("row", ['user_id'=>"user1", 'password'=>'password1']);
$smarty->assign("message", $message);

$smarty->display('login.tpl');
