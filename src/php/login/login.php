<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"> 
        <meta name="viewport" content="width=device-width, initiale-scale=1.0">
        <title>Heal</title>
        <link rel="stylesheet" href="CSS/logincss.css">
    </head>

    <body>
        <div class="login-form">
        <?php    
            if(isset($_GET['login_err']))
            {
                $err = htmlspecialchars($_GET['login_err']);

                switch($err)
                {
                    case 'password':
                        ?>
                        <div class="alert alert-danger">
                            <strong>Erreur</strong> mot de passe incorrect
                        </div>
                        <?php
                        break;

                        case 'email':
                            ?>
                            <div class="alert alert-danger">
                                <strong>Erreur</strong> email incorrect
                            </div>
                            <?php
                            break;

                            case 'already':
                                ?>
                                <div class="alert alert-danger">
                                    <strong>Erreur</strong>compte non existant
                                </div>
                                <?php
                                break;
                }
            }
        ?>
        <form action="connexion.php" method="post">
            <img src="asset/Heal_rose_sans_slogan.png" >
            <h1>Se connecter</h1>
            <div class="form-group">
                <label><b>Email d'utilisateur</b></label>
                <input type="email" placeholder="Email" name="email" class="form-control" required="required" autocomplete="off">
            </div>
            <div class="form-group">
                <label><b>Mot de passe</b></label>
                <input type="password" placeholder="Mot de passe" name="password" required="required" class="form-group" autocomplete="off">
            </div>
            <p class="inscription"> Pas de compte nous contacter</p>
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block"><span>Connexion</span></button>
        </form>
        </div>
    </body>
</html>