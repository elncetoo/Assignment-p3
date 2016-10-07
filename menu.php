<link rel="stylesheet" href="css/style-menu.css">
<?php
$curpage = basename ($_SERVER['PHP_SELF']);
?>
<div id='cssmenu' style="margin: 3%;">
<ul>
<li <?php if($curpage == 'index.php') {echo 'class="active"'; } ?>><a href="index.php">Home</a></li>
<li <?php if($curpage == 'projects.php') {echo 'class="active"'; } ?>><a href="projects.php">Projects</a></li>
<li <?php if($curpage == 'clientlist.php') {echo 'class="active"'; } ?>><a href="clientlist.php" >Clients</a></li>

</ul>
</div>