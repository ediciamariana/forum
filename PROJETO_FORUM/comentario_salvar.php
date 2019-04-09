<?php
session_start();
$id_questao = $_POST["id_questao"];
$comentario = $_POST["comentario"];

$conexao = mysqli_connect("localhost", "root","","forum");

$sql = "INSERT INTO tb_comentario (comentario,id_questao,Usuario,Data) VALUES ('$comentario','$id_questao','".$_SESSION["usuario_id"]."',now())";

//echo $sql;

mysqli_query($conexao,$sql);

mysqli_close($conexao);

header("location: comentario_listar.php?idquestao=$id_questao");
?>