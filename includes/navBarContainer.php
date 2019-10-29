<nav id="navForMobile" class="navbar navbar-expand-sm navbar-dark fixed-top d-sm-none" style="background-color: black;">
	<span class="navbar-brand" onclick="openPage('index.php')" class="logo">
		<img src="assets/images/icons/logo.png">
	</span>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapseid" style="border: 2px solid white;">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="navbar-collapse collapse" id="collapseid">
		<ul class="navbar-nav text-right">
			<li class="nav-item">
				<span role="link" tabindex="0" onclick="openPage('browse.php')" class="navItemLink text-white">Browse</span>
			</li>
			<li class="nav-item">
				<span role="link" tabindex="0" onclick="openPage('yourMusic.php')" class="navItemLink text-white">Your Music</span>
			</li>
			<li class="nav-item">
				<span role="link" tabindex="0" onclick="logout()" class="navItemLink text-white">Logout</span>
			</li>
		</ul>
	</div>
</nav>

<script>
	$("#collapseid li").click(function(){
    	$(this).parent().hide();
	});
	
	$(".navbar-toggler").click(function(){
    	$(".navbar-nav").show();
	});
</script>
		
<div id="navBarContainer">
	<nav class="navBar">

		<span role="link" tabindex="0" onclick="openPage('index.php')" class="logo" style="outline: none;">
			<img src="assets/images/icons/logo.png" style="width: 60px; float: left; cursor: pointer;">
		</span>
		
		<div class="group">
			<div class="navItem" style="padding: 10px 0; font-size: 18px; font-weight: 700; display: block; letter-spacing: 1px; position: relative; text-align: left; cursor: pointer;">
				<span role="link" tabindex="0" onclick="openPage('browse.php')" class="navItemLink" style="outline: none;">Browse</span>
			</div>

			<div class="navItem" style="padding-bottom: 10px; font-size: 18px; font-weight: 700; display: block; letter-spacing: 1px; position: relative; text-align: left; cursor: pointer;">
				<span role="link" tabindex="0" onclick="openPage('yourMusic.php')" class="navItemLink" style="outline: none;">Your Music</span>
			</div>

			<div class="navItem" style="font-size: 18px; font-weight: 700; display: block; letter-spacing: 1px; position: relative; text-align: left; cursor: pointer;">
				<span role="link" tabindex="0" onclick="logout()" class="navItemLink" style="outline: none;">Logout</span>
			</div>

		</div>

	</nav>
</div>