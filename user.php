<!DOCTYPE html>
<html>
<head>
    <title>Users</title>
<link rel="stylesheet" href="index.css" />
</head>
<body>
    <style>
      body
      {
          background-image:url('Image/users.jpg');
          
          
      }    
    </style>
    <?php include'nav.php';?>
    <?php
include 'config.php';
$sql="SELECT * FROM users";
$result=$conn->query($sql);
?>
<table>
    <tr>
        <th>S.NO</th>
        <th>NAME</th>
        <th>EMAIL</th>
        <th>BALANCE (RS.)</th>
        <th>OPERATION</th>
    <tr>
  <?php
  if($result->num_rows>0)
  {
      //output data of each row
      while($row=$result->fetch_assoc()){
   ?>
   <tr>
       <td><?php echo $row["id"];?></td>
       <td><?php echo $row["name"];?></td>
       <td><?php echo $row["email"];?></td>
       <td><?php echo $row["balance"];?></td>
       <td><a href="transfer.php?id=<?php echo $row['id'];?>"><button type="button" class="btn">Transfer Money</button></a></td>
   </tr>
   <?php
      } ?>
</table>
 <?php }
  ?>
  </body>

<?php include'footer.php';?>
</html>