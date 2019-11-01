<?php 
include("includes/includedFiles.php"); 
?>

<!--<div class="buttonItems">
	<button class="button" style="outline: none;" onclick="logout()">LOGOUT</button>
</div>-->


<!-- J-> Ovde je dodat osnovni sadrzaj stranice-->

<h1 class="pageHeadingBig">Enjoy... :)</h1>

<!-- J-> gridViewContainer sadrzi presme iz albuma (konektujemo se sa bazom) -->

<div class="gridViewContainer">

	<?php
		$albumQuery = mysqli_query($con, "SELECT * FROM albums ORDER BY RAND() LIMIT 10");
/* J-> Pretvaramo podatake iz baze  u niz */
		while($row = mysqli_fetch_array($albumQuery)) {
			


/* J-> Postavljenja naziva i slike albuma; Obratiti paznju na navodnike duple i pojedinacne */
			echo "<div class='gridViewItem'>
					<span role='link' tabindex='0' onclick='openPage(\"album.php?id=" . $row['id'] . "\")' style='outline: none;'>
						<img src='" . $row['artworkPath'] . "' style='cursor: pointer;'>

						<div class='gridViewInfo'>"
							. $row['title'] .
						"</div>
					</span>

				</div>";



		}
	?>

</div>
