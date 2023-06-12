<?php
session_start();

$conn = mysqli_connect("localhost", "root", "", 'cinema');
if ($conn->connect_errno) die("unlucky");
if (isset($_POST["film"], $_POST["day"], $_POST["time"])) {

    $filmID = intval($_POST["film"]);
    $day = $_POST["day"];
    $time = $_POST["time"];



    $prep = mysqli_prepare($conn, "INSERT INTO seans(id_film, day, hour) VALUES(?, ?, ?)");
    @mysqli_stmt_bind_param($prep, "iss", $filmID, $day, $time);
    mysqli_stmt_execute($prep);
    header("Location: ./main.php");
}



?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>FILM ADD</title>
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
            width: 300px;
            height: 50px;
            font-size: 40px
        }

        .zeg {
            width: 175px;
            height: 50px;
            font-size: 40px
        }

        option {
            font-size: 30px
        }

        #accept {
            font-size: 50px
        }
    </style>
</head>

<body>
    <form method="POST">
        <h1>ADD SCREENS</h1>
        <label>
            film: <select name="film" class="inp">
                <?php
                $sel = mysqli_query($conn, "SELECT * FROM movies ");
                $tab = mysqli_fetch_all($sel, MYSQLI_ASSOC);
                foreach ($tab as $e) {
                    $id = $e['id'];
                    $film = $e['film'];
                    echo "<option value='$id'>$film</option>";
                }
                ?>
            </select>

        </label>
        <br>

        <label>
            dzień: <select name="day" class="inp">
                <option value="Monday">Monday</option>
                <option value="Tuesday">Tuesday</option>
                <option value="Wednesday">Wednesday</option>
                <option value="Thursday">Thursday</option>
                <option value="Friday">Friday</option>
                <option value="Saturday">Saturday</option>
                <option value="Sunday">Sunday</option>
            </select>
        </label>
        <br>

        <label>
            Time: <input type="time" name="time" id="time" class="zeg">
        </label>
        <br>


        <input type="submit" value="add" id="accept">
    </form>

</body>

</html>