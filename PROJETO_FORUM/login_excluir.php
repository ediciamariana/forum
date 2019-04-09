<?php
$id = $_GET["id"];

$conexao = mysqli_connect("localhost", "root","","forum");

$sql = "DELETE FROM tb_login WHERE id='$id'";

mysqli_query($conexao, $sql);

mysqli_close($conexao);

header("Location:questao_listar.php");

?>