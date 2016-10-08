<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Edited Project</title>
<link rel="stylesheet" href="css/style.css">
<link href='http://fonts.googleapis.com/css?family=Comfortaa' rel='stylesheet' type='text/css'>
</head>

<body>
	<ul class="navbar">
    <?php include 'menu.php';?>
    <br>  
    </ul>

	<article style="margin-left: 40%">
	<?php
    $prid = filter_input(INPUT_POST, 'prid', FILTER_VALIDATE_INT) or die('missing parameter');
    $prname = filter_input(INPUT_POST, 'prname') or die('missing parameter');
    require_once 'dbcon.php';
    $sql = 'UPDATE project1db.projects SET pr_name=? WHERE projectID=?';
    $stmt = $link->prepare($sql);
    $stmt->bind_param('si', $prname, $prid);
    $stmt->execute();
    if ($stmt->affected_rows > 0){
        echo 'Name updated...';
        }
        else {
            echo 'Something went wrong...';
          }
        ?>
   
	</article>
<hr>
<a href="projects.php">Back to projects</a> 

	<?php require 'footer.php';?>