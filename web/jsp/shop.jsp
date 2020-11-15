<%-- 
    Document   : shop
    Created on : Sep 14, 2020, 11:04:39 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>

<!doctype html>
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
        <link rel="stylesheet" href="../jsp/assets/css/vendor/bootstrap.min.css">
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
            <%@include file="header.jsp" %>
            <!--  Header Start -->
            <!-- breadcrumb-area start -->
            <div class="breadcrumb-area">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <!-- breadcrumb-list start -->
                            <ul class="breadcrumb-list">
                                <li class="breadcrumb-item"><a href="getAll.htm">Home</a></li>
                                <li class="breadcrumb-item active">Shop left sidebar</li>
                            </ul>
                            <!-- breadcrumb-list end -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- breadcrumb-area end -->


            <!-- main-content-wrap start -->
            <div class="main-content-wrap shop-page section-ptb">
                <div class="container">
                    <div class="row">
                      
<!--                        <div class="col-lg-9 order-lg-2 order-1">-->

                            <!-- shop-product-wrapper start -->
                            <div class="shop-product-wrapper">
                                <div class="row align-itmes-center">
                                    <div class="col">
                                        <!-- shop-top-bar start -->
                                        <div class="shop-top-bar">
                                            <!-- product-view-mode start -->

                                            <div class="product-mode">
                                                <!--shop-item-filter-list-->
                                                <ul class="nav shop-item-filter-list" role="tablist">
                                                    <li class="active"><a class="active grid-view" data-toggle="tab" href="#grid"><i class="fa fa-th"></i></a></li>
                                                    <li><a class="list-view" data-toggle="tab" href="#list"><i class="fa fa-th-list"></i></a></li>
                                                </ul>
                                                <!-- shop-item-filter-list end -->
                                            </div>
                                            <!-- product-view-mode end -->
                                            <!-- product-short start -->
<!--                                            <div class="product-short">
                                            <p>Sort By :</p>
                                            <select class="nice-select" name="sortby">
                                                <option value="trending">Relevance</option>
                                                <option value="sales">Name(A - Z)</option>
                                                <option value="sales">Name(Z - A)</option>
                                                <option value="rating">Price(Low > High)</option>
                                                <option value="date">Rating(Lowest)</option>
                                            </select>
                                        </div>-->
                                            <!-- product-short end -->
                                        </div>
                                        <!-- shop-top-bar end -->
                                    </div>
                                </div>

                                <!-- shop-products-wrap start -->
                                <div class="shop-products-wrap">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="grid">
                                            <div class="shop-product-wrap">
                                                <div class="row">
                                                    <c:forEach items="${listPro}" var="p">
                                                        <div class="col-lg-2 col-md-8">
                                                            <!-- single-product-area start -->
                                                            <div class="single-product-area mt-30">
                                                                <div class="product-thumb">
                                                                    <a href="">
                                                                        <img class="primary-image" src="${p.imageLink}" alt="">
                                                                    </a>
                                                                    <div class="label-product label_new">New</div>
                                                                    <div class="action-links">
                                                                        <a href="<%=request.getContextPath()%>/cartController/addCart.htm?productId=${p.productId}" class="cart-btn" title="Add to Cart"><i class="icon-basket-loaded"></i></a>
<!--                                                                        <a href="wishlist.htm" class="wishlist-btn" title="Add to Wish List"><i class="icon-heart"></i></a>
                                                                        <a href="#" class="quick-view" title="Quick View" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-magnifier icons"></i></a>-->
                                                                    </div>

                                                                </div>
                                                                <div class="product-caption">
                                                                    <h4 class="product-name"><a href="productdetails.htm?productId=${p.productId}">${p.productName}</a></h4>
                                                                    <div class="price-box">
                                                                        <span class="new-price"><p></p>$${p.price-p.price*p.discount/100}</span>
                                                                        <span class="old-price"><p></p>$${p.price}</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- single-product-area end -->
                                                        </div>
                                                    </c:forEach>




                                                </div>
                                            </div>
                                        </div>

                                        <div class="tab-pane" id="list">
                                            <div class="shop-product-list-wrap">
                                                <c:forEach items="${listPro}" var="p">
                                                    <div class="row product-layout-list mt-30">
                                                        <div class="col-lg-2 col-md-2">
                                                            <!-- single-product-wrap start -->
                                                            <div class="single-product">
                                                                <div class="product-image">
                                                                    <a href=""><img src="${p.imageLink}" alt="Produce Images"></a>
                                                                </div>
                                                            </div>
                                                            <!-- single-product-wrap end -->
                                                        </div>

                                                        <div class="col-lg-8 col-md-8">
                                                            <div class="product-content-list text-left">

                                                                <h4><a href="" class="product-name">${p.productName}</a></h4>
                                                                <div class="price-box">
                                                                    <span class="new-price">$${p.price-p.price*p.discount/100}</span>
                                                                    <span class="old-price">$${p.price}</span>
                                                                </div>

                                                                

                                                                <p>${p.title}</p>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-2 col-md-2">
                                                            <div class="block2">

                                                                <div class="product-button">


                                                                    <div class="add-to-cart">
                                                                        <div class="product-button-action">
                                                                            <a href="<%=request.getContextPath()%>/cartController/addCart.htm?ProductId=${p.productId}" class="add-to-cart">Add to cart</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                                
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <!-- shop-products-wrap end -->

                                <!-- paginatoin-area start -->
                                <div class="paginatoin-area">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12">
                                            <ul class="pagination-box">
                                                <li class="active"><a href="#">1</a></li>
                                                
                                                <li>
                                                    <a class="Next" href="#">Next</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!-- paginatoin-area end -->
                            </div>
                            <!-- shop-product-wrapper end -->
<!--                        </div>-->
                        
                        
                    </div>
                </div>
            </div>
            <!-- main-content-wrap end -->

            <!-- footer Start -->
            <%@include file="footer.jsp" %>
            <!-- footer End -->

        </div>

        <!-- JS
    ============================================ -->

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
