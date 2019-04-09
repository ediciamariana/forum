
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
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
  <h1>Cadastro de login</h1>

   <form action="login_verificar.php" method="post"><BR><BR>
    

    Usuario:
    <input type="text" name="Usuario"><BR><BR>

    
    Senha:
    <input type="password" name="senha" ></input><BR><BR>

      
    <input type="submit" value="Acessar">
   
    
   </form>
   <a href="login_novo.php">Cadastrar-se</a>
</FIELDSET>


</article>
  
</main>
   
  
</body>
</html>