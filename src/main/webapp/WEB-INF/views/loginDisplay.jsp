<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.wrapper {
	width: 68em;
}




// Start here

$title-color: #222;
$font-color: #777;
$light-gray: #eee;
$primary: #E91E63;
$secondary: #42A5F5;

// product
$product-box-shadow: 0px 0px 0px 1px $light-gray;





* {
	box-sizing: border-box;
}

body {
	color: $font-color;
	font-family: 'Open Sans', Arial, sans-serif;
}


.product-grid {
	width: 60em;
	margin: 2rem auto;
	// TODO: apply clearfix
	

	// If want a flexbox grid.
	&.product-grid--flexbox {
		.product-grid__wrapper {
			display: flex;
			flex-wrap: wrap;
		}
		
		.product-grid__title {
			height: auto;
			
			&:after { display: none; }
		}
	}
	

	&__wrapper {
		margin-left: -1rem;
		margin-right: -1rem;
		//background: #000;
	}
	
	&__product-wrapper {
		padding: 1rem;
		float: left;
		width: 33.33333%;
	}
	
	
	&__product {
		padding: 1rem;
		// width: 33.33333%;
		// float: left;
		position: relative;
		cursor: pointer;
		background: #fff;
		//box-shadow: $product-box-shadow;
		border-radius: 4px;
		
		&:hover {
			box-shadow: $product-box-shadow;
			z-index: 50;
			
			.product-grid__extend {
				display: block;
			}
		}
	}
	
			
	// product image wrapper
	&__img-wrapper {
		width: 100%;
		text-align: center;
		padding-top: 1rem;
		padding-bottom: 1rem;
		height: 150px;
	}
	
	
		// product image
		&__img {
			max-width: 100%;
			height: auto;
			max-height: 100%;
		}
	
	
	//	product title
	&__title {
		margin-top: .875rem;
		display: block;
		font-size: 1.125em;
		color: $title-color;
		height: 3em;
		overflow: hidden;
		position: relative;
		
		&:after {
			content: "";
			display: block;
			position: absolute;
			bottom: 0;
			right: 0;
			width: 2.4em;
			height: 1.5em; // magic number
			background: linear-gradient(to right, rgba(255, 255, 255, 0), rgba(255, 255, 255, 1) 50%);
			//background: red;
		}
	}
	
	&__price {
		color: $primary;
		font-weight: bold;
		letter-spacing: .4px;
	}
	
	
	// extend wrapper
	&__extend-wrapper {
		position: relative;
	}
	
	// extended elements
	// show when hover .product-grid__product
	&__extend {
		display: none;
		position: absolute;
		padding: 0 1rem 1rem 1rem;
		margin: .4375rem -1rem 0;
		box-shadow: $product-box-shadow;
		background: #fff;
		border-radius: 0 0 4px 4px;
		
		&:before {
			content: "";
			height: .875rem;
			width: 100%;
			position: absolute;
			top: -.4375rem;
			left: 0;
			background: #fff;
		}
	}
	
	
	// product description	
	&__description {
		font-size: .875em;
		//margin-top: .875rem;
		margin-top: .4375rem;
		margin-bottom: 0;
	}
	
	
	// buttons
	&__btn {
		display: inline-block;
		font-size: .875em;
		color: $font-color;
		background: $light-gray;
		padding: .5em .625em;
		margin-top: .875rem;
		margin-right: .625rem;
		cursor: pointer;
		border-radius: 4px;
		
		i.fa { margin-right: .3125rem;}
	}
	
	
	&__add-to-cart {
		color: #fff;
		background: $primary;
		
		&:hover { background: lighten($primary, 10%); }
	}
	
	&__view {
		color: $font-color;
		background: $light-gray;
		
		&:hover { background: lighten($light-gray, 10%); }
	}
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	 
	  $('.color-choose input').on('click', function() {
	      var headphonesColor = $(this).attr('data-image');
	 
	      $('.active').removeClass('active');
	      $('.left-column img[data-image = ' + headphonesColor + ']').addClass('active');
	      $(this).addClass('active');
	  });
	 
	});
