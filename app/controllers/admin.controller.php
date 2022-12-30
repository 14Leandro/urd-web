<?php
require_once './app/models/admin.model.php';
require_once './app/views/admin.view.php';

class AdminController {
    private $model;
    private $view;

    public function __construct() {
        $this->model = new AdminModel();
        $this->view = new AdminView();
    }

    public function showAdmin() {
        $this->view->showAdmin();
        
    }
}