<?php
	class Artist {

		private $con;
		private $id;

		public function __construct($con, $id) {
			$this->con = $con;
			$this->id = $id;
		}

		public function getName() {
			$artistQuery = mysqli_query($this->con, "SELECT name FROM artists WHERE id='$this->id'");
			// if (!$result) { printf("Error: %s\n", mysqli_error($con)); exit(); } 
			$artist = mysqli_fetch_array($artistQuery);
			return $artist['name'];
		}
	}
?>