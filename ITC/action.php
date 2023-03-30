<?php

include('class.php');

$result = "";
$output = "";

$api = new API();

if (isset($_GET['action'])) {
    if ($_GET['action'] == 'fetch_all') {
        $api_url = "http://localhost/ITC/api.php?action=fetch_all";
        $client = curl_init($api_url);
        curl_setopt($client, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($client);
        $result = json_decode($response);
    }
    if ($_GET['action'] == 'fetch_single') {
        $id = $_GET['id'];
        $api_url = "http://localhost/ITC/api.php?action=fetch_single&id=" . $id . "";
        $client = curl_init($api_url);
        curl_setopt($client, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($client);
        $result = json_decode($response);
    }
    if (is_string($result)) {
        $output = "<tr><td>$result</td></tr>";
    } else if (count($result) > 0) {
        foreach ($result as $product) {
            $output .= "<tr>
            <td>" . strip_tags($product->pkProduct) . "</td>
            <td>" . strip_tags($product->Name) . "</td>
            <td>" . strip_tags($product->Description) . "</td>
            <td>" . strip_tags($product->Price) . "</td>
            <td>" . strip_tags($product->Brand) . "</td>
            <td>" . strip_tags($product->Model) . "</td>
            <td>" . strip_tags($product->CategoryName) . "</td>
          </tr>";
        }
    }
}

echo $output;