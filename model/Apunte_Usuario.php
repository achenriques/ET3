<?php
/* the ORM and activeRecord needs a driver. it should be named driver.php */
require 'driver.php';
/* class generated automaticaly with Boroto */
/* Felipe Vieira, 2015 */

class Apunte_usuario{

 public $driver;
 private $apunte_id;
 private $user_id;

 public function Apunte_usuario($driver) {
 /* BE CARE the ORM and activeRecord functionality of boroto generted classes needs an Drive Class with a function exec that executes SQL queries and returns arrayassoc or arrays of arrayassoc */
   $this->apunte_id = null;
   $this->user_id = null;
   $this->driver = $driver;
 }

/* get an array_fetch from driver and fill the atributes of $this */
 public function fill($arrayassoc) {
  $this->setApunte_id($arrayassoc['apunte_id']);
  $this->setUser_id($arrayassoc['user_id']);
 }

/* Getters... */
 public function getApunte_id(){
   return $this->apunte_id;
 }
 public function getUser_id(){
   return $this->user_id;
 }

/* Setters... */
 public function setApunte_id($value){
   $this->apunte_id = $value;
 }
 public function setUser_id($value){
   $this->user_id = $value;
 }


/* factory method, takes an array of mysqli::array_fetch and returns a array of Apunte_Usuario */
 public function factory($arrayfetch){
   $arraytoret = Array();
   if($arrayfetch){
     foreach($arrayfetch as $fetch){
       $newObject = new Apunte_Usuario($this->driver);
       $newObject->fill($fetch);
       array_push($arraytoret,$newObject);
     }
   }
 return $arraytoret;
 }

 /* return an array containing all Apunte_Usuario that key = value */
 public function findBy($key,$value){ 
   $arraytoret = array();
   $query='select *
     from Apunte_Usuario
     where '.$key.'='.$value;
   $results = $this->driver->exec($query);
   return $this->factory($results);
}

/* returns an array of Apunte_Usuario containing all rows from db */
 public function all(){ 
   $arraytoret = array();
   $query='select *
     from Apunte_Usuario';
   $results = $this->driver->exec($query);
   return $this->factory($results);
}

/* deletes from db */
 public function destroy(){
   $query = 'delete from Apunte_Usuario where
   apunte_id = "'.$this->getApunte_id().'"';
   $this->driver->exec($query);
 }

/* saves to db */
 public function save() {
    $this->destroy();
   $query = 'insert into Apunte_Usuario (apunte_id,user_id) values ("'.$this->getApunte_id().'","'.$this->getUser_id().'")';
   $this->driver->exec($query);
}

}
?>
