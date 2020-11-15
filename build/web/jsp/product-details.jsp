

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
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.ico">

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
                                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                <li class="breadcrumb-item active">Product Details</li>
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
                    <div class="row  product-details-inner">
                        <div class="col-lg-5 col-md-6">
                            <!-- Product Details Left -->
                            <div class="product-large-slider">
                                <div class="pro-large-img img-zoom">
                                    <img src="${p.imageLink}" alt="product-details" />
                                    <a href="${p.imageLink}" data-fancybox="images"><i class="fa fa-search"></i></a>
                                </div>


                            </div>
                            <div class="product-nav">
                                <div id="p.productId" class="pro-nav-thumb">
                                    <c:forEach items="${img}" var="img">
                                        <c:if test = "${img.product.productId.equals(p.productId)}">
                                            <img width="100px" src="<c:out value="${img.imageLink}"/>" alt="product-details"/>
                                        </c:if>

                                    </c:forEach>

                                </div>

                            </div>
                            <!--// Product Details Left -->
                        </div>

                        <div class="col-lg-7 col-md-6">
                            <div class="product-details-view-content">
                                <div class="product-info">
                                    <h3>${p.productName}</h3>

                                    <div class="price-box">
                                        <span class="new-price">$${p.price -p.price *p.discount/100}</span>
                                        <span class="old-price">$${p.price}</span>
                                    </div>
                                    <p>${p.title}</p>
                                    <ul class="stock-cont">
                                        <li class="product-sku">Sku: <span>${p.productId}</span></li>

                                    </ul>
                                    <div class="single-add-to-cart">
                                        

                                            <a href="<%=request.getContextPath()%>/cartController/addCart.htm?productId=${p.productId}" class="add-to-cart" >Add To Cart</a>
                                       
                                    </div>


                                    <div class="share-product-socail-area">
                                        <p>Share this product</p>
                                        <ul class="single-product-share">
                                            <li><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="product-description-area section-pt">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="product-details-tab">
                                    <ul role="tablist" class="nav">
                                        <li class="active" role="presentation">
                                            <a data-toggle="tab" role="tab" href="#description" class="active">Description</a>
                                        </li>
                                        <!--                                    <li role="presentation">
                                                                                <a data-toggle="tab" role="tab" href="#reviews">Reviews</a>
                                                                            </li>-->
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="product_details_tab_content tab-content">
                                    <!-- Start Single Content -->
                                    <div class="product_tab_content tab-pane active" id="description" role="tabpanel">
                                        <div class="product_description_wrap  mt-30">
                                            <div class="product_desc mb-30">
                                                <p>${p.title}</p>

                                                <p>${p.descriptions}</p>

                                            </div>
                                        </div>
                                        <!-- End Single Content -->
                                        <!-- Start Single Content -->

                                        <!-- End Single Content -->
                                    </div>
                                </div>
                            </div>
                        </div>





                        <!-- single-product-area end -->

                    </div>
                    <!-- single-product-area end -->
                </div>
            </div>
        </div>

    </div>
</div>
<!-- main-content-wrap end -->

<!-- footer Start -->
<footer>
    <div class="footer-top section-pb section-pt-60">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">

                    <div class="widget-footer mt-40">
                        <h6 class="title-widget">Contact Info</h6>

                        <div class="footer-addres">
                            <div class="widget-content mb--20">
                                <p>Address: 123 Main Street, Anytown, <br> CA 12345 - USA.</p>
                                <p>Phone: <a href="tel:">(012) 800 000 789</a></p>
                                <p>Fax: <a href="tel:">(012) 800 888 789</a></p>
                                <p>Email: <a href="tel:">demo@hashthemes.com</a></p>
                            </div>
                        </div>

                        <ul class="social-icons">
                            <li>
                                <a class="facebook social-icon" href="#" title="Facebook" target="_blank"><i class="fa fa-facebook"></i></a>
                            </li>
                            <li>
                                <a class="twitter social-icon" href="#" title="Twitter" target="_blank"><i class="fa fa-twitter"></i></a>
                            </li>
                            <li>
                                <a class="instagram social-icon" href="#" title="Instagram" target="_blank"><i class="fa fa-instagram"></i></a>
                            </li>
                            <li>
                                <a class="linkedin social-icon" href="#" title="Linkedin" target="_blank"><i class="fa fa-linkedin"></i></a>
                            </li>
                            <li>
                                <a class="rss social-icon" href="#" title="Rss" target="_blank"><i class="fa fa-rss"></i></a>
                            </li>
                        </ul>

                    </div>

                </div>
                <div class="col-lg-2 col-md-6 col-sm-6">
                    <div class="widget-footer mt-40">
                        <h6 class="title-widget">Information</h6>
                        <ul class="footer-list">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="about-us.html">About Us</a></li>
                            <li><a href="contact.html">Quick Contact</a></li>
                            <li><a href="blog.html">Blog Pages</a></li>
                            <li><a href="#">Concord History</a></li>
                            <li><a href="#">Client Feed</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-6">
                    <div class="widget-footer mt-40">
                        <h6 class="title-widget">Extras</h6>
                        <ul class="footer-list">

                            <li><a href="#">Concord History</a></li>
                            <li><a href="#">Client Feed</a></li>
                            <li><a href="about-us.html">About Us</a></li>
                            <li><a href="contact.html">Quick Contact</a></li>
                            <li><a href="blog.html">Blog Pages</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="widget-footer mt-40">
                        <h6 class="title-widget">Get the app</h6>
                        <p>GreenLife App is now available on Google Play & App Store. Get it now.</p>
                        <ul class="footer-list">
                            <li><img src="assets/images/brand/img-googleplay.jpg" alt=""></li>
                            <li><img src="assets/images/brand/img-appstore.jpg" alt=""></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer-bottom">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6">
                    <div class="copy-left-text">
                        <p>Copyright &copy; <a href="#">Ruiz</a> 2019. All Right Reserved.</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="copy-right-image">
                        <img src="assets/images/icon/img-payment.png" alt="">

                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
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
<script src="assets/js/plugins/slick.min.js"></script>

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