<%-- 
    Document   : login-register
    Created on : Sep 14, 2020, 11:03:14 PM
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
        <script src="https://code.jquery.com/jquery-3.5.0.js"></script>

        <!-- Vendor & Plugins CSS (Please remove the comment from below vendor.min.css & plugins.min.css for better website load performance and remove css files from avobe) -->
        <!--
        <script src="assets/js/vendor/vendor.min.js"></script>
        <script src="assets/js/plugins/plugins.min.js"></script>
        -->

        <!-- Main Style CSS (Please use minify version for better website load performance) -->
        <link rel="stylesheet" href="../jsp/assets/css/style.css">
        <!--<link rel="stylesheet" href="assets/css/style.min.css">-->
        <script type="text/javascript">
            $(document).ready(function () {
                $('input[type="submit"]').click(function (e) {
                    if ($('#userName').val() == "" || $('#Email').val() == "" || $('#passwords').val() == "" || $('#passwordsx').val() == "") {
                        e.preventDefault();
                        $('#erro').text("");


                        if ($('#passwords').val() == "") {
                            $('#erro').text("Please enter productId");
                        }


                    } else {
                        return true;
                    }
                })
            })

        </script>
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
                                <li class="breadcrumb-item active"><a href="account.htm">My Account Page</a></li>
                                <li class="breadcrumb-item active">login &amp; register</li>
                            </ul>
                            <!-- breadcrumb-list end -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- breadcrumb-area end -->

            <!-- main-content-wrap start -->
            <div class="main-content-wrap section-ptb lagin-and-register-page">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7 col-md-12 ml-auto mr-auto">
                            <div class="login-register-wrapper">
                                <!-- login-register-tab-list start -->
                                <div class="login-register-tab-list nav">
                                    <a  href="LoginRegister.htm">
                                        <h4> login </h4>
                                    </a>
                                    <a  href="Register.htm">
                                        <h4> register </h4>
                                    </a>
                                </div>
                                <!-- login-register-tab-list end -->
                                <div class="tab-content">

                                    <div id="lg2" class="tab-pane active">
                                        <div class="login-form-container">
                                            <div class="login-register-form">
                                                <form action="Registers.htm" method="post">
                                                    <div class="login-input-box">  
                                                        <samp  id="erro"></samp>
                                                        <p style="color: red;">${note}</p>
                                                        <input id="userName" type="text" name="userName" placeholder="User Name">
                                                        <input id="Email" name="mail" placeholder="Email" type="email">   
                                                        <input id= "passwords" type="password" name="passwords" placeholder="Password">
                                                        <input  id= "passwordsx"  type="password" name="passwordsx" placeholder="Password-re">

                                                    </div>
                                                    <div class="button-box">
                                                        <button class="register-btn btn" type="submit" id="sub"><span>Register</span></button>
                                                    </div>
                                                </form>
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
        <script src="../jsp/assets/js/plugins/jqueryui.min.js"></script>
        <script src="../jsp/assets/js/plugins/ajax-contact.js"></script>

        <!-- Vendor & Plugins JS (Please remove the comment from below vendor.min.js & plugins.min.js for better website load performance and remove js files from avobe) -->
        <!--
    <script src="assets/js/vendor/vendor.min.js"></script>
    <script src="assets/js/plugins/plugins.min.js"></script>
        -->

        <!-- Main JS -->


    </body>

</html>
