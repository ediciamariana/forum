<?php
session_start();
session_destroy();

header("Location:questao_listar.php");
?>