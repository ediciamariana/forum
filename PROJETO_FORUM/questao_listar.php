<?php
session_start();

$conexao = mysqli_connect("localhost", "root","","forum");

$sql = "SELECT q.Id, q.questao, q.Data, q.Usuario, COUNT(c.comentario) AS quantidade 
FROM tb_questao AS q LEFT JOIN tb_comentario AS c ON (q.id = c.id_questao)
GROUP BY q.Id, q.questao, q.Data
ORDER BY Data DESC";

$resultado = mysqli_query($conexao, $sql);
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style type="text/css">
	@import url('https://fonts.googleapis.com/css?family=Lobster');
 html, body, h1 {
                margin:0;
                padding:0;
            }

 html { 
               
                
            }
 article, header, footer, nav {
                display:block;
            }

            body {
                width:960px;
               
                font-family:Arial, Helvetica, sans-serif;
                font-size:14px;
                box-shadow: 0 0 10px #666;
                margin:10px auto;
                padding:10px;
                
                              
            }

            main{
            	background-color:  rgb(242, 230, 255);
            }

            section{
            	clear: both;
			  		
			    
            }

            table{
            	 text-align:center;
            	  background-color:rgb(187,210,245);
                height:500px;
                width:960px;
               clear: both;

            }

            header {
                padding:25px;
                background-color:rgb(101,159,177);
                text-align:center;
                margin-bottom:20px;
                font-family: 'Lobster', cursive;
                font-size: 25px;
            }


            footer {
                padding:5px;
                background-color:rgb(101,159,177);
                text-align:center;
                color:rgb(255,255,255);
            }

</style>
	<title>listar</title>
</head>
<body>
	<main>

        <header>
         <h1>Forum de Dúvidas.Com</h1>
         </header>

<article>
	<section>
		 <h1>Listar Questão</h1>
 <table border="1">
	
	<tr>
		<td>Título</td>
		<td>Quant. Comen.</td>
		<td>Data</td>
		<td>..</td>
		<td>..</td>
	</tr>

	<?php while($linha = mysqli_fetch_assoc($resultado)): ?>
	<tr>
		<td><a href="comentario_listar.php?idquestao=<?=$linha["Id"];?>"><?=$linha["questao"];?></a></td>
		<td><?=$linha["quantidade"];?></td>
		<td><?=date_format(date_create($linha["Data"]),"d/m/Y H:i")?></td>
		<td>
            <?php if( isset($_SESSION["usuario_id"]) && ($linha["Usuario"] === $_SESSION["usuario_id"])): ?>
                <a href="questao_editar.php?id=<?=$linha["Id"];?>">Alterar</a>
            <?php endif;?>
        </td>
		<td>
            <?php if( isset($_SESSION["usuario_id"]) && ($linha["Usuario"] === $_SESSION["usuario_id"])): ?>
                <a href="questao_excluir.php?id=<?=$linha["Id"];?>">Excluir</a>
            <?php endif;?>
        </td>
	</tr>
	<?php endwhile; ?>

</table>
<hr>
	</section>
	

</article>
 

<?php 
	
	if (isset($_SESSION["usuario_id"])): 
?>
	<a href="questao_nova.php">Nova Questão</a> |
	<a href="login_editar.php?id=<?=$_SESSION["usuario_id"]?>">Usuário</a> |
	<a href="logout.php">Logout</a>
<?php else: ?>
	<a href="login.php"><h1>Login</h1>
	</a>
<?php endif;?>

 <!-- <a href="questao_nova.php">Nova Questão</a>  -->
 <!-- <a href="login_novo.php">|Login</a> -->
<footer>Endereco, telefone e outras informacoes</footer>

</main>
</body>
</html>
<?php
mysqli_close($conexao);
?>