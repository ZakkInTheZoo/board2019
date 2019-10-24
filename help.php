<?php
require_once 'configs/app_settings.php';

$smarty->assign("title", "help");
$smarty->assign("message", "message here");

$smarty->display('index.tpl');
