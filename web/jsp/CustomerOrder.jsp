<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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

    </head>
    <body>
        <%@include file="header.jsp" %>
        <!--  Header Start -->

        <!-- Hero Section Start -->

        <div  id="inf" style="margin:100px 300px 300px 300px;"> 

            <div style="float: left; min-height: 120px; min-width: 120px;">
                <div class="table-content table-responsive">
                    <table class="table">
                        <thead>
                            <tr>

                                <th class="plantmore-product-thumbnail">Images</th>
                                <th class="cart-product-name">Product</th>
                                <th class="plantmore-product-price">Unit Price</th>
                                <th class="plantmore-product-quantity">Quantity</th>
                                <th class="plantmore-product-subtotal">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${listCart}" var="cart">
                                <tr>

                                    <td class="plantmore-product-thumbnail"><a><img width="150px" src="${cart.product.imageLink}"></a></td>
                                    <td class="plantmore-product-name"><a href="#">${cart.product.productName}</a></td>
                                    <td class="plantmore-product-price"><span class="amount">${cart.product.price}</span></td>
                                    <td class="plantmore-product-quantity">
                                        <input value="${cart.quantity}" type="number" readonly="true" name="quantity"/>
                                    </td>
                                    <td class="product-subtotal"><span class="amount">${cart.quantity*cart.product.price}</span></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                        <tr>
                            <td colspan="4"> Total Amount</td>
                            <td>${totalAmount}</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="container">
                <form id="f"  action="orderPrpreOrderProductoduct.htm" method="post" >
                    <table  body="1">

                        <tr>
                            
                                <div class="panel-heading">
                                    <h2 class="text-center">Your Infor</h2>
                                </div>
                            
                        </tr>
                        <tr>
                            <td>
                                <label for="usr">Name:</label>
                            </td>
                            <td>
                                <input name="userName" cssClass="form-control" /><br/>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <label for="phone">Email:</label>
                            </td>
                            <td>
                                <input name="mail" cssClass="form-control" /><br/>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <label for="phone">Phone:</label>
                            </td>
                            <td>
                                <input name="phone" cssClass="form-control" /><br/>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <label for="address">Address:</label>
                            </td>
                            <td>
                                <input name="addresss" cssClass="form-control" /><br/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                        <center><input type="submit"  value="Buy" class="btn btn-success"/></center> 
                        </td></tr>
                    </table>
                </form>
            </div>
        </div>
                        <style>
                            #f {
                                    margin-left: 700px;
                            }
                        </style>
    </body>
</html>