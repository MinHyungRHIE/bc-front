<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE html>
<head>

<!-- Basic Page Needs -->
<title>BucketClass</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS -->
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/main-color.css" id="colors">
<link rel="icon" type="image/png" sizes="32x32"
	href="../img/favicon-32x32.png">

</head>

<body>

	<!-- Wrapper -->
	<div id="wrapper">
	
		<!-- =================================== -->
		<!-- ============ Tiles Header ============ -->
		<!-- =================================== -->

		<div class="content">

		<!-- Banner -->
		<div class="main-search-container"
			data-background-image="../img/main-study.jpg">
			<div class="main-search-inner">

				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h2>가까운 지역의 수업을 찾아보세요!</h2>

							<div class="main-search-input">

								<div class="main-search-input-item">
									<input type="text" placeholder="어떤 수업을 찾으시나요?" value="" />
								</div>

								<div class="main-search-input-item location">
									<div id="autocomplete-container">
										<input id="autocomplete-input" type="text"
											placeholder="지역을 선택하세요">
									</div>
									<a href="#"><i class="fa fa-map-marker"></i></a>
								</div>

								<div class="main-search-input-item">
									<select data-placeholder="All Categories" class="chosen-select">
										<option>모든 카테고리</option>
										<option>요리</option>
										<option>외국어</option>
										<option>헬스케어</option>
										<option>예술</option>
										<option>일상생활</option>
									</select>
								</div>

								<button class="button"
									onclick="window.location.href='listings-half-screen-map-list.html'">검색</button>

							</div>
						</div>
					</div>
				</div>

			</div>
		</div>


		<!-- Content -->
		<div class="container">
			<div class="row">

				<div class="col-md-12">
					<h3 class="headline centered margin-top-75">인기 서비스</h3>
				</div>

			</div>
		</div>


		<!-- Categories Carousel -->
		<div class="fullwidth-carousel-container margin-top-25">
			<div class="fullwidth-slick-carousel category-carousel">

				<!-- Item -->
				<div class="fw-carousel-item">
					<div class="category-box-container">
						<a href="listings-half-screen-map-grid-1.html"
							class="category-box" data-background-image="../img/art.jpg">
							<div class="category-box-content">
								<h3>예술</h3>
								<span>64 listings</span>
							</div> <span class="category-box-btn">Browse</span>
						</a>
					</div>
				</div>

				<!-- Item -->
				<div class="fw-carousel-item">
					<div class="category-box-container">
						<a href="listings-half-screen-map-grid-1.html"
							class="category-box" data-background-image="../img/language.jpg">
							<div class="category-box-content">
								<h3>외국어</h3>
								<span>67 listings</span>
							</div> <span class="category-box-btn">Browse</span>
						</a>
					</div>
				</div>

				<!-- Item -->
				<div class="fw-carousel-item">
					<div class="category-box-container">
						<a href="listings-half-screen-map-grid-1.html"
							class="category-box" data-background-image="../img/gym.jpg">
							<div class="category-box-content">
								<h3>헬스케어</h3>
								<span>27 listings</span>
							</div> <span class="category-box-btn">Browse</span>
						</a>
					</div>
				</div>

				<!-- Item -->
				<div class="fw-carousel-item">
					<div class="category-box-container">
						<a href="listings-half-screen-map-list.html" class="category-box"
							data-background-image="../img/business.jpg">
							<div class="category-box-content">
								<h3>비즈니스</h3>
								<span>22 listings</span>
							</div> <span class="category-box-btn">Browse</span>
						</a>
					</div>
				</div>

				<!-- Item -->
				<div class="fw-carousel-item">
					<div class="category-box-container">
						<a href="listings-half-screen-map-list.html" class="category-box"
							data-background-image="../img/cooking.jpg">
							<div class="category-box-content">
								<h3>요리</h3>
								<span>130 listings</span>
							</div> <span class="category-box-btn">Browse</span>
						</a>
					</div>
				</div>

				<div class="fw-carousel-item">
					<div class="category-box-container">
						<a href="listings-half-screen-map-grid-1.html"
							class="category-box" data-background-image="../img/clean.jpg">
							<div class="category-box-content">
								<h3>일상생활</h3>
								<span>64 listings</span>
							</div> <span class="category-box-btn">Browse</span>
						</a>
					</div>
				</div>

			</div>
		</div>
		<!-- Categories Carousel / End -->

		<!-- Info Section -->
		<div class="container">

			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<h2 class="headline centered margin-top-80">
						故 신영복 선생 「스승과 제자」 <span class="margin-top-25">"우리는 저마다 누군가의
							제자이면서 동시에 누군가의 스승입니다. 배우고 가르치는 사제(師弟)의 연쇄(連鎖)를 확인하는 것이 곧 자기(自己)의
							발견입니다."</span>
					</h2>
				</div>
			</div>
		</div>
	</div>
	
		<!-- =================================== -->
		<!-- ============ Tiles Footer ============ -->
		<!-- =================================== -->
		

		<!-- Back To Top Button -->
		<div id="backtotop">
			<a href="#"></a>
		</div>


	</div>
	<!-- Wrapper / End -->


	<!-- Scripts -->
	<script type="text/javascript" src="../js/jquery-2.2.0.min.js"></script>
	<script type="text/javascript" src="../js/mmenu.min.js"></script>
	<script type="text/javascript" src="../js/chosen.min.js"></script>
	<script type="text/javascript" src="../js/slick.min.js"></script>
	<script type="text/javascript" src="../js/rangeslider.min.js"></script>
	<script type="text/javascript" src="../js/magnific-popup.min.js"></script>
	<script type="text/javascript" src="../js/waypoints.min.js"></script>
	<script type="text/javascript" src="../js/counterup.min.js"></script>
	<script type="text/javascript" src="../js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="../js/tooltips.min.js"></script>
	<script type="text/javascript" src="../js/custom.js"></script>

	<!-- Google Autocomplete -->
	<script>
		function initAutocomplete() {
			var input = document.getElementById('autocomplete-input');
			var autocomplete = new google.maps.places.Autocomplete(input);

			autocomplete.addListener('place_changed', function() {
				var place = autocomplete.getPlace();
				if (!place.geometry) {
					window.alert("No details available for input: '"
							+ place.name + "'");
					return;
				}
			});

			if ($('.main-search-input-item')[0]) {
				setTimeout(function() {
					$(".pac-container").prependTo("#autocomplete-container");
				}, 300);
			}
		}
	</script>
	<script src="https://maps.googleapis.com/maps/api/js?libraries=places&callback=initAutocomplete"></script>


</body>
</html>