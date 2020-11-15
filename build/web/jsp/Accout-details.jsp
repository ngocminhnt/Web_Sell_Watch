<%-- 
    Document   : my-account
    Created on : Sep 14, 2020, 11:03:55 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
                                <li class="breadcrumb-item"><a href="${contextPath}/Web_Sell_Watch/WebProController/getAll.htm">Home</a></li>
                                <li class="breadcrumb-item active">My Account Page</li>
                            </ul>
                            <!-- breadcrumb-list end -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- breadcrumb-area end -->


            <!-- main-content-wrap start -->
            <div class="main-content-wrap section-ptb my-account-page">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="account-dashboard">
                                <div class="dashboard-upper-info">
                                    <div class="row align-items-center no-gutters">
                                        <div class="col-lg-3 col-md-12">
                                            <div class="d-single-info">
                                                <p class="user-name">Hello <span>Yourmail@info</span></p>
                                                <p>(not yourmail@info? <a href="#">Log Out</a>)</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-12">
                                            <div class="d-single-info">
                                                <p>Need Assistance? Customer service at.</p>
                                                <p>admin@devitems.com.</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-12">
                                            <div class="d-single-info">
                                                <p>E-mail them at </p>
                                                <p>support@yoursite.com</p>
                                            </div>
                                        </div>
                                        <div class="col-lg-2 col-md-12">
                                            <div class="d-single-info text-lg-center">
                                                <a href="cart.htm" class="view-cart"><i class="fa fa-cart-plus"></i>view cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 col-lg-2">
                                        <!-- Nav tabs -->
                                        <ul role="tablist" class="nav flex-column dashboard-list">
                                            <li><a href="initUpdateAccout.htm" class="nav-link active">Account details</a></li>
                                            <li><a href="LoginRegister.htm" class="nav-link">logout</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-12 col-lg-10">
                                        <!-- Tab panes -->
                                        <div class="tab-content dashboard-content">




                                            <div class="tab-pane active" id="account-details">
                                                <h3>Account details </h3>
                                                <div class="login">
                                                    <div class="login-form-container">
                                                        <div class="account-login-form">
                                                            <form:form action="updateuseraccount.htm" modelAttribute="userod" >

                                                                <div class="panel panel-primary">
                                                                    <div class="panel-heading">
                                                                        <h2 class="text-center">Your Infor</h2>
                                                                    </div>
                                                                    <div class="panel-body">
                                                                        <div class="form-group">
                                                                            <label for="usr">Name:</label>
                                                                            <form:input path="userName" cssClass="form-control" readonly="true"/>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="email">Email:</label>
                                                                            <form:input path="mail" cssClass="form-control" readonly="true"/>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="birthday">Birthday:</label>
                                                                            <form:input path="birthDay" type="date" class="form-control"  readonly="true"></form:input>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="pwd">Password:</label>
                                                                            <form:input path="passwords" type="password" class="form-control" id="pwd"  readonly="true"></form:input>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="address">Address:</label>
                                                                            <form:textarea path="addresss" type="text" class="form-control"  readonly="true"></form:textarea>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </form:form>
                                                            <a href="preupdateuseraccount.htm?userid=${uid}"><input type="submit"  value="Update" class="btn btn-success"/></a>
                                                            <a href="getAll.htm"><input type="submit"  value="Home" class="btn btn-success"/></a>
                                                            <a href="signout.htm"><input type="submit"  value="Signout" class="btn btn-success"/></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
        <script src="../jsp/assets/js/plugins/jqueryui.min.js"></script> <script src="../jsp/assets/js/plugins/ajax-contact.js"></script>

        <!-- Vendor & Plugins JS (Please remove the comment from below vendor.min.js & plugins.min.js for better website load performance and remove js files from avobe) -->
        <!--
    <script src="assets/js/vendor/vendor.min.js"></script>
    <script src="assets/js/plugins/plugins.min.js"></script>
        -->

        <!-- Main JS -->
        <script src="../jsp/assets/js/main.js"></script>

    </body>

</html>
