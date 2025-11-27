<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Grocery Hub</title>

    <!--== Favicon ==-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/assets/img/favicon.ico" type="image/x-icon" />

    <!--== Google Fonts ==-->
    <link href="https://fonts.googleapis.com/css2?family=Khula:wght@400;600;700&display=swap" rel="stylesheet">

    <!--== Bootstrap CSS ==-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css">

    <!--== Icons CSS ==-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/simple-line-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" />

    <!--== Plugins CSS ==-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/swiper.min.css">

    <!--== Main Style CSS ==-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
</head>

<body>

<header class="header-wrapper">
    <div class="header-area header-default sticky-header">
        <div class="container">
            <div class="row align-items-center justify-content-between">

                <!-- Navigation Menu -->
                <div class="col-xl-8 col-lg-8 d-none d-lg-block">
                    <div class="header-navigation-area">
                        <ul class="main-menu nav position-relative">

                            <li><a href="${pageContext.request.contextPath}/Home">Home</a></li>
                            <li><a href="${pageContext.request.contextPath}/viewproducts">Products</a></li>

                            <li><a href="${pageContext.request.contextPath}/myOrders">
                                    <i class="bi bi-bag-check"></i> My Orders
                                </a>
                            </li>

                            <li><a href="${pageContext.request.contextPath}/viewWishlist">
                                    <i class="bi bi-heart-fill"></i> My Wishlist
                                </a>
                            </li>

                            <li><a href="${pageContext.request.contextPath}/about">About Us</a></li>
                            <li><a href="${pageContext.request.contextPath}/contactpage">Contact Us</a></li>

                            <!-- ADMIN DASHBOARD -->
                            <c:if test="${sessionScope.userRole == 'admin'}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/admin/dashboard">
                                        <i class="bi bi-speedometer2"></i> Admin Dashboard
                                    </a>
                                </li>
                            </c:if>

                        </ul>
                    </div>
                </div>

                <!-- Login Side -->
                <div class="col-xl-4 col-lg-4 col-6 d-flex justify-content-end">
                    <div class="header-action-dropdown-acc header-action-dropdown-toggle">
                        <span class="current-item">Login</span>
                        <ul class="info-dropdown info-dropdown-toggle">
                            <li><a href="${pageContext.request.contextPath}/loginp">Login</a></li>
                            <li><a href="${pageContext.request.contextPath}/register">Register</a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div>
</header>
