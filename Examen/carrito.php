<?php
  require_once('db.php');
  $db = new DB();
  session_start();

  $usuario_id = $_SESSION['id'];
  $carrito_id = $db->getCarrito($usuario_id);
  $productos = $db->getProductosCarrito($carrito_id);
?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Funko Shop</title>
    <meta name="twitter:" content="">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="shortcut icon" href="img/Decoracion/Logo.png" />
  </head>
  <body>
  <?php include_once "header.php"; ?>
    <main class="main">
      <div class="container">
        <h2>Carrito</h2>            
        <form action="" class="formCarrito">
          <?php foreach ($productos as &$p):?>
            <p>
            <div class="divCarrito">
              <img style="width: 25%; height:  120px; display: inline-block;" src="<?=$p['imagen']?>" >
            </div>
            <div class="divCarrito">
              <label ><?=$p['nombre']?></label>
              <label >$<?=$p['precio']?></label>
            </div>
            <div class="divCarrito">
              <button class="btnCarrito" onclick="eliminarProductoCarrito(<?= $carrito_id ?>, <?=$p['id']?>);">Quitar del carrito</button>
            </div>                
          </p>
          <?php endforeach; ?>
        </form>
        <div class="divPagCarr" >
          <button class="btnCarrito" onclick=pagarCarrito(<?= $carrito_id ?>);>Pagar</button>
        </div>
      </div>
    </main>
    <?php include_once "footer.php"; ?>   
  </body>
  <script src="js/slider.js"></script>
  <script src="js/carrito.js"></script>
</html>
