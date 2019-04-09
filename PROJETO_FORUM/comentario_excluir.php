<?php
$id = $_GET["id"];
$id_questao = $_GET["idquestao"];

$conexao = mysqli_connect("localhost", "root","","forum");

$sql = "DELETE FROM tb_comentario WHERE id='$id'";

mysqli_query($conexao, $sql);

header("location: comentario_listar.php?idquestao=$id_questao");
?>