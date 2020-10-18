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
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>
<body>
	<div class="block hero1 my-auto" style="background-image:url(${pageContext.request.contextPath}/resources/img/restaurant.jpg);">
      <div class="container-fluid text-center">
           <h1 class="display-2 text-white" data-aos="fade-up" data-aos-duration="1000"
          data-aos-offset="0">DaneEats</h1>
          <p class="lead text-white" data-aos="fade-up" data-aos-duration="1000"
          data-aos-delay="600">On Campus Food Delivery From Your Favorite On Campus Restaurant</p>
          <a href="#" class="btn-text lead d-inline-block text-white border-top border-bottom mt-4 pt-1 pb-1"
          data-aos="fade-up" data-aos-duration="1000" data-aos-delay="1200">SignIn/Up &amp; Explore</a>
      </div>
      <div class="clearfix"></div>
    </div>
    <div class="maincontent">
	    <section id="">
			<div class="item row align-items-center">
              <div class="col-sm-6">
			    <div class="container">
				  <img class="rounded mx-auto d-block" src="${contextPath}/resources/img/customer.png">
			      <form method="POST" action="${contextPath}/Customer-login" class="form-signin">
			        <h2>Want to order food?</h2>
			        <h2 class="form-heading">Log in</h2>
			        <div class="form-group ${error != null ? 'has-error' : ''}">
			            <span>${message}</span>
			            <input name="username" type="text" class="form-control" placeholder="Username" autofocus/>
			            <input name="password" type="password" class="form-control" placeholder="Password"/>
			            <span>${error}</span>
			            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
			            <h4 class="text-center"><a href="${contextPath}/register">Create an account</a></h4>
			        </div>
			      </form>
			    </div>
              </div>
              <div class="col-sm-6">	
			    <div class="container">
			      <img class="rounded mx-auto d-block" src="${contextPath}/resources/img/delivery.jpeg">
			      <form method="POST" action="${contextPath}/Delivery-login" class="form-signin">
			        <h2>Want to order or deliver food?</h2>
			        <h2 class="form-heading">Log in</h2>
			        <div class="form-group ${error != null ? 'has-error' : ''}">
			            <span>${message}</span>
			            <input name="username" type="text" class="form-control" placeholder="Username" autofocus/>
			            <input name="password" type="password" class="form-control" placeholder="Password"/>
			            <span>${error}</span>
			            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			
			            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
			            <h4 class="text-center"><a href="${contextPath}/register">Create an account</a></h4>
			        </div>
			      </form>
			    </div>
              </div>  
			</div>
        </section>
    </div>
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
