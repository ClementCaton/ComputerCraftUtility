<?php
$data_to_write = $_POST['DATA'];
$file_path = "./data.txt";

$file_handle = fopen($file_path, 'w');
fwrite($file_handle, $data_to_write);
fclose($file_handle);
header('Location: index.html');
?>