</script>
</head>
<body>
<main class="container">

  <h1> welcome ${userId}! <br></h1>
  <div class="container" style="background-color:#f1f1f1">
    <a href="/spring/myaccount" type="button" class="myaccount" ">MyAccount</a>    
    <span class="psw"></span><br>
    <span class="psw"></span>
  </div>
  <!-- Left Column / Headphones Image -->

 <div class="wrapper">
	<div class="desc">
		<h1>Ecommerce product list/grid</h1>
		<p>Fashion clothing shoes and accessories.</p>
	</div>

	<div class="content">
		<!-- content here -->
		<div class="product-grid product-grid--flexbox">
			<div class="product-grid__wrapper">
				<!-- Product list start here -->

				<!-- Single product -->
				<div class="product-grid__product-wrapper">
					<div class="product-grid__product">
						<div class="product-grid__img-wrapper">			
							<img src="/spring/resources/shoes-denim.jpg" alt="Img" height="200" width="200" />
						</div>
						<span class="product-grid__title">Product title</span>
						<span class="product-grid__price">19.99$</span>
						<div class="product-grid__extend-wrapper">
							<div class="product-grid__extend">
								<p class="product-grid__description">Echo Input – Bring Alexa to your own speaker- Black.</p>
								<span class="product-grid__btn product-grid__add-to-cart"><i class="fa fa-cart-arrow-down"></i> Add to cart</span>				
								<span class="product-grid__btn product-grid__view"><i class="fa fa-eye"></i> View more</span>
							</div>
						</div>
					</div>
				</div>
				<!-- end Single product -->

				<div class="product-grid__product-wrapper">
					<div class="product-grid__product">
						<div class="product-grid__img-wrapper">			
							<img src="/spring/resources/picography-woman-black-tank-top-1.jpg" alt="Img" height="200" width="200" />
						</div>
						<span class="product-grid__title">Product title</span>
						<span class="product-grid__price">28.99€</span>
						<div class="product-grid__extend-wrapper">
							<div class="product-grid__extend">
								<p class="product-grid__description">Daily Ritual Women's Tencel Dress.</p>
								<span class="product-grid__btn product-grid__add-to-cart"><i class="fa fa-cart-arrow-down"></i> Add to cart</span>				
								<span class="product-grid__btn product-grid__view"><i class="fa fa-eye"></i> View more</span>
							</div>
						</div>
					</div>
				</div>

				<div class="product-grid__product-wrapper">
					<div class="product-grid__product">
						<div class="product-grid__img-wrapper">			
							<img src="/spring/resources/iso-republic-silver-snowflakes-on-gold-textured-background.jpg" alt="Img" height="200" width="200" />
						</div>
						<span class="product-grid__title">Product title</span>
						<span class="product-grid__price">2.69€</span>
						<div class="product-grid__extend-wrapper">
							<div class="product-grid__extend">
								<p class="product-grid__description">Rurah Fashion Necklace Metal Blooming Bauhinia Flower Temperament Jelly Color Necklace Jewelry Gift For Women,Pink.</p>
								<span class="product-grid__btn product-grid__add-to-cart"><i class="fa fa-cart-arrow-down"></i> Add to cart</span>				
								<span class="product-grid__btn product-grid__view"><i class="fa fa-eye"></i> View more</span>
							</div>
						</div>
					</div>
				</div>

				<div class="product-grid__product-wrapper">
					<div class="product-grid__product">
						<div class="product-grid__img-wrapper">			
							<img src="/spring/resources/new-york-street-style.png" alt="Img" height="200" width="200" />
						</div>
						<span class="product-grid__title">Product title</span>
						<span class="product-grid__price">35.99€</span>
						<div class="product-grid__extend-wrapper">
							<div class="product-grid__extend">
								<p class="product-grid__description">Lark & Ro Women's Short Sleeve Hidden Placket Shirt Dress.</p>
								<span class="product-grid__btn product-grid__add-to-cart"><i class="fa fa-cart-arrow-down"></i> Add to cart</span>				
								<span class="product-grid__btn product-grid__view"><i class="fa fa-eye"></i> View more</span>
							</div>
						</div>
					</div>
				</div>

				
				<div class="product-grid__product-wrapper">
					<div class="product-grid__product">
						<div class="product-grid__img-wrapper">			
							<img src="/spring/resources/iso-republic-nikon-film-camera-close-up.jpg" alt="Img" height="200" width="200" />
						</div>
						<span class="product-grid__title">Product title</span>
						<span class="product-grid__price">1.99$</span>
						<div class="product-grid__extend-wrapper">
							<div class="product-grid__extend">
								<p class="product-grid__description">IEason Clearance New Fashion Jewelry Silver Womens Charm Bangle Bracelet Gift.</p>
								<span class="product-grid__btn product-grid__add-to-cart"><i class="fa fa-cart-arrow-down"></i> Add to cart</span>				
								<span class="product-grid__btn product-grid__view"><i class="fa fa-eye"></i> View more</span>
							</div>
						</div>
					</div>
				</div>

				<div class="product-grid__product-wrapper">
					<div class="product-grid__product">
						<div class="product-grid__img-wrapper">			
							<img src="https://images.apple.com/euro/macbook/a/screens/specs/images/finish_silver_large.jpg" alt="Img" height="200" width="200"/>
						</div>
						<span class="product-grid__title">Product title</span>
						<span class="product-grid__price">9.99$</span>
						<div class="product-grid__extend-wrapper">
							<div class="product-grid__extend">
								<p class="product-grid__description">U7 18K Gold Half Moon & Tinkle Bell Love Classic Dangling Earrings.</p>
								<span class="product-grid__btn product-grid__add-to-cart"><i class="fa fa-cart-arrow-down"></i> Add to cart</span>				
								<span class="product-grid__btn product-grid__view"><i class="fa fa-eye"></i> View more</span>
							</div>
						</div>
					</div>
				</div>

				<div class="product-grid__product-wrapper">
					<div class="product-grid__product">
						<div class="product-grid__img-wrapper">			
							<img src="https://images.apple.com/euro/macbook/a/screens/specs/images/finish_silver_large.jpg" alt="Img" height="200" width="200" />
						</div>
						<span class="product-grid__title">Product title</span>
						<span class="product-grid__price">0.99€</span>
						<div class="product-grid__extend-wrapper">
							<div class="product-grid__extend">
								<p class="product-grid__description">Sinwo Women Opal Ring Fashion Women Jewelry Filled Wedding Engagement Six Claw Ring Gift.</p>
								<span class="product-grid__btn product-grid__add-to-cart"><i class="fa fa-cart-arrow-down"></i> Add to cart</span>				
								<span class="product-grid__btn product-grid__view"><i class="fa fa-eye"></i> View more</span>
							</div>
						</div>
					</div>
				</div>
			</div>		
		</div>
	</div>

	
</div>
</main>
</body>
<footer>
		<a target="_blank" >@ase-2019-archana</a>
	</footer>

</html>
