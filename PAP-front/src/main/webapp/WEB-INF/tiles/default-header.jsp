<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>



<!-- Header Container -->
<header id="header-container">

	<!-- Header -->
	<div id="header">
		<div class="container">
			
			<!-- Left Side Content -->
			<div class="left-side">

				<!-- Logo -->
				<div id="logo">
					<a href="main.html"><img src="../img/logo.png" alt=""></a>
				</div>

				<div class="clearfix"></div>
				<!-- Main Navigation / End -->
			</div>
			<!-- Left Side Content / End -->

			<script src="redirect.js"></script>
			<script src="../js/apis.js"></script>
			<script>
				var headerContent = '';
				// 세션에서 받은 유저 권한
				var userRole = '';
				// 세션에서 받은 유저 아이디
				var memberId = '';
				// JSON으로 받은 유저 프로필 경로
				var memberImgUri='';
				
				if(userRole === "ROLE_CUSTOMER"){
					
						headerContent =
                            '<div class="user-name"><span><img src="' + memberImgUri + '" alt=""></span>' + memberId + '님, 안녕하세요!</div>'
                            +'<ul><li><a onclick="viewCustomerMyPage();"><i class="sl sl-icon-settings"></i> 마이페이지</a></li>'
							+'<li><a onclick="viewBookmark();"><i class="fa fa-calendar-check-o"></i> 나의 수강 관리</a></li>'
							+'<li><a action="/logout"><i class="sl sl-icon-power"></i> 로그아웃</a></li></ul>';
										
				} else if(userRole === "ROLE_PROVIDER"){
					
						headerContent =
                            '<div class="user-name"><span><img src="' + memberImgUri + '" alt=""></span>' + memberId + '님, 안녕하세요!</div>'
                            +'<ul><li><a onclick="viewProviderMyPage();"><i class="sl sl-icon-settings"></i> 마이페이지</a></li>'
							+'<li><a onclick="viewMyListing();"><i class="fa fa-calendar-check-o"></i> 나의 수업 관리</a></li>'
							+'<li><a action="/logout"><i class="sl sl-icon-power"></i> 로그아웃</a></li></ul>';
							
				} else{
						headerContent =
							'<a onclick="viewMemberLogin();" class="sign-in">로그인</a>'
							+'<a onclick="viewMemberRegister();" class="sign-in">회원가입</a>';
				}
				
				document.getElementById('user-menu').innerHTML = headerContent;
			
			
			</script>
			<!-- Right Side Content / End -->
			<div class="right-side">
				<div class="header-widget">
					<div class="user-menu" id="user-menu">
					
					<!------------------------------------------------->
					<!------------ user menu content ------------>
					<!------------------------------------------------->
					
					</div>
				</div>
			</div>
			<!-- Right Side Content / End -->

		</div>
	</div>
	<!-- Header / End -->

</header>
<div class="clearfix"></div>
<!-- Header Container / End -->