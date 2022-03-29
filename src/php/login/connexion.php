<?php
session_start();
require_once'config.php';
if(isset($_POST['email']) && isset($_POST['password']))
{
    $email = htmlspecialchars($_POST['email']);
    $password = htmlspecialchars($_POST['password']);

    $check = $bdd->prepare('SELECT id,prenom,nom,password FROM utilisateur WHERE email=?');
    $check->execute(array($email));
    $data = $check->fetch();
    $row = $check->rowCount();

    if($row == 1)
    {
        if(filter_var($email, FILTER_VALIDATE_EMAIL))
        {

            if($data['password'] === $password)
            {

                $_SESSION['user']= $data['id'];
                header('Location:');
            }else header('Location:login.php?login_err=password');
        }else header('Location:login.php?login_rr=email');
    }else header('Location:login.php?login_rr=already');
}else header('Location:login.php');
