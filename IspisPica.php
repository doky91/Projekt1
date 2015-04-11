<!DOCTYPE html>


	<html>
	<head> <title> Ponuda pića</title> 
		<link rel="stylesheet" href="bootstrap/css/bootstrap.css"  type="text/css"/>
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"  type="text/css"/>
		<link rel="stylesheet" href="bootstrap/css/justified-nav.css"  type="text/css"/>
		<link rel="stylesheet" href="bootstrap/css/bootstrap.max.css"  type="text/css"/>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Fauna+One&subset=latin,latin-ext' rel='stylesheet' type='text/css'>

		<link rel="stylesheet" href="mojcss.css"  type="text/css"/>
		</head>
		

		<body>
			<div class="container">
				<div class="row">
					<div class="span12"> 
							<h1> <a href="index.php">Lane i Lane</a></h1></div>

					</div>

					<div class="row">
						<div class="span12"> 
							<ul class="nav nav-tabs">
								<li><a href="IspisJela.php">Hrana</a></li>
								<li><a href="IspisPica.php">Piće</a></li>
								<li><a href="Rezervacija.html">Rezervacija</a></li>
								<li><a href="Onama.html">O nama</a></li>
							</ul>
						</div>
					</div>

					<div class="row">
						<h2> U našoj bogatoj ponudi nudimo sljedeća pića:

						</div>

<?php

/*podaci za spajanje na bazu*/
  $host="localhost";
  $username="root";
  $password="";
  $nazivbaze="restoran";

/*spajanje na bazu*/
$konekcija = mysqli_connect($host, $username, $password, $nazivbaze) 
      or die('Ne mogu se spojiti na server!'); 
$konekcija->set_charset('utf8');
$query =  "SELECT naziv,cijena FROM pice";
      
$result = mysqli_query($konekcija, $query);

/*ispis rezultata iz baze*/
while($row = mysqli_fetch_array($result)) {
echo"<div class='row'>";
 echo "<div class='span6'>{$row['naziv']}</div><div class='span6'>{$row['cijena']} kn</div></div>" ;


}
					
?>

							
						</div>
					</div>
				</div>
			</body>
		</div>

		<div id="footer">
			<div class=" navbar-fixed-bottom">
				<p class="muted credit"><center>Copyright Lane i lane, 2015.</center></p>
			</div>

			</html>