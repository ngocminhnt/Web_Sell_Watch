<%-- 
    Document   : index
    Created on : Sep 14, 2020, 11:02:55 PM
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
        
        <!-- Hero Section Start -->
        <div class="hero-slider hero-slider-one">

            <!-- Single Slide Start -->
            <div class="single-slide" style="background-image: url(../jsp/assets/images/slider/slide-bg-2.jpg)">
                <!-- Hero Content One Start -->
                <div class="hero-content-one container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="slider-content-text text-left">
                                <h5>Exclusive Offer -20% Off This Week</h5>
                                <h1>H-Vault Classico</h1>
                                <p>H-Vault Watches Are A Lot Like Classic American Muscle Cars - Expect For The American Part That Is. </p>
                                <p>Starting At <strong>$1.499.00</strong></p>
                                
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Hero Content One End -->
            </div>
            <!-- Single Slide End -->
            
            <!-- Single Slide Start -->
            <div class="single-slide" style="background-image: url(../jsp/assets/images/slider/slide-bg-1.jpg)">
                <!-- Hero Content One Start -->
                <div class="hero-content-one container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="slider-content-text text-left">
                                <h5>Exclusive Offer -20% Off This Week</h5>
                                <h1>H-Vault Classico</h1>
                                <p>H-Vault Watches Are A Lot Like Classic American Muscle Cars - Expect For The American Part That Is. </p>
                                <p>Starting At <strong>$1.499.00</strong></p>
                                <div class="slide-btn-group">
                                    <a href="shop.htm" class="btn btn-bordered btn-style-1">Shop Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Hero Content One End -->
            </div>
            <!-- Single Slide End -->

        </div>
        <!-- Hero Section End -->
        
        <!-- Banner Area Start -->
        <div class="banner-area section-pt">
            <div class="container">
                <div class="row">
                    
                    <c:forEach items="${listBner}" var="b">
                    <div class="col-lg-6 col-md-6">
                        <div >
                            <a href="#"><img src="${b.imageLink}" ></a>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- Banner Area End -->
       
        <!-- Product Area Start -->
        <div class="product-area section-pb section-pt-30">
            <div class="container">
               
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <h4>Best seller products</h4>
                        </div>
                    </div>
                </div>
               
                <div class="row product-active-lg-4">
                    <!--SP tu day-->
                    <c:forEach items="${listProB}" var="p">
                    <div class="col-lg-12">
                        <!-- single-product-area start -->
                        
                        <div class="single-product-area mt-30">
                            <div class="product-thumb">
                                <a href="productdetails.htm?productId=${p.productId}">
                                    <img class="primary-image" src="${p.imageLink}" alt="">
                                 </a>   
                                <div class="label-product label_new">New</div>
                                <div class="action-links">
                                    <a href="<%=request.getContextPath()%>/cartController/addCart.htm?productId=${p.productId}" title="Add to Cart"><i class="icon-basket-loaded"></i></a>
                                    
<!--                                    <a href="#" class="quick-view" title="Quick View" data-toggle="modal" data-target="#details_${p.productId}"><i class="icon-magnifier icons"></i></a>-->
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
                    <!--ket thuc-->
                    
                 </div>
            </div>
         </div>
                
        <!-- Product Area End -->
        
        <!-- Banner Area Start -->
        
        <!-- Banner Area End -->
        
        
        <!-- Product Area Start -->
        <div class="product-area section-pb section-pt-30">
            <div class="container">
                
                <div class="row">
                    <div class="col-12 text-center">
                        <ul class="nav product-tab-menu" role="tablist">
                            <li class="product-tab-item nav-item active">
                                <a class="product-tab__link nav-link active" id="nav-featured-tab" data-toggle="tab" href="#nav-featured" role="tab" aria-selected="true">Featured</a>
                            </li>
                            <li class="product-tab__item nav-item">
                                <a class="product-tab__link nav-link" id="nav-onsale-tab" data-toggle="tab" href="#nav-onsale" role="tab" aria-selected="false">On Sale</a>
                            </li>
                            <li class="product-tab__item nav-item">
                                <a class="product-tab__link nav-link" id="nav-new-tab" data-toggle="tab" href="#nav-new" role="tab" aria-selected="false">New</a>
                            </li>
                        </ul>
                    </div>
                </div>
                
                <!--top1 ++++++++++++++++++++++++++++++-->
                <div class="tab-content product-tab__content" id="product-tabContent">
                   
                    <div class="tab-pane fade show active" id="nav-featured" role="tabpanel">
                        <div class="product-carousel-group">
                           
                            <div class="row product-active-row-4">
                                <c:forEach items="${listProS1}" var="p">
                                <div class="col-lg-12">
                                    <!-- single-product-area start -->
                                    <div class="single-product-area mt-30">
                                        <div class="product-thumb">
                                            <a href="productdetails.htm?productId=${p.productId}">
                                                <img class="primary-image" src="${p.imageLink}" alt="">
                                            </a>
                                            <div class="label-product label_new">New</div>
                                            <div class="action-links">
                                                <a href="<%=request.getContextPath()%>/cartController/addCart.htm?productId=${p.productId}" title="Add to Cart"><i class="icon-basket-loaded"></i></a>
