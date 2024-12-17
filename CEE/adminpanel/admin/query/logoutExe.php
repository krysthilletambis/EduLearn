<?php

session_start();
session_unset();
session_destroy();

$target_url = "../../../../index.php"; 

header("Location: $target_url");
exit();
?>