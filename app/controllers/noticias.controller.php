<?php
require_once './app/models/noticias.model.php';
require_once './app/views/noticias.view.php';
require_once './app/helpers/auth.helper.php';

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


    // public function showUltimasNoticias() {

    //     $tresNoticias = $this->model->getUltimasNoticias();

    //     $this->view->showUltimasNoticias($tresNoticias);
    // }



    public function showNoticiasAdmin() {

        $noticias = $this->model->getAllNoticias();

        $this->view->showNoticiasAdmin($noticias);
    }

    function deleteNoticia($id) {

        $authHelper = new AuthHelper();
        $authHelper->checkLoggedIn();

        $this->model->deleteNoticiaById($id);
        
        header("Location: ". BASE_URL."noticiaList");
    }

    public function selectCategoria($id){
        $authHelper = new AuthHelper();
        $authHelper->checkLoggedIn();

        $this->model->getNoticiaById($id);
    }

    function editNoticia($id){

        $authHelper = new AuthHelper();
        $authHelper->checkLoggedIn();

        $categoria = $_POST['categoria'];
        $titulo = $_POST['titulo'];
        $fecha = $_POST['fecha'];
        $descripcion = $_POST['descripcion'];
        $this->model->editNoticia($categoria, $titulo, $fecha, $descripcion, $id);
    }

}