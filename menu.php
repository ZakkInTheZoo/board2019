<?php
require_once 'configs/smarty_settings.php';
session_start();

$session=$_SESSION;
$smarty->assign("title", "index");
$smarty->assign("auth", $session['auth']);
$smarty->assign("row", ['title'=>"input message title", 'message'=>'your message here.']);

$smarty->display('menu.tpl');
