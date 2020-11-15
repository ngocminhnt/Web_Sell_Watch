



<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
    <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>CMS-Login</title>
        <meta name="description" content="??ng nh?p">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
        <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
        <link rel="stylesheet" href="../jsp/admin/Content/css/cs-skin-elastic.css">
        <link rel="stylesheet" href="../jsp/admin/Content/css/style.css">

        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
        <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
        <script type="text/javascript">
            $(document).ready(function () {
                $('input[type="submit"]').click(function (e) {
                    if ($('#userAdmin').val() == "" || $('#passAdmin').val() == "") {
                        e.preventDefault();
                        $('#erroUser').text("");
                        $('#erroPass').text("");
                        if ($('#userAdmin').val() == "") {
                            $('#erroUser').text("Please enter User");
                        }
                        if ($('#passAdmin').val() == "") {
                            $('#erroPass').text("Please enter Pass");
                        }
                    } else {
                        return true;
                    }
                })
            })
        </script>
    </head>
    <body class="bg-dark">
        <%
            String error = "";
            if (request.getAttribute("error") != null) {
                error = (String) request.getAttribute("error");
            }
            String username = "", password = "";
            if (request.getAttribute("usernamex") != null) {
                username = (String) request.getAttribute("usernamex");
            }
            if (request.getAttribute("passwordx") != null) {
                password = (String) request.getAttribute("passwordx");
            }
        %>
        <div class="sufee-login d-flex align-content-center flex-wrap" style="background-color: whitesmoke">
            <div class="container">
                <div class="login-content">
                    <div class="login-logo">
                        <a href="index.html">
                            <img class="align-content" src="../jsp/admin/img/user/icons8-watches-front-view-100.png" style="max-width:50%" alt="">
                        </a>
                    </div>
                    <div class="login-form">
                        <form action="login.htm" method="post">
                             <p style="color: red"><%=error%>
                            <div class="form-group">
                               
                                    <label>USER NAME</label>
                                    <input type="text" class="form-control" id="userAdmin" name="userAdmin" value="<%=username%>" placeholder="user ...">
                            </div>
                            <div class="form-group">
                                <label>PASS WORD</label>
                                <input type="password" class="form-control" id="passAdmin" name="passAdmin" value="<%=password%>" placeholder="******">
                            </div>
                            <button   type="submit" class="btn btn-success btn-flat m-b-30 m-t-30">Sign in</button>


                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
        <script src="../jsp/admin/Scripts/js/main.js"></script>

    </body>
</html>