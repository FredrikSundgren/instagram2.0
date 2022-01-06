<?php

require_once 'config.php';

$errMessage = '';
$filename = $_FILES['filenames']['name']
$target_directory = "user/Benjamin/";
$uploadSuccess = 1;
$target_file = $target_directory . $filename;

if(!isset($_FILES ['filename']['name']) && isset($_POST['submit']))
{
    $errMessage = 'No file';
    echo $errMessage;
}
if(isset($_POST['submit'])){
    echo $target_file;

}

?>