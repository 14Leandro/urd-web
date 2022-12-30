<?php

class NoticiasModel {

    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=liga;charset=utf8', 'root', '');
    }

    // Devuelve la lista de noticias completa.
     
    public function getAllNoticias() {

        // Ejecuto la sentencia (2 subpasos)
        $query = $this->db->prepare("SELECT * FROM noticias");
        $query->execute();

        // Obtengo los resultados
        $noticias = $query->fetchAll(PDO::FETCH_OBJ); // devuelve un arreglo de objetos
  
        return $noticias;
    }



}