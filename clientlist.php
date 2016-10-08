<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Untitled Document</title>
<link rel="stylesheet" href="css/style.css">
<link href='http://fonts.googleapis.com/css?family=Comfortaa' rel='stylesheet' type='text/css'>
</head>

<body>
	<ul class="navbar">
    <?php include 'menu.php';?>
    <br>  
    </ul>
    <article><h1>Clients list:</h1>
    <ul>
        <?php
        require_once 'dbcon.php';
        $sql = 'SELECT clientsID, c_name FROM project1db.clients';
        $stmt = $link->prepare($sql);
        $stmt->execute();
        $stmt->bind_result($cid, $cname);
        while($stmt->fetch()){
            echo '<li><a href="clinfo.php?id='.$cid.'">'.$cname.'</a></li>'.PHP_EOL;
        }
        ?>
    </ul>
    </article>
    <br><br>
    	<article>
        <form method="post" action="addclient.php">
        <input type="text" name="clname" placeholder="Enter Name"/>
        <input type="text" name="claddress" placeholder="Enter adress"/>
        <input type="text" name="clnumb" placeholder="Enter number"/>
        <input type="text" name="clconname" placeholder="Enter contact name"/>
        <input type="text" name="clzip" placeholder="Enter zip"/>
        <input type="submit" name="action" value="Add client" style="margin-left: 40%"/>
        </form>
        <br>
<hr>
        <h2>DELETE CLIENT</h2>
         <form action="deleteclient.php" method="post">
         <select name="cid">
                <?php
                $sql = 'Select c_name, `clientsID` from clients;';
                $stmt = $link->prepare($sql);
                $stmt->execute();
                $stmt->bind_result($clname, $cid);
            while ($stmt->fetch()){
           echo '<option value="'.$cid.'" placeholder="Zip">'.$clname.'</option>'.PHP_EOL;
		   }
         ?>
         <input type="submit" value="Delete">
         </select>
         </form>         
         </article>
<br><br><br><br><br><br>
	<?php require 'footer.php';?>