<?php
$id = $_GET["id"];

$conexao = mysqli_connect("localhost", "root","","forum");

$sql = "DELETE FROM tb_questao WHERE id='$id'";

mysqli_query($conexao, $sql);

header("location: questao_listar.php");
?>