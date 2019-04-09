<?php
$id = $_POST["id"];
$Usuario = $_POST["Usuario"];
$email = $_POST["email"];
$senha = $_POST["senha"];


$conexao = mysqli_connect("localhost", "root","","forum");

$sql = "UPDATE tb_login SET Usuario='$Usuario', email='$email',senha='$senha', WHERE id='$id'";

mysqli_query($conexao,$sql);

mysqli_close($conexao);

header("Location:questao_listar.php");

?>



