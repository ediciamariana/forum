
<?php
$Usuario = (isset($_COOKIE['CookieUsuario'])) ? base64_decode($_COOKIE['CookieUsuario']) : '';
$senha = (isset($_COOKIE['Cookiesenha'])) ? base64_decode($_COOKIE['Cookiesenha']) : '';
$lembrete = (isset($_COOKIE['CookieLembrete'])) ? base64_decode($_COOKIE['CookieLembrete']) : '';
$checked = ($lembrete == 'SIM') ? 'checked' : '';
?>


<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
  <style type="text/css">


html, body, h1 {
                margin:0;
                padding:0;
            }

 
 article, header {
                display:block;
            }

            body {
                width:960px;
               
                font-family:Arial, Helvetica, sans-serif;
                font-size:14px;
                box-shadow: 0 0 10px #666;
                margin:10px auto;
                padding:10px;}
                
              header {
                padding:25px;
                background-color:rgb(101,159,177);
                text-align:center;
                margin-bottom:20px;
                font-family: 'Lobster', cursive;
                font-size: 25px;
            }




  </style>



</head>
<body>
<FIELDSET>

<main>

        <header>
         <h1>Forum de Dúvidas.Com</h1>
         </header>
<article>
  <h1>Fazer de login</h1>

   <form action="login_verificar.php" method="post"><BR><BR>
    
<!--  -->
    <!-- Usuario: -->
    <label for="Usuario">Usuario</label>
    <input type="text" class="form-control"value="<?=$Usuario?> " id="Usuario" name="Usuario" placeholder="Infome o Usuario"  ><BR><BR>

    
   <!--  Senha: -->
   <label for="senha">Senha</label>
    <input type="password" class="form-control" value="<?=$senha?>" id="senha" name="senha"placeholder="Infome a Senha" ></input><BR><BR>

  <label>
    <input type="checkbox" name="lembrete" value="SIM" <?=$checked?>> Lembre-me
  </label>
      
    <input type="submit" value="Acessar">
   
    
   </form>
   <a href="login_novo.php">Cadastrar-se</a>
</FIELDSET>


</article>
  
</main>
	 
  
</body>
</html>