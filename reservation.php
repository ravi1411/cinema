<?php
session_start();
$zmienna = "";
$conn = mysqli_connect("localhost", "root", "", "cinema");
if ($conn->connect_errno) die("unlucky");
if (isset($_POST['sit'])) {

    for ($i = 0; $i < count($_POST['sit']); $i++) {
        $user_id = intval($_SESSION['user_id']);
        $hair = intval($_POST['sit'][$i]);
        $seans_id = intval($_POST['seansID']);



        $prep = mysqli_prepare($conn, "INSERT INTO rez(id_seans, id_user, id_chair) VALUES(?,?,?)");
        mysqli_stmt_bind_param($prep, "iii", $seans_id, $user_id, $hair);
        mysqli_stmt_execute($prep);
    }
    header("Location: ./main.php");
}


// Function to find adjacent seats in a row
function findAdjacentSeats($row)
{
    $seatsCount = count($row);
    $adjacentSeats = [];

    for ($i = 0; $i < $seatsCount - 1; $i++) {
        if ($row[$i + 1] === null && $row[$i] !== null) {
            $adjacentSeats[] = $i;
        }
    }

    return $adjacentSeats;
}

// Function to book seats for pairs
function bookPairSeats(&$cinemaHall)
{
    foreach ($cinemaHall as &$row) {
        $adjacentSeats = findAdjacentSeats($row);

        foreach ($adjacentSeats as $seatIndex) {
            $seat1 = $row[$seatIndex];
            $seat2 = $row[$seatIndex + 1];

            if (isPair($seat1, $seat2)) {
                $row[$seatIndex + 1] = 'X'; // Mark the seat as booked
                $row[$seatIndex] = 'X'; // Mark the seat as booked
                return [$seat1, $seat2];
            }
        }
    }

    return null;
}

// Function to check if two seats form a valid pair
function isPair($seat1, $seat2)
{
    // You can define your own logic here to check if two seats form a valid pair
    // For example, if the seats are consecutive (e.g., A1, A2) or have specific properties
    
    // Example: Check if the seat numbers have the same letter prefix
    $prefix1 = substr($seat1, 0, 1);
    $prefix2 = substr($seat2, 0, 1);

    return $prefix1 === $prefix2;
}
/*
// Example usage
$bookedSeats = [];

// Book pair seats until there are no more pairs available
while ($pairSeats = bookPairSeats($cinemaHall)) {
    $bookedSeats[] = $pairSeats;
}

// Display the booked seats
foreach ($bookedSeats as $pairSeats) {
    echo "Booked seats: " . implode(', ', $pairSeats) . "\n";
}*/
?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>filmAdd</title>
    <style>
        body {
            background-color: darkslategrey;
            color: whitesmoke
        }

        .chosen {
            height: 75px;
            width: 100%;
            top: 0%;
            left: 0%;
           // border: darkmagenta solid 5px;
            text-align: center;

        }

        .seans {
            font-size: 50px
        }

        .sel {
            font-size: 35px
        }

        .accept {
            font-size: 35px
        }

        .chairs {
            position: absolute;
            height: calc(100%-125px);
            width: 1125px;
            top: calc(0% + 100px);
            left: 20%;
           // border: darkmagenta solid 5px;
            text-align: center;

        }

        .screen {
            position: relative;
            font-size: 30px;
            height: 50px;
            width: 100px;
            left: 45%
        }

        .chairrow {
            display: flex;
            flex-direction: row;


        }

        .chairrow input {
            width: 50px;
            height: 50px;


        }

        .sub {
            font-size: 30px;
        }
    </style>
</head>

<body>
    <form method="POST" class="chosen">

        <label class='seans'>
            Showing: <select name="seans" class="sel">
                <?php
                $sel = mysqli_query($conn, "SELECT seans.id, seans.day, seans.hour, movies.film FROM seans INNER JOIN movies ON seans.id_film=movies.id");
                $tab = mysqli_fetch_all($sel, MYSQLI_ASSOC);
                foreach ($tab as $e) {
                    $id = $e['id'];
                    $film = $e['film'];
                    $day = $e['day'];
                    $time = $e['hour'];
                    if (isset($_POST['seans']) && $_POST['seans'] == $id) {

                        echo "<option value='$id' selected='selected'>$film - $day - $time</option>";
                    } else {
                        echo "<option value='$id'>$film - $day - $time</option>";
                    }
                }

                ?>
            </select>

        </label>

        <input type="submit" value="choose" class="accept">
    </form>
    <form method="POST" class="chairs">
        <div class="screen">Showing</div>
        <?php
        if (isset($_POST["seans"])) {

            $seansID = intval($_POST["seans"]);

            $sel = mysqli_query($conn, "SELECT * FROM chairs ");
            $chairs = mysqli_fetch_all($sel, MYSQLI_ASSOC);

            $sel = mysqli_query($conn, "SELECT * FROM rez WHERE id_seans=$seansID ");
            $reservs = mysqli_fetch_all($sel, MYSQLI_ASSOC);

            $lastrow = '';
            for ($i = 0; $i < count($chairs); $i++) {
                if ($lastrow != $chairs[$i]['x']) {
                    if ($i != 0) {
                        echo "</div>";
                    }
                    echo "<div class='chairrow'>";
                    $lastrow = $chairs[$i]['x'];
                }
                $chair_id = $chairs[$i]['id'];
                $toDis = false;
                foreach ($reservs as $e) {
                    if ($e['id_chair'] == $chair_id) {
                        $toDis = true;
                        break;
                    }
                }
                if ($toDis) {
                    echo "<input type='checkbox' value='$chair_id' class='dis' name='sit[]' disabled />";
                } else {
                    echo "<input type='checkbox' value='$chair_id' class='dis' name='sit[]'/>";
                }
            }
            echo "</div>";
            echo "<input type='hidden' name='seansID' value='$seansID'/>";
        }
        ?>
        <?php
        if (isset($_SESSION["logged"]) && $_SESSION["logged"] == true) {

        ?><input type="submit" value="Confirm" class="sub" /><?php
                                                            }
                                                                ?>
    </form>

</body>

</html>