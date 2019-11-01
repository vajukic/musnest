<?php include("includes/includedFiles.php"); 
/* J-> Dodeljujemo  vrednost ID varijabli albumId; Ukoliko nema podesen Id preusmericemo ga na Index.php */ 
if(isset($_GET['id'])) {
	$albumId = $_GET['id'];
}
else {
	header("Location: index.php");
}
// J-> Dve promenljive iz Klase Album moraju da se podudaraju (ne po nazivu vec da se odnose na isto) sa promenljivim iz konstruktora kalse Artist
$album = new Album($con, $albumId);
$artist = $album->getArtist();
?>

<div class="entityInfo">

	<div class="leftSection">
		<img src="<?php echo $album->getArtworkPath(); ?>">
	</div>

	<div class="rightSection">
		<h2><?php echo $album->getTitle(); ?></h2>
		<p>By <?php echo $artist->getName(); ?></p>
		<p><?php echo $album->getNumberOfSongs(); ?> songs</p>

	</div>

</div>

<!-- J-> Ovde dodajemo pojedinacne pesme iz albuma  -->
<div class="tracklistContainer">
	<ul class="tracklist">
		
		<?php
		$songIdArray = $album->getSongIds();

		$i = 1;
// J-> ide kroz sogngIdArray i svaki put mu dodeljuje songId
		foreach($songIdArray as $songId) {

			$albumSong = new Song($con, $songId);
			$albumArtist = $albumSong->getArtist();
// J-> Dodajemo dugme za pustanje pojedinacne pesme iz albuma; Dodajemo naziv albuma i izvodjaca; Tri tackice za dodavanje opcija
		echo 	"<li class='tracklistRow'>
					<div class='trackCount'>
						<img class='play' src='assets/images/icons/play-white.png' onclick='setTrack(\"" . $albumSong->getId() . "\", tempPlaylist, true)'>
						<span class='trackNumber'>$i</span>
					</div>

					<div class='trackInfo'>
						<span class='trackName'>" . $albumSong->getTitle() . "</span>
						<span class='artistName'>" . $albumArtist->getName() . "</span>
					</div>

					<div class='trackOptions'>
						<img class='optionsButton' src='assets/images/icons/more.png'>
					</div>

					<div class='trackDuration'>
						<span class='duration'>" . $albumSong->getDuration() . "</span>
					</div>
				</li>";

			$i = $i + 1;
		}

		?>

		<script>
			var tempSongIds = '<?php echo json_encode($songIdArray); ?>';
			tempPlaylist = JSON.parse(tempSongIds);
		</script>

	</ul>
</div>