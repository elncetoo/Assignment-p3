<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Untitled Document</title>
</head>

<body>
<h1>Categories</h1>
<ul>
<?php
require_once 'dbcon.php';
$sql = 'SELECT clientsID, c_name, c_address, c_con_name, c_con_number FROM project1db.clients;';
$stmt = $link->prepare($sql);
$stmt->execute();
$stmt->bind_result($cid, $nam);
while($stmt->fetch()){
	echo '<li><a href="clientslist.php?cid='.$cid.'">'.$nam.'</a></li>'.PHP_EOL;
}
?>
</ul>




</body>
</html>