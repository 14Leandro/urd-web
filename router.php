<?php
require_once './app/controllers/noticias.controller.php';
require_once './app/controllers/index.controller.php';



define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

$action = 'home'; // acción por defecto
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

// parsea la accion
$params = explode('/', $action);

// tabla de ruteo
switch ($params[0]) {

    // Muestro el inicio
    case 'home':
        $homeController = new HomeController();
        $homeController->showHome();
        break;

    // Muestro equipos Tandil
    case 'tandil':
        $homeController = new HomeController();
        $homeController->showTandil();
        break;
    
    // Muestro Noticias
    case 'adminNoticias':
        $noticiaController = new NoticiaController();
        $noticiaController->showNoticias();
        break;
    
    // Noticia completa
    case 'noticia':
    $id = $params[1];
    $noticiaCompletaController = new NoticiaController();
    $noticiaCompletaController->showNoticiaCompleta($id);
    break;

    // Noticias por categoria
    case 'categoria':
        $id = $params[1];
        $noticiaCategoriaController = new NoticiaController();
        $noticiaCategoriaController->filtrarNoticias($id);
        break;


    // Agrego Noticia y Categoria
    case 'agregar':
        $noticiaController = new NoticiaController();
        $noticiaController->addNoticia();
        break;


    case 'borrar':
        $id = $params[1];
        $noticiaController = new NoticiaController();
        $noticiaController->deleteNoticia($id);
        break;

    // Actualizar Noticia
    case 'editNoticia':
        $noticiaController = new NoticiaController();
        $noticiaController->editNoticia($params[1]);
        break;

    // Actualizar Noticia
    case 'updateNoticia':
        $noticiaController = new NoticiaController();
        $noticiaController->updateNoticia();
        break;


    // Default
    default:
        echo('404 Page not found');
        break;
}
