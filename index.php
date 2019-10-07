<?php

require_once 'configs/smarty_settings.php';

$smarty->assign("title", "index");
$smarty->assign("row", ['title'=>"input message title", 'message'=>'your message here.']);

$smarty->display('index.tpl');
