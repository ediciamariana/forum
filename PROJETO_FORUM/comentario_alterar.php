<?php
$id = $_POST["id"];
$comentario = $_POST["comentario"];
$id_questao = $_POST["idquestao"];

$conexao = mysqli_connect("localhost", "root","","forum");

$sql = "UPDATE tb_comentario SET comentario='$comentario', id_questao='$id_questao' WHERE id='$id'";

echo $sql;

mysqli_query($conexao,$sql);

mysqli_close($conexao);

header("location: comentario_listar.php?idquestao=$id_questao");
?>