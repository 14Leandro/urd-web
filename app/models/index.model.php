<?php

class HomeModel {

    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=liga;charset=utf8', 'root', '');
    }

    /**
     * Devuelve la lista de equipos completa.
     */
    public function getAllNoticias() {
        // Ejecuto la sentencia (2 subpasos)
        $consulta = $this->db->prepare("SELECT * FROM noticias");
        $consulta->execute();

        // Obtengo los resultados
        $noticias = $consulta->fetchAll(PDO::FETCH_OBJ); // devuelve un arreglo de objetos
        
        return $noticias;
    }


}