<?php
$Usuario = $_POST["Usuario"];
$senha = $_POST["senha"];
$email = $_POST["email"];

$conexao = mysqli_connect("localhost", "root","","forum");

$sql = "INSERT INTO tb_login (Usuario, email, senha) VALUES ('$Usuario','$email','$senha')";

mysqli_query($conexao,$sql);

mysqli_close($conexao);

 

 header("Location:login.php");
?>