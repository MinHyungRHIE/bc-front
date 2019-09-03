<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>

    <!-- Basic Page Needs
    ================================================== -->
    <title>Listeo</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- CSS
    ================================================== -->
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/main-color.css" id="colors">


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
                        <a href="index.html"><img src="../img/logo.png" alt=""></a>
                        <a href="index.html" class="dashboard-logo"><img src="../img/logo2.png" alt=""></a>
                    </div>

                    <!-- Mobile Navigation -->
                    <div class="mmenu-trigger">
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
                            <div class="user-name"><span><img src="../img/dashboard-avatar.jpg" alt=""></span>Hi, Tom!</div>
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
                    <li class="active"><a><i class="sl sl-icon-layers"></i> My Listings</a>
                        <ul>
                            <li><a href="dashboard-my-listings.html">Active <span class="nav-tag green">6</span></a></li>
                            <li><a href="dashboard-my-listings.html">Pending <span class="nav-tag yellow">1</span></a></li>
                            <li><a href="dashboard-my-listings.html">Expired <span class="nav-tag red">2</span></a></li>
                        </ul>
                    </li>
                    <li><a href="dashboard-reviews.html"><i class="sl sl-icon-star"></i> Reviews</a></li>
                    <li><a href="dashboard-bookmarks.html"><i class="sl sl-icon-heart"></i> Bookmarks</a></li>
                    <li><a href="dashboard-add-listing.html"><i class="sl sl-icon-plus"></i> Add Listing</a></li>
                </ul>

                <ul data-submenu-title="Account">
                    <li><a href="dashboard-my-profile.html"><i class="sl sl-icon-user"></i> My Profile</a></li>
                    <li><a href="index.html"><i class="sl sl-icon-power"></i> Logout</a></li>
                </ul>

            </div>
        </div>


        <!-- Content
        ================================================== -->
        <div class="dashboard-content">

            <!-- Titlebar -->
            <div id="titlebar">
                <div class="row">
                    <div class="col-md-12">
                        <h2>My Listings</h2>
                        <!-- Breadcrumbs -->
                        <nav id="breadcrumbs">
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Dashboard</a></li>
                                <li>My Listings</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>

            <div class="row">

                <!-- Listings -->
                <div class="col-lg-12 col-md-12">
                    <div class="dashboard-list-box margin-top-0">
                        <h4>Active Listings</h4>
                        <ul id='ul-1'>

                            <li id="li-1">
                                <div class="list-box-listing">
                                    <div class="list-box-listing-img"><a href="#"><img src="../img/listing-item-01.jpg" alt=""></a></div>
                                    <div class="list-box-listing-content">
                                        <div class="inner">
                                            <h3><a href="#">Tom's Restaurant</a></h3>
                                            <span>964 School Street, New York</span>
                                            <div class="star-rating" data-rating="3.5">
                                                <div class="rating-counter">(12 reviews)</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="buttons-to-right" >
                                    <a href="dashboard-edit-my-listings.html" class="button gray"><i class="sl sl-icon-note"></i> Edit</a>
                                    <a href="#" class="button gray" onclick="removeCheck()"><i class="sl sl-icon-close"></i> Delete</a>

                                    <!-- delete 누를시 listings 삭제-->
                                    <script>
                                        var parent = document.getElementById("ul-1");
                                        var li1 = document.getElementById("li-1");

                                        function removeCheck(){

                                            if(confirm("삭제 할거야?")==true){// 확인
                                                parent.removeChild(li1);
                                            }else{
                                                document.submit();
                                            }
                                        }


                                    </script>

                                </div>
                            </li>

                            <li id="li-2">
                                <div class="list-box-listing">
                                    <div class="list-box-listing-img"><a href="#"><img src="../img/listing-item-02.jpg" alt=""></a></div>
                                    <div class="list-box-listing-content">
                                        <div class="inner">
                                            <h3>Sticky Band</h3>
                                            <span>Bishop Avenue, New York</span>
                                            <div class="star-rating" data-rating="5.0">
                                                <div class="rating-counter">(23 reviews)</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="buttons-to-right">
                                    <a href="dashboard-edit-my-listings.html" class="button gray"><i class="sl sl-icon-note"></i> Edit</a>
                                    <a href="#" class="button gray" onclick="parent.removeChild(li2)"><i class="sl sl-icon-close"></i> Delete</a>

                                    <script>
                                        var parent = document.getElementById("ul-1");
                                        var li2 = document.getElementById("li-2");

                                        onclick.parent.removeChild(li2);


                                    </script>

                                </div>
                            </li>

                            <li class="disabled">
                                <div class="list-box-listing">
                                    <div class="list-box-listing-img"><a href="#"><img src="../img/listing-item-03.jpg" alt=""></a></div>
                                    <div class="list-box-listing-content">
                                        <div class="inner">
                                            <h3>Hotel Govendor</h3>
                                            <span>778 Country Street, New York</span>
                                            <div class="star-rating" data-rating="2.0">
                                                <div class="rating-counter">(17 reviews)</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="buttons-to-right">
                                    <a href="dashboard-edit-my-listings.html" class="button gray"><i class="sl sl-icon-note"></i> Edit</a>
                                    <a class="button gray"><i class="sl sl-icon-close"></i> Delete</a>
                                </div>
                            </li>

                            <li>
                                <div class="list-box-listing">
                                    <div class="list-box-listing-img"><a href="#"><img src="../img/listing-item-04.jpg" alt=""></a></div>
                                    <div class="list-box-listing-content">
                                        <div class="inner">
                                            <h3>Burger House</h3>
                                            <span>2726 Shinn Street, New York</span>
                                            <div class="star-rating" data-rating="5.0">
                                                <div class="rating-counter">(31 reviews)</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="buttons-to-right">
                                    <a href="dashboard-edit-my-listings.html" class="button gray"><i class="sl sl-icon-note"></i> Edit</a>
                                    <a href="#" class="button gray"><i class="sl sl-icon-close"></i> Delete</a>

                                </div>
                            </li>

                            <li>
                                <div class="list-box-listing">
                                    <div class="list-box-listing-img"><a href="#"><img src="../img/listing-item-05.jpg" alt=""></a></div>
                                    <div class="list-box-listing-content">
                                        <div class="inner">
                                            <h3>Airport</h3>
                                            <span>1512 Duncan Avenue, New York</span>
                                            <div class="star-rating" data-rating="3.5">
                                                <div class="rating-counter">(46 reviews)</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="buttons-to-right">
                                    <a href="#" class="button gray"><i class="sl sl-icon-note"></i> Edit</a>
                                    <a href="#" class="button gray"><i class="sl sl-icon-close"></i> Delete</a>
                                </div>
                            </li>

                            <li>
                                <div class="list-box-listing">
                                    <div class="list-box-listing-img"><a href="#"><img src="../img/listing-item-06.jpg" alt=""></a></div>
                                    <div class="list-box-listing-content">
                                        <div class="inner">
                                            <h3>Think Coffee</h3>
                                            <span>215 Terry Lane, New York</span>
                                            <div class="star-rating" data-rating="5.0">
                                                <div class="rating-counter">(31 reviews)</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="buttons-to-right">
                                    <a href="dashboard-edit-my-listings.html" class="button gray"><i class="sl sl-icon-note"></i> Edit</a>
                                    <a href="#" class="button gray"><i class="sl sl-icon-close"></i> Delete</a>
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>


                <!-- Copyrights -->
                <div class="col-md-12">
                    <div class="copyrights">© 2019 Listeo. All Rights Reserved.</div>
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


</body>
</html>
