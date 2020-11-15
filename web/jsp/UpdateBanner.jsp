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
        <title>New Product</title>

    </head>

    <body>
        <f:form action="update.htm" enctype="multipart/form-data" method="POST" commandName="bnerUpdate">
            <table id="table">
                <tr>
                    <th colspan="2">Upadte Banner</th>
                </tr>
                <tr>
                    <td>Banner Id</td>
                    <td><f:input path="bannerId" readonly="true"/></td>
                </tr>
                <tr>
                    <td>Banner Name</td>
                    <td><f:input id="bannerName" path="bannerName"/></td>
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
                    <td><input type="file" name="imageMain" data-result="imageMainReview"/></td>
                    <td>
                        <f:input hidden="true" path="imageLink" readonly="true"/>
                        <div id="imageMainReview">
                            <img width='150' src="${bnerUpdate.imageLink}"/>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Create" id="sub"/></td>
                </tr>
            </table>
        </f:form>
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
            #sub {
                margin-left: 250px;
                margin-top: 10px;
            }
            #table th {
                padding-bottom: 20px;
            }
        </style>
        <script type="text/javascript">
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

            $(document).ready(function () {
                $('input[type="submit"]').click(function (e) {
                    if ($('#bannerName').val() == "") {
                        e.preventDefault();
                        $('#erroberName').text("Please enter ProducersId");



                    } else {
                        return true;
                    }
                })
            })
        </script>
    </body>
</html>
