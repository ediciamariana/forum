<?php
session_start();

$id_questao = $_GET["idquestao"];

$conexao = mysqli_connect("localhost", "root","","forum");

$sql = "SELECT * FROM tb_comentario WHERE id_questao='$id_questao' ORDER BY Data DESC";

$resultado = mysqli_query($conexao, $sql);
?>
<!DOCTYPE html>
<html>
<head>
	<title>listar comentario</title>
	<style type="text/css">


html, body, h1 {
                margin:0;
                padding:0;
            }

 
 article, header {
                display:block;
            }

            body {
                width:960px;
               
                font-family:Arial, Helvetica, sans-serif;
                font-size:14px;
                box-shadow: 0 0 10px #666;
                margin:10px auto;
                padding:10px;}
                
              header {
                padding:25px;
                background-color:rgb(101,159,177);
                text-align:center;
                margin-bottom:20px;
                font-family: 'Lobster', cursive;
                font-size: 25px;
            }

  </style>

</head>
<body>
<FIELDSET>
<main>
        <header>
         <h1>Forum de Questão</h1>
         </header>
<article>
<h1>Listar comentario</h1>
<table border="1">
	<tr>
		<td>Comentário</td>
		<td>Data</td>
		<td>..</td>
		<td>..</td>
	</tr>

	<?php while($linha = mysqli_fetch_assoc($resultado)): ?>
	<tr>

		<td><?=$linha["comentario"];?></td>
		<td><?=date_format(date_create($linha["Data"]),"d/m/Y H:i")?></td>
		<td>
			<?php if( isset($_SESSION["usuario_id"]) && ($linha["Usuario"] === $_SESSION["usuario_id"])): ?>
				<a href="comentario_editar.php?id=<?=$linha["id"]?>">Alterar</a>
			<?php endif;?>
		</td>
		<td>
			<?php if( isset($_SESSION["usuario_id"]) && ($linha["Usuario"] === $_SESSION["usuario_id"])): ?>
				<a href="comentario_excluir.php?id=<?=$linha["id"]?>&idquestao=<?=$id_questao?>">Excluir</a>
			<?php endif;?>
		</td>
	</tr>
	<?php endwhile; ?>
</table>
<hr>
	<?php if (isset($_SESSION["usuario_id"])): ?>
		<a href="comentario_novo.php?idquestao=<?=$id_questao;?>">Novo Comentário</a> | 
	<?php endif;?>
<a href="questao_listar.php">Voltar</a>
</FIELDSET>
</article>
</main>

</body>
</html>
<?php
mysqli_close($conexao);
?>