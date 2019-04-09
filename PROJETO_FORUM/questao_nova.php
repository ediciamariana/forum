<!DOCTYPE html>
<html>
<head>
	<title>questao</title>

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

	 <h1>Cadastro de Questão</h1>

   <form action="questao_salvar.php" method="post"><BR><BR>
   	Inserir QUESTAO:
   	<input type="text" name="questao"><BR><BR>

      

  	<input type="submit" value="Voltar" <a href="questao_listar.php"></a>
   
    		<input type="submit" value="Enviar">
   </form>
</FIELDSET>
  
</article>
</main>

</body>
</html>