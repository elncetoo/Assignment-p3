<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Client</title>
<link rel="stylesheet" href="css/style.css">
<link href='http://fonts.googleapis.com/css?family=Comfortaa' rel='stylesheet' type='text/css'>
</head>

<body>
	<ul class="navbar">
    <?php include 'menu.php';?>
    <br>  
    </ul>
	
    <article>
	<?php
    $clname = filter_input(INPUT_POST, 'clname') or die('missing parameter');
    $claddress = filter_input(INPUT_POST, 'claddress') or die('missing parameter');
    $clnumb = filter_input(INPUT_POST, 'clnumb', FILTER_VALIDATE_INT) or die('missing parameter');
    $clconname = filter_input(INPUT_POST, 'clconname') or die('missing parameter');
    $clzip = filter_input(INPUT_POST, 'clzip', FILTER_VALIDATE_INT) or die('missing parameter');
    
    require_once 'dbcon.php';
    $sql = 'INSERT INTO `clients`(`c_name`, `c_address`, `c_con_number`, `c_con_name`, `zip_code_zip_id`) VALUES (?, ?, ?, ?, ?);';
    $stmt = $link->prepare($sql);
    $stmt->bind_param('ssisi', $clname, $claddress, $clnumb, $clconname, $clzip);
    $stmt->execute();
       echo 'Client added to DB';
     ?>
     <br><br>
    <a href="clientlist.php">Back to clientlist</a> 

	</article>
    
    <br><br>
	<?php require 'footer.php';?>