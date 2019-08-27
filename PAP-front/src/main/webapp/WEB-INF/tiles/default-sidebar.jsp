<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
    
<script>
		var userSideBarContent = '';
		// 세션에서 받은 유저 권한
		var userRole = '';

		if(userRole === "ROLE_CUSTOMER"){

			userSideBarContent =
				'<ul data-submenu-title="">'
				+'<li><a id="sideBarBookmarks" onclick="viewBookmark();"><i class="sl sl-icon-heart"></i> 나의 수강 관리</a></li>'
				+'<li class="active"><a id="sideBarMyPage" onclick="viewCustomerMyPage();"><i class="sl sl-icon-user"></i> 마이페이지</a></li>'
				+'<li><a id="sideBarLogout" action="/logout"><i class="sl sl-icon-power"></i> 로그아웃</a></li></ul>';
			
		} else if(userRole === "ROLE_PROVIDER"){

			userSideBarContent =
				'<ul data-submenu-title="">'
				+'<li><a id="sideBarMyList" onclick="viewMyListing();"><i class="sl sl-icon-layers"></i> 나의 수업 관리</a></li>'
				+'<li><a id="sideBarAddListing" onclick="viewAddListing();"><i class="sl sl-icon-plus"></i> 수업 추가하기</a></li>'
				+'<li class="active"><a id="sideBarMyPage" onclick="viewProviderMyPage();"><i class="sl sl-icon-user"></i>마이페이지</a></li>'
				+'<li><a id="sideBarLogout" action="/logout"><i class="sl sl-icon-power"></i> 로그아웃</a></li></ul>';
			
		}
		
		document.getElementById('sidebar').innerHTML = userSideBarContent;
</script>
    
	<!-- Navigation
	================================================== -->
	<!-- Responsive Navigation Trigger -->
	<a href="#" class="dashboard-responsive-nav-trigger"><i class="fa fa-reorder"></i></a>

	<div class="dashboard-nav">
	
		<div class="dashboard-nav-inner" id="sidebar">
		
					<!------------------------------------------------->
					<!------------- side bar content --------------->
					<!------------------------------------------------->
		
		</div>
	</div>
	<!-- Navigation / End -->