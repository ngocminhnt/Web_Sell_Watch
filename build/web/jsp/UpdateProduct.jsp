<%-- 
    Document   : NewProduct
    Created on : Aug 23, 2020, 4:26:24 PM
    Author     : ThinkPad T440s
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
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
        <script src="/Web_Sell_Watch/jsp/ckeditor/ckeditor.js" type="text/javascript"></script>
        <script src="/Web_Sell_Watch/jsp/ckfinder/ckfinder.js" type="text/javascript"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <title>New Product</title>
         
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
                            <a href="${contextPath}/Web_Sell_Watch/BnerController/getAll.htm"> <i class="ti-menu-alt"></i>Manage Banner</a>
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
        <f:form action="update.htm" method="POST" enctype="multipart/form-data" commandName="proUpdate">
            <table id="table">
                <tr>
                    <th colspan="2">New Product</th>
                </tr>
                
                <tr>
                    <td>Product Id</td>
                    <td><f:input path="productId" readonly="true"/></td>
                </tr>
                <tr>
                    <td>Product Name</td>
                    <td><f:input path="productName"/></td>
                </tr>
                
                
                <tr>
                    <td>Title</td>
                    <td><f:textarea path="title" id="titleId"/></td>
                </tr>
                <tr>
                    <td>Descriptions</td>
                    <td><f:textarea path="descriptions" id="descriptionsId"/></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><f:input type="number" id="price" path="price"/>
                    <samp class="e" id="erroPrice"></samp></td>
                </tr>
                
                <tr>
                    <td>Discount</td>
                    <td><f:input type="number" id="discount" path="discount"/>
                    <samp class="e" id="erroDiscount"></samp></td>
                </tr>
                
                <tr>
                    <td>Quantity</td>
                    <td><f:input type="number" id="quantity" path="quantity"/>
                    <samp class="e" id="erroQuantity"></samp></td>
                </tr>
                
                <tr>
                    <td>Producers Name</td>
                    <td>
                        <f:select path="producers.producersId">
                            <c:forEach items="${listProdc}" var="prodc">
                                <f:option value="${prodc.producersId}">${prodc.producersName}</f:option>
                            </c:forEach>
                        </f:select>
                    </td>
                </tr>
                <tr>
                    <td>Categories Name</td>
                     <td>
                        <f:select path="categories.catId">
                            <c:forEach items="${listCat}" var="cat">
                                <f:option value="${cat.catId}">${cat.catName}</f:option>
                            </c:forEach>
                        </f:select>
                    </td>
                </tr>
                <tr>
                    <td>Created</td>
                    <td><f:input type="date"  path="created"/></td>
                </tr>
                <tr>
                    <td>Product Status</td>
                    <td>
                        <f:select path="productStatus">
                            <f:option value="true">Active</f:option>
                            <f:option value="false">InActive</f:option>
                        </f:select>
                    </td>
                </tr>
                <tr>
                    <td>Image</td>
                    <td><input type="file" name="imageMain" data-result="imageMainReview"/>
                     <f:input hidden="true" path="imageLink" readonly="true"/>
                        <div id="imageMainReview">
                            <img width='150' src="${proUpdate.imageLink}"/>
                        </div></td>
                    
                </tr>
                
                <tr>
                    <td>Images other</td>
                    <td><input type="file" multiple="multiple" name="imageOther" data-result="imageOtherReview"/>
                    <div id="imageOtherReview">
                            <c:forEach items="${proUpdate.imageses}" var="proImage">
                                <img width='150' src="${proImage.imageLink}"/>
                            </c:forEach>
                        </div></td>
                    
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
        table tr td textarea {
            margin-left: 30px;
        }
        table tr td select {
            margin-left: 30px;
        }
        #sub {
            margin-left: 250px;
            margin-top: 10px;
        }
        #table th {
              padding-bottom: 20px;
        }
        </style>
        <script type="text/javascript">
            var editorTitle = CKEDITOR.replace('titleId');
            CKFinder.setupCKEditor(editorTitle,'jsp/ckfinder/');
            var editorDescriptionsId = CKEDITOR.replace('descriptionsId');
            CKFinder.setupCKEditor(editorTitle,'jsp/ckfinder/');
            
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
