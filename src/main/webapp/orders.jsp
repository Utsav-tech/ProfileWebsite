<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">  
    <head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
		<link href="${contextPath}/resources/css/style.css" rel="stylesheet">
	</head>
    <nav class="navbar navbar-expand-md navbar-light fixed-top bg-white"><a class="navbar-brand" href="#"><img src="${contextPath}/resources/img/logo.png"/></a>
        <button
        class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
        aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item"> <a class="nav-link" href="${contextPath}/customer/profile">Profile</a>
                </li>
                <li class="nav-item active"> <a class="nav-link" href="${contextPath}/customer/placeorder">Place Order<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item"> <a class="nav-link" href="${contextPath}/customer/currentorders">Current Orders</a>
                </li>
                <li class="nav-item"> <a class="nav-link" href="${contextPath}/customer/pastorders">Past Orders</a>
                </li>
            </ul>
        </div>
    </nav>
    
    <body>
        <div class="block hero1 my-auto" style="background-image:url(${pageContext.request.contextPath}/resources/img/customer_banner.jpg);">
            <div class="container-fluid text-center">
                 <h1 class="display-2 text-white" data-aos="fade-up" data-aos-duration="1000"
                data-aos-offset="0">UAlbany Campus Restaurants</h1>
                <p class="lead text-white" data-aos="fade-up" data-aos-duration="1000"
                data-aos-delay="600">Browse a restaurants and place your order</p>
                <a
                href="#menu" class="btn-text lead d-inline-block text-white border-top border-bottom mt-4 pt-1 pb-1"
                data-aos="fade-up" data-aos-duration="1000" data-aos-delay="1200">View Restaurants</a>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="maincontent">
            <div class="container">
                <section id="menu">
                    <div class="block menu1">
                        <!-- Start Restaurant list -->
                        <div class="menu menu--is-visible" id="pizzaMenu" data-aos="fade-up">
                        	<table class="table">
							  <thead class="thead-dark">
							    <tr>
							      <th scope="col">Order Id</th>
							      <th scope="col">Agent Id</th>
							      <th scope="col">Quantity</th>
							      <th scope="col">Price</th>
							      <th scope="col">Status</th>
							    </tr>
							  </thead>
							  <tbody>
							  	<c:forEach var="order" items="${orders}">
		                        	<tr>
		                                <td>${order.orderId}"</td>
		                                <td>${order.agentId}</td>
		                                <td>${order.quantity}</td>
		                                <td>${order.price}</td>
		                                <td>${order.status}</td>
	                                </tr>
	                     		</c:forEach>
							  </tbody>
							</table>
                     	</div>
                        <!-- End Pizza Menu -->
                    </div>
                    <!-- End block -->
                </section>
            </div>
        </div>
        <footer class="block footer1 footer text-center">
            <p>&copy; <a href="https://bootstrapstarter.com/bootstrap-templates/template-fooddelivery-bootstrap-html/">"Dane Eats"</a> Team 4</p>
        </footer>
        
        <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <script>
            AOS.init();
        </script>
        <script src="${contextPath}/resources/js/custom-general.js"></script>
    </body>
</html>
