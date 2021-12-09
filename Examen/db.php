<?php
class DB {
  
  public $server = "localhost";
  public $user = "root";
  public $passwd = "";
  public $db = 'funko_shop';
  public $connection;

  function __construct(){
    $this->connection = mysqli_connect($this->server, $this->user, $this->passwd, $this->db);
  }

  function __destruct(){
    mysqli_close($this->connection);
  }

  function restorePass(){
    $results = mysqli_query($this->connection, "SET PASSWORD FOR root@localhost = PASSWORD('');");
  }

  function getProductosNuevos(){
    $sql = "SELECT * FROM `productos` WHERE nuevo = 1;";
    $results = mysqli_query($this->connection, $sql);

    $productosArray = array();
    while($row = mysqli_fetch_assoc($results)){
        $productosArray[] = $row;
    }

    return $productosArray;
  }

  function getProductos(){
      $sql = "SELECT * FROM `productos`;";
      $results = mysqli_query($this->connection, $sql);

      $productosArray = array();
      while($row = mysqli_fetch_assoc($results)){
          $productosArray[] = $row;
      }

      return $productosArray;
  }

  function getProductosMarca($marca){
    $sql = "SELECT * FROM `productos` WHERE marca = '$marca';";
    $results = mysqli_query($this->connection, $sql);

    $productosArray = array();
    while($row = mysqli_fetch_assoc($results)){
        $productosArray[] = $row;
    }

    return $productosArray;
  }

  function agregarComentario($nombre, $email, $comentario){
    $sql = "INSERT INTO contactanos(nombre, correo, comentario) VALUES ('$nombre', '$email', '$comentario');";
    $results = mysqli_query($this->connection, $sql);
  }

  function emailExiste($email) {
    $sql = "Select * from usuarios where correo='$email'";
    $results = mysqli_query($this->connection, $sql);
    $num = mysqli_num_rows($results); 
        if ($num == 0) {
            $result = true;
        } else {
            $result = false;
        }
        return $result;
  }

  function crearUsuario($nombre, $email, $contrasena) {
    $sql = "INSERT INTO usuarios(nombre, correo, contrasena) VALUES ('$nombre', '$email', '$contrasena');";
    $results = mysqli_query($this->connection, $sql);
    $id = mysqli_insert_id($this->connection);
    return $id;
  }

  function ingresarUsuario($email, $password) {
    $sql = "Select * from usuarios where correo='$email'";
    $results = mysqli_query($this->connection, $sql);
    $num = mysqli_num_rows($results); 

    if ($num > 0) {
      $sql = "Select * from usuarios where contrasena='$password'";
      $results = mysqli_query($this->connection, $sql);
      $num = mysqli_num_rows($results); 

      if ($num > 0){
        $result = true;
      }
      else{
        echo'<script type="text/javascript">
        alert("La contraseña ingresada es incorrecta");
        window.location.href="iniciar_sesion.php";
        </script>';
      }

      
    } else {
      echo'<script type="text/javascript">
        alert("El correo ingresado no existe");
        window.location.href="iniciar_sesion.php";
        </script>';
    }

    return $result;
}

function obtenerID($email, $password) {
  $sql = "SELECT * FROM  usuarios where correo='$email' AND contrasena = '$password';";
  $results = mysqli_query($this->connection, $sql);
  $row = mysqli_fetch_assoc($results);
  $idEx = $row['id'];
  return $idEx;
}

  function agregarProductoCarrito($carrito_id, $producto_id) {
    $sql = "INSERT INTO carrito_productos(carrito_id, producto_id) VALUES ($carrito_id, $producto_id);";
    $results = mysqli_query($this->connection, $sql);
  }

  function eliminarProductoCarrito($carrito_id, $producto_id) {
    $sql = "DELETE FROM carrito_productos WHERE carrito_id = $carrito_id AND producto_id = $producto_id LIMIT 1;";
    $results = mysqli_query($this->connection, $sql);
  }

  function pagarCarrito($carrito_id) {
    $sql = "UPDATE carrito SET finalizado = 1 WHERE id = $carrito_id;";
    $results = mysqli_query($this->connection, $sql);
  }

  function getCarrito($usuario_id) {
    $sql = "SELECT * FROM carrito WHERE usuario_id = $usuario_id AND finalizado = 0;";
    $results = mysqli_query($this->connection, $sql);
    if(mysqli_num_rows($results) == 0):
      $sql_create = "INSERT INTO carrito(usuario_id) VALUES ('$usuario_id');";
      $result_create = mysqli_query($this->connection, $sql_create);
      $id = mysqli_insert_id($this->connection);
    else:
      $row = mysqli_fetch_assoc($results);
      $id = $row['id'];
    endif;

    return $id;
  }
  
  function getProductosCarrito($carrito_id) {
    $sql = "SELECT * FROM carrito_productos WHERE carrito_id = $carrito_id;";
    $results = mysqli_query($this->connection, $sql);
    $productosArray = array();
    while($row = mysqli_fetch_assoc($results)){
      $id_p = $row['producto_id'];
      $sql_p = "SELECT * FROM productos WHERE id = $id_p";
      $result_p = mysqli_query($this->connection, $sql_p);
      $row_p = mysqli_fetch_assoc($result_p);
      $productosArray[] = $row_p;
    }
    
    return $productosArray;
  }
}

function getProductosComprados($venta_id) {
  $sql = "SELECT * FROM carrito_productos WHERE carrito_id = $venta_id;";
  $results = mysqli_query($this->connection, $sql);
  $productosArray = array();
  while($row = mysqli_fetch_assoc($results)){
    $id_p = $row['producto_id'];
    $sql_p = "SELECT * FROM productos WHERE id = $id_p";
    $result_p = mysqli_query($this->connection, $sql_p);
    $row_p = mysqli_fetch_assoc($result_p);
    $productosArray[] = $row_p;
  }
  
  return $productosArray;
}
?>