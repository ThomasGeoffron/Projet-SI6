<?php

$id = $_POST['ID'];

if(isset($_POST['suppr'])) {
	$cnx = new PDO("mysql:host=localhost;dbname=issoumann","root","");
		
	$cnx->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
		
	$pdostat=$cnx->prepare("DELETE FROM Acoustique WHERE refProduit = :id");
		
	$pdostat->execute(array(':id' => $id));
	
	$pdostat2=$cnx->prepare("DELETE FROM Electrique WHERE refProduit = :id");
	
	$pdostat2->execute(array(':id' => $id));
	
	header("Location: ../php/listeProduit.php");
}
	

?>
