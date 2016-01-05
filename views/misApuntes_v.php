<!-- Vista para mis Apuntes por Raul Villar -->

<div class="col-md-4 col-sm-12">
  <div class="banner"><h1>MIS APUNTES</h1></div>
  <div>
    Filtrar
    <br>
    <form action="misApuntes.php" method="post">
	<!--<select class="form-control" name="titulacion">
    <option value="nil" selected> Seleccione una titulacion </option>
	  <?php foreach($titulos as $titulo): ?>
	    <option value="<?php echo $titulo->getTit_id(); ?>"><?php echo $titulo->getTit_name(); ?></option>
	  <?php endforeach; ?>
	</select><br/>-->
	<select class="form-control" name="materia">
    <option value="nil" selected> Seleccione una materia </option>
	  <?php foreach($materias as $materia): ?>
	    <option value="<?php echo $materia->getMat_id(); ?>"><?php echo $materia->getMat_name(); ?> (<?php echo $materia->nombreTitulacion(); ?>)</option>
	  <?php endforeach; ?>
	</select><br/>

	  <?php echo $anho; ?>


  </div>
  <div>
  <button class="btn btn-info btn-block" type="submit"> Filtrar </button>
  </form>
  <a class="btn btn-success btn-block" href='../controllers/subirApunte.php'> Subir un apunte </a>
  </div>
  <br/>
  <p class="text-muted">Nota: le apareceran solo las materias a las que esta matriculado</p>
</div>
  <div class="col-md-2"></div>
  <div class="col-md-6">
    <form action="delApunte.php" method="post">
      <p class="lead banner">Subidos por mi </p>
      <hr/>
      <input autocomplete=off class="form-control buscatit" placeholder="Filtrar" type="text" name="name"><br/>
      <?php if(empty($apuntes))echo "<p class='text-center'>Aun no has subido ningun apunte<p/>"; ?>
    <?php foreach($apuntes as $apunte): ?>
      <div class="row box itemtit">
        <span class="izquierda">
	      <span class="apunte"><?php echo $apunte->getApunte_name(); ?></span>
        <div class="info autor"><?php echo $apunte->nombreMateria(); ?>(<?php echo $apunte->nombreTitulacion(); ?>), <?php echo $apunte->getAnho_academico(); ?></div>
        </span>
        <span class="derecha">
          <a title="Abrir" class="btn btn-success" href="../apuntes/<?php echo $apunte->getRuta(); ?>"><span class="glyphicon glyphicon-eye-open"></a>
          <button title="Borrar" type="submit" class="btn btn-danger" type="submit" name="<?php echo $apunte->getApunte_id(); ?>"><span class="glyphicon glyphicon-trash"></button>
        </span>
     </div>
    <?php endforeach; ?>
    </form>
    <form action="deltieneapunte.php" method="post">
      <p class="lead banner">Apuntes guradados de la comunidad </p>
      <hr/>
      <input autocomplete=off class="form-control buscatit2" placeholder="Filtrar" type="text" name="name"><br/>
      <?php if(empty($tieneapuntes))echo "<p class='text-center'>Aun no has guardado ningun apunte<p/>"; ?>
    <?php foreach($tieneapuntes as $apunte): ?>
      <div class="row box itemtit2">
        <span class="izquierda">
        <span class="apunte"><?php echo $apunte->getApunte_name(); ?></span>
        <div class="info autor"><?php echo $apunte->nombreMateria(); ?>(<?php echo $apunte->nombreTitulacion(); ?>), <?php echo $apunte->getAnho_academico(); ?></div>
        <div class="autor"> Autor: <?php echo $apunte->nombreAutor(); ?> </div>
        </span>
        <span class="derecha">
          <a title="Abrir" class="btn btn-success" href="../apuntes/<?php echo $apunte->getRuta(); ?>"><span class="glyphicon glyphicon-eye-open"></a>
          <button title="Borrar" type="submit" class="btn btn-danger" type="submit" name="<?php echo $apunte->getApunte_id(); ?>"><span class="glyphicon glyphicon-trash"></button>
        </span>
     </div>
    <?php endforeach; ?>
    </form>
  </div>
