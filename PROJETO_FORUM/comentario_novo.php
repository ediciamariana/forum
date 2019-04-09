<?php
$id_questao = $_GET["idquestao"];
?>
<!DOCTYPE html>
<html>
<head>
	<title>Comentário</title>
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
	 <h1>Comentário de Questão</h1>

   <form action="comentario_salvar.php" method="post"><BR>
      <input type="hidden" name="id_questao" value="<?=$id_questao?>">
   <BR>
   	
   	Inserir Comentário:
     <BR>
   	<textarea rows="4" cols="50" name="comentario"></textarea>
   	<BR><BR>

    	
   	<input type="submit" value="Enviar">
   
  	
   </form>
</FIELDSET>
<!-- <a href="comentario_listar.php">Voltar</a> -->
</article>
</main>
</body>
</html>