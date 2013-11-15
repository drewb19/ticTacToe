<?php

$user="user";
$password="userpassword";
$database="mydatabase";
$server="localhost";

$conn = mysql_connect($server,$user,$password)
or die("Unable to connect to MySQL server");

mysql_select_db($database) or die( "Unable to select database");

$personname = "Sam";
$personage = 19;

$query = "INSERT INTO people SET name='$personname', age='$personage';";
mysql_query ( $query ) or die("INSERT query failed: ".mysql_error());

$query = "CREATE TABLE IF NOT EXISTS `people`
(`id` int NOT NULL auto_increment,
`name` text NOT NULL,
`age` int,
PRIMARY KEY (`id`)
) ENGINE=MyISAM;";

mysql_query($query) or die('Query failed: ' . mysql_error());

print ("PHP successfully connected to mydatabase, and created a table named 'people'!");

mysql_close($conn);

?>
