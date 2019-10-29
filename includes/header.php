<?php
include("includes/config.php");
include("includes/classes/Artist.php");
include("includes/classes/Album.php");
include("includes/classes/Song.php");

//session_destroy(); LOGOUT

if(isset($_SESSION['userLoggedIn'])) {
	$userLoggedIn = $_SESSION['userLoggedIn'];
	echo "<script>userLoggedIn='$userLoggedIn';</script>";
}
else {
	header("Location: register.php");
}

?>

<html>
<head>
	<title>Welcome to Musnest!</title>
	<link rel='shortcut icon' type='image/x-icon' href='favicon.ico'>
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<!--laki-->
	<meta name="viewport" content="width=device-width, maximum-scale=1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<!--laki-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="assets/js/script.js"></script>
</head>
<body>

	<!--<div class="buttonItems">
		<button class="button" style="outline: none;" onclick="logout()">LOGOUT</button>
	</div>-->

	<div id="mainContainer">

		<div id="topContainer">

			<?php include("includes/navBarContainer.php"); ?>

			<div id="mainViewContainer">

				<div id="mainContent">