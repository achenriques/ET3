<?php
//Esta página hace unset de session name, a fin de cambiar de usuario
session_start();
unset($_SESSION["name"]);
header('location: ../controllers/login.php');
?>
