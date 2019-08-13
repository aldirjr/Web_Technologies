<?php
  // The global $_POST variable allows you to access the data sent with the POST method by name
  // To access the data sent with the GET method, you can use $_GET
  $name = htmlspecialchars($_POST['name']);
  $title  = htmlspecialchars($_POST['email']);
  $message  = htmlspecialchars($_POST['message']);
  echo  $say, ' ', $to;

  
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "wsu_wt";
  
  // Create connection
  $conn = new mysqli($servername, $username, $password, $dbname);
  // Check connection
  if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
  } 
  
  $sql = "INSERT INTO Comments (userName, cTitle, comment)
  VALUES ('".$name."', '".$title."','".$message."')";
  
  if ($conn->query($sql) === TRUE) {
      echo "New record created successfully";
  } else {
      echo "Error: " . $sql . "<br>" . $conn->error;
  }
  
  $conn->close();


  header('Location: generic.html');
  exit;
?>