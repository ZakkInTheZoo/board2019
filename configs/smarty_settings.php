<?php

require '../smarty-3.1.33/libs/Smarty.class.php';
$smarty = new Smarty;
$smarty->debugging = false;//true:debug
$smarty->caching = false;
$smarty->cache_lifetime = 120;
