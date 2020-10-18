<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}
h1 {
  text-decoration: underline;
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
header {
  background-color: #b2c5fa;
  padding: 20px;
  text-align: center;
  font-size: 35px;
  color: white;
}
.flip-card {
  background-color: transparent;
  width: 250px;
  height: 250px;
  perspective: 1000px;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: #bbb;
  color: black;
}

.flip-card-back {
  background-color: #2980b9;
  color: white;
  transform: rotateY(180deg);
}
.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

#main {
  transition: margin-left .5s;
  padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
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
.code {
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
<header><div class="slide">
  <h1 style="color:#800080";><strong>UAlbany DaneEats!</strong></h1>
  <p style="color:#9932CC";>A balanced diet is a cookie in each hand 😬</p>
</div></header>
<div class="navbar">
  <a href="${contextPath}/customer/profile">Profile</a>
  <a href="${contextPath}/customer/placeorder">Place Order</a>
  <a href="${contextPath}/customer/currentorders">Current Order</a>
  <a href="${contextPath}/customer/pastorders">Past Order</a>
  <a style="float: right;" href="${contextPath}/home.jsp">Logout</a>
</div>
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">Update Information</a>
  <a href="changePassC.jsp">Change Password</a>
  <a href="#">Unsubscribe</a>
</div>

<div id="main">
  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>
</div>
<center><h1>Profile Information</h1>

<br><br><br>
<center>

<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="${pageContext.request.contextPath}/resources/img/dane.jpg" alt="Avatar" style="width:250px;height:250px;">
    </div>
    <div class="flip-card-back">
      <h1>Great Dane</h1> 
      <p>Mascot</p> 
      <p>Brave and Humble</p>
    </div>
  </div>
</div>
<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>
</body>
</html>
