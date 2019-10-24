<?php
require '../smarty-3.1.33/libs/Smarty.class.php';
//require_once 'configs/database.php';//現在非使用

require_once 'configs/smarty_settings.php';
require_once 'configs/db_connector.class.php';

// Smartyユーザー関数群
require_once 'C:\\work\\php-apps\\smarty-3.1.33\\libs\\plugins\\myfunctions.php';


//ユーザー独自定義の関数
date_default_timezone_set('Asia/Tokyo');
