<%-- 
    Document   : header
    Created on : Sep 14, 2020, 11:02:44 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Ruiz - Watch Store HTML Template</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="../jsp/assets/images/favicon.ico">

    <!-- CSS
	============================================ -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/vendor/bootstrap.min.css">
    <!-- Icon Font CSS -->
    <link rel="stylesheet" href="../jsp/assets/css/vendor/font-awesome.min.css">
    <link rel="stylesheet" href="../jsp/assets/css/vendor/simple-line-icons.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="../jsp/assets/css/plugins/animation.css">
    <link rel="stylesheet" href="../jsp/assets/css/plugins/slick.css">
    <link rel="stylesheet" href="../jsp/assets/css/plugins/animation.css">
    <link rel="stylesheet" href="../jsp/assets/css/plugins/nice-select.css">
    <link rel="stylesheet" href="../jsp/assets/css/plugins/fancy-box.css">
    <link rel="stylesheet" href="../jsp/assets/css/plugins/jqueryui.min.css">

    <!-- Vendor & Plugins CSS (Please remove the comment from below vendor.min.css & plugins.min.css for better website load performance and remove css files from avobe) -->
    <!--
    <script src="assets/js/vendor/vendor.min.js"></script>
    <script src="assets/js/plugins/plugins.min.js"></script>
    -->

    <!-- Main Style CSS (Please use minify version for better website load performance) -->
    <link rel="stylesheet" href="../jsp/assets/css/style.css">
    <!--<link rel="stylesheet" href="assets/css/style.min.css">-->

</head>

<body>

    <div class="main-wrapper">
        
        <!--  Header Start -->
        <header class="header">

            <!-- Header Top Start -->
            <div class="header-top-area d-none d-lg-block text-color-white bg-gren border-bm-1">

                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="header-top-settings">
                                <ul class="nav align-items-center">                               
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="top-info-wrap text-right">
                                <ul class="my-account-container">
                                   <li><a href="<%=request.getContextPath()%>/LoginRegisterController/useraccount.htm">My account</a></li>
                                    <li><a href="<%=request.getContextPath()%>/cartController/getCat.htm">Cart</a></li>
                                    
                                   
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- Header Top End -->

            <!-- haeader Mid Start -->
            <div class="haeader-mid-area bg-gren border-bm-1 d-none d-lg-block ">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3 col-md-4 col-5">
                            <div class="logo-area">
                                <a href="${contextPath}/Web_Sell_Watch/WebProController/getAll.htm"><img src="../jsp/assets/images/logo/logo.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="search-box-wrapper">
                                <div class="search-box-inner-wrap">
                                    <form action="search.htm" class="search-box-inner">
                                        <div class="search-select-box">
                                            <select class="nice-select">
                                                <optgroup label=" Watch">
                                                    <option value="volvo">All</option>
                                                    
                                                </optgroup>
                                               
                                            </select>
                                        </div>
                                        <div class="search-field-wrap">
                                            <input name="keysearch" type="text" class="search-field" placeholder="Search product...">

                                            <div class="search-btn">
                                                <button type="submit"><i class="icon-magnifier"></i></button>
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="right-blok-box text-white d-flex">

<!--                               <div class="user-wrap">
                                    <a href="wishlist.html"><i class="icon-heart"></i></a>
                                </div>-->

                                <div class="shopping-cart-wrap">
                                    
                                    
                                    <a href="#"><i class="icon-basket-loaded"></i><span class="cart-total">${listCart.size()}</span></a>
                                    <ul class="mini-cart">
                                        <c:forEach items="${listCart}" var="cart">
                                        <li class="cart-item">
                                            <div class="cart-image">
                                                <a href="product-details.html"><img alt="" src="${cart.product.imageLink}"></a>
                                            </div>
                                            <div class="cart-title">
                                                <a href="product-details.html">
                                                    <h4>${cart.product.productName}</h4>
                                                </a>
                                                <div class="quanti-price-wrap">
                                                    <span class="quantity">${cart.quantity} *</span>
                                                    <div class="price-box"><span class="new-price">${cart.product.price-cart.product.price*cart.product.discount/100}</span></div>
                                                </div>
                                               
                                            </div>
                                        </li>
                                        </c:forEach>
                                        <li class="subtotal-box">
                                            <div class="subtotal-title">
                                                <h3>Sub-Total :</h3><span>${totalAmount}</span>
                                            </div>
                                        </li>
                                        <li class="mini-cart-btns">
                                            <div class="cart-btns">
                                                <a href="<%=request.getContextPath()%>/cartController/getCat.htm">View cart</a>
                                                
                                            </div>
                                        </li>
                                    </ul>
                                
                                 
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
            <!-- haeader Mid End -->

            <!-- haeader bottom Start -->
            <div class="haeader-bottom-area bg-gren header-sticky">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-12 d-none d-lg-block">
                            <div class="main-menu-area white_text">
                                <!--  Start Mainmenu Nav-->
                                <nav class="main-navigation text-center">
                                    <ul>
                                        <li class="active"><a href="${contextPath}/Web_Sell_Watch/WebProController/getAll.htm">Home</a>
                                           
                                        </li>

                                        <li><a href="#">Categories<i class="fa fa-angle-down"></i></a>
                                            

                                                <ul class="sub-menu">
                                                    <c:forEach items="${listcat}" var="cat">
                                                        <li><a href="${contextPath}/Web_Sell_Watch/WebProController/getProCat.htm?catId=${cat.catId}">${cat.catName}</a></li></c:forEach>
                                                    
                                                   
                                                </ul>
                                            </li>

                                        <li><a href="#">Producers <i class="fa fa-angle-down"></i></a>
                                            

                                                <ul class="sub-menu">
                                                    <c:forEach items="${listprodc}" var="prod">
                                                        <li><a href="${contextPath}/Web_Sell_Watch/WebProController/getProProd.htm?producersId=${prod.producersId}">${prod.producersName}</a></li></c:forEach>
                                                    
                                                   
                                                </ul>
                                            </li>
