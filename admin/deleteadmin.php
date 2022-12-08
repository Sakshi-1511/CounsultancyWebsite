<?php  

$Email = filter_input(INPUT_POST, 'email');
$Password = filter_input(INPUT_POST, 'password');


    if(!empty($Email))
    {
      if (!empty($Password)) {

      
      $host = "localhost";
    $dbusername = "root";
    $dbpass = "";
    $dbname = "registration";
    // connection
    $conn = new mysqli($host,$dbusername,$dbpass,$dbname);
    if (mysqli_connect_error()) {
      die('Connect Error ('.
        mysqli_connect_errno().')' 
        .mysqli_connect_error());
                          }
      else
          {
      $sql = "DELETE FROM users
WHERE email='$Email'
AND password='$Password';";
      
      if ($conn->query($sql)) 
      {
        echo '<script >alert("Admin deleted successfully.");window.location="Admin-Settings.php"</script>';
      }
      else
      {
        echo "Error: ". $sql . "<br>" 
        .$conn->error;
      }
      $conn->close();

          }

    }
     else
   {
        echo '<script >alert("Password should not be empty."");window.location="Admin-Settings.php"</script>';
    die();
   }


  }
   

else{
        echo '<script >alert( "Email should not be empty."");window.location="Admin-Settings.php"</script>';
  die();}




?>