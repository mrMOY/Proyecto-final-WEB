<?php
  require_once('db.php');
  $db = new DB();
  session_start();

  $venta_id = $_GET['id'];
  $productos = $db->getProductosCarrito($venta_id);
  // $detalles = $db->getVenta($venta_id);
?>

<!DOCTYPE html>
<html lang="en">
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
<form action="" class="formCarrito">
<h2 class="main-title">Gracias por tu compra!!!</h2>
<?php foreach ($productos as &$p):?>
            <p>
            <div class="divCarrito">
              <img style="width: 25%; height:  120px; display: inline-block; margin-left: 10px;" src="<?=$p['imagen']?>" >
            </div>
            <div class="divCarrito">
              <label ><?=$p['nombre']?></label>
              <label >$<?=$p['precio']?></label>
            </div>           
          </p>
          <?php endforeach; ?>
</form>
<div class="divPagCarr" >
          <button class="btnCarrito"  ><a class="txtblanco" href="index.php"> Continuar comprando</a></button>
        </div>
  <?php include_once "footer.php"; ?>    
</body>
</html>