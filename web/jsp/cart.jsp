<%-- 
    Document   : cart
    Created on : Sep 14, 2020, 11:02:20 PM
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
                            <li class="breadcrumb-item active">Cart Page</li>
                        </ul>
                        <!-- breadcrumb-list end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb-area end -->
        
        <!-- main-content-wrap start -->
        <div class="main-content-wrap section-ptb cart-page">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <form action="updateCart.htm" class="cart-table">
                            <div class="table-content table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            
                                            <th class="plantmore-product-thumbnail">Images</th>
                                            <th class="cart-product-name">Product</th>
                                            <th class="plantmore-product-price">Unit Price</th>
                                            <th class="plantmore-product-quantity">Quantity</th>
                                            <th class="plantmore-product-subtotal">Total</th>
                                            <th class="plantmore-product-remove">Remove</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${listCart}" var="cart">
                                        <tr>
                                            
                                            <td class="plantmore-product-thumbnail"><a><img width="150px" href="#"src="${cart.product.imageLink}"></a></td>
                                            <td class="plantmore-product-name"><a href="#">${cart.product.productName}</a></td>
                                            <td class="plantmore-product-price"><span class="amount">${cart.product.price-cart.product.price*cart.product.discount/100}</span></td>
                                            <td class="plantmore-product-quantity">
                                                <input value="${cart.quantity}" type="number" name="quantity"/>
                                            </td>
                                            <td class="product-subtotal"><span class="amount">${cart.quantity*(cart.product.price-cart.product.price*cart.product.discount/100)}</span></td>
                                            <td class="plantmore-product-remove"><a href="delete.htm?productId=${cart.product.productId}"><i class="fa fa-times"></i></a></td>
                                        </tr>
                                        ${p.price-p.price*p.discount/100}
                                        </c:forEach>
                                    </tbody>
                                        <tr>
                                            <td colspan="5"> Total Amount</td>
                                            <td>${totalAmount}</td>
                                        </tr>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-md-8">
                                    <div class="coupon-all">

                                        <div class="coupon2">
                                            <input class="submit"  value="Update card" type="submit">
                                            <a href="<%=request.getContextPath()%>/WebProController/getAll.htm" class=" continue-btn">Continue Shopping</a>
                                        </div>

                                        <div class="coupon">
                                            <h3>Coupon</h3>
                                            <p>Enter your coupon code if you have one.</p>
                                            <input id="coupon_code" class="input-text" name="coupon_code" value="" placeholder="Coupon code" type="text">
                                            <input class="button" name="apply_coupon" value="Apply coupon" type="submit">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 ml-auto">
                                    
                                    <div class="cart-page-total">
                                        <h2>Cart totals</h2>
                                        <ul>                        
                                            <li>Total <span>${totalAmount}</span></li>
                                        </ul>
                                        <a href="<%=request.getContextPath()%>/LoginRegisterController/preOrderProduct.htm" class="proceed-checkout-btn">Proceed to checkout</a>
                                    </div>
                                    
                                </div>
                            </div>
                        </form>
                    </div>
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