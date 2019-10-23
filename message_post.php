<?php

require_once 'configs/smarty_settings.php';
require_once 'configs/db_connector.class.php';

$message = "";
$result_flag = false;

try {
    $param = $_POST;
    $sql = '
    insert into message_comment (
        title
        ,message
        ,user_id
        ,status
     ,created_at
    ) values (
        :title,
        :message,
        :user,
        :status,
        :created_at
    )
    ';

    $stmt = DbConnector::getConnect()->prepare($sql);

    if (!$stmt) {
        //echo "\nPDO::errorInfo():\n";
        print_r($dbh->errorInfo());
    }

    $row_data = [
        $param['title'],
        $param['message'],
        'admin2',
        0,
        date("Y-m-d H:i:s")
    ];

    // 正常時は1が返る    
    $flag = $stmt->execute($row_data);

    //DbConnector::getConnect()->errorCode()
    //DbConnector::getConnect()->errorMessage()
    //$dbh->errorInfo()
} catch (PDOException $e) {
    //print_r($e);
    $message = $e->getMessage();
    //print($e->getMessage());
    //print($e->getCode());
    //print("*errorcode:" .DbConnector::getConnect()->errorCode());
    //print("*errorcode:" .DbConnector::getConnect()->errorMessage());
    //print("*errorcode:" .DbConnector::getConnect()->errorCode());
    //print_r($stmt->errorInfo());
    //die();
} finally {
    //$error=$e->getMessage();
    if ($message==="" && (int) $flag >= 1) {
        $result_flag = true;
    }
}



//---- render

$smarty->assign("title", "message complete: ");
$smarty->assign("message", $message);
$smarty->assign("result_flag", $result_flag);
$smarty->assign("row", ['title' => $param['title'], 'message' => $param['message']]);
$smarty->display('message_post.tpl');
