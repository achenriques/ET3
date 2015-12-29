<?php
  // controlador de mis apuntes por Raul Villar

  session_start(); // iniciar sesion

  //Includes iniciales
  require_once '../views/templateEngine.php'; // se carga la clase TemplateEngine
  require_once '../model/driver.php'; // se carga el driver de cancerbero
  require_once 'navbar.php'; //Inclusión de navbar. Omitible si no la necesita
  require_once '../model/Apunte.php';
  require_once '../model/Materia.php';
  require_once '../model/Titulacion.php';
  require_once 'comboboxes.php';
  //Conexion a la BD
  $db = Driver::getInstance();
  //inicio instancias render y creacion de comboboxes
  $apunte = new Apunte($db);
  $materias = new Materia($db);
  $titulaciones = new Titulacion($db);
  $materias = $materias->all();
  $titulaciones = $titulaciones->all();
  //Instancias TemplateEngine, renderizan elementos
  $renderMain = new TemplateEngine();
  $renderPlantilla = new TemplateEngine();
  $apuntes = $apunte->all();
  $renderPlantilla->titulos = null;
  $renderPlantilla->materias = $materias;
  $renderPlantilla->anho = anhoRenderComboBox();
  //fin Instancias
  //FUNCIONES DEL CONTROLADOR
  if( isset($_POST['materia']) || isset($_POST['anho']) ){
     if($_POST['materia'] != "nil"){
       $materiafiltro = new Materia($db);
       $materiafiltro = $materiafiltro->findBy('mat_name',$_POST['materia']);
       if($materiafiltro){
         $materiafiltro = $materiafiltro[0];

       foreach ($apuntes as $key => $apunte) {
         if($apunte->getMat_id() != $materiafiltro->getMat_id()){
           unset($apuntes[$key]);
         }
      }
    }}
    if($_POST['anho'] != "nil"){
      foreach ($apuntes as $key => $apunte) {
        if($apunte->getAnho_academico() != $_POST['anho']){
          unset($apuntes[$key]);
        }
     }
    }
  }
  if(isset($_SESSION['name'])){
    $renderPlantilla->logged = true;
  }else{
    $renderPlantilla->logged = false;
  }
  //RENDERIZADO FINAL
  $renderPlantilla->apuntes = $apuntes;
  $renderMain->title = "Apuntes de la comunidad"; //Titulo y cabecera de la pagina
  $renderMain->navbar = renderNavBar(); //Inserción de navBar en la pagina. Omitible si no la necesita
  $renderMain->content = $renderPlantilla->render('apuntesComunidad_v.php'); //Inserción del contenido de la página

  echo $renderMain->renderMain(); // Dibujado de la página al completo

 ?>
