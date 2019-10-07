<?php

require_once 'configs/smarty_settings.php';

$smarty->assign("title", "index page");

$smarty->display('index.tpl');
