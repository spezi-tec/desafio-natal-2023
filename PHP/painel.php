<?php

include('protect.php');

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Painel</title>
    <style>
  
   body{
    background-color: red;
   text-align: center;
   color: wheat;
   margin-top: 200px;
   }

    </style>
    
  
       
</head>
<body>
    Bem vindo a página de sorteio, <?php echo $_SESSION['nome']; ?>!

    <p>
        <a href="logout.php">Sair</a>
    </p>

    <script type="text/javascript">
        function insereTexto(){
            document.getElementById('divTeste').innerHTML =" Parabéns, você foi sorteado para realizar um sonho neste natal <a href = https://blognoel.correios.com.br/adocao/>clique aqui </a> para resgatar o seu premio"
        }
    </script>
    <h1>Sorteador</h1>
    <input type='button' onclick='insereTexto()' value='sortear'/><br/>
    <h2>resultado:</h2>

    <div id="divTeste"> </div>
    
</body>
</html>