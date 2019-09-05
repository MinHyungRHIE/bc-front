<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<!-- Basic Page Needs
    ================================================== -->
	<title>Bucket Class</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">


	<!-- CSS
    ================================================== -->
	<link rel="stylesheet" href="/css/style.css">
	<link rel="stylesheet" href="/css/main-color.css" id="colors">
	<link rel="icon" type="image/png" sizes="32x32" href="/img/favicon-32x32.png">

	<!-- Postcodify 셋팅 -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js" charset="UTF-8"></script>
	<!--<script type="text/javascript" src="//cdn.poesis.kr/post/search.min.js" charset="UTF-8"></script>-->
	<!--[if IE 6]>
	<script type="text/javascript" src="http://cdn.poesis.kr/post/search.min.js"></script><![endif]-->
	<link rel="stylesheet" type="text/css" href="//cdn.poesis.kr/post/search.css" media="all" />
	<link rel="stylesheet" href="/css/tags.css">

	<!--hashtag	-->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
	<script type="text/javascript" src="/js/tags.js"></script>
	<script>
		$(function() {
			$("#testInput").tags({
				unique: true,
				maxTags: 5,
			});
		});
	</script>
</head>

<body>

<!-- Wrapper -->
<div id="wrapper">

	<!-- Header Container
    ================================================== -->
	<header id="header-container" class="fixed fullwidth dashboard">

		<!-- Header -->
		<div id="header" class="not-sticky">
			<div class="container">

				<!-- Left Side Content -->
				<div class="left-side">

					<!-- Logo -->
					<div id="logo">
						<a href="/"><img src="/img/bucketClass.png" alt=""></a>
						<a href="/" class="dashboard-logo"><img src="/img/bucketClass.png" alt=""></a>
					</div>

					<!-- Mobile Navigation -->
					<div class="menu-trigger">
						<button class="hamburger hamburger--collapse" type="button">
						<span class="hamburger-box">
							<span class="hamburger-inner"></span>
						</span>
						</button>
					</div>

					<!-- Main Navigation -->
					<nav id="navigation" class="style-1">
						<ul id="responsive">

							<li><a href="#">Home</a>
								<ul>
									<li><a href="index.html">Home 1</a></li>
									<li><a href="index-2-airbnb.html">Home 2 (Airbnb)</a></li>
									<li><a href="index-3.html">Home 3</a></li>
									<li><a href="index-4.html">Home 4</a></li>
									<li><a href="index-5.html">Home 5</a></li>
									<li><a href="index-6.html">Home 6</a></li>
								</ul>
							</li>

							<li><a href="#">Listings</a>
								<ul>
									<li><a href="#">List Layout</a>
										<ul>
											<li><a href="listings-list-with-sidebar.html">With Sidebar</a></li>
											<li><a href="listings-list-full-width.html">Full Width</a></li>
											<li><a href="listings-list-full-width-with-map.html">Full Width + Map</a></li>
										</ul>
									</li>
									<li><a href="#">Grid Layout</a>
										<ul>
											<li><a href="listings-grid-with-sidebar-1.html">With Sidebar 1</a></li>
											<li><a href="listings-grid-with-sidebar-2.html">With Sidebar 2</a></li>
											<li><a href="listings-grid-full-width.html">Full Width</a></li>
											<li><a href="listings-grid-full-width-with-map.html">Full Width + Map</a></li>
										</ul>
									</li>
									<li><a href="#">Half Screen Map</a>
										<ul>
											<li><a href="listings-half-screen-map-list.html">List Layout</a></li>
											<li><a href="listings-half-screen-map-grid-1.html">Grid Layout 1</a></li>
											<li><a href="listings-half-screen-map-grid-2.html">Grid Layout 2</a></li>
										</ul>
									</li>
									<li><a href="#">Single Listings</a>
										<ul>
											<li><a href="listings-single-page.html">Single Listing 1</a></li>
											<li><a href="listings-single-page-2.html">Single Listing 2</a></li>
											<li><a href="listings-single-page-3.html">Single Listing 3</a></li>
										</ul>
									</li>
								</ul>
							</li>

							<li><a class="current" href="#">User Panel</a>
								<ul>
									<li><a href="dashboard.html">Dashboard</a></li>
									<li><a href="dashboard-messages.html">Messages</a></li>
									<li><a href="dashboard-bookings.html">Bookings</a></li>
									<li><a href="dashboard-wallet.html">Wallet</a></li>
									<li><a href="dashboard-my-listings.html">My Listings</a></li>
									<li><a href="dashboard-reviews.html">Reviews</a></li>
									<li><a href="dashboard-bookmarks.html">Bookmarks</a></li>
									<li><a href="dashboard-add-listing.html">Add Listing</a></li>
									<li><a href="dashboard-my-profile.html">My Profile</a></li>
									<li><a href="dashboard-invoice.html">Invoice</a></li>
								</ul>
							</li>

							<li><a href="#">Pages</a>
								<div class="mega-menu mobile-styles three-columns">

									<div class="mega-menu-section">
										<ul>
											<li class="mega-menu-headline">Pages #1</li>
											<li><a href="pages-user-profile.html"><i class="sl sl-icon-user"></i> User Profile</a></li>
											<li><a href="pages-booking.html"><i class="sl sl-icon-check"></i> Booking Page</a></li>
											<li><a href="pages-add-listing.html"><i class="sl sl-icon-plus"></i> Add Listing</a></li>
											<li><a href="pages-blog.html"><i class="sl sl-icon-docs"></i> Blog</a></li>
										</ul>
									</div>

									<div class="mega-menu-section">
										<ul>
											<li class="mega-menu-headline">Pages #2</li>
											<li><a href="pages-contact.html"><i class="sl sl-icon-envelope-open"></i> Contact</a></li>
											<li><a href="pages-coming-soon.html"><i class="sl sl-icon-hourglass"></i> Coming Soon</a></li>
											<li><a href="pages-404.html"><i class="sl sl-icon-close"></i> 404 Page</a></li>
											<li><a href="pages-masonry-filtering.html"><i class="sl sl-icon-equalizer"></i> Masonry Filtering</a></li>
										</ul>
									</div>

									<div class="mega-menu-section">
										<ul>
											<li class="mega-menu-headline">Other</li>
											<li><a href="pages-elements.html"><i class="sl sl-icon-settings"></i> Elements</a></li>
											<li><a href="pages-pricing-tables.html"><i class="sl sl-icon-tag"></i> Pricing Tables</a></li>
											<li><a href="pages-typography.html"><i class="sl sl-icon-pencil"></i> Typography</a></li>
											<li><a href="pages-icons.html"><i class="sl sl-icon-diamond"></i> Icons</a></li>
										</ul>
									</div>

								</div>
							</li>

						</ul>
					</nav>
					<div class="clearfix"></div>
					<!-- Main Navigation / End -->

				</div>
				<!-- Left Side Content / End -->

				<!-- Right Side Content / End -->
				<div class="right-side">
					<!-- Header Widget -->
					<div class="header-widget">

						<!-- User Menu -->
						<div class="user-menu">
							<div class="user-name"><span><img src="" alt=""></span>Hi!</div>
							<ul>
								<li><a href="dashboard.html"><i class="sl sl-icon-settings"></i> Dashboard</a></li>
								<li><a href="dashboard-messages.html"><i class="sl sl-icon-envelope-open"></i> Messages</a></li>
								<li><a href="dashboard-bookings.html"><i class="fa fa-calendar-check-o"></i> Bookings</a></li>
								<li><a href="index.html"><i class="sl sl-icon-power"></i> Logout</a></li>
							</ul>
						</div>

						<a href="dashboard-add-listing.html" class="button border with-icon">Add Listing <i class="sl sl-icon-plus"></i></a>
					</div>
					<!-- Header Widget / End -->
				</div>
				<!-- Right Side Content / End -->

			</div>
		</div>
		<!-- Header / End -->

	</header>
	<div class="clearfix"></div>
	<!-- Header Container / End -->


	<!-- Dashboard -->
	<div id="dashboard">

		<!-- Navigation
        ================================================== -->

		<!-- Responsive Navigation Trigger -->
		<a href="#" class="dashboard-responsive-nav-trigger"><i class="fa fa-reorder"></i> Dashboard Navigation</a>

		<div class="dashboard-nav">
			<div class="dashboard-nav-inner">

				<ul data-submenu-title="Main">
					<li><a href="dashboard.html"><i class="sl sl-icon-settings"></i> Dashboard</a></li>
					<li><a href="dashboard-messages.html"><i class="sl sl-icon-envelope-open"></i> Messages <span class="nav-tag messages">2</span></a></li>
					<li><a href="dashboard-bookings.html"><i class="fa fa-calendar-check-o"></i> Bookings</a></li>
					<li><a href="dashboard-wallet.html"><i class="sl sl-icon-wallet"></i> Wallet</a></li>
				</ul>

				<ul data-submenu-title="Listings">
					<li><a><i class="sl sl-icon-layers"></i> My Listings</a>
						<ul>
							<li><a href="dashboard-my-listings.html">Active <span class="nav-tag green">6</span></a></li>
							<li><a href="dashboard-my-listings.html">Pending <span class="nav-tag yellow">1</span></a></li>
							<li><a href="dashboard-my-listings.html">Expired <span class="nav-tag red">2</span></a></li>
						</ul>
					</li>
					<li><a href="dashboard-reviews.html"><i class="sl sl-icon-star"></i> Reviews</a></li>
					<li><a href="dashboard-bookmarks.html"><i class="sl sl-icon-heart"></i> Bookmarks</a></li>
					<li class="active"><a href="dashboard-add-listing.html"><i class="sl sl-icon-plus"></i> Add Listing</a></li>
				</ul>

				<ul data-submenu-title="Account">
					<li><a href="dashboard-my-profile.html"><i class="sl sl-icon-user"></i> My Profile</a></li>
					<li><a href="index.html"><i class="sl sl-icon-power"></i> Logout</a></li>
				</ul>

			</div>
		</div>
		<!-- Navigation / End -->


		<!-- Content
        ================================================== -->
		<div class="dashboard-content">

			<!-- Titlebar -->
			<div id="titlebar">
				<div class="row">
					<div class="col-md-12">
						<!--현재 문서 마지막 저장시간 리턴-->
						<script>document.write("현재 문서의 마지막 저장 시간:"+document.lastModified+ "<br />");</script>
						<h2>서비스 만들기</h2>

						<!-- Breadcrumbs -->
						<nav id="breadcrumbs">
							<ul>
								<li><a href="#">홈</a></li>
								<li><a href="#">설정</a></li>
								<li>서비스 만들기</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-12">

					<div id="add-listing">

						<form id="form1" name="form1">
							<!-- Section -->
							<div class="add-listing-section">

								<!-- Headline -->
								<div class="add-listing-headline">
									<h3><i class="sl sl-icon-doc"></i> 기본 정보</h3>
								</div>

								<!-- Title -->
								<div class="row with-forms">
									<div class="col-md-12">
										<!--								<h5> 별칭 <i class="tip" data-tip-content="호스트에게만 표시됩니다."></i></h5>-->
										<!--								<input class="search-field" type="text" value=""/>-->
										<h5> 이벤트명 <i class="tip" data-tip-content="제공하실 이벤트명을 입력하세요."></i></h5>
										<input class="search-field" id="search-field" name="serviceTitle" type="text" value=""/>
									</div>
								</div>

								<!-- Row -->
								<div class="row with-forms">

									<!-- Status -->
									<div class="col-md-6">
										<h5>카테고리</h5>
										<select class="chosen-select-no-single" name="categorySubject">
											<option label="blank">카테고리 선택</option>
											<option>요리</option>
											<option>외국어</option>
											<option>헬스/웰빙</option>
											<option>비즈니스</option>
											<option>일상생활</option>
											<option></option>
										</select>

										<!-- Panel Dropdown -->

										<div class="panel-dropdown wide float-left">
											<i class="tip" data-tip-content="선택사항 입니다."></i><a href="#">카테고리 상세 지정</a>
											<script>document.write("현제 페이지 마지막 저장 시간:"+document.lastModified+ "<br />");</script>
											<div class="panel-dropdown-content checkboxes">

												<!-- Checkboxes -->
												<div class="row">
													<div class="col-md-6">
														<div style="margin-bottom: 25px">
															<h4>유형</h4>
															<input id="check-a1" type="checkbox" name="categoryType">
															<label for="check-a1">체험</label>
															<input id="check-b1" type="checkbox" name="categoryType">
															<label for="check-b1">교육</label>
														</div>
														<div>
															<h4>기간</h4>
															<input id="check-c1" type="checkbox" name="categoryPeriod">
															<label for="check-c1">정기</label>
															<input id="check-d1" type="checkbox" name="categoryPeriod">
															<label for="check-d1">비정기</label>
														</div>
													</div>

													<div class="col-md-6">
														<div style="margin-bottom: 25px">
															<h4>규모</h4>
															<input id="check-e1" type="checkbox" name="categoryScale" >
															<label for="check-e1">개인(1:1)</label>
															<input id="check-f1" type="checkbox" name="categoryScale" >
															<label for="check-f1">그룹(1:N)</label>
														</div>
														<div>
															<h4>장소</h4>
															<input id="check-g1" type="checkbox" name="categoryPlace" >
															<label for="check-g1">실내</label>
															<input id="check-h1" type="checkbox" name="categoryPlace" >
															<label for="check-h1">실외</label>
														</div>
													</div>
												</div>
												<script>$('input[type="checkbox"]').on('change', function() {
													$(this).siblings('input[type="checkbox"]').prop('checked', false);
												});</script>
												<!-- Buttons -->
												<div class="panel-buttons">
													<button class="panel-cancel">취소</button>
													<button class="panel-apply">등록</button>
												</div>

											</div>
										</div>

										<!-- Panel Dropdown / End -->
									</div>

									<!-- Type -->
									<div class="col-md-6">
										<h5>해시테그 <i class="tip" data-tip-content="최대 5개의 해시테그를 선택하세요" ></i></h5>

										<!--								<div type="text" class="tags-input" data-name="tags-input"></div>-->
										<input type="text" id="tags-wrapper" name="hashTag"/>

									</div>
								</div>
								<!-- Row / End -->

							</div>
							<!-- Section / End -->




							<!-- Section -->
							<div class="add-listing-section margin-top-45">

								<!-- Headline -->
								<div class="add-listing-headline">
									<h3><i class="sl sl-icon-docs"></i> 이벤트 설명<i class="tip" data-tip-content="게스트가 참여하게 될 이벤트 활동을 구체적으로 설명하세요."></i></h3>

								</div>

								<!-- Description -->
								<div class="form">
									<h5>이벤트 소개<i class="tip" data-tip-content="이벤트를 처음부터 끝까지 실제 진행 순서대로 설명해 주세요."></i></h5>
									<textarea class="WYSIWYG" name="serviceDescription" cols="40" rows="3" id="summary" name="serviceDescription" spellcheck="true" placeholder="각 활동에 대한 설명을 실제 진행 순서대로 써주세요."></textarea>
								</div>

								<!-- Row -->
								<!--						<div class="row with-forms">-->

								<!--							&lt;!&ndash; Phone &ndash;&gt;-->
								<!--							<div class="col-md-4">-->
								<!--								<h5>휴대폰 번호 <span>(옵션)</span></h5>-->
								<!--								<input type="text">-->
								<!--							</div>-->

								<!--							&lt;!&ndash; Website &ndash;&gt;-->
								<!--							<div class="col-md-4">-->
								<!--								<h5>홈페이지 <span>(옵션)</span></h5>-->
								<!--								<input type="text">-->
								<!--							</div>-->

								<!--							&lt;!&ndash; Email Address &ndash;&gt;-->
								<!--							<div class="col-md-4">-->
								<!--								<h5>E-mail <span>(옵션)</span></h5>-->
								<!--								<input type="text">-->
								<!--							</div>-->

								<!--						</div>-->
								<!--						&lt;!&ndash; Row / End &ndash;&gt;-->


								<!--						&lt;!&ndash; Row &ndash;&gt;-->
								<!--						<div class="row with-forms">-->

								<!--							&lt;!&ndash; Phone &ndash;&gt;-->
								<!--							<div class="col-md-4">-->
								<!--								<h5 class="fb-input"><i class="fa fa-facebook-square"></i> 페이스북 <span>(옵션)</span></h5>-->
								<!--								<input type="text" placeholder="https://www.facebook.com/">-->
								<!--							</div>-->

								<!--							&lt;!&ndash; Website &ndash;&gt;-->
								<!--							<div class="col-md-4">-->
								<!--								<h5 class="twitter-input"><i class="fa fa-twitter"></i> 트위터 <span>(옵션)</span></h5>-->
								<!--								<input type="text" placeholder="https://www.twitter.com/">-->
								<!--							</div>-->

								<!--							&lt;!&ndash; Email Address &ndash;&gt;-->
								<!--							<div class="col-md-4">-->
								<!--								<h5 class="gplus-input"><i class="fa fa-google-plus"></i> 구글 플러스 <span>(옵션)</span></h5>-->
								<!--								<input type="text" placeholder="https://plus.google.com">-->
								<!--							</div>-->

								<!--						</div>-->
								<!-- Row / End -->

							</div>
						</form>
						<!-- Section / End -->






						<!-- Section -->
						<div class="add-listing-section margin-top-45">

							<!-- Headline -->
							<div class="add-listing-headline">
								<h3><i class="sl sl-icon-picture"></i> 사진</h3>
							</div>

							<!-- Dropzone -->
							<div class="submit-section">
								<form action="/" method="post" class="dropzone" id="my-awesome-dropzone" type="file"></form>
							</div>

						</div>
						<!-- Section / End -->


						<form id="form2" name="form2">
							<!-- Section -->
							<div class="add-listing-section margin-top-45">

								<!-- Headline -->
								<div class="add-listing-headline">
									<h3><i class="sl sl-icon-book-open"></i> 계좌정보</h3>
									<!-- Switcher -->
									<label class="switch"><input type="checkbox" checked><span class="slider round"></span></label>
								</div>

								<!-- Switcher ON-OFF Content -->
								<div class="switcher-content">

									<div class="row">
										<div class="col-md-12">
											<table id="pricing-list-container">
												<tr class="pricing-list-item pattern">
													<td>
														<div class="fm-move"><i class="sl sl-icon-cursor-move"></i></div>
														<div class="col-md-5">
															<select class="chosen-select" data-placeholder="은행명" id="chosen-select" name="accountBank">
																<option label="은행"></option>
																<option>제주 은행</option>
																<option>신한 은행</option>
																<option>SC제일 은행</option>
																<option>우리 은행</option>
																<option>대구 은행</option>
																<option>광주 은행</option>
																<option>한국씨티 은행</option>
																<option>전북 은행</option>
																<option>KEB하나 은행</option>
																<option>국민 은행</option>
																<option>부산 은행</option>
																<option>경남 은행</option>
																<option>케이뱅크 은행</option>
																<option>한국카카오 은행</option>
																<option>한국산업 은행</option>
																<option>농협 은행</option>
																<option>기업 은행</option>
																<option>한국수출입 은행</option>
																<option>수협 은행</option>
															</select>
														</div>
														<div class="col-md-5">
															<div class="fm-input pricing-ingredients"><input type="text" placeholder="계좌번호" id="account_num"  name = "accountNumber"/></div></div>

														<!--												<div class="fm-input pricing-price"><input type="text" placeholder="Price" data-unit="USD" /></div>-->
														<!--												<div class="fm-close"><a class="delete" href="#"><i class="fa fa-remove"></i></a></div>-->

													</td>
												</tr>
											</table>
											<!--									<a href="#" class="button add-pricing-list-item">은행 및 계좌 추가</a>-->
											<!--									<a href="#" class="button add-pricing-submenu">Add Category</a>-->
										</div>
									</div>

								</div>
								<!-- Switcher ON-OFF Content / End -->

							</div>

							<!-- Section / End -->


							<button class="button preview" id="saveButton" name="saveButton" type="submit"> 저장하기<i class="fa fa-arrow-circle-right"></i></button>
							<!--					<a href="#" class="button preview" onclick="return checkExistData()">저장하기 <i class="fa fa-arrow-circle-right"></i></a>-->
						</form>

					</div>
				</div>

				<!-- Copyrights -->
				<div class="col-md-12">
					<div class="footer-copyright text-center py-3"> © 2019 BucketList. All Rights Reserved.</div>
				</div>

			</div>

		</div>
		<!-- Content / End -->


	</div>
	<!-- Dashboard / End -->


