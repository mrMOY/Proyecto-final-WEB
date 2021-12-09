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
            <div class="container" id="divContac">
                <br><br>
                    <section>
                    <form class="formContac" action="/crear_usuario.php" method="POST" >
                        <fieldset>
                        <legend>Registrar usuario</legend>
                        <p>
                            <label class="lblConta">Nombre: &nbsp;&nbsp; &nbsp;</label>
                            <input type="text" placeholder="Nombre" name="username">
                        </p>
                        <br>
                        <p>
                            <label class="lblConta">Email: &nbsp; &nbsp;&nbsp; </label>
                            <input type="email" placeholder="Email" name="email">
                        </p>
                        <br>
                        <p>
                            <label class="lblConta">Contraseña:&nbsp;</label>
                            <input type="password" placeholder="Contraseña" name="password">
                        </p>
                        <hr>
                        <br>
                        <p>
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; 
                            <button class="btnRegistroContac"  name="register" >Crear cuenta</button>
                        </p>

                        </fieldset>
                    </form>
                    </section>
                <br><br>
         
            </div>
        </main>
    <?php include_once "footer.php"; ?> 
  </body>
  <script src="js/slider.js"></script>
</html>
