<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transaction</title>
    <style>
      body
      {
          background-image:url('Image/transaction.jpg');
      }    
    </style>
</head>
<body>
<?php
 include'nav.php';
?> 

 <table>
     <tr>
         <th>S.NO</th>
         <th>Sender's Name</th>
         <th>Receiver's Name</th>
         <th>Amount</th>
         <th>Date</th>
     </tr>
<?php
 
   
       include 'config.php';
       $sql="select * from transaction";
       $query=mysqli_query($conn, $sql);
       while($row=mysqli_fetch_assoc($query))
    {
?>
<tr>
    <td><?php echo $row['sno']; ?></td>
    <td><?php echo $row['sender'];?></td>
    <td><?php echo $row['receiver']; ?></td>
    <td><?php echo $row['balance']; ?></td>
    <td><?php echo $row['datetime']; ?></td>
</tr>
 <?php
      }
?>
</table>
 <?php 
 
  ?>

<?php
 include'footer.php';
?> 

</body>
</html>
