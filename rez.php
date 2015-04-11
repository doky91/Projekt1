<!DOCTYPE html>


<html>
<head> <title>Rezervacija!</title> 
<link rel="stylesheet" href="bootstrap/css/bootstrap.css"  type="text/css"/>
<link rel="stylesheet" href="mojcss.css"  type="text/css"/>
</head>


<body>
<?php
 /*svi podaci poslani iz forme metodom post*/
	$broj=$_POST['broj'];
	$datum=$_POST['datum'];
	$vrijeme=$_POST['vrijeme'];
	$ime=$_POST['ime'];
	$kontakt=$_POST['kontakt'];
/*podaci za spajanje*/
	$host="localhost";
	$username="root";
	$password="";
	$nazivbaze="restoran";

/*spajanje na bazu*/
	$konekcija = mysqli_connect($host, $username, $password, $nazivbaze) 
				or die('Ne mogu se spojiti na server!'); 
	$konekcija->set_charset('utf8');
	$query =  "INSERT INTO `rezervacija`(`broj`, `datum`, `vrijeme`, `ime`, `kontakt`) VALUES 
				('$broj','$datum','$vrijeme','$ime','$kontakt')";
				
	if($result = mysqli_query($konekcija, $query)) 

	echo "Uspješno uneseno! ";
	else echo "Pogreška!";

echo "<a href='index.php'> Vratite se na ponudu </a>";
	?>

	</body>

<div id="footer">
			<div class=" navbar-fixed-bottom">
				<p class="muted credit"><center>Copyright Lane i lane, 2015.</center></p>
			</div>

</html>