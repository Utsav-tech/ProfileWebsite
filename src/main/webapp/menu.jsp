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
    <nav class="navbar navbar-expand-md navbar-light fixed-top bg-white"> <a class="navbar-brand" href="#"><img src="${contextPath}/resources/img/logo.png"></a>
        <button
        class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
        aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active"> <a class="nav-link" href="${contextPath}/customer/placeorder">Place Order<span class="sr-only">(current)</span></a>
                    </li>
                </ul>
            </div>
    </nav>
    
    <body>
        <div class="block hero1 my-auto" style="background-image:url(${pageContext.request.contextPath}/resources/img/babas.jpg);">
            <div class="container-fluid text-center">
                 <h1 class="display-2 text-white" data-aos="fade-up" data-aos-duration="1000"
                data-aos-offset="0">BABA'S</h1>
                <p class="lead text-white" data-aos="fade-up" data-aos-duration="1000"
                data-aos-delay="600">New York style pizzeria using world famous Grande cheese and decades old recipes from Baba</p>
                <a
                href="#menu" class="btn-text lead d-inline-block text-white border-top border-bottom mt-4 pt-1 pb-1"
                data-aos="fade-up" data-aos-duration="1000" data-aos-delay="1200">View Menu</a>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="maincontent">
            <div class="container">
                <section id="menu">
                    <div class="block menu1">
                        <div class="buttons-container"> <a href="#" class="button button--is-active" data-target="pizzaMenu">Pizzas</a>
                            <a
                            href="#" class="button" data-target="coffeeMenu">Drinks</a> <a href="#" class="button" data-target="noodlesMenu">Desserts</a>
                        </div>
                        <!-- Start Pizza Menu -->
                        <div class="menu menu--is-visible" id="pizzaMenu" data-aos="fade-up">
                            <div class="item row align-items-center">
                                <div class="col-sm-3 pr-5">
                                    <img class="product-img" src="${pageContext.request.contextPath}/resources/img/pizza-1.png">
                                </div>
                                <div class="details col-sm-9">
                                    <div class="item__header">
                                        <h3 class="item__title">Cheese Pizza</h3>
                                        <span class="item__dots"></span>
                                        <span class="item__price">$15</span>
                                    </div>
                                    <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                        officia eaque nobis ut.</p>
                                    <button class="btn btn-sm btn-outline-primary my-cart-btn"
                                    data-id="1" data-name="Cheese Pizza" data-price="15" data-quantity="1"
                                    data-image="${pageContext.request.contextPath}/resources/img/pizza-1.png">Add to cart</button>
                                </div>
                            </div>
                            <div class="item row align-items-center">
                                <div class="col-sm-3 pr-5">
                                    <img class="product-img" src="${pageContext.request.contextPath}/resources/img/pizza-2.png">
                                </div>
                                <div class="details col-sm-9">
                                    <div class="item__header">
                                        <h3 class="item__title">Hot Pastrami</h3>
                                        <span class="item__dots"></span>
                                        <span class="item__price">$25</span>
                                    </div>
                                    <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                        officia eaque nobis ut.</p>
                                    <button class="btn btn-sm btn-outline-primary my-cart-btn"
                                    data-id="2" data-name="Hot Pastrami" data-price="25" data-quantity="1"
                                    data-image="${pageContext.request.contextPath}/resources/img/pizza-2.png">Add to cart</button>
                                </div>
                            </div>
                            <div class="item row align-items-center">
                                <div class="col-sm-3 pr-5">
                                    <img class="product-img" src="${pageContext.request.contextPath}/resources/img/pizza-3.png">
                                </div>
                                <div class="details col-sm-9">
                                    <div class="item__header">
                                         <h3 class="item__title">Classic Pizza</h3>
 <span class="item__dots"></span>
 <span class="item__price">$20</span>
                                    </div>
                                    <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                        officia eaque nobis ut.</p>
                                    <button class="btn btn-sm btn-outline-primary my-cart-btn"
                                    data-id="3" data-name="Classic Pizza" data-price="20" data-quantity="1"
                                    data-image="${pageContext.request.contextPath}/resources/img/pizza-3.png">Add to cart</button>
                                </div>
                            </div>
                            <div class="item row align-items-center">
                                <div class="col-sm-3 pr-5">
                                    <img class="product-img" src="${pageContext.request.contextPath}/resources/img/pizza-4.png">
                                </div>
                                <div class="details col-sm-9">
                                    <div class="item__header">
                                         <h3 class="item__title">Country Pizza</h3>
 <span class="item__dots"></span>
 <span class="item__price">$17</span>
                                    </div>
                                    <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                        officia eaque nobis ut.</p>
                                    <button class="btn btn-sm btn-outline-primary my-cart-btn"
                                    data-id="4" data-name="Country Pizza" data-price="17" data-quantity="1"
                                    data-image="${pageContext.request.contextPath}/resources/img/pizza-4.png">Add to cart</button>
                                </div>
                            </div>
                        </div>
                        <!-- End Pizza Menu -->
                        <!-- Start Coffee Menu -->
                        <div class="menu" id="coffeeMenu">
                            <div class="item">
                                <div class="item__header">
                                     <h3 class="item__title">Cappuccino</h3>
 <span class="item__dots"></span>
 <span class="item__price">$4</span>
                                </div>
                                <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                    officia eaque nobis ut.</p>
                            </div>
                            <div class="item">
                                <div class="item__header">
                                     <h3 class="item__title">Iced Coffee</h3>
 <span class="item__dots"></span>
 <span class="item__price">$5</span>
                                </div>
                                <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                    officia eaque nobis ut.</p>
                            </div>
                            <div class="item">
                                <div class="item__header">
                                     <h3 class="item__title">CafÃ© Latte</h3>
 <span class="item__dots"></span>
 <span class="item__price">$3</span>
                                </div>
                                <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                    officia eaque nobis ut.</p>
                            </div>
                            <div class="item">
                                <div class="item__header">
                                     <h3 class="item__title">Espresso</h3>
 <span class="item__dots"></span>
 <span class="item__price">$4</span>
                                </div>
                                <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                    officia eaque nobis ut.</p>
                            </div>
                        </div>
                        <!-- End Coffee Menu -->
                        <!-- Start Noodles Menu -->
                        <div class="menu" id="noodlesMenu">
                            <div class="item">
                                <div class="item__header">
                                     <h3 class="item__title">Chicken Noodles</h3>
 <span class="item__dots"></span>
 <span class="item__price">$16</span>
                                </div>
                                <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                    officia eaque nobis ut.</p>
                            </div>
                            <div class="item">
                                <div class="item__header">
                                     <h3 class="item__title">Egg Noodles</h3>
 <span class="item__dots"></span>
 <span class="item__price">$12</span>
                                </div>
                                <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                    officia eaque nobis ut.</p>
                            </div>
                            <div class="item">
                                <div class="item__header">
                                     <h3 class="item__title">Veg Noodles</h3>
 <span class="item__dots"></span>
 <span class="item__price">$10</span>
                                </div>
                                <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                    officia eaque nobis ut.</p>
                            </div>
                            <div class="item">
                                <div class="item__header">
                                     <h3 class="item__title">Chuck Norris Noodles</h3>
 <span class="item__dots"></span>
 <span class="item__price">$20</span>
                                </div>
                                <p class="item__description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt quos harum
                                    officia eaque nobis ut.</p>
                            </div>
                        </div>
                        <!-- End Noodles Menu -->
                    </div>
                    <!-- End block -->
                   
                </section>
            </div>
        </div>
        <div class="col-sm-7" id="postResultDiv">
        </div>
        <div class="nav-item my-cart-icon">
            <img src="${pageContext.request.contextPath}/resources/img/cart.svg" style="width:20px;"> <span class="badge badge-notify my-cart-badge"> </span>
        </div>
        <footer class="block footer1 footer text-center">
            <p>&copy; <a href="https://bootstrapstarter.com/bootstrap-templates/template-fooddelivery-bootstrap-html/">"Food Delivery HTML Template"</a> by
                WowThemes.net</p>
        </footer>
        <script src="${contextPath}/resources/js/jquery.min.js"></script>
        <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <script src="${contextPath}/resources/js/mycart.js"></script>
        <script src="${contextPath}/resources/js/mycart-custom.js"></script>
        <script>
            AOS.init();
        </script>
        <script src="${contextPath}/resources/js/custom-general.js"></script>
    </body>

</html>