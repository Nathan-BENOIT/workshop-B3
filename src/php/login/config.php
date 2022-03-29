<?php

try
{
    $bdd = new PDO('mysql:host=localhost;dbname=heal;charset=UTF8','root','');
}catch(Exception $e)
{
    die('Erreur'.$e->getMessage());
}

?>