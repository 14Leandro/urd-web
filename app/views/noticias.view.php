<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';

class NoticiasView {
    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty(); // Inicializo Smarty
    }

    function showNoticias($noticias) {
        // Asigno variables al tpl smarty
         
        $this->smarty->assign('noticias', $noticias);
        // Mostrar el tpl
        $this->smarty->display('noticiasList.tpl');
    }

    // function showUltimasNoticias($noticias) {
    //     // Asigno variables al tpl smarty
         
    //     $this->smarty->assign('tresNoticias', $tresNoticias);
    //     // Mostrar el tpl
    //     $this->smarty->display('noticias-index.tpl');
    // }

    function showNoticiasAdmin($noticias) {

        // Asigno variables al tpl smarty
        $this->smarty->assign('count', count($noticias));
        $this->smarty->assign('noticias', $noticias);
        // Mostrar el tpl
        $this->smarty->display('noticiasListAdmin.tpl');
    }
}