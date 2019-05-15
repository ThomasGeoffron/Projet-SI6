<?php

$idProduit = $_POST['IDaj'];
$modele = $_POST['modele'];
$nom = $_POST['nomProd'];
$pu = (float)$_POST['pu'];
$qte = $_POST['qte'];
$BM = $_POST['BM'];
$BC = $_POST['BC'];
$marque = (int)$_POST['marque'];
$instru = (int)$_POST['instru'];

try{
	if(isset($_POST['ajout'])){
		$cnx = new PDO("mysql:host=localhost;dbname=issoumann","root","");
	
		$cnx->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
		
		$pdostat=$cnx->prepare("insert into Acoustique values(:id, :modele, :nom, :pu , :qte, :BM, :BC, :marque, :instru)");
		
		$pdostat->execute(array(':id' => $idProduit,
								':modele' => $modele,
								':nom' => $nom,
								':pu' => $pu,
								':qte' => $qte,
								':BM' => $BM,
								':BC' => $BC,
								':marque' => $marque,
								':instru' => $instru));
		
		header("Location: ../php/listeProduit.php");
	}
}

catch(PDOException $event){
	echo "Erreur : " . $event->getMessage() . "<br/>";
	/* header() : commande de redirection */
}

?>
