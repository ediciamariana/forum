<?php
$id = $_POST["id"];
$questao = $_POST["questao"];
$Usuario = $_POST["Usuario"];

$conexao = mysqli_connect("localhost", "root","","forum");

$sql = "UPDATE tb_questao SET questao='$questao', Usuario='$Usuario' WHERE id='$id'";

mysqli_query($conexao,$sql);

mysqli_close($conexao);

header("location: questao_listar.php");
?>



