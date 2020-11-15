


<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<html class="no-js" lang="">
    <!--<![endif]-->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Manage Store Watch</title>
        <meta name="description" content="Store Watch">
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
        <link rel="stylesheet" href="../jsp/admin/Content/css/lib/datatable/dataTables.bootstrap.min.css">
        <link rel="stylesheet" href="../jsp/admin/Content/css/style.css">

        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

        <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>

    </head>
    <body>
        <!-- Left Panel -->

        <aside id="left-panel" class="left-panel">
            <nav class="navbar navbar-expand-sm navbar-default">
                <div id="main-menu" class="main-menu collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="${contextPath}/Web_Sell_Watch/DataController/getdata.htm"><i class="fa fa-laptop"></i>Dashboard </a>
                        </li>
                        <li class="menu-title">Manage</li><!-- /.menu-title -->
                        <li class="menu-item-has-chilSdren ">
                            <a href="${contextPath}/Web_Sell_Watch/CatController/getAll.htm"> <i class="ti-menu-alt"></i> Manage Categorys</a>
                        </li>
                        <li class="menu-item-has-children ">
                            <a href="${contextPath}/Web_Sell_Watch/ProdcController/getAll.htm"> <i class="ti-menu-alt"></i> Manage Producers</a>
                        </li>
                        <li class="menu-item-has-children ">
                            <a href="${contextPath}/Web_Sell_Watch/ProController/getAll.htm"> <i class="ti-menu-alt"></i>Manage Product</a>
                        </li>
                        <li class="menu-item-has-children ">
                            <a href="${contextPath}/Web_Sell_Watch/BnerController/getAll.htm"> <i class="ti-menu-alt"></i>Manage Banner</a>
                        </li>
                        <li class="menu-item-has-children ">
                            <a href="getAll.htm"><i class="fa fa-shopping-cart"></i> Manage Order</a>
                        </li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </nav>
        </aside><!-- /#left-panel -->
        <!-- Left Panel -->
        <!-- Right Panel -->

        <div id="right-panel" class="right-panel">

            <!-- Header-->
            <header id="header" class="header">
                <div class="top-left">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="${contextPath}/Web_Sell_Watch/DataController/getdata.htm"><img src="../jsp/admin/img/user/icons8-watches-front-view-100.png" style="height: 43px;width: auto;" alt="Logo"></a>
                        <a class="navbar-brand hidden" href="./"><img src="images/logo2.png" alt="Logo"></a>
                        <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
                    </div>
                </div>
                <div class="top-right">
                    <div class="header-menu">
                        <div class="header-left">
                            <button class="search-trigger"><i class="fa fa-search"></i></button>
                            <div class="form-inline">
                                <form class="search-form">
                                    <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                                    <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                                </form>
                            </div>

                        </div>

                        <div class="user-area dropdown float-right">
                            <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img class="user-avatar rounded-circle" src="http://yourfood.somee.com/img/Avatar/unnamed.jpg" alt="User Avatar">
                            </a>

                            <div class="user-menu dropdown-menu">

                                <a class="nav-link" href="${contextPath}/Web_Sell_Watch/LoginController/getAll.htm"><i class="fa fa-power -off"></i>Logout</a>
                            </div>
                        </div>
                    </div>
                </div>
            </header><!-- /header -->
            <!-- Header-->



            <div class="content">
                <div class="animated fadeIn">
                    <div class="row">

                        <div class="col-md-12">
                            <a class="btn btn-success"><h4> List OrderDetial</h4></a>
                            <div class="card">



                                <div class="card-body" id="listProducers">
                                    <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Order Id</th>
                                                <th>Product Id</th>
                                                <th>Product Name</th>
                                                <th>Images</th>
                                                <th>Price</th>
                                                <th>Quantity</th>
                                                <th>Amount</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${listOD}" var="odD">
                                                <tr>

                                                    <td>${odD.id.orderId}</td>
                                                    <td>${odD.id.productId}</td>
                                                    <td id="${odD.id.productId}"> 
                                                        <c:forEach items="${listPro}" var="pro">
                                                            <c:if test = "${ pro.productId.equals(odD.id.productId)}">
                                                                <c:out value="${pro.productName}"/>
                                                            </c:if>

                                                        </c:forEach>
                                                    </td> 
                                                    <td id="${odD.id.productId}"> 
                                                        <c:forEach items="${listPro}" var="pro">
                                                            <c:if test = "${ pro.productId.equals(odD.id.productId)}">
                                                                <img width="100px" src="<c:out value="${pro.imageLink}"/>"/>
                                                            </c:if>
                                                        </c:forEach>
                                                    </td> 

                                                    <td id="${odD.id.productId}"> 
                                                        <c:forEach items="${listPro}" var="pro">
                                                            <c:if test = "${ pro.productId.equals(odD.id.productId)}">
                                                                <c:out value="${pro.price}"/>
                                                            </c:if>

                                                        </c:forEach>
                                                    </td> 
                                                    <td>${odD.quantity}</td> 
                                                    <td id="${odD.id.productId}"> 
                                                        <c:forEach items="${listPro}" var="pro">
                                                            <c:if test = "${ pro.productId.equals(odD.id.productId)}">
                                                                <c:out value="${pro.price*odD.quantity}"/>
                                                            </c:if>

                                                        </c:forEach>
                                                    </td>



                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                        </div>


                    </div>
                </div><!-- .animated -->
            </div><!-- .content -->


            <div class="clearfix"></div>





        </div><!-- /#right-panel -->
        <!-- Right Panel -->
        <!-- Scripts -->
        <script >
            $(document).ready(function () {
                $("#typelist").change(function () {
                    var tp = $("#typelist").val();
                    $("#listFood").load("/Home/listFood?tp=" + tp);
                });
            });
        </script>
        <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>

        <script src="../jsp/admin/Scripts/js/main.js"></script>

        <script src="../jsp/admin/Scripts/js/lib/data-table/datatables.min.js"></script>
        <script src="../jsp/admin/Scripts/js/lib/data-table/dataTables.bootstrap.min.js"></script>
        <script src="../jsp/admin/Scripts/js/lib/data-table/dataTables.buttons.min.js"></script>
        <script src="../jsp/admin/Scripts/js/lib/data-table/buttons.bootstrap.min.js"></script>
        <script src="../jsp/admin/Scripts/js/lib/data-table/jszip.min.js"></script>
        <script src="../jsp/admin/Scripts/js/lib/data-table/vfs_fonts.js"></script>
        <script src="../jsp/admin/Scripts/js/lib/data-table/buttons.html5.min.js"></script>
        <script src="../jsp/admin/Scripts/js/lib/data-table/buttons.print.min.js"></script>
        <script src="../jsp/admin/Scripts/js/lib/data-table/buttons.colVis.min.js"></script>
        <script src="../jsp/admin/Scripts/js/init/datatables-init.js"></script>


        <script type="text/javascript">
            $(document).ready(function () {
                $('#bootstrap-data-table-export').DataTable();
            });
            $("select").click(function () {
                var open = $(this).data("isopen");
                if (open) {
                    window.location.href = $(this).val()
                }
                //set isopen to opposite so next time when use clicked select box
                //it wont trigger this event
                $(this).data("isopen", !open);
            });
        </script>

        <style>

            @media (min-width: 576px){
                .modal-dialog {
                    max-width: 900px;
                    margin: 1.75rem auto;}

            }

        </style>
    </body>
</html>
