<!DOCTYPE html>
<html>
<style>
	 body {
        background-image:url("Airplane.jpg");
        
    }
    .navigation_bar
    {
        
        background-color:khaki;
        border-width: thick;
        border-bottom-style: ridge;
        width: inherit;
        height:50px;
        overflow: hidden;
        
    }
    a{
        text-decoration:none;
        padding:20px;
        font-size: 25px;
    }
   div a:hover{
        color:chartreuse;
        background-color:darkseagreen;
    }
    .active{
        color:indianred;
        background-color: aqua;
    }
    .login
    {
        text-align: center;
        padding:inherit;
        margin-top: 150px;
    }
      .foot{
        float: right;
        background-color: aqua;
        margin-top: 500px;
    }
    #register:hover{
        background-color: 
    }
    
    a:hover {
        color:red;
        
    }
   h3{
        margin-left: 550px;
    }
    
}
	tr th{
	font-weight:bold;
    }
tr th, tr td{
	padding:5px;
}
th{
    border: 5px solid #C1DAD7;
}
td{
	border: 5px solid #C1DAD7;
}
.c1{
	background:#4b8c74;
}
.c2{
	background:#74c476;
}
.c3{
	background:#a4e56d;
}
.c4{
	background:#cffc83;
	}
	#table{
		margin: auto;
	}
    .tyr{
        padding-top: absolute;
    }
</style>
<body>
	<div class="navigation_bar">
    <a href="home.html" > Home</a>
    <a  href="account.html">Login</a>
    <a href="passenger.html"> Passenger</a>
    <a href="reservation.html">Online Reservation</a>
    <a href="FlightStatus.html">Flight Status</a>
    <a href ="cancellation.html"> Cancel Reservation</a>
    <a class="active" href="webcheckin.html">Web Check-In</a>
    
    
    </div>
    
<table id="table" border="2px" id="table">
  <tr>
    <th class="c3">ETICKET_NUMBER</th>
    <th class="c4">FLIGHT NUMBER</th>
      <th class="c4">FIRST NAME</th>
    <th class="c3">LAST NAME</th>
    <th class="c4">GENDER</th>
    <th class="c3">DATE OF BIRTH</th>
    <th class="c4">DATE OF JOURNEY</th>
    <th class="c3">SEAT NUMBER</th>
    <th class="c4">CONTACT NUMBER</th>
    <th class="c3">ARRIVAL DATE</th>
    <th class="c4">SCHEDULED DEPARTURE TIME</th>
    <th class="c3">SCHEDULED ARRIVAL TIME</th>
    <th class="c4">STATUS</th> 
  </tr>
  <tr>
<?php
$link = mysqli_connect("127.0.0.1", "root", "", "flight_reservation_system");

/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}
$enum=$_POST['eticket'];
$query = "SELECT * from passenger inner join flight_status on passenger.ETICKET_NUMBER=flight_status.e_ticket_number";
	  if ($result = mysqli_query($link, $query)) {
		  /* fetch associative array */
    while ($row = mysqli_fetch_row($result)) {
        if($row[0]==$enum){
        
    echo "<h1 style='text-align:center;'>--------PASSENGER DETAILS---------</h1>";
	echo"<td class='c3'>";
	echo $row[0];
	echo"</td>";
	echo"<td class='c4'>";
	echo $row[17];
	echo"</td>";
	echo"<td class='c3'>";
    echo $row[1];
	echo"</td>";
	echo"<td class='c3'>";
	echo $row[2];
	echo"</td>";
	echo"<td class='c4'>";
	echo $row[3];
	echo"</td>";
	echo"<td class='c3'>";
    echo $row[4];
    echo"</td><td class='c4'>";
    echo $row[5];
    echo"</td><td class='c3'>";
    echo $row[7];
    echo"</td><td class='c4'>";
    echo $row[8];
    echo"</td><td class='c3'>";
    echo $row[10];
    echo"</td><td class='c4'>";
    echo $row[11];
    echo"</td><td class='c3'>";
    echo $row[12];
    echo"</td><td class='c4'>";
    echo $row[15];
    echo"</td><td class='c3'>";
    
    }
    }
$status='Passenger Checked';
$check="insert into webcheckin (e_ticket_number,wstatus) values ($enum,'$status')";
        if(!mysqli_query($link,$check))
        {
            echo " Unauthorized Web Check-in";
        }
        
   
          
    /* free result set */
    mysqli_free_result($result);
		  /* close connection */
mysqli_close($link);
	  }
     
      
    
?>
      <div class="tyr">
      <p><a href="webcheckin.html"><input type="button" value="back"/></a></p>
      </div>