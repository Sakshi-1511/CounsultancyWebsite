<?php  
$Name = filter_input(INPUT_POST, 'name');
$Email = filter_input(INPUT_POST, 'email');

$Phone = filter_input(INPUT_POST, 'phone');
$Address = filter_input(INPUT_POST, 'address');
$IDlink = filter_input(INPUT_POST, 'link');

if (!empty($Name)) 
{
  if (!empty($Email)) 
  {
    if(!empty($Phone))
    {
      if (!empty($Address))
       {
        if(!empty($IDlink))
        {

      
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
      $sql = "INSERT INTO Internship(Name,Email,Phone,Address,IDlink) values ('$Name','$Email','$Phone','$Address',
      '$IDlink')";
      if ($conn->query($sql)) 
      {
        echo '<script >alert("Your are Successfully applied.");window.location="Careers.php"</script>';
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
        echo '<script >alert("IDFile should not be empty."");window.location="Careers.php"</script>';
    die();
   }


  }
   else
   {
        echo '<script >alert("Address should not be empty."");window.location="Careers.php"</script>';
    die();
    }
}
else{
        echo '<script >alert( "Phone should not be empty."");window.location="Careers.php"</script>';
  die();

}}
else{
        echo '<script >alert( "Email should not be empty."");window.location="Careers.php"</script>';
  die();}}
  else{
        echo '<script >alert( "Name should not be empty."");window.location="Careers.php"</script>';
  die();}


  //mail to client to notify about new application 
  $to_email = "patiladitya210102@gmail.com";
  $subject = "You Have New Internship Application";
  $body = "Hi, You Have New Internship Application Login to admin panel for more info";
  $headers = "From: patiladitya210102@gmail.com";
  
  if (mail($to_email, $subject, $body, $headers)) {
     
  
  } else {

  }


  //a confirmation mail to user
  $to_email =  $_POST['email'];
  $subject = "You Have applied for Internship";
  $body = "Hi, You Have applied for Internship. We will contact you within 2-3 business days.";
  $headers = "From: patiladitya210102@gmail.com";
  
  if (mail($to_email, $subject, $body, $headers)) {
     
  
  } else {

  }



?>