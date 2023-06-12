<?php
session_start();
$data = "";
if (isset($_SESSION["logged"]) && $_SESSION["logged"] == true) {
    header("Location: ./main.php");
} else {


    if (isset($_POST["log"], $_POST["pas"])) {

        $conn = mysqli_connect("localhost", "root", "", 'cinema');
        if ($conn->connect_errno) die("unlucky");
        $log = $_POST["log"];
        $pas = $_POST["pas"];

        if (mb_strlen($log, "UTF-8") > 2 && mb_strlen($pas, "UTF-8") > 2) {
            $check = mysqli_query($conn, "SELECT * FROM users WHERE login='$log'");
            $odp = mysqli_fetch_all($check, MYSQLI_ASSOC);
            if (count($odp) == 0) {

                $data = "such user does not exist";
            } else {
                $logged = false;
                foreach ($odp as $e) {
                    if (md5($pas) == $e["password"]) {
                        $logged = true;
                        $_SESSION["logged"] = true;
                        $_SESSION["user_id"] = $e["id"];
                        $_SESSION["admin"] = $e["admin"];
                    }
                    break;
                }
                if ($logged == true) {
                    $data = "logged in";
                    header("Location: ./main.php");
                } else {
                    $data = "Wrong password";
                }
            }
        }
    }
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>LOGIN SCREEN</title>
    <style>
        body {
            background-color: darkslategrey;
            color: whitesmoke
        }

        form {
            top: 10%;
            left: 20%;
            height: 600px;
            width: 860px;
            border: darkmagenta solid 5px;
            text-align: center;
            font-size: 50px;
		   margin:0 auto;
		   margin-top:100px;
        }

        .inp {
            font-size: 40px
        }

        #accept {
            font-size: 40px
        }
    </style>
</head>

<body>
    <form method="POST">
        <h1>LOGIN</h1>
        <label>
            login: <input type="text" name="log" class="inp">
        </label>
        <br>
        <br>
        <label>
            password: <input type="password" name="pas" class="inp">
        </label>
        <br>
        <br>
        <input type="submit" value="login" id="accept">
    </form>
    <?php echo $data; ?>

</body>

</html>