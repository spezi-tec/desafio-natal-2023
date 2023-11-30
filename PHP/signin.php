<?php
include('conexao.php');

if(isset($_POST['email']) || isset( $_POST['senha'])) {

    if(strlen($_POST['email']) == 0) {
        echo "Preencha seu e-mail";
    } else if(strlen($_POST['senha']) == 0) {
        echo "Preencha sua senha";
    } else {

        $email = $mysqli->real_escape_string($_POST["email"]);
        $senha = $mysqli->real_escape_string($_POST["senha"]);

        $sql_code = "SELECT * FROM  usuarios where email = '$email' AND senha = '$senha'";
        $sql_query = $mysqli->query($sql_code) or die("Falha na execução do código SQL: " . $mysqli->error);
        
        $quantidade = $sql_query->num_rows;

        if($quantidade == 1){

            $usuario = $sql_query->fetch_assoc();

            if(!isset($_SESSION)){
                session_start();
            }

            $_SESSION['id'] = $usuario['id'];
            $_SESSION['nome'] = $usuario['nome'];

            header("location: painel.php");

        } else{
            echo "Falha ao logar! E-mail ou senha incorretos";
        }
    }
}
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<link rel="stylesheet" href="../css/signin.css" />
<button id="send"><a href="projeto.php" rel="before">Início</a></button>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <style>

        h2{
            text-align: center;
            margin-bottom: 20px;
            color: whitesmoke;
            
        }
        div{
            text-align: center;
            margin-bottom: 20px;
            color: whitesmoke;
        }
    </style>
</head>
<body>
        <h1>Login</h1>
    <form action="" method="POST">
        <P>
            <label>E-mail</label>
            <input type="text" name="email">
        </P>
        <p>
            <label>Senha</label>
            <input type="password" name="senha">
        </p>
        <p>
            <button type="submit">Entrar</button>

            <h2>Escolha um dos seguintes personagens para participar do sorteio:</h2>
    <div>
        <li>Papai Noel:</li>
        <ul>email:papainoel@gmail.com</ul>
        <ul>senha:123456</ul>
        <li>Vikings:</li>
        <ul>email:vikings@gmail.com</ul>
        <ul>senha:123456</ul>
        <li>Árvore de Natal:</li>
        <ul>email:arvore@gmail.com</ul>
        <ul>senha:123456</ul>
    </div>
</body>
</html>