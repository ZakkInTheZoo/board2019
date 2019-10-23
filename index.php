<?php
require_once 'configs/app_settings.php';

try{
    $sql = 'select count(*) as cnt from message_comment';
    $stm= DbConnector::getConnect()->query($sql);
    $row = $stm->fetch();
    $total_cnt=$row['cnt'];

    $sql = 'select count(*) as cnt from message_comment WHERE status=1';
    $stm= DbConnector::getConnect()->query($sql);
    $row = $stm->fetch();
    $total_cnt_st1=$row['cnt'];



    $sql = 'select * from message_comment  order by created_at desc';
    $stm= DbConnector::getConnect()->query($sql);

    $list = $stm->fetchAll();
    //var_dump($res->fetchAll());
} catch (PDOException $e) {
    exit('データベース接続失敗。'.$e->getMessage());
}

// echo  join( $dbh->errorInfo(), ":");
// print_r( $res );
$bookmark_list=[1,4,5];

//--------------
$smarty->assign("title", "index");
$smarty->assign("row", ['title'=>"input message title", 'message'=>'your message here.']);
$smarty->assign("list", $list);
$smarty->assign("total_cnt", $total_cnt);
$smarty->assign("total_cnt_st1", $total_cnt_st1);
$smarty->assign("bookmark_list", $bookmark_list);

$smarty->display('index.tpl');
