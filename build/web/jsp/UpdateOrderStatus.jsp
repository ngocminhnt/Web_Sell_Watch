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
        <f:form action="updateStatus.htm"  method="POST" commandName="ordUpdate">
            <table id="table">
                <tr>
                    <th colspan="2">Upadte Banner</th>
                </tr>
                
                <tr>
                    <td>Order Id</td>
                    <td >
                        <f:input path="orderId" readonly="true" class="ip"/>
                    </td>
                </tr>
<!--                <tr>
                    <td>User Id</td>
                    <td >
                        <f:input path="webUser.userId" readonly="true" class="ip"/>
                    </td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td >
                        <f:input path="name" readonly="true" class="ip"/>
                    </td>
                </tr>
                <tr>
                    <td>TotalAmount</td>
                    <td >
                        <f:input path="totalAmount" readonly="true" class="ip"/>
                    </td>
                </tr>
                <tr>
                    <td>Created</td>
                    <td >
                        <f:input path="created" type="date" readonly="true" class="ip"/>
                    </td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td >
                        <f:input path="phone" readonly="true" class="ip"/>
                    </td>
                </tr>
                <tr>
                    <td>Mail</td>
                    <td >
                        <f:input path="mail" readonly="true" class="ip"/>
                    </td>
                </tr>
                 <tr>
                    <td>Addresss</td>
                    <td >
                        <f:input path="addresss" readonly="true" class="ip"/>
                    </td>
                </tr>-->
                <tr>
                    <td>Order Status</td>
                    <td>
                        <f:select path="orderStatus">
                            <f:option value="true">Active</f:option>
                            <f:option value="false">InActive</f:option>
                        </f:select>
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
            
            
        </script>
    </body>
</html>
