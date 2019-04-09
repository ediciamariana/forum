<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
</head>
<style type="text/css">
  
body {font-family: Arial, Helvetica, sans-serif;}

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


.avatar {
      
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 25%;


}
.conteudo{
 
}
input[type=text], input[type=password], input[type=email]{
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    }
input[type=submit]{
       width: 20%;
    background-color:#4CAF50;
    display: block;
  margin-left: auto;
  margin-right: auto;


}
.det{
  padding:16px;
  box-sizing: border-box;
  border: 1px solid gray;


}



</style>
<body>

<form action="login_salvar.php" method="post"><BR><BR>
<div class="cabecalho">  
<h2 style="text-align:center">Cadastrar login</h2>
</div>
<div class="avatar"> 
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQq-1UDV2FUqfoFNxMqD2zsYqqeWUIzpltrTNBZY_kp--rL0KEnZA"  >
  </div>
<div class="det"> 
<div class="conteudo"> 
   
   <label for="uname"><b>Usuario</b></label> <br>
    <input type="text" name="Usuario" placeholder="Digite o seu Nome"><BR><BR>

    
     <label for="uname"><b>Email</b></label> <br>
    <input type="email" name="email" placeholder="Digite seu email"></input><BR><BR>

     <label for="uname"><b>Senha</b></label> <br>
    <input type="password" name="senha" placeholder="Informe sua senha" ></input><BR><BR>

      
    <input type="submit" value="Enviar">
   
   </div>
  </div>
   </form>
</div>
  
</body>
</html>