<?php
//require_once("configs/database.php");

class DbConnector
{

    public static $db_config = [
        'driver'    => 'pgsql',
        'user' => 'postgres',
        'password' => 'password',
        'dbname' => 'board_db',
        'host' => 'localhost',
        'charset'   => 'utf8',
        'collation' => '',
        'prefix'    => '',
    ];

    function __construct()
    { }

    public static function getConnect()
    {
        $db_config = self::$db_config;
        $dsn = sprintf('%s:host=%s;dbname=%s', $db_config['driver'], $db_config['host'], $db_config['dbname']);
        $dbh = new PDO($dsn, $db_config['user'], $db_config['password']);
        //$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_SILENT);
        $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        return $dbh;
    }
}
