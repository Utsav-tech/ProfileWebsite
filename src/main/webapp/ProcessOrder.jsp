<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
  box-sizing: border-box;
}
body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: right;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}


table, th, td {
  border: 2px solid black;
  border-collapse: collapse;
  padding: 15px;
  text-align: left;
  border-spacing: 5px;
}
.center {
  margin-left: auto;
  margin-right: auto;
}

header {
  background-color: #B2C5FA;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
}
footer {
  background-color: #B2C5FA;
  padding: 8px;
  text-align: center;
  color: white;
}
input[type=submit] {

 background-color: #45a049;
 color: green;
 padding: 8px 10px;
 margin: 4px 0;
 border: none;
 border-radius: 2px;
 cursor: pointer;
}


.slide{
    display:flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    height: 100%;
    background-color: green;
  background-image:url(image2.jpg);
  background-repeat: repeat;
  font-family: "Montserrat", sans-serif;
  text-align: center;
  animation: marquee 30s infinite linear;
}
code {
    padding: 4px;
    background-color: #333;
    border-radius: 5px;
  }

@keyframes marquee {
  0% {
    background-position: 0;
  }

  100% {
    background-position: -1190px;
  }
}
</style>
</head>
<body>
<header>
<div class="slide">
  <h1 style="color:#800080";><strong>UAlbany DaneEats!</strong></h1>
  <p style="color:#9932CC";>A balanced diet is a cookie in each hand 😬</p>
</div>
</header>
<div class="navbar">
  <a href="ViewOrders.jsp">Home</a>
  <a href="#news">Help</a>
  <div class="dropdown">
    <button class="dropbtn">About 
      <i class="fa fa-caret-down"></i>
    </button>
        <div class="dropdown-content">
        <a href="DeliveryProfile.jsp">Profile</a>
        <a href="#">Payments</a>
        <a href="home.jsp">Logout</a>
        </div>
   </div>
    <div class="dropdown">
    <button class="dropbtn">Orders 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
   <a href="${contextPath}/delivery/availableorders">Available Orders</a>
   <a href="${contextPath}/delivery/currentorders">Current Orders</a>
   <a href="${contextPath}/delivery/previousordersd">Previous Orders</a>
    </div>
  </div> 
</div><br><br>
<center><h3>Order in Progress.Will be Delivered Soon......</h3></center>
</body>
</html>
  