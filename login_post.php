<?php
require_once 'configs/smarty_settings.php';
session_start();


// postのみ
$param=$_POST;
//print_r($param);
$result=false;

if( $param['user_id']==="user1" &&  $param['password'] ==="password1" ){
    $result=true;
}
if($result){
    $_SESSION['auth']=['user_id'=>$param['user_id']];
    header( "location:" . "/menu.php" );
} else {

}

//print("");
$errors=[];
$message="ログインできません";
$smarty->assign("title", "Login");
$smarty->assign("row", ['user_id'=>$param["user_id"], 'password'=>'']);
$smarty->assign("errors", $errors);
$smarty->assign("message", $message);

$smarty->display('login.tpl');