<!--                                        <li><a href="contact-us.htm">Contact</a></li>-->
                                    </ul>
                                </nav>

                            </div>
                        </div>

                        <div class="col-5 col-md-6 d-block d-lg-none">
                            <div class="logo"><a href="index.htm"><img src="../jsp/assets/images/logo/logo.png" alt=""></a></div>
                        </div>
                        
                        
                        <div class="col-lg-3 col-md-6 col-7 d-block d-lg-none">
                            <div class="right-blok-box text-white d-flex">

                                <div class="user-wrap">
                                    <a href="wishlist.htm"><span class="cart-total">2</span> <i class="icon-heart"></i></a>
                                </div>

                                <div class="shopping-cart-wrap">
                                    <a href="#"><i class="icon-basket-loaded"></i><span class="cart-total">2</span></a>
                                    <ul class="mini-cart">
                                        <li class="cart-item">
                                            <div class="cart-image">
                                                <a href="product-details.htm"><img alt="" src="../jsp/assets/images/product/product-02.png"></a>
                                            </div>
                                            <div class="cart-title">
                                                <a href="product-details.htm">
                                                    <h4>Product Name 01</h4>
                                                </a>
                                                <div class="quanti-price-wrap">
                                                    <span class="quantity">1 ×</span>
                                                    <div class="price-box"><span class="new-price">$130.00</span></div>
                                                </div>
                                                <a class="remove_from_cart" href="#"><i class="fa fa-times"></i></a>
                                            </div>
                                        </li>
                                        <li class="cart-item">
                                            <div class="cart-image">
                                                <a href="product-details.htm"><img alt="" src="../jsp/assets/images/product/product-03.png"></a>
                                            </div>
                                            <div class="cart-title">
                                                <a href="product-details.htm">
                                                    <h4>Product Name 03</h4>
                                                </a>
                                                <div class="quanti-price-wrap">
                                                    <span class="quantity">1 ×</span>
                                                    <div class="price-box"><span class="new-price">$130.00</span></div>
                                                </div>
                                                <a class="remove_from_cart" href="#"><i class="icon-trash icons"></i></a>
                                            </div>
                                        </li>
                                        <li class="subtotal-box">
                                            <div class="subtotal-title">
                                                <h3>Sub-Total :</h3><span>$ 260.99</span>
                                            </div>
                                        </li>
                                        <li class="mini-cart-btns">
                                            <div class="cart-btns">
                                                <a href="viewcart.htm">View cart</a>
                                                <a href="checkout.htm">Checkout</a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="mobile-menu-btn d-block d-lg-none">
                                    <div class="off-canvas-btn">
                                        <a href="#"><img src="../jsp/assets/images/icon/bg-menu.png" alt=""></a>
                                    </div>
                                </div>

                            </div>
                        </div>
                        
                        
                        
                    </div>
                </div>
            </div>
            <!-- haeader bottom End -->
            
            <!-- off-canvas menu start -->
            
            <!-- off-canvas menu end -->
            
        </header>
    </div>
        <!-- Modernizer JS -->
    <script src="../jsp/assets/js/vendor/modernizr-3.6.0.min.js"></script>
    <!-- jQuery JS -->
    <script src="../jsp/assets/js/vendor/jquery-3.3.1.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="../jsp/assets/js/vendor/popper.min.js"></script>
    <script src="../jsp/assets/js/vendor/bootstrap.min.js"></script>

    <!-- Plugins JS -->
    <script src="../jsp/assets/js/plugins/slick.min.js"></script>
    <script src="../jsp/assets/js/plugins/jquery.nice-select.min.js"></script>
    <script src="../jsp/assets/js/plugins/countdown.min.js"></script>
    <script src="../jsp/assets/js/plugins/image-zoom.min.js"></script>
    <script src="../jsp/assets/js/plugins/fancybox.js"></script>
    <script src="../jsp/assets/js/plugins/scrollup.min.js"></script>
    <script src="../jsp/assets/js/plugins/jqueryui.min.js"></script> 
    <script src="../jsp/assets/js/plugins/ajax-contact.js"></script>

    <!-- Vendor & Plugins JS (Please remove the comment from below vendor.min.js & plugins.min.js for better website load performance and remove js files from avobe) -->
    <!--
<script src="assets/js/vendor/vendor.min.js"></script>
<script src="assets/js/plugins/plugins.min.js"></script>
-->

    <!-- Main JS -->
    <script src="../jsp/assets/js/main.js"></script>

</body>

</html>
