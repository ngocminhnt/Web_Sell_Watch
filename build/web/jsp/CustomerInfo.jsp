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
        <style>
            #1{
                margin-left: 50px;
            }
        </style>
        <%@include file="header.jsp" %>
        <!--  Header Start -->
        
        <!-- Hero Section Start -->
        
        <div  id="inf" style="margin:100px 300px 300px 300px;"> 
        <div class="container">
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
				  <label for="email">Phone:</label>
                                   <form:input path="phone" cssClass="form-control" readonly="true"/>
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
            
            <a id="1" href="signout.htm"><input type="submit"  value="Signout" class="btn btn-success"/></a>
        </div>
    </body>
</html>