</div>
<!-- Wrapper / End -->


<!-- Scripts
================================================== -->
<script type="text/javascript" src="/js/jquery-2.2.0.min.js"></script>
<script type="text/javascript" src="/js/mmenu.min.js"></script>
<script type="text/javascript" src="/js/chosen.min.js"></script>
<script type="text/javascript" src="/js/slick.min.js"></script>
<script type="text/javascript" src="/js/rangeslider.min.js"></script>
<script type="text/javascript" src="/js/magnific-popup.min.js"></script>
<script type="text/javascript" src="/js/waypoints.min.js"></script>
<script type="text/javascript" src="/js/counterup.min.js"></script>
<script type="text/javascript" src="/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="/js/tooltips.min.js"></script>
<script type="text/javascript" src="/js/custom.js"></script>
<script type="text/javascript" src="/js/apis.js"></script>

<!-- Opening hours added via JS (this is only for demo purpose) -->
<script>
	$(".opening-day.js-demo-hours .chosen-select").each(function() {
		$(this).append(''+
				'<option></option>'+
				'<option>Closed</option>'+
				'<option>1 AM</option>'+
				'<option>2 AM</option>'+
				'<option>3 AM</option>'+
				'<option>4 AM</option>'+
				'<option>5 AM</option>'+
				'<option>6 AM</option>'+
				'<option>7 AM</option>'+
				'<option>8 AM</option>'+
				'<option>9 AM</option>'+
				'<option>10 AM</option>'+
				'<option>11 AM</option>'+
				'<option>12 AM</option>'+
				'<option>1 PM</option>'+
				'<option>2 PM</option>'+
				'<option>3 PM</option>'+
				'<option>4 PM</option>'+
				'<option>5 PM</option>'+
				'<option>6 PM</option>'+
				'<option>7 PM</option>'+
				'<option>8 PM</option>'+
				'<option>9 PM</option>'+
				'<option>10 PM</option>'+
				'<option>11 PM</option>'+
				'<option>12 PM</option>');
	});
