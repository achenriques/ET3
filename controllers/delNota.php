<?php
// Controlador eliminar Nota hecho por cidleticia

//Includes iniciales

require_once '../model/driver.php';
require_once '../model/Nota.php';

$id = (array_keys($_POST)[1]);
$db = Driver::getInstance();
$nota = new Nota($db);
//FUNCIONES DEL CONTROLADOR
$nota = $nota->findBy('nota_id',$id);
$nota[0]->destroy();
header("location: misNotas.php"); //return
