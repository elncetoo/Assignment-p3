<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Project list</title>
<link rel="stylesheet" href="css/style.css">
<link href='http://fonts.googleapis.com/css?family=Comfortaa' rel='stylesheet' type='text/css'>
</head>

<body>
	<ul class="navbar">
    <?php include 'menu.php';?>
    <br>  
    </ul>
        <article class="article" style="link-decoration: none; margin:6%;">
        <h1 >Project list:</h1>
           <p> 
           <?php
            require_once 'dbcon.php';
            $sql = 'SELECT projectID, pr_name FROM project1db.projects';
            $stmt = $link->prepare($sql);
            $stmt->execute();
            $stmt->bind_result($prid, $prname);
            while($stmt->fetch()){
                echo '<li><a href="prinfo.php?id='.$prid.'">'.$prname.'</a></li>'.PHP_EOL;
            }
            ?>
            </p>
            
            <button class="button"><a href="editform.php?prid=<?=$prid?>">Edit Project</a></button>
            
        </article>


		<?php require 'footer.php';?>