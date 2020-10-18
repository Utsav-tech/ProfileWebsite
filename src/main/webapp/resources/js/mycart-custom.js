//food menu  tabs
const buttons = document.querySelectorAll('.button');
const menus = document.querySelectorAll('.menu');

const highlight = document.createElement('span');
document.body.appendChild(highlight);
highlight.classList.add('highlight');

// Set initial dimensions and position of 'highlight' based on activeButton coords 
function initialHightlightLocation() {
  const activeButton = document.querySelector('.button--is-active');
  const activeButtonCoords = activeButton.getBoundingClientRect();

  const initialCoords = {
    width: activeButtonCoords.width,
    height: activeButtonCoords.height,
    left: activeButtonCoords.left + window.scrollX,
    top: activeButtonCoords.top + window.scrollY
  }

  highlight.style.width = `${initialCoords.width}px`;
  highlight.style.height = `${initialCoords.height}px`;
  highlight.style.transform = `translate(${initialCoords.left}px, ${initialCoords.top}px)`;
}

function handleClick(e) {
  e.preventDefault();

  buttons.forEach(button => button.classList.remove('button--is-active'));
  this.classList.add('button--is-active');

  // Set current dimensions and position of 'highlight' based on the clicked button 
  const buttonCoords = this.getBoundingClientRect();
  const coords = {
    width: buttonCoords.width,
    height: buttonCoords.height,
    left: buttonCoords.left + window.scrollX,
    top: buttonCoords.top + window.scrollY
  }
  highlight.style.width = `${coords.width}px`;
  highlight.style.height = `${coords.height}px`;
  highlight.style.transform = `translate(${coords.left}px, ${coords.top}px)`;

  // Show the menu associated to the clicked button
  const targetMenu = document.querySelector(`#${this.dataset.target}`);
  menus.forEach(menu => {
    menu.classList.remove('menu--is-visible');
    targetMenu.classList.add('menu--is-visible');
  })
}

window.addEventListener('load', initialHightlightLocation);
window.addEventListener('resize', initialHightlightLocation);
buttons.forEach(button => button.addEventListener('click', handleClick));


//mycart
$(function () {

  var goToCartIcon = function($addTocartBtn){
    var $cartIcon = $(".my-cart-icon");
    var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
    $addTocartBtn.prepend($image);
    var position = $cartIcon.position();
    $image.animate({
      top: position.top,
      left: position.left
    }, 500 , "linear", function() {
      $image.remove();
    });
  }

  var saveOrder = function(order){
    	
    	// DO POST
    	$.ajax({
			type : "POST",
			contentType : "application/json",
			url : window.origin + "/customer/save",
			data : JSON.stringify(order),
  			dataType : 'json',
			success : function(result) {
				if(result.status == "Done"){
					alert("Success!")
				}else{
					alert("Error!");
				}
				console.log(result);
			},
			error : function(e) {
				alert("Error!")
				console.log("ERROR: ", e);
			}
		});	
    }

  $('.my-cart-btn').myCart({
    classCartIcon: 'my-cart-icon',
    classCartBadge: 'my-cart-badge',
    affixCartIcon: true,
    checkoutCart: function(products) {
      let items = [];
      let total = 0;
      $.each(products, function(){
        let item = {};
        item["menuId"] = this.id;
		item["quantity"] = this.quantity; 
		items.push(item); 
		total += this.quantity * this.price;      
        console.log(this);
      });
      let order = {};
      order["customerId"] = 1;
      order["price"] = total;
      order["destination"] = "Duch Quad";
      order["items"] = items;
      saveOrder(order);
    },
    clickOnAddToCart: function($addTocart){
      goToCartIcon($addTocart);
    },
    getDiscountPrice: function(products) {
      var total = 0;
      $.each(products, function(){
        total += this.quantity * this.price;
      });
      return total * 0.5;
    }
  });

});