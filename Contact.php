<?php  
$Name = filter_input(INPUT_POST, 'name');
$Phone = filter_input(INPUT_POST, 'phone');
$Email = filter_input(INPUT_POST, 'email');
$Message = filter_input(INPUT_POST, 'message');

if (!empty($Name)) 
{
  if (!empty($Phone)) 
  {
    if(!empty($Email))
    {
      if (!empty($Message)) {

      
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
      $sql = "INSERT INTO Contact(Name,Phone,Email,Message) values ('$Name','$Phone','$Email','$Message')";
      if ($conn->query($sql)) 
      {
        echo '<script >alert("Your data submitted successfully.");window.location="Home.php"</script>';
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
        echo '<script >alert("Message should not be empty."");window.location="Home.php"</script>';
    die();
   }


  }
   else
   {
        echo '<script >alert("Email should not be empty."");window.location="Home.php"</script>';
    die();
    }
}
else{
        echo '<script >alert( "Phone should not be empty."");window.location="Home.php"</script>';
  die();

}}
else{
        echo '<script >alert( "Name should not be empty."");window.location="Home.php"</script>';
  die();}




?>