</script>

<!-- DropZone | Documentation: http://dropzonejs.com -->
<script type="text/javascript" src="/js/dropzone.js"></script>
<!-- hashtag js-->
<script type="text/javascript" src="/js/tags.js"></script>
<!-- my custom js -->
<script type="text/javascript" src="/js/custom.song.js"></script>

<!-- 각 데이터를 모아서 formdata를 submit으로 서버에 보냄-->
<script>
	var attachFiles = [];
	var form1 = document.querySelector('#form1');
	var form2 = document.querySelector('#form2');

	form2.addEventListener('submit', function(e) {
		e.preventDefault();

		const formData1 = new FormData(form1);
		const formData2 = new FormData(form2);

		console.log('form1 > ', Object.fromEntries(formData1));
		console.log('form2 > ', Object.fromEntries(formData2));
		console.log('attachFiles > ', attachFiles);

		formData1.append('serviceImgUri', attachFiles);
		formData1.append('accountBank', formData2.get('accountBank'));
		formData1.append('accountNumber', formData2.get('accountNumber'));

		console.log('formData1 > ', Object.fromEntries(formData1));

		Apis.postRequest('/provider/add-service',formData1).then(response => {
			if(response.res === "success"){
				alert("나의 수업 템플릿에 저장 되었습니다!");
				location.href = "/"; //원래 my-listing 페이지로 이동해야함
			}else {
				alert("다시 작성해주세요");
			}
		})

	});

	// Apis.postRequest(`/provider/add-service`, sendJson).then(response => {
	// 	if(response.res === "success"){
	// 		alert("나의 수업 템플릿에 저장 되었습니다!");
	// 		location.href = "/"; //원래 my-listing 페이지로 이동해야함
	// 	} else {
	// 		alert("다시 작성해주세요");
	// 	}
	// });

	$(function(){
		Dropzone.options.myAwesomeDropzone = {
			maxFilesize: 5,
			addRemoveLinks: true,
			dictResponseError: 'Server not Configured',
			acceptedFiles: ".png,.jpg,.gif,.bmp,.jpeg",
			init: function () {
				var self = this;
				// config
				self.options.addRemoveLinks = true;
				self.options.dictRemoveFile = "Delete";
				//New file added
				self.on("addedfile", function (file) {
					console.log('new file added ', file);
					attachFiles.push(file);
				});
				// Send file starts
				self.on("sending", function (file) {
					console.log('upload started', file);
					$('.meter').show();
				});
				// File upload Progress
				self.on("totaluploadprogress", function (progress) {
					console.log("progress ", progress);
					$('.roller').width(progress + '%');
				});
				self.on("queuecomplete", function (progress) {
					$('.meter').delay(999).slideUp(999);
				});
				// On removing file
				self.on("removedfile", function (file) {
					console.log(file);
				});
			}
		};
	})
</script>


</body>
</html>
<!-- 별칭 테이블이 없어서 주석처리함. 휴대폰번호, 홈페이지, email, 트위터 등 부분 사용하는 부분 없어서 주석처리함.-->
<!-- 계좌번호 varchar여서 input type을 text로 수정 -->
<!-- 계좌 및 계좌번호 단일로만 받기로 해서 add 버튼 삭제cv -->