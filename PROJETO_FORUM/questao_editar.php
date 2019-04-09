<?php
$id = $_GET["id"];

$conexao = mysqli_connect("localhost", "root","","forum");

$sql = "SELECT * FROM tb_questao WHERE id='$id'";

$resultado = mysqli_query($conexao, $sql);

$linha = mysqli_fetch_row($resultado);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Editar questao</title>
</head>
<body>
   
   <fieldset>
     <h1>Editar</h1>
<form action="questao_alterar.php" method="post">
    <input type="hidden" name="id" value="<?=$linha[0];?>"> 
    <br> <br>
    Questão:
    <input type="text" name="questao" value="<?=$linha[1];?>">
        <br> <br>

    <input type="submit" value="Salvar">
   </form>




   </fieldset>
   
</body>
</html>
<?php mysqli_close($conexao); ?>