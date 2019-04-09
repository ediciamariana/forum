<?php
$id = $_GET["id"];

$conexao = mysqli_connect("localhost", "root","","forum");

$sql = "SELECT * FROM tb_comentario WHERE id='$id'";

$resultado = mysqli_query($conexao, $sql);

$linha = mysqli_fetch_row($resultado);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Editar comentario</title>
</head>
<body>
   
   <fieldset>
     <h1>Editar</h1>
<form action="comentario_alterar.php" method="post">
    <input type="hidden" name="id" value="<?=$linha[0]?>">
    <input type="hidden" name="idquestao" value="<?=$linha[5]?>">
    <br> <br>
     Comentário:

      <textarea rows="4" cols="50" name="comentario">
        <?=$linha[1]?>
      </textarea>
   
        <br> <br>

    <input type="submit" value="Alterar">
   </form>


   </fieldset>
   
</body>
</html>
<?php mysqli_close($conexao); ?>