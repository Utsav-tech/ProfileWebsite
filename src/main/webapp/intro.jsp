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
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>
<body>
	<header>
		<center><h1>UALBANY DANEATS</h1></center>
	</header>
	<div class="navbar">
	  <a href="CustomerProfile.jsp">Profile</a>
	  <a href="order.jsp">Place Order</a>
	  <div class="dropdown">
	    <button class="dropbtn">Orders 
	      <i class="fa fa-caret-down"></i>
	    </button>
	    <div class="dropdown-content">
	      <a href="#">Orders In Progress</a>
	      <a href="#">Past Orders</a>
	    </div>
	  </div> 
	  <a href="/">Logout</a>
	</div>
	<section>
		<nav>
		<img src="${contextPath}/resources/img/image2.jpg" height=250 width=400>
		</nav>
		<article>
			<h2>
			<p class="small"><h2>WELCOME TO UALBANY DANEATS DELIVERY SERVICE</p>
			<p class="small">We deliever food from the food courts available inside campus for students living on-campus.</p>
			<p class="small">Sit back in your quads and order from your favourite restaurants.Enjoy hassle free delivery.</p>
			<p class="small"> To Start ordering food,Click on order</p>
			</h2>
		</article>
	</section>
	<script>
	window.onscroll = function() {scrollFunction()};
	
	function scrollFunction() {
	  if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
	    document.getElementById("header").style.fontSize = "30px";
	  } else {
	    document.getElementById("header").style.fontSize = "90px";
	  }
	}
	</script>
</body>
</html>
