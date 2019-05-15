<?php

$debut = <<<HTML
<html>
	<head>
		<title>Produits en stock - Issoumann</title>
		<meta charset="utf-8">
		<link href="../css/listeProduit.css" rel="stylesheet" type="text/css">
		<link href="../css/menubar.css" rel="stylesheet" type="text/css">
		<link href="../css/general.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div class="onglets">
			<nav>
				<ul>
					<li><a href="listeProduit.php">Produits</a></li>
					<li><a>Ajouter un produit</a>
						<ul class="submenu">
							<li><a href="../template/vueAjoutAcoustique.html">Acoustique</a></li>
							<li><a href="../template/vueAjoutElectrique.html">Électrique</a></li>
						</ul>
					</li>
					<li><a href="../template/vueAjoutCategorie.html">Ajouter une Catégorie</a></li>
					</li>
					<li><a href="../template/vueSuppressionProduit.html">Supprimer</a></li>
					<li><a href="deconnexion.php">Se déconnecter</a></li>	
				</ul>
			</nav>
		</div>
		
		<form action="../php/listeProduit.php" method="POST">
			
		<select name="marque">
			<option value="0" selected>-- Choisissez une marque --</option>
			<option value="1">Gibson</option>
			<option value="2">Fender</option>
			<option value="3">Yamaha</option>
			<option value="4">Ibanez</option>
			<option value="5">Harley Benton</option>
			<option value="6">Epiphone</option>
			<option value="7">Chapman Guitars</option>
		</select>
		
		<select name="instru">
			<option value="R" selected>-- Choisissez un instrument --</option>
			<option value="GA">Guitare Acoustique</option>
			<option value="GE">Guitare Électrique</option>
			<option value="BA">Basse Acoustique</option>
			<option value="BE">Basse Électrique</option>
		</select>
		
		<input type="submit" name="select_button" value="Recherche">
		</form>
		
		<form action="../php/rechercheProduit.php" method="POST">
			<input type="text" name="recherche_text" placeholder="Rechercher...">
			<input type="submit" name="recherche_button" value="OK">
		</form>		
		
		<table>
HTML;
echo $debut;

$recherche = $_POST['recherche_text'];

if(isset($_POST['recherche_button'])){
	$mysqli = mysqli_connect("127.0.0.1", "root", "", "issoumann");
	if(!$mysqli){
	echo 'Erreur de connexion à la base de données';
	}
	else{
		$req1 = mysqli_query($mysqli, "SELECT * FROM Acoustique WHERE libelle LIKE '%" . $recherche . "%';");
		$req2 = mysqli_query($mysqli, "SELECT * FROM Electrique WHERE libelle LIKE '%" . $recherche . "%';" );
		
		if(mysqli_num_rows($req1)){
			$tableau1_début = <<<HTML
	<table>
		<tr>
			<th>Référence du produit</th>
			<th>Marque</th>
			<th>Modele</th>
			<th>Libelle</th>
			<th>Prix Unitaire</th>
			<th>Quantité</th>
			<th>Bois du Manche</th>
			<th>Bois de la Caisse</th>
		</tr>
HTML;
	echo $tableau1_début;

			foreach($req1 as $ligne){
					echo '<tr>
							<td>'.$ligne['refProduit'].'</td>';
							if($ligne['idMarque'] == 1){
								echo '<td>Gibson</td>';
							}
							if($ligne['idMarque'] == 2){
								echo '<td>Fender</td>';
							}
							if($ligne['idMarque'] == 3){
								echo '<td>Yamaha</td>';
							}
							if($ligne['idMarque'] == 4){
								echo '<td>Ibanez</td>';
							}
							if($ligne['idMarque'] == 5){
								echo '<td>Harley Benton</td>';
							}
							if($ligne['idMarque'] == 6){
								echo '<td>Epiphone</td>';
							}
							if($ligne['idMarque'] == 7){
								echo '<td>Chapman Guitars</td>';
							}
							echo '<td>'.$ligne['modele'].'</td>
							<td>'.$ligne['libelle'].'</td>
							<td>'.$ligne['pu'].'</td>
							<td>'.$ligne['qte'].'</td>
							<td>'.$ligne['boisManche'].'</td>
							<td>'.$ligne['boisCaisse'].'</td>
						 </tr>';
				}
			
			$tableau1_fin = <<<HTML
	</table>
HTML;

	echo $tableau1_fin;
	
		}
		
		
		if(mysqli_num_rows($req2)){
			$tableau2_début = <<<HTML
	<table>
		<tr>
			<th>Référence du produit</th>
			<th>Marque</th>
			<th>Modele</th>
			<th>Libelle</th>
			<th>Prix Unitaire</th>
			<th>Quantité</th>
			<th>Bois du Manche</th>
			<th>Type de Micro</th>
		</tr>
HTML;

		echo $tableau2_début;

			foreach($req2 as $ligne){
					echo '<tr>
							<td>'.$ligne['refProduit'].'</td>';
							if($ligne['idMarque'] == 1){
								echo '<td>Gibson</td>';
							}
							if($ligne['idMarque'] == 2){
								echo '<td>Fender</td>';
							}
							if($ligne['idMarque'] == 3){
								echo '<td>Yamaha</td>';
							}
							if($ligne['idMarque'] == 4){
								echo '<td>Ibanez</td>';
							}
							if($ligne['idMarque'] == 5){
								echo '<td>Harley Benton</td>';
							}
							if($ligne['idMarque'] == 6){
								echo '<td>Epiphone</td>';
							}
							if($ligne['idMarque'] == 7){
								echo '<td>Chapman Guitars</td>';
							}
							echo '<td>'.$ligne['modele'].'</td>
							<td>'.$ligne['libelle'].'</td>
							<td>'.$ligne['pu'].'</td>
							<td>'.$ligne['qte'].'</td>
							<td>'.$ligne['boisManche'].'</td>
							<td>'.$ligne['micro'].'</td>
						 </tr>';
				}
			
			$tableau2_fin = <<<HTML
	</table>
HTML;

		echo $tableau2_fin;
		}
	}
}
$mysqli->close();

?>
