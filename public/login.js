$db = mysqli_connect('localhost', 'username', 'password', 'database');
if($query = mysqli_query($db, "SELECT `header` FROM `data` WHERE `var` = '$foo'")){
  while($row = mysqli_fetch_assoc($query)){
    echo $row['header'];
  }
  mysqli_free_result($query);
}
