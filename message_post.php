<?php

require_once 'configs/smarty_settings.php';

$param=$_POST;

$smarty->assign("title", "message complete");

$smarty->assign("row", ['title'=>$param['title'],'message'=>$param['message']]);

$smarty->display('message_post.tpl');
