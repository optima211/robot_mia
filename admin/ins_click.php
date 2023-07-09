<?php
error_log(print_r($_REQUEST, true));
error_log(print_r($_REQUEST['host'], true));
include 'connect.php';
global $conn;
$sql = "select id from `servers` where hostname = '" . $_REQUEST['host'] . "' and delete_flag = 0";
if ($result = mysqli_query($conn, $sql)) {
    error_log("in if-0");
    if (mysqli_num_rows($result) > 0) {
        error_log('eee row=' . mysqli_num_rows($result));
        while ($row = mysqli_fetch_assoc($result)) {
            error_log('id=' . $row["id"]);
            $id_cur = $row["id"];
        }
    } else {
        error_log('error select');
    }
    $sql = "INSERT INTO `clicks` (server_id, path, search, date_click, cursor_x, cursor_y) VALUES 
        ($id_cur, '" . $_REQUEST['path'] . "', '" . $_REQUEST['search'] . "', '" . $_REQUEST['date'] . "', " . $_REQUEST['cursorx'] . ", " . $_REQUEST['cursory'] . ")";
    if (mysqli_query($conn, $sql)) {
        error_log("in if-1 successfully");
    } else {
        error_log("in if-1 error=" . mysqli_error($conn));
    }
}