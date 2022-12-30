<?php

require_once './libs/smarty-4.2.1/libs/Smarty.class.php';

class HomeView {
    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty(); // inicializo Smarty
    }

    function showHome($noticias) {
        
        // asigno variables al tpl smarty
        $this->smarty->assign('count', count($noticias)); 
        $this->smarty->assign('noticias', $noticias);

        // mostrar el tpl
        $this->smarty->display('index.tpl');
    }

    function showLogin() {
        // mostrar el tpl
        $this->smarty->display('login.tpl');
    }

    function showTandil() {
        // mostrar el tpl
        $this->smarty->display('tandilEquipos.tpl');
    }
    function showAyacucho() {
        // mostrar el tpl
        $this->smarty->display('ayacuchoEquipos.tpl');
    }
    function showRauch() {
        // mostrar el tpl
        $this->smarty->display('rauchEquipos.tpl');
    }
    function showJuarez() {
        // mostrar el tpl
        $this->smarty->display('juarezEquipos.tpl');
    }

    function showHistoria() {
        // mostrar el tpl
        $this->smarty->display('historia.tpl');
    }
    
    function showContacto() {
        // mostrar el tpl
        $this->smarty->display('contacto.tpl');
    }
} 