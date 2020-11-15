<%-- 
    Document   : NewProduct
    Created on : Aug 23, 2020, 4:26:24 PM
    Author     : ThinkPad T440s
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Store Watch</title>
        <meta name="description" content="Store Watch">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
        <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
        <link rel="stylesheet" href="../jsp/admin/Content/css/style.css">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
        <title>New Producers</title>


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
                        <li class="menu-item-has-children ">
                            <a href="${contextPath}/Web_Sell_Watch/CatController/getAll.htm"> <i class="ti-menu-alt"></i> Manage Categorys</a>
                        </li>
                        <li class="menu-item-has-children ">
                            <a href="${contextPath}/Web_Sell_Watch/ProdcController/getAll.htm"> <i class="ti-menu-alt"></i> Manage Producers</a>
                        </li>
                        <li class="menu-item-has-children ">
                            <a href="${contextPath}/Web_Sell_Watch/ProController/getAll.htm"> <i class="ti-menu-alt"></i>Manage Product</a>
                        </li>
                        <li class="menu-item-has-children ">
                            <a href="${contextPath}/Web_Sell_Watch/BnerController/getAll.htm""> <i class="ti-menu-alt"></i>Manage Banner</a>
                        </li>
                        <li class="menu-item-has-children ">
                            <a href="${contextPath}/Web_Sell_Watch/OrderController/getAll.htm"><i class="fa fa-shopping-cart"></i> Manage Order</a>
                        </li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </nav>
        </aside><!-- /#left-panel -->
        <!-- Left Panel -->
        <div id="right-panel" class="right-panel">
            <f:form action="insert.htm" enctype="multipart/form-data" method="POST" commandName="bnerNew">

                <table id="table">
                    <tr>
                        <th colspan="2">New Banner</th>
                    </tr>

                    <tr>
                        <td>Banner Id</td>
                        <td><f:input id="bannerId" path="bannerId"/>    
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><samp class="e" id="erroberId"></samp></td>
                    </tr>  

                    <tr>
                        <td>Banner Name</td>
                        <td><f:input id="bannerName" path="bannerName"/>    
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><samp class="e" id="erroberName"></samp></td>
                    </tr> 
                    <tr>
                        <td>Banner Status</td>
                        <td>
                            <f:select path="bannerStatus">
                                <f:option value="true">Active</f:option>
                                <f:option value="false">InActive</f:option>
                            </f:select>
                        </td>
                    </tr>
                    <tr>
                        <td>Image</td>
                        <td><input type="file" data-result="imageMainReview" name="imageMain"/>
                            <div id="imageMainReview"></div></td>
                    </tr>

                    <tr>
                        <td colspan="2"><input type="submit" value="Create" id="sub"/></td>
                    </tr>
                </table>
            </f:form>
        </div>
        <style>
            #table {

                background-color: white;

                padding: 30px;
                border-radius: 5px;
                margin: 0 auto;
            }
            body {
                background-color: #343a40;
            }
            table tr td input {
                margin-left: 30px;
            }
            table tr td select {
                margin-left: 30px;
            }
            #sub {
                margin-left: 30px;
                margin-top: 10px;
            }
            #table th {
                padding-bottom: 20px;
            }
            .e {
                color: red;
                margin-left: 30px;
            }
        </style>
        <script type="text/javascript">
            $(document).ready(function () {
                $('input[type="submit"]').click(function (e) {
                    if ($('#bannerId').val() == "" || $('#bannerName').val() == "") {
                        e.preventDefault();
                        $('#erroberId').text("");
                        $('#erroberName').tedxt("");
                        if ($('#bannerId').val() == "") {
                            $('#erroberId').text("Please enter BannerId");
                        }
                        if ($('#bannerName').val() == "") {
                            $('#erroberName').text("Please enter BannerName");
                        }
                    } else {
                        return true;
                    }
                })
            })

            function handleFileSelect(divResult) {
                //Check File API support
                if (window.File && window.FileList && window.FileReader) {

                    var files = event.target.files; //FileList object
                    var output = document.getElementById(divResult);
                    output.innerHTML = "";
                    for (var i = 0; i < files.length; i++) {
                        var file = files[i];
                        //Only pics
                        if (!file.type.match('image'))
                            continue;

                        var picReader = new FileReader();
                        picReader.addEventListener("load", function (event) {
                            var picFile = event.target;
                            var div = document.createElement("span");
                            div.innerHTML = "<img width='150' class='thumbnail' src='" + picFile.result + "'" + "title='" + picFile.name + "'/>";
                            output.insertBefore(div, null);
                        });
                        //Read the image
                        picReader.readAsDataURL(file);
                    }
                } else {
                    console.log("Your browser does not support File API");
                }
            }


            $(function () {
                $("input[type='file']").change(function () {
                    var result = $(this).data('result');
                    handleFileSelect(result);
                })
            })


        </script>
    </body>
</html>
