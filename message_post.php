<?php

require_once 'configs/app_settings.php';

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

    $stmt->bindValue(':title', $param['title'], PDO::PARAM_STR);
    $stmt->bindValue(':message', $param['message'], PDO::PARAM_STR);
    $stmt->bindValue(':user', 'admin2', PDO::PARAM_STR);
    $stmt->bindValue(':status', 0, PDO::PARAM_INT);
    $stmt->bindValue(':created_at', date("Y-m-d H:i:s"), PDO::PARAM_STR);

    // 正常時は1が返る    
    //$flag = $stmt->execute($row_data);//postgre9
    $flag = $stmt->execute();//mysql with-prepared-bindValue

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
