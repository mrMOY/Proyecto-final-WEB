<?php 
    include('db.php');
    $bd = new DB();
    $c = $_GET['carrito'];

    $bd -> pagarCarrito($c);
?>