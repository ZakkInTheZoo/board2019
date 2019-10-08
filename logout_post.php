<?php
require_once 'configs/smarty_settings.php';
session_start();


// RequestMethod=postのみ
if($_SERVER['REQUEST_METHOD']!=="POST" ){
    //die("Sorry, Not Allowable Operation");
    //throw new Exception('not_allowed');
    header("HTTP/1.1 404 Not Found");
    include ('404.php');
    exit;

    // $redirectUrl = "http://www.example.com/404.html";
    // header("HTTP/1.0 404 Not Found");
    // header("Location: $redirectUrl");
    // exit;
}
$param=$_POST;

$_SESSION['auth']=null;//キーauthは残る
unset($_SESSION['auth']);//キーauthをそのものを削除

header( "location:" . "/login.php" );
