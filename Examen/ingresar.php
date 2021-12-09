<?php 
    include('db.php');
    $bd= new DB();
    $email = $_POST['email'];
    $password = $_POST['password'];
    $ingresar = $bd -> ingresarUsuario($email, $password);
    if ($ingresar){
        $id = $bd -> obtenerID($email, $password);
        session_start();
        $_SESSION['id'] = $id;
        $_SESSION['email'] = $email;
        header("Location: index.php");
        die();
    }
?>