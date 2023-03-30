<?php

include('class.php');

$api = new API();

if ($_GET['action'] == 'fetch_all') {
    $data = $api->fetch_all();
    echo json_encode($data);
}
if ($_GET['action'] == 'fetch_single') {
    $data = $api->fetch_single($_GET["id"]);
    echo json_encode($data);
}