<!--                                                <a href="wishlist.htm" class="wishlist-btn" title="Add to Wish List"><i class="icon-heart"></i></a>
                                                <a href="#" class="quick-view" title="Quick View" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-magnifier icons"></i></a>-->
                                            </div>
                                            
                                        </div>
                                        <div class="product-caption">
                                            <h4 class="product-name"><a href="product-details.htm?productId=${p.productId}">${p.productName}</a></h4>
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
                    
                
                <!--Top 2---------------------->
                
                   
                    <div class="tab-pane fade" id="nav-onsale" role="tabpanel">
                        <div class="product-carousel-group">
                           
                            <div class="row product-active-row-4">
                                <c:forEach items="${listProO}" var="p">
                                <div class="col-lg-12">
                                    <!-- single-product-area start -->
                                    <div class="single-product-area mt-30">
                                        <div class="product-thumb">
                                            <a href="productdetails.htm?productId=${p.productId}">
                                                <img class="primary-image" src="${p.imageLink}" alt="">
                                            </a>
                                            <div class="label-product label_new">New</div>
                                            <div class="action-links">
                                                <a href="<%=request.getContextPath()%>/cartController/addCart.htm?ProductId=${p.productId}" class="cart-btn" title="Add to Cart"><i class="icon-basket-loaded"></i></a>
                                                
<!--                                                <a href="#" class="quick-view" title="Quick View" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-magnifier icons"></i></a>-->
                                            </div>
                                            
                                        </div>
                                        <div class="product-caption">
                                            <h4 class="product-name"><a href="product-details.htm?productId=${p.productId}">${p.productName}</a></h4>
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
                <!--Top2 end-->
               <!--Top3-->
               <div class="tab-pane fade" id="nav-new" role="tabpanel">
                        <div class="product-carousel-group">
                           
                            <div class="row product-active-row-4">
                                <c:forEach items="${listProN}" var="p">
                                <div class="col-lg-12">
                                    <!-- single-product-area start -->
                                    <div class="single-product-area mt-30">
                                        <div class="product-thumb">
                                            <a href="productdetails.htm?productId=${p.productId}">
                                                <img class="primary-image" src="${p.imageLink}" alt="">
                                            </a>
                                            <div class="label-product label_new">New</div>
                                            <div class="action-links">
                                                <a href="<%=request.getContextPath()%>/cartController/addCart.htm?ProductId=${p.productId}" class="cart-btn" title="Add to Cart"><i class="icon-basket-loaded"></i></a>
                                                
