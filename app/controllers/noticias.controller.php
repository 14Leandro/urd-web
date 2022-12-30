<?php
require_once './app/models/noticias.model.php';
require_once './app/views/noticias.view.php';

class NoticiasController {
    private $model;
    private $view;

    public function __construct() {
        $this->model = new NoticiasModel();
        $this->view = new NoticiasView();
    }

    public function showNoticias() {
        $noticias = $this->model->getAllNoticias();

        $this->view->showNoticias($noticias);
        
    }

}