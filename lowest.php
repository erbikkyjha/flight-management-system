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
		
	}
    .try{
        padding-top: 500px;
        position: absolute;
    }
    .tyr{
        padding-top: absolute;
    }
    .active{
        color:indianred;
        background-color: aqua;
</style>
<body>
	<div class="navigation_bar">
    <a href="home.html" > Home</a>
    <a  href="account.html">Login</a>
    <a href="passenger.html"> Passenger</a>
    <a href="reservation.html">Online Reservation</a>
    <a href="FlightStatus.html">Flight Status</a>
    <a href ="cancellation.html"> Cancel Reservation</a>
    <a href="webcheckin.html">Web Check-In</a>
     <a  clas="active" href="lowest.html"> Lowest Fare</a>
    
    
    </div>
    
<table  border="2px" id="table">
  <tr>
    <th class="c1">Flight Number</th>
    <th class="c2">Origin</th>
    <th class="c3">Destination</th>
    <th class="c4">Total Seats</th>
    <th> Total Fare</th>
  </tr>
  <tr>
<?php
$link = mysqli_connect("127.0.0.1", "root", "", "flight_reservation_system");

/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}
if(isset($_POST['submit'])){

$d=$_POST['departure'];
}
echo "<h1> Available Flights from '{$d}'</h1>"; 
$query = "SELECT * from flight where origin ='{$d}' order by total_fare";
	  if ($result = mysqli_query($link, $query)) {
		  /* fetch associative array */
    while ($row = mysqli_fetch_row($result)) {
        
	echo"<td class='c1'>";
	echo $row[0];
	echo"</td>";
	echo"<td class='c2'>";
	echo $row[1];
	echo"</td>";
	echo"<td class='c3'>";
	echo $row[2];
	echo"</td>";
	echo"<td class='c4'>";
	echo $row[3];
	echo"</td>";
	echo"<td>";
    echo $row[4];
    echo"</td><td>";
	echo  "<a href='passenger.html'><input type='submit' value='book'></a> </td></tr>";
    
    }
      }
          
    /* free result set */
    mysqli_free_result($result);
		  /* close connection */
mysqli_close($link);
	   ?>
      
	</table>
    <div class="tyr">
      <p><a href="reservation.html"><input type="button" value="back"/></a></p>
      </div>
	</body>
</html>
