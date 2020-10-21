<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

.button {
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  background-color: purple;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
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
      <center>
  <a href="${contextPath}/delivery/availableorders">Available Orders</a>
   <a href="${contextPath}/delivery/currentorders">Current Orders</a>
   <a href="${contextPath}/delivery/previousordersd">Previous Orders</a>
</center>
    </div>
  </div> 
</div><br><br>
<h1 align="center">AVAILABLE ORDERS</h1>
    <div align="center">
        <table border="1" cellpadding="5" id="table1">
            <tr>
                <th>orderId</th>
                <th>agentId</th>
                <th>price</th>
                <th>address</th>
                <th>status</th>
                <th>quantity</th>
                <th>select</th>
            </tr>
            <c:forEach var="order" items="${Aorders}">
                <tr>
                    <td><c:out value="${order.orderId}" /></td>
                    <td><c:out value="${order.agentId}" /></td>
                    <td><c:out value="${order.price}" /></td>
                    <td><c:out value="${order.address}" /></td>
                    <td><c:out value="${order.status}" /></td>
                    <td><c:out value="${order.quantity}" /></td>
                    <td><input type="checkbox" id="select1" name="select1" value="selectOrder" onclick="myfunction()">
                		<label for="selectOrder"> Select order</label><br>
            		</td>
                </tr>
            </c:forEach>
        </table>
    </div><br><br>
   <form method="GET" action="${contextPath}/Action.jsp">
 	<input type="hidden" name="orderId" id="orderId" value="">
 	<input type="hidden" name="agentId" id="agentId" value="">
 	<input type="hidden" name="price" id="price" value="">
 	<input type="hidden" name="address" id="address" value="">
 	<input type="hidden" name="status" id="status" value="">
 	<input type="hidden" name="quantity" id="quantity" value="">
 	<center>
 	<button class="button" type="submit">Claim Orders</button>
 	</center>
 </form>
 <script>
 function myfunction()
 {
	var l = document.getElementById("table1").rows.length;
	for(var i=1;i<l;i++)
	{
	var x=document.getElementById("select1");
	if(x.checked == true){
		var orderId = document.getElementById("table1").rows[i].cells[0].innerHTML;
		var agentId = document.getElementById("table1").rows[i].cells[1].innerHTML;
		var price = document.getElementById("table1").rows[i].cells[2].innerHTML;
		var address = document.getElementById("table1").rows[i].cells[3].innerHTML;
		var status = document.getElementById("table1").rows[i].cells[4].innerHTML;
		var quantity = document.getElementById("table1").rows[i].cells[5].innerHTML;
		document.getElementById("orderId").value=orderId;
		document.getElementById("agentId").value=agentId;
		document.getElementById("price").value=price;
		document.getElementById("address").value=address;
		document.getElementById("status").value=status;
		document.getElementById("quantity").value=quantity;
	}
	}
 }
 </script>
</body>
</html>
  