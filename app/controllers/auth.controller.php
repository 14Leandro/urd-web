<?php
require_once './app/views/auth.view.php';
require_once './app/models/user.model.php';

class AuthController {
    private $view;
    private $model;
    
    public function __construct() {
        $this->model = new UserModel();
        $this->view = new AuthView();
        
    }

    public function showLogin() {
        $this->view->showLogin();
    }

    public function validateUser() {
        // toma los datos del form
        $email = $_POST['email'];
        $password = $_POST['password'];

        // busco el usuario por email
        $user = $this->model->getUserByEmail($email);

        // verifico que el usuario existe y que las contraseñas son iguales
        if ($user && password_verify($password, $user->pass)) {
            
            session_start();
            $_SESSION['USER_ID'] = $user->id_admin;
            $_SESSION['USER_EMAIL'] = $user->user;
            $_SESSION['IS_LOGGED'] = true;

            header("Location: " . BASE_URL. "admin");
        } else {
            // si los datos son incorrectos muestro el form con un erro
           $this->view->showLogin("El usuario o la contraseña son incorrectos");
        } 
    }

    public function logout() {
        session_start();
        session_destroy();
        header("Location: " . BASE_URL);
    }
}