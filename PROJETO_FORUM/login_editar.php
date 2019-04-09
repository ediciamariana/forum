<?php
$id = $_GET["id"];

$conexao = mysqli_connect("localhost", "root","","forum");

$sql = "SELECT * FROM tb_login WHERE id='$id'";

$resultado = mysqli_query($conexao, $sql);

$linha = mysqli_fetch_row($resultado);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Editar Usuario</title>
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
     <fieldset>

     <main>
        <header>
         <h1>Forum de Questão</h1>
         </header>
<article>
     <h1>Editar</h1>
<form action="login_alterar.php" method="post">
    <input type="hidden" name="id" value="<?=$linha[0];?>"> 
    <br> <br>
    Usuario:
    <input type="text" name="Usuario" value="<?=$linha[1];?>">
        <br> <br>
    Email:
    <input type="email" name="email" value="<?=$linha[2];?>">
        <br> <br>
    Senha:
    <input type="password" name="senha" value="<?=$linha[3];?>">
        <br> <br>

    <input type="submit" value="Alterar">
   </form>

   </fieldset>
    

    <a href="login_excluir.php?id=<?=$linha[0]?>">Excluir</a>|
    <a href="questao_listar.php">Voltar</a>

</FIELDSET>
</article>
</main>
</body>
</html>
<?php mysqli_close($conexao); ?>


  
    