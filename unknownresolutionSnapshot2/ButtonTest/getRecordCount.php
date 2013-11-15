<?php
$user="user";
$password="userpassword";
$database="mydatabase";
$server="localhost";
$conn = mysql_connect($server,$user,$password)
or die("Unable to connect to MySQL server");
mysql_select_db($database) or die( "Unable to select database");
$result = mysql_query("SELECT * FROM people");
$num_rows = mysql_num_rows($result);
echo "$num_rows entries in the database";
mysql_close($conn)
?>
