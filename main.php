<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home Page</title>
    <style>
        body {
            background-color: darkslategrey
        }

        #header {
            
            top: 0%;
            left: 0%;
            height: 30%;
            width: 100%;
        }

        #title {
			margin:0 auto;
			margin-top: 200px;
            font-size: 50px;
            color: whitesmoke;
			width:450px;
        }

        .link {
            font-size: 20px;
            color: whitesmoke
        }

        .link:visited {
            color: whitesmoke;
        }

        #reg {
            position: absolute;
            top: 5%;
            left: 90%;
        }

        #login {
            position: absolute;
            top: 5%;
            left: 80%;
        }

        #logout {
            position: absolute;
            top: 5%;
            left: 90%;
        }

        #res {
            position: absolute;
            top: 5%;
            left: 40%;
        }

        #filmadd {
            position: absolute;
            top: 5%;
            left: 5%;
        }

        #seans {
            position: absolute;
            top: 5%;
            left: 20%;
        }
    </style>
</head>

<body>
    <div id="header">
        
        <?php

        if (isset($_SESSION["logged"]) && $_SESSION["logged"] == true) {
            if (isset($_SESSION["admin"]) && $_SESSION["admin"] == true) {
        ?>
                <a href="filmAdd.php" id="filmadd" class="link">Add Film</a>
                <a href="createSens.php" id="showing" class="link">Create Showing</a>

            <?php
            }

            ?>
            <a href="reservation.php" id="res" class="link">Reservation</a>
            <a href="logout.php" id="logout" class="link">logout</a>
        <?php

        } else {
        ?>
            <a href="reservation.php" id="res" class="link">Reservation</a>
            <a href="register.php" id="reg" class="link">register</a>
            <a href="login.php" id="login" class="link">login</a>
        <?php
        }


        ?>
		<h1 id="title">DOMINO CINEMA</h1>
    </div>


</body>

</html>