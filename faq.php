<?php
require_once 'configs/app_settings.php';

$title="FAQ";

$smarty->assign("title", $title);

$smarty->display('index.tpl');
