<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Covid Stats</title>

    <style>
        #stats {
        font-family: Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
        }

        #stats td, #stats th {
        border: 1px solid #ddd;
        padding: 8px;
        }

        #stats tr:nth-child(even){background-color: #f2f2f2;}

        #stats tr:hover {background-color: #ddd;}

        #stats th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: left;
        background-color: #04AA6D;
        color: white;
        }
    </style>

</head>
<body>
    <?php

        $servername = "localhost";
        $username = "root";
        $password = "";
        $db = "covid";

        // Create connection
        $con = mysqli_connect($servername, $username, $password,$db);

        // Check connection
        if (!$con) {
            die("Connection failed: " . mysqli_connect_error());
        }

    ?>

    <table id="stats">
        <th>ID</th>
        <th>Province</th>
        <th>New</th>
        <th>Total</th>
        <th>Percentage</th>

        <?php

            $query = mysqli_query($con, "SELECT * FROM stats")
            or die (mysqli_error($con));

            while ($row = mysqli_fetch_array($query)) {
            echo
            "<tr>
                <td>{$row['id']}</td>
                <td>{$row['province']}</td>
                <td>{$row['newCases16July']}</td>
                <td>{$row['totalCases16July']}</td>
                <td>{$row['totalPercentage']}</td>
            </tr>
            \n";

            }

        ?>
    </table>
</body>
</html>