<!--                                                <a href="#" class="quick-view" title="Quick View" data-toggle="modal" data-target="#exampleModalCenter"><i class="icon-magnifier icons"></i></a>-->
                                            </div>
                                            
                                        </div>
                                        <div class="product-caption">
                                            <h4 class="product-name"><a href="product-details.htm?productId=${p.productId}">${p.productName}</a></h4>
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
               <!--top3 end-->
                
            </div>
        </div>
        <!-- Product Area End -->
        
        <!-- letast blog area Start -->
        <div class="letast-blog-area section-pb">
            <div class="container">
                <div class="row">
                    
                    <div class="col-lg-4">
                        <div class="singel-latest-blog">
                            <div class="aritcles-content">
                                <div class="author-name">
                                    post by: <a href="#"> Author Name</a> - 30 Oct 2019
                                </div>
                                <h4><a href="blog-details.htm" class="articles-name">Ruiz Watch is one of the web's most visited watch sites and the world's</a></h4>
                            </div>
                            <div class="articles-image">
                                <a href="blog-details.htm">
                                    <img src="../jsp/assets/images/blog/blog-01.jpg" alt="">
                                </a>
                            </div>                              
                        </div>
                    </div>
                    
                    <div class="col-lg-4">
                        <div class="singel-latest-blog">
                            <div class="aritcles-content">
                                <div class="author-name">
                                    post by: <a href="#"> Author Name</a> - 20 Oct 2019
                                </div>
                                <h4><a href="blog-details.htm" class="articles-name">Ruiz Watch reviews and most popular watch & timepiece blog for serious </a></h4>
                            </div>
                            <div class="articles-image">
                                <a href="blog-details.htm">
                                    <img src="../jsp/assets/images/blog/blog-02.jpg" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4">
                        <div class="singel-latest-blog">
                            <div class="aritcles-content">
                                <div class="author-name">
                                    post by: <a href="#"> Author Name</a> - 13 Oct 2019
                                </div>
                                <a href="blog-details.htm" class="articles-name">Connected to the World: Introducing the G-Shock MTG-B1000-1A</a>
                            </div>
                            <div class="articles-image">
                                <a href="blog-details.htm">
                                    <img src="../jsp/assets/images/blog/blog-03.jpg" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- letast blog area End -->
        
        <!-- our-brand-area start -->
        <div class="our-brand-area section-pb">
            <div class="container">
                <div class="row our-brand-active">
                    <div class="brand-single-item">
                        <a href="#"><img src="../jsp/assets/images/brand/brand-01.png" alt=""></a>
                    </div>
                    <div class="brand-single-item">
                        <a href="#"><img src="../jsp/assets/images/brand/brand-01.png" alt=""></a>
                    </div>
                    <div class="brand-single-item">
                        <a href="#"><img src="../jsp/assets/images/brand/brand-01.png" alt=""></a>
                    </div>
                    <div class="brand-single-item">
                        <a href="#"><img src="../jsp/assets/images/brand/brand-01.png" alt=""></a>
                    </div>
                    <div class="brand-single-item">
                        <a href="#"><img src="../jsp/assets/images/brand/brand-01.png" alt=""></a>
                    </div>
                    <div class="brand-single-item">
                        <a href="#"><img src="../jsp/assets/images/brand/brand-01.png" alt=""></a>
                    </div>
                    <div class="brand-single-item">
                        <a href="#"><img src="../jsp/assets/images/brand/brand-01.png" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- our-brand-area end -->
       
        <div class="newletter-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="newletter-wrap">
                            <div class="row align-items-center">
                                <div class="col-lg-7 col-md-12">
                                    <div class="newsletter-title mb-30">
                                        <h3>Join Our <br><span>Newsletter Now</span></h3>
                                    </div>
                                </div>

                                <div class="col-lg-5 col-md-7">
                                    <div class="newsletter-footer mb-30">
                                        <input type="text" placeholder="Your email address...">
                                        <div class="subscribe-button">
                                            <button class="subscribe-btn">Subscribe</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
        <!-- footer Start -->
       <%@include file="footer.jsp" %>
        <!-- footer End -->
          
           
          
           
        <!-- Modal -->
<!--        <div class="modal fade modal-wrapper" id="exampleModalCenter" >
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <div class="modal-inner-area">
                            <div class="row  product-details-inner">
                                <c:forEach items="${listPro}" var="p">
                                <div class="col-lg-5 col-md-6 col-sm-6">
                                     Product Details Left 
                                    
                                    <div class="product-large-slider">
                                        <div class="pro-large-img">
                                            <img src="${p.imageLink}" />
                                        </div>
                                        

                                    </div>
                                    <div class="imgdi" id="${p.productId}">
                                        <c:forEach items="${ListImg}" var="img">
                                            <c:if test="${img.product.productId.equals(p.productId)}">
                                                <img width="50px" src="<c:out value="${img.imageLink}"/>"/>
                                            </c:if>
                                            
                                        </c:forEach>
                                    </div>
                                   
                                    // Product Details Left 
                                </div>

                                <div class="col-lg-7 col-md-6 col-sm-6">
                                    
                                    <div class="product-details-view-content">
                                        <div class="product-info">
                                            <h3>${pr.productName}</h3>
                                            
                                            <div class="price-box">
                                                <span class="new-price">${pr.price-pr.price*pr.discount/100} </span>
                                                <span class="old-price">${pr.price}</span>
                                            </div>
                                            <p></p>

                                            <div class="single-add-to-cart">
                                                <form action="#" class="cart-quantity d-flex">
                                                    <div class="quantity">
                                                        <div class="cart-plus-minus">
                                                            <input type="number" class="input-text" name="quantity" value="1" title="Qty">
                                                        </div>
                                                    </div>
                                                    <button class="add-to-cart" type="submit">Add To Cart</button>
                                                </form>
                                            </div>
                                            <ul class="single-add-actions">
                                                <li class="add-to-wishlist">
                                                    <a href="wishlist.htm" class="add_to_wishlist"><i class="icon-heart"></i> Add to Wishlist</a>
                                                </li>
                                            </ul>
                                           
                                           
                                        </div>
                                    </div>
                                   
                                    
                                </div>
                                             </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>   
        </div>-->
        
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
