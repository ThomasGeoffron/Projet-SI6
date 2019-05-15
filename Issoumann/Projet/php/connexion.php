<?php
session_start();

$login = $_POST['login'];
$passwd = $_POST['passwd'];

try{
	if(isset($_POST['connexion'])){
		if($login != '' && $passwd != ''){
			$mysqli = mysqli_connect("127.0.0.1", "root", "", "issoumann");
			if(!$mysqli){
				echo 'Erreur de connexion à la base de données';
			}
			else{
				$req = mysqli_query($mysqli, "SELECT * FROM Utilisateur WHERE email = '".$login."' AND mdp = '".$passwd."';");
				if(mysqli_num_rows($req)){
					$_SESSION['login'] = $login;
					header("Location: ../php/listeProduit.php");
					exit();
				}
				else{
					echo 'Login ou mot de passe érroné';
				}
			}
		}
		else{
			echo 'Champs incomplets !';
		}
	}
}

catch(PDOException $event){
	echo "Erreur : " . $event->getMessage() . "<br/>";
	/* header() : commande de redirection */
}

$mysqli->close();
?>
