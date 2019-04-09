<?php

$login = $_POST["Usuario"];
$senha = $_POST["senha"];

$conexao = mysqli_connect("localhost", "root","","forum");

$sql = "SELECT * FROM tb_login WHERE Usuario='$login' and senha='$senha'";

$resultado = mysqli_query($conexao, $sql);

$linha = mysqli_fetch_row($resultado);

 if ($linha){
 	session_start();
 	$_SESSION["usuario_id"] = $linha[0];
 	header("Location:questao_listar.php");
 } else{
 	header("Location:login.php");
 }

?>