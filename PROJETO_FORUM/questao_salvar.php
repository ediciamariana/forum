<?php
session_start();
$questao = $_POST["questao"];

$conexao = mysqli_connect("localhost", "root","","forum");

$sql = "INSERT INTO tb_questao (questao,Usuario,data) VALUES ('$questao','".$_SESSION["usuario_id"]."',now())";

mysqli_query($conexao,$sql);

mysqli_close($conexao);

header("location: questao_listar.php");
?>