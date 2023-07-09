<?php
echo 'hello world';
const DB_HOST = '127.0.0.1';

const DB_LOGIN = 'botmia';
const DB_PASS = '123';
const DB_NAME = 'botmia';
function db_connect($host, $user, $password, $db_name)
{
    $conn = mysqli_connect($host, $user, $password, $db_name);
    if (!$conn) {
        die('Ошибка подключения (' . mysqli_connect_errno() . ') ' . mysqli_connect_error());
        error_log('error connect');
    }
    return $conn;
}

$conn = db_connect(DB_HOST, DB_LOGIN, DB_PASS, DB_NAME);