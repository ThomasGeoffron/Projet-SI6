<?php
session_start();
session_destroy();
header('location: ../template/vueAccueil.html');
exit;
?>
