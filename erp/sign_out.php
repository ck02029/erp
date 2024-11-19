<?php
// Start the session
session_start();
include("db_connect.php");

// Destroy the session to sign out the user
session_destroy();

// Redirect the user to the sign-in page
header('Location: auth.php');
exit();